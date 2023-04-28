; ModuleID = 'arch/arm64/mm/pageattr.c'
source_filename = "arch/arm64/mm/pageattr.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.page_change_data = type { %struct.pgprot_t, %struct.pgprot_t }
%struct.pgprot_t = type { i64 }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.39, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.39 = type { i64, i64, %struct.user_fpsimd_state }
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
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.42 }
%union.anon.42 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.44 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.48 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.46, %struct.qspinlock }
%union.anon.46 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.48 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, {}*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }

@rodata_full = dso_local local_unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@__const.set_direct_map_invalid_noflush.data = private unnamed_addr constant %struct.page_change_data { %struct.pgprot_t zeroinitializer, %struct.pgprot_t { i64 1 } }, align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@__const.set_direct_map_default_noflush.data = private unnamed_addr constant %struct.page_change_data { %struct.pgprot_t { i64 2251799813685249 }, %struct.pgprot_t { i64 128 } }, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @can_set_direct_map() local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* @rodata_full, align 1, !range !7
  %tobool.not = icmp ne i8 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_memory_ro(i64 noundef %addr, i32 noundef %numpages) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @change_memory_common(i64 noundef %addr, i32 noundef %numpages, i64 128, i64 2251799813685248) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @change_memory_common(i64 noundef %addr, i32 noundef %numpages, i64 %set_mask.coerce, i64 %clear_mask.coerce) unnamed_addr #1 {
entry:
  %conv = sext i32 %numpages to i64
  %mul = shl nsw i64 %conv, 12
  %and = and i64 %addr, 4095
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i64 %addr, -4096
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/pageattr.c\22; .popsection; .long 14472b - 14470b; .short 70; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !8
  br label %if.end16

if.end16:                                         ; preds = %if.then, %entry
  %start.0 = phi i64 [ %addr, %entry ], [ %and3, %if.then ]
  %0 = inttoptr i64 %addr to i8*
  %call = call %struct.vm_struct* @find_vm_area(i8* noundef %0) #9
  %tobool17.not = icmp eq %struct.vm_struct* %call, null
  br i1 %tobool17.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %end.0 = add i64 %mul, %start.0
  %addr18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 1
  %1 = load i8*, i8** %addr18, align 8
  %2 = ptrtoint i8* %1 to i64
  %size19 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 2
  %3 = load i64, i64* %size19, align 8
  %add20 = add i64 %3, %2
  %cmp21 = icmp ugt i64 %end.0, %add20
  br i1 %cmp21, label %cleanup, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8
  %and24 = and i64 %4, 2
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %tobool28.not = icmp eq i32 %numpages, 0
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end27
  %5 = load i8, i8* @rodata_full, align 1, !range !7
  %tobool31.not = icmp eq i8 %5, 0
  br i1 %tobool31.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %cmp33 = icmp eq i64 %set_mask.coerce, 128
  %cmp37 = icmp eq i64 %clear_mask.coerce, 128
  %or.cond = select i1 %cmp33, i1 true, i1 %cmp37
  br i1 %or.cond, label %for.cond.preheader, label %if.end46

for.cond.preheader:                               ; preds = %land.lhs.true
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 5
  %6 = load i32, i32* %nr_pages, align 8
  %cmp4080.not = icmp eq i32 %6, 0
  br i1 %cmp4080.not, label %if.end46, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %7 = load %struct.page**, %struct.page*** %pages, align 8
  %idxprom = sext i32 %i.081 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %7, i64 %idxprom
  %8 = load %struct.page*, %struct.page** %arrayidx, align 8
  %9 = ptrtoint %struct.page* %8 to i64
  %sub.i = shl i64 %9, 6
  %add.i = and i64 %sub.i, -4096
  %call45 = call fastcc i32 @__change_memory_common(i64 noundef %add.i, i64 noundef 4096, i64 %set_mask.coerce, i64 %clear_mask.coerce) #7
  %inc = add nuw i32 %i.081, 1
  %10 = load i32, i32* %nr_pages, align 8
  %cmp40 = icmp ult i32 %inc, %10
  br i1 %cmp40, label %for.body, label %if.end46

if.end46:                                         ; preds = %for.body, %for.cond.preheader, %land.lhs.true, %if.end30
  call void @vm_unmap_aliases() #9
  %call49 = call fastcc i32 @__change_memory_common(i64 noundef %start.0, i64 noundef %mul, i64 %set_mask.coerce, i64 %clear_mask.coerce) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end16, %lor.lhs.false, %lor.lhs.false23, %if.end46
  %retval.0 = phi i32 [ %call49, %if.end46 ], [ -22, %lor.lhs.false23 ], [ -22, %lor.lhs.false ], [ -22, %if.end16 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_memory_rw(i64 noundef %addr, i32 noundef %numpages) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @change_memory_common(i64 noundef %addr, i32 noundef %numpages, i64 2251799813685248, i64 128) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_memory_nx(i64 noundef %addr, i32 noundef %numpages) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @change_memory_common(i64 noundef %addr, i32 noundef %numpages, i64 9007199254740992, i64 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_memory_x(i64 noundef %addr, i32 noundef %numpages) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @change_memory_common(i64 noundef %addr, i32 noundef %numpages, i64 0, i64 9007199254740992) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_memory_valid(i64 noundef %addr, i32 noundef %numpages, i32 noundef %enable) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %enable, 0
  %conv4 = sext i32 %numpages to i64
  %mul5 = shl nsw i64 %conv4, 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @__change_memory_common(i64 noundef %addr, i64 noundef %mul5, i64 1, i64 0) #7
  br label %return

if.else:                                          ; preds = %entry
  %call12 = call fastcc i32 @__change_memory_common(i64 noundef %addr, i64 noundef %mul5, i64 0, i64 1) #7
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call12, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__change_memory_common(i64 noundef %start, i64 noundef %size, i64 %set_mask.coerce, i64 %clear_mask.coerce) unnamed_addr #1 {
entry:
  %data = alloca %struct.page_change_data, align 8
  %0 = bitcast %struct.page_change_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %set_mask.sroa.0.0..sroa_idx = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %data, i64 0, i32 0, i32 0
  store i64 %set_mask.coerce, i64* %set_mask.sroa.0.0..sroa_idx, align 8
  %clear_mask.sroa.0.0..sroa_idx = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %data, i64 0, i32 1, i32 0
  store i64 %clear_mask.coerce, i64* %clear_mask.sroa.0.0..sroa_idx, align 8
  %call = call i32 @apply_to_page_range(%struct.mm_struct* noundef nonnull @init_mm, i64 noundef %start, i64 noundef %size, i32 (%struct.pte_t*, i64, i8*)* noundef nonnull @change_page_range, i8* noundef nonnull %0) #9
  %add = add i64 %size, %start
  call fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %add) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_direct_map_invalid_noflush(%struct.page* noundef %page) local_unnamed_addr #1 {
entry:
  %data = alloca %struct.page_change_data, align 8
  %0 = bitcast %struct.page_change_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.page_change_data* @__const.set_direct_map_invalid_noflush.data to i8*), i64 16, i1 false)
  %call = call i1 @can_set_direct_map() #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %1, 6
  %add.i = and i64 %sub.i, -4096
  %call2 = call i32 @apply_to_page_range(%struct.mm_struct* noundef nonnull @init_mm, i64 noundef %add.i, i64 noundef 4096, i32 (%struct.pte_t*, i64, i8*)* noundef nonnull @change_page_range, i8* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(%struct.mm_struct* noundef, i64 noundef, i64 noundef, i32 (%struct.pte_t*, i64, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @change_page_range(%struct.pte_t* noundef %ptep, i64 noundef %addr, i8* nocapture noundef readonly %data) #1 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  %pte.sroa.0.0.sroa_cast20 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast20)
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %clear_mask = getelementptr inbounds i8, i8* %data, i64 8
  %coerce.dive1 = bitcast i8* %clear_mask to i64*
  %0 = load i64, i64* %coerce.dive1, align 8
  %call = call fastcc i64 @clear_pte_bit(i64 %pte.sroa.0.0.copyload, i64 %0) #7
  %coerce.dive5 = bitcast i8* %data to i64*
  %1 = load i64, i64* %coerce.dive5, align 8
  %call6 = call fastcc i64 @set_pte_bit(i64 %call, i64 %1) #7
  store i64 %call6, i64* %pte.sroa.0, align 8
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %call6) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast20)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_direct_map_default_noflush(%struct.page* noundef %page) local_unnamed_addr #1 {
entry:
  %data = alloca %struct.page_change_data, align 8
  %0 = bitcast %struct.page_change_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.page_change_data* @__const.set_direct_map_default_noflush.data to i8*), i64 16, i1 false)
  %call = call i1 @can_set_direct_map() #7
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %1, 6
  %add.i = and i64 %sub.i, -4096
  %call2 = call i32 @apply_to_page_range(%struct.mm_struct* noundef nonnull @init_mm, i64 noundef %add.i, i64 noundef 4096, i32 (%struct.pte_t*, i64, i8*)* noundef nonnull @change_page_range, i8* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @kernel_page_present(%struct.page* noundef %page) local_unnamed_addr #5 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  %pmd.sroa.0 = alloca i64, align 8
  %agg.tmp.sroa.0 = alloca i64, align 8
  %agg.tmp7.sroa.0 = alloca i64, align 8
  %agg.tmp44.sroa.0 = alloca i64, align 8
  %pud.sroa.0.0.sroa_cast84 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast84)
  %pmd.sroa.0.0.sroa_cast82 = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast82)
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %call1 = call i1 @can_set_direct_map() #7
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call2 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %add.i) #7
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %call2, i64 0, i32 0
  %agg.tmp.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp.sroa.0.0.copyload, i64* %agg.tmp.sroa.0, align 8
  %call6 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call2) #7
  %agg.tmp7.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call6, i64 0, i32 0, i32 0
  %agg.tmp7.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp7.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp7.sroa.0.0.copyload, i64* %agg.tmp7.sroa.0, align 8
  %call17 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call6) #7
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call17, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %tobool22.not = icmp eq i64 %pud.sroa.0.0.copyload, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end
  %and = and i64 %pud.sroa.0.0.copyload, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end24
  %call30 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call17, i64 noundef %add.i) #7
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call30, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %tobool35.not = icmp eq i64 %pmd.sroa.0.0.copyload, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end29
  %and39 = and i64 %pmd.sroa.0.0.copyload, 3
  %cmp40 = icmp eq i64 %and39, 1
  br i1 %cmp40, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end37
  %call43 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call30, i64 noundef %add.i) #7
  %agg.tmp44.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call43, i64 0, i32 0
  %agg.tmp44.sroa.0.0.copyload = load volatile i64, i64* %agg.tmp44.sroa.0.0..sroa_idx, align 8
  store volatile i64 %agg.tmp44.sroa.0.0.copyload, i64* %agg.tmp44.sroa.0, align 8
  %and48 = and i64 %agg.tmp44.sroa.0.0.copyload, 1
  %tobool49 = icmp ne i64 %and48, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end29, %if.end24, %if.end, %entry, %if.end42
  %retval.0 = phi i1 [ %tobool49, %if.end42 ], [ true, %entry ], [ false, %if.end ], [ true, %if.end24 ], [ false, %if.end29 ], [ true, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast82)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast84)
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #6 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #0 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #7
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #7
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #0 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #7
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #7
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_struct* @find_vm_area(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_aliases() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %end) unnamed_addr #1 {
entry:
  %sub = sub i64 %end, %start
  %cmp = icmp ugt i64 %sub, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_all() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %start, 12
  %and = and i64 %shr, 17592186044415
  %shr2 = lshr i64 %end, 12
  %and3 = and i64 %shr2, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  %cmp620 = icmp ult i64 %and, %and3
  br i1 %cmp620, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %addr.021 = phi i64 [ %add, %for.body ], [ %and, %if.end ]
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %addr.021) #8, !srcloc !10
  %add = add nuw nsw i64 %addr.021, 1
  %exitcond.not = icmp eq i64 %add, %and3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_all() unnamed_addr #1 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1is\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1is\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #8, !srcloc !14
  call void asm sideeffect "dsb ish", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #6 {
entry:
  %neg = xor i64 %prot.coerce, -1
  %and = and i64 %neg, %pte.coerce
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #6 {
entry:
  %or = or i64 %prot.coerce, %pte.coerce
  ret i64 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #1 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  store i64 %pte.coerce, i64* %pte.sroa.0, align 8
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0, align 8
  store volatile i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, 18014398509482049
  %cmp = icmp eq i64 %and, 18014398509481985
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  call void asm sideeffect "isb", "~{memory}"() #8, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #7
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #6 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #6 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #7
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #6 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2153616787}
!9 = !{i64 2151459242}
!10 = !{i64 2151459719, i64 2151459444, i64 2151460083, i64 2151460129, i64 2151460135, i64 2151461523, i64 2151460172, i64 2151460190, i64 2151461598, i64 2151461646, i64 2151461694, i64 2151461757, i64 2151461806, i64 2151460268, i64 2151460293, i64 2151460319, i64 2151460325, i64 2151461544, i64 2151460362, i64 2151460368, i64 2151460418, i64 2151460464, i64 2151460497}
!11 = !{i64 2151461870}
!12 = !{i64 2151461917}
!13 = !{i64 2151283992}
!14 = !{i64 2151284417, i64 2151284161, i64 2151284769, i64 2151284815, i64 2151284821, i64 2151286209, i64 2151284858, i64 2151284876, i64 2151286278, i64 2151286326, i64 2151286374, i64 2151286437, i64 2151286486, i64 2151284954, i64 2151284979, i64 2151285005, i64 2151285011, i64 2151286230, i64 2151285048, i64 2151285054, i64 2151285104, i64 2151285150, i64 2151285183}
!15 = !{i64 2151286550}
!16 = !{i64 2151286597}
!17 = !{i64 2151488464}
!18 = !{i64 2151488513}
