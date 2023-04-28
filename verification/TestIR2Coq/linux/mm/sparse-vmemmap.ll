; ModuleID = 'mm/sparse-vmemmap.c'
source_filename = "mm/sparse-vmemmap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
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
%struct.vmemmap_remap_walk = type { void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)*, i64, %struct.page*, i64, %struct.list_head* }
%struct.nodemask_t = type { [1 x i64] }
%struct.vmem_altmap = type { i64, i64, i64, i64, i64, i64 }

@init_mm = external dso_local global %struct.mm_struct, align 8
@vmemmap_alloc_block.warned = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [32 x i8] c"vmemmap alloc failure: order:%u\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"\014[%lx-%lx] potential offnode page_structs\0A\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@altmap_alloc_block_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\014%s: allocations must be multiple of PAGE_SIZE (%ld)\0A\00", align 1
@__func__.altmap_alloc_block_buf = private unnamed_addr constant [23 x i8] c"altmap_alloc_block_buf\00", align 1
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmemmap_remap_free(i64 noundef %start, i64 noundef %end, i64 noundef %reuse) local_unnamed_addr #0 {
entry:
  %vmemmap_pages = alloca %struct.list_head, align 8
  %walk = alloca %struct.vmemmap_remap_walk, align 8
  %0 = bitcast %struct.list_head* %vmemmap_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %vmemmap_pages, i64 0, i32 0
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %vmemmap_pages, i64 0, i32 1
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.vmemmap_remap_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #15
  %remap_pte = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 0
  store void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)* @vmemmap_remap_pte, void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)** %remap_pte, align 8
  %nr_walked = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 1
  store i64 0, i64* %nr_walked, align 8
  %reuse_page = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 2
  store %struct.page* null, %struct.page** %reuse_page, align 8
  %reuse_addr = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 3
  store i64 %reuse, i64* %reuse_addr, align 8
  %vmemmap_pages1 = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 4
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %vmemmap_pages1, align 8
  %sub = sub i64 %start, %reuse
  %cmp.not = icmp eq i64 %sub, 4096
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/sparse-vmemmap.c\22; .popsection; .long 14472b - 14470b; .short 301; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  unreachable

do.end8:                                          ; preds = %entry
  call fastcc void @mmap_write_lock() #16
  %call = call fastcc i32 @vmemmap_remap_range(i64 noundef %reuse, i64 noundef %end, %struct.vmemmap_remap_walk* noundef nonnull %walk) #16
  call fastcc void @mmap_write_downgrade() #16
  %tobool9 = icmp ne i32 %call, 0
  %2 = load i64, i64* %nr_walked, align 8
  %tobool11 = icmp ne i64 %2, 0
  %or.cond = select i1 %tobool9, i1 %tobool11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end20

if.then12:                                        ; preds = %do.end8
  %mul = shl i64 %2, 12
  %add = add i64 %mul, %reuse
  store void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)* @vmemmap_restore_pte, void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)** %remap_pte, align 8
  store i64 0, i64* %nr_walked, align 8
  store %struct.page* null, %struct.page** %reuse_page, align 8
  store i64 %reuse, i64* %reuse_addr, align 8
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %vmemmap_pages1, align 8
  %call19 = call fastcc i32 @vmemmap_remap_range(i64 noundef %reuse, i64 noundef %add, %struct.vmemmap_remap_walk* noundef nonnull %walk) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %do.end8
  call fastcc void @mmap_read_unlock() #16
  call fastcc void @free_vmemmap_page_list(%struct.list_head* noundef nonnull %vmemmap_pages) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vmemmap_remap_pte(%struct.pte_t* noundef %pte, i64 noundef %addr, %struct.vmemmap_remap_walk* nocapture noundef readonly %walk) #0 {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  %or6 = select i1 %tobool.not, i64 27021597764224899, i64 27021597764226947
  %reuse_page = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 2
  %1 = load %struct.page*, %struct.page** %reuse_page, align 8
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or10 = or i64 %shl, %or6
  %pte14 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i64 0, i32 0
  %3 = load i64, i64* %pte14, align 8
  %and15 = lshr i64 %3, 12
  %shr16 = and i64 %and15, 68719476735
  %add.ptr17 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr16
  %4 = getelementptr inbounds %struct.page, %struct.page* %add.ptr17, i64 0, i32 1
  %lru = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0, i32 0
  %vmemmap_pages = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 4
  %5 = load %struct.list_head*, %struct.list_head** %vmemmap_pages, align 8
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %5) #16
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte, i64 %or10) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_lock() unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 15)) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmemmap_remap_range(i64 noundef %start, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) unnamed_addr #0 {
entry:
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %start) #16
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %pgd.0 = phi %struct.pgd_t* [ %call, %entry ], [ %incdec.ptr, %do.cond ]
  %addr.0 = phi i64 [ %start, %entry ], [ %cond, %do.cond ]
  %add = add i64 %addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call2 = call fastcc i32 @vmemmap_p4d_range(%struct.pgd_t* noundef %pgd.0, i64 noundef %addr.0, i64 noundef %cond, %struct.vmemmap_remap_walk* noundef %walk) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.cond, label %cleanup5

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp3.not = icmp eq i64 %cond, %end
  br i1 %cmp3.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %add4 = add i64 %start, 4096
  call fastcc void @flush_tlb_kernel_range(i64 noundef %add4, i64 noundef %end) #16
  br label %cleanup5

cleanup5:                                         ; preds = %do.body, %do.end
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_downgrade() unnamed_addr #0 {
entry:
  call void @downgrade_write(%struct.rw_semaphore* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 15)) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @vmemmap_restore_pte(%struct.pte_t* noundef %pte, i64 noundef %addr, %struct.vmemmap_remap_walk* nocapture noundef readonly %walk) #0 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %pte6 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i64 0, i32 0
  %1 = load i64, i64* %pte6, align 8
  %and = lshr i64 %1, 12
  %shr7 = and i64 %and, 68719476735
  %add.ptr8 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr7
  %reuse_page = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 2
  %2 = load %struct.page*, %struct.page** %reuse_page, align 8
  %cmp.not = icmp eq %struct.page* %add.ptr8, %2
  br i1 %cmp.not, label %do.end16, label %do.body11, !prof !8

do.body11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/sparse-vmemmap.c\22; .popsection; .long 14472b - 14470b; .short 255; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !11
  unreachable

do.end16:                                         ; preds = %entry
  %3 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool.not = icmp eq i8 %3, 0
  %or4 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %vmemmap_pages = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 4
  %4 = bitcast %struct.list_head** %vmemmap_pages to i8***
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %add.ptr20 = getelementptr i8, i8* %6, i64 -8
  %lru = bitcast i8* %6 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %lru) #16
  %7 = ptrtoint i8* %add.ptr20 to i64
  %sub = shl i64 %7, 6
  %add = and i64 %sub, -4096
  %8 = inttoptr i64 %add to i8*
  %reuse_addr = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 3
  %9 = load i64, i64* %reuse_addr, align 8
  %10 = inttoptr i64 %9 to i8*
  call void @copy_page(i8* noundef %8, i8* noundef %10) #17
  %11 = load i64, i64* @memstart_addr, align 8
  %shr24 = ashr i64 %11, 12
  %idx.neg25 = sub nsw i64 0, %shr24
  %add.ptr26 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg25
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr26 to i64
  %sub.ptr.sub = sub i64 %7, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or28 = or i64 %shl, %or4
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte, i64 %or28) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock() unnamed_addr #0 {
entry:
  call void @up_read(%struct.rw_semaphore* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 15)) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vmemmap_page_list(%struct.list_head* noundef readonly %list) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not30 = icmp eq %struct.list_head* %2, %list
  br i1 %cmp.not30, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %3 = phi %struct.list_head* [ %4, %for.body ], [ %2, %entry ]
  %.pn.in.in31 = phi i8* [ %.pn, %for.body ], [ %1, %entry ]
  %page.0.in = getelementptr i8, i8* %.pn.in.in31, i64 -8
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  %.pn.in = bitcast i8* %.pn.in.in31 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @list_del(%struct.list_head* noundef %3) #16
  call fastcc void @free_vmemmap_page(%struct.page* noundef %page.0) #16
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %4, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmemmap_remap_alloc(i64 noundef %start, i64 noundef %end, i64 noundef %reuse, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %vmemmap_pages = alloca %struct.list_head, align 8
  %walk = alloca %struct.vmemmap_remap_walk, align 8
  %0 = bitcast %struct.list_head* %vmemmap_pages to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %vmemmap_pages, i64 0, i32 0
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %vmemmap_pages, i64 0, i32 1
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.vmemmap_remap_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #15
  %remap_pte = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 0
  store void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)* @vmemmap_restore_pte, void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)** %remap_pte, align 8
  %nr_walked = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 1
  store i64 0, i64* %nr_walked, align 8
  %reuse_page = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 2
  store %struct.page* null, %struct.page** %reuse_page, align 8
  %reuse_addr = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 3
  store i64 %reuse, i64* %reuse_addr, align 8
  %vmemmap_pages1 = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 4
  store %struct.list_head* %vmemmap_pages, %struct.list_head** %vmemmap_pages1, align 8
  %sub = sub i64 %start, %reuse
  %cmp.not = icmp eq i64 %sub, 4096
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/sparse-vmemmap.c\22; .popsection; .long 14472b - 14470b; .short 375; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  unreachable

do.end8:                                          ; preds = %entry
  %call = call fastcc i32 @alloc_vmemmap_page_list(i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask, %struct.list_head* noundef nonnull %vmemmap_pages) #16
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %do.end8
  call fastcc void @mmap_read_lock() #16
  %call12 = call fastcc i32 @vmemmap_remap_range(i64 noundef %reuse, i64 noundef %end, %struct.vmemmap_remap_walk* noundef nonnull %walk) #16
  call fastcc void @mmap_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %do.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_vmemmap_page_list(i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %sub = sub i64 %end, %start
  %tobool.not42 = icmp ult i64 %sub, 4096
  br i1 %tobool.not42, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %shr = lshr i64 %sub, 12
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %dec43.in = phi i64 [ %dec43, %if.end ], [ %shr, %while.body.preheader ]
  %dec43 = add i64 %dec43.in, -1
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask, i32 noundef 0) #16
  %tobool2.not = icmp eq %struct.page* %call1, null
  br i1 %tobool2.not, label %out, label %if.end

if.end:                                           ; preds = %while.body
  %lru = getelementptr inbounds %struct.page, %struct.page* %call1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %lru, %struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i64 %dec43, 0
  br i1 %tobool.not, label %cleanup, label %while.body

out:                                              ; preds = %while.body
  %0 = bitcast %struct.list_head* %list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not44 = icmp eq %struct.list_head* %2, %list
  br i1 %cmp.not44, label %cleanup, label %for.body

for.body:                                         ; preds = %out, %for.body
  %.pn.in.in45 = phi i8* [ %.pn, %for.body ], [ %1, %out ]
  %page.0.in = getelementptr i8, i8* %.pn.in.in45, i64 -8
  %page.0 = bitcast i8* %page.0.in to %struct.page*
  %.pn.in = bitcast i8* %.pn.in.in45 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call void @__free_pages(%struct.page* noundef %page.0, i32 noundef 0) #17
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %3, %list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %for.body, %entry, %out
  %retval.0 = phi i32 [ -12, %out ], [ 0, %entry ], [ -12, %for.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock() unnamed_addr #0 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 15)) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @vmemmap_alloc_block(i64 noundef %size, i32 noundef %node) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %call = call i1 @slab_is_available() #17
  br i1 %call, label %if.end14.i, label %cond.end

if.end14.i:                                       ; preds = %entry
  %dec.i = add i64 %size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #15, !range !13
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  %call2 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node, i32 noundef 27840, i32 noundef %retval.0.i.i) #16
  %tobool.not = icmp eq %struct.page* %call2, null
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.end14.i
  %2 = ptrtoint %struct.page* %call2 to i64
  %sub.i27 = shl i64 %2, 6
  %add.i28 = and i64 %sub.i27, -4096
  %3 = inttoptr i64 %add.i28 to i8*
  br label %return

if.end:                                           ; preds = %if.end14.i
  %.b26 = load i1, i1* @vmemmap_alloc_block.warned, align 1
  br i1 %.b26, label %return, label %if.then6

if.then6:                                         ; preds = %if.end
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef 19648, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %retval.0.i.i) #17
  store i1 true, i1* @vmemmap_alloc_block.warned, align 1
  br label %return

cond.end:                                         ; preds = %entry
  %4 = load i64, i64* @memstart_addr, align 8
  %call13 = call fastcc i8* @__earlyonly_bootmem_alloc(i32 noundef %node, i64 noundef %size, i64 noundef %size, i64 noundef %4) #16
  br label %return

return:                                           ; preds = %if.then3, %if.then6, %if.end, %cond.end
  %retval.1 = phi i8* [ %call13, %cond.end ], [ %3, %if.then3 ], [ null, %if.then6 ], [ null, %if.end ]
  ret i8* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @slab_is_available() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid.addr.0, i32 noundef %gfp_mask, i32 noundef %order) #16
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_alloc(i32 noundef, %struct.nodemask_t* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__earlyonly_bootmem_alloc(i32 noundef %node, i64 noundef %size, i64 noundef %align, i64 noundef %goal) unnamed_addr #0 section ".ref.text" {
entry:
  %call = call i8* @memblock_alloc_try_nid_raw(i64 noundef %size, i64 noundef %align, i64 noundef %goal, i64 noundef 0, i32 noundef %node) #17
  ret i8* %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @vmemmap_alloc_block_buf(i64 noundef %size, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %tobool.not = icmp eq %struct.vmem_altmap* %altmap, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @altmap_alloc_block_buf(i64 noundef %size, %struct.vmem_altmap* noundef nonnull %altmap) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i8* @sparse_buffer_alloc(i64 noundef %size) #17
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @vmemmap_alloc_block(i64 noundef %size, i32 noundef %node) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call1, %if.end ], [ %call4, %if.then3 ]
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i8* @altmap_alloc_block_buf(i64 noundef %size, %struct.vmem_altmap* nocapture noundef %altmap) unnamed_addr #2 section ".meminit.text" {
entry:
  %nr_pfns = alloca i64, align 8
  %0 = bitcast i64* %nr_pfns to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %and = and i64 %size, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %.b50 = load i1, i1* @altmap_alloc_block_buf.__already_done, align 1
  br i1 %.b50, label %cleanup, label %if.then6, !prof !8

if.then6:                                         ; preds = %if.then
  store i1 true, i1* @altmap_alloc_block_buf.__already_done, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.altmap_alloc_block_buf, i64 0, i64 0), i64 noundef %size) #19
  br label %cleanup

if.end15:                                         ; preds = %entry
  %call16 = call fastcc i64 @vmem_altmap_next_pfn(%struct.vmem_altmap* noundef %altmap) #18
  %shr = lshr i64 %size, 12
  store i64 %shr, i64* %nr_pfns, align 8
  %call17 = call fastcc i64 @find_first_bit(i64* noundef nonnull %nr_pfns) #16
  %notmask = shl nsw i64 -1, %call17
  %sub = xor i64 %notmask, -1
  %add = add i64 %call16, %sub
  %and19 = and i64 %add, %notmask
  %sub20 = sub i64 %and19, %call16
  %add21 = add i64 %sub20, %shr
  %call22 = call fastcc i64 @vmem_altmap_nr_free(%struct.vmem_altmap* noundef %altmap) #18
  %cmp = icmp ugt i64 %add21, %call22
  br i1 %cmp, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end15
  %alloc = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 5
  %1 = load i64, i64* %alloc, align 8
  %add26 = add i64 %1, %shr
  store i64 %add26, i64* %alloc, align 8
  %align = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 4
  %2 = load i64, i64* %align, align 8
  %add27 = add i64 %2, %sub20
  store i64 %add27, i64* %align, align 8
  %shl30 = shl i64 %and19, 12
  %3 = load i64, i64* @memstart_addr, align 8
  %sub32 = sub i64 %shl30, %3
  %or = or i64 %sub32, -549755813888
  %4 = inttoptr i64 %or to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then, %if.then6, %if.end25
  %retval.0 = phi i8* [ %4, %if.end25 ], [ null, %if.then6 ], [ null, %if.then ], [ null, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @sparse_buffer_alloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vmemmap_verify(%struct.pte_t* nocapture noundef readnone %pte, i32 noundef %node, i64 noundef %start, i64 noundef %end) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %cmp.not = icmp eq i32 %node, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %sub = add i64 %end, -1
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 noundef %start, i64 noundef %sub) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.pte_t* @vmemmap_pte_populate(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #16
  %pte1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call, i64 0, i32 0
  %0 = load i64, i64* %pte1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %cleanup21

if.then:                                          ; preds = %entry
  %call3 = call i8* @vmemmap_alloc_block_buf(i64 noundef 4096, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) #18
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %cleanup21, label %if.end

if.end:                                           ; preds = %if.then
  %1 = ptrtoint i8* %call3 to i64
  %sub = add i64 %1, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %2 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %2, %sub
  %3 = load i64, i64* @kimage_voffset, align 8
  %sub9 = sub i64 %1, %3
  %cond = select i1 %cmp, i64 %add, i64 %sub9
  %shr = and i64 %cond, -29273397577912320
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool11.not = icmp eq i8 %4, 0
  %or15 = select i1 %tobool11.not, i64 29273397577910019, i64 29273397577912067
  %or18 = or i64 %shr, %or15
  call fastcc void @set_pte_at(%struct.pte_t* noundef %call, i64 %or18) #16
  br label %cleanup21

cleanup21:                                        ; preds = %entry, %if.end, %if.then
  %retval.1 = phi %struct.pte_t* [ null, %if.then ], [ %call, %if.end ], [ %call, %entry ]
  ret %struct.pte_t* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #16
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #16
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool.not = icmp ne i64 %and, 0
  %and3 = and i64 %pte.coerce, 18014398509481984
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  %and7 = and i64 %pte.coerce, 72057594037927936
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool8.not, i1 false
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sync_icache_dcache(i64 %pte.coerce) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.pmd_t* @vmemmap_pmd_populate(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i32 noundef %node) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #16
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %cleanup6

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @vmemmap_alloc_block_zero(i32 noundef %node) #18
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %cleanup6, label %if.end

if.end:                                           ; preds = %if.then
  %1 = bitcast i8* %call2 to %struct.pte_t*
  call fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef nonnull %call, %struct.pte_t* noundef nonnull %1) #16
  br label %cleanup6

cleanup6:                                         ; preds = %entry, %if.end, %if.then
  %retval.1 = phi %struct.pmd_t* [ null, %if.then ], [ %call, %if.end ], [ %call, %entry ]
  ret %struct.pmd_t* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #16
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #16
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i8* @vmemmap_alloc_block_zero(i32 noundef %node) unnamed_addr #2 section ".meminit.text" {
entry:
  %call = call i8* @vmemmap_alloc_block(i64 noundef 4096, i32 noundef %node) #18
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef 4096) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef %pmdp, %struct.pte_t* noundef %ptep) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pte_t* %ptep to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  call fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %cond) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.pud_t* @vmemmap_pud_populate(%struct.p4d_t* noundef %p4d, i64 %addr, i32 noundef %node) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #16
  %pgd2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd2, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %cleanup7

if.then:                                          ; preds = %entry
  %call3 = call fastcc i8* @vmemmap_alloc_block_zero(i32 noundef %node) #18
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %cleanup7, label %if.end

if.end:                                           ; preds = %if.then
  %1 = bitcast i8* %call3 to %struct.pmd_t*
  call fastcc void @pud_populate(%struct.pud_t* noundef %call, %struct.pmd_t* noundef nonnull %1) #16
  br label %cleanup7

cleanup7:                                         ; preds = %entry, %if.end, %if.then
  %retval.1 = phi %struct.pud_t* [ null, %if.then ], [ %call, %if.end ], [ %call, %entry ]
  ret %struct.pud_t* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pud_populate(%struct.pud_t* noundef %pudp, %struct.pmd_t* noundef %pmdp) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pmd_t* %pmdp to i64
  %sub = add i64 %0, 549755813888
  %cmp1 = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub4 = sub i64 %0, %2
  %cond5 = select i1 %cmp1, i64 %add, i64 %sub4
  call fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %cond5) #16
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define dso_local %struct.p4d_t* @vmemmap_p4d_populate(%struct.pgd_t* noundef readnone %pgd, i64 %addr, i32 %node) local_unnamed_addr #7 section ".meminit.text" {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #16
  ret %struct.p4d_t* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define dso_local %struct.pgd_t* @vmemmap_pgd_populate(i64 noundef %addr, i32 %node) local_unnamed_addr #8 section ".meminit.text" {
entry:
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %0, i64 noundef %addr) #16
  ret %struct.pgd_t* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #6 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @vmemmap_populate_basepages(i64 noundef %start, i64 noundef %end, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %cmp47 = icmp ult i64 %start, %end
  br i1 %cmp47, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %if.end16
  %addr.048 = phi i64 [ %add, %if.end16 ], [ %start, %entry ]
  %call = call %struct.pgd_t* @vmemmap_pgd_populate(i64 noundef %addr.048, i32 undef) #18
  %tobool.not = icmp eq %struct.pgd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = call %struct.p4d_t* @vmemmap_p4d_populate(%struct.pgd_t* noundef nonnull %call, i64 undef, i32 undef) #18
  %tobool2.not = icmp eq %struct.p4d_t* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.pud_t* @vmemmap_pud_populate(%struct.p4d_t* noundef nonnull %call1, i64 undef, i32 noundef %node) #18
  %tobool6.not = icmp eq %struct.pud_t* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call %struct.pmd_t* @vmemmap_pmd_populate(%struct.pud_t* noundef nonnull %call5, i64 noundef %addr.048, i32 noundef %node) #18
  %tobool10.not = icmp eq %struct.pmd_t* %call9, null
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call %struct.pte_t* @vmemmap_pte_populate(%struct.pmd_t* noundef nonnull %call9, i64 noundef %addr.048, i32 noundef %node, %struct.vmem_altmap* noundef %altmap) #18
  %tobool14.not = icmp eq %struct.pte_t* %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  %add = add i64 %addr.048, 4096
  call void @vmemmap_verify(%struct.pte_t* noundef nonnull %call13, i32 noundef %node, i64 noundef %addr.048, i64 noundef %add) #18
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %if.end4, %if.end8, %if.end12, %if.end16, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end16 ], [ -12, %if.end12 ], [ -12, %if.end8 ], [ -12, %if.end4 ], [ -12, %if.end ], [ -12, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.page* @__populate_section_memmap(i64 noundef %pfn, i64 noundef %nr_pages, i32 noundef %nid, %struct.vmem_altmap* noundef %altmap) local_unnamed_addr #2 section ".meminit.text" {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr1 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %pfn
  %1 = ptrtoint %struct.page* %add.ptr1 to i64
  %2 = or i64 %nr_pages, %pfn
  %3 = and i64 %2, 511
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %if.end20, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/sparse-vmemmap.c\22; .popsection; .long 14472b - 14470b; .short 612; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !14
  br label %cleanup

if.end20:                                         ; preds = %entry
  %mul = shl i64 %nr_pages, 6
  %add = add i64 %mul, %1
  %call = call i32 @vmemmap_populate(i64 noundef %1, i64 noundef %add, i32 noundef %nid, %struct.vmem_altmap* noundef %altmap) #17
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end20
  %4 = load i64, i64* @memstart_addr, align 8
  %shr24 = ashr i64 %4, 12
  %idx.neg25 = sub nsw i64 0, %shr24
  %add.ptr26 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg25
  %add.ptr27 = getelementptr %struct.page, %struct.page* %add.ptr26, i64 %pfn
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end20, %if.end23
  %retval.0 = phi %struct.page* [ %add.ptr27, %if.end23 ], [ null, %if.then ], [ null, %if.end20 ]
  ret %struct.page* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmemmap_populate(i64 noundef, i64 noundef, i32 noundef, %struct.vmem_altmap* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmemmap_p4d_range(%struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #16
  %call1 = call fastcc i32 @vmemmap_pud_range(%struct.p4d_t* noundef %call, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %sub = sub i64 %end, %start
  %cmp = icmp ugt i64 %sub, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_all() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %start, 12
  %and = and i64 %shr, 17592186044415
  %shr2 = lshr i64 %end, 12
  %and3 = and i64 %shr2, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !15
  %cmp620 = icmp ult i64 %and, %and3
  br i1 %cmp620, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %addr.021 = phi i64 [ %add, %for.body ], [ %and, %if.end ]
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %addr.021) #15, !srcloc !16
  %add = add nuw nsw i64 %addr.021, 1
  %exitcond.not = icmp eq i64 %add, %and3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #15, !srcloc !17
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmemmap_pud_range(%struct.p4d_t* noundef readonly %p4d, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #16
  %call1 = call fastcc i32 @vmemmap_pmd_range(%struct.pud_t* noundef %call, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmemmap_pmd_range(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #16
  %sub7 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %if.end5, %entry
  %pmd.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %if.end5 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %if.end5 ]
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %do.body
  %and2 = and i64 %addr.addr.0, -2097152
  %call3 = call fastcc i32 @split_vmemmap_huge_pmd(%struct.pmd_t* noundef %pmd.0, i64 noundef %and2) #16
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %cleanup10

if.end5:                                          ; preds = %if.then, %do.body
  %add = add i64 %addr.addr.0, 2097152
  %and6 = and i64 %add, -2097152
  %sub = add i64 %and6, -1
  %cmp8 = icmp ult i64 %sub, %sub7
  %cond = select i1 %cmp8, i64 %and6, i64 %end
  call fastcc void @vmemmap_pte_range(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.vmemmap_remap_walk* noundef %walk) #16
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp9.not = icmp eq i64 %cond, %end
  br i1 %cmp9.not, label %cleanup10, label %do.body

cleanup10:                                        ; preds = %if.end5, %if.then
  %retval.3 = phi i32 [ %call3, %if.then ], [ 0, %if.end5 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @split_vmemmap_huge_pmd(%struct.pmd_t* noundef %pmd, i64 noundef %start) unnamed_addr #0 {
entry:
  %__pmd = alloca %struct.pmd_t, align 8
  %0 = bitcast %struct.pmd_t* %__pmd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %__pmd, i64 0, i32 0, !annotation !19
  store i64 0, i64* %1, align 8, !annotation !19
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %3 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %3, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.pte_t* @pte_alloc_one_kernel() #16
  %tobool.not = icmp eq %struct.pte_t* %call4, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef nonnull %__pmd, %struct.pte_t* noundef nonnull %call4) #16
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %addr.02 = phi i64 [ %start, %if.end ], [ %add, %for.body ]
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool9.not = icmp eq i8 %4, 0
  %or13 = select i1 %tobool9.not, i64 29273397577910019, i64 29273397577912067
  %add.ptr16 = getelementptr %struct.page, %struct.page* %add.ptr3, i64 %indvars.iv
  %5 = load i64, i64* @memstart_addr, align 8
  %shr17 = ashr i64 %5, 12
  %idx.neg18 = sub nsw i64 0, %shr17
  %add.ptr19 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg18
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %add.ptr16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or21 = or i64 %shl, %or13
  %call22 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %__pmd, i64 noundef %addr.02) #16
  call fastcc void @set_pte_at(%struct.pte_t* noundef %call22, i64 %or21) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add = add i64 %addr.02, 4096
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !20
  call fastcc void @pmd_populate_kernel(%struct.pmd_t* noundef %pmd, %struct.pte_t* noundef nonnull %call4) #16
  %add24 = add i64 %start, 2097152
  call fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %add24) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vmemmap_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.vmemmap_remap_walk* noundef %walk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #16
  %reuse_page = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 2
  %0 = load %struct.page*, %struct.page** %reuse_page, align 8
  %tobool.not = icmp eq %struct.page* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %pte1 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call, i64 0, i32 0
  %2 = load i64, i64* %pte1, align 8
  %and = lshr i64 %2, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  store %struct.page* %add.ptr3, %struct.page** %reuse_page, align 8
  %add = add i64 %addr, 4096
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %call, i64 1
  %nr_walked = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 1
  %3 = load i64, i64* %nr_walked, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %nr_walked, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %add, %if.then ]
  %pte.0 = phi %struct.pte_t* [ %call, %entry ], [ %incdec.ptr, %if.then ]
  %cmp.not22 = icmp eq i64 %addr.addr.0, %end
  br i1 %cmp.not22, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %remap_pte = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 0
  %nr_walked5 = getelementptr inbounds %struct.vmemmap_remap_walk, %struct.vmemmap_remap_walk* %walk, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %pte.124 = phi %struct.pte_t* [ %pte.0, %for.body.lr.ph ], [ %incdec.ptr8, %for.body ]
  %addr.addr.123 = phi i64 [ %addr.addr.0, %for.body.lr.ph ], [ %add7, %for.body ]
  %4 = load void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)*, void (%struct.pte_t*, i64, %struct.vmemmap_remap_walk*)** %remap_pte, align 8
  call void %4(%struct.pte_t* noundef %pte.124, i64 noundef %addr.addr.123, %struct.vmemmap_remap_walk* noundef %walk) #17
  %5 = load i64, i64* %nr_walked5, align 8
  %inc6 = add i64 %5, 1
  store i64 %inc6, i64* %nr_walked5, align 8
  %add7 = add i64 %addr.addr.123, 4096
  %incdec.ptr8 = getelementptr %struct.pte_t, %struct.pte_t* %pte.124, i64 1
  %cmp.not = icmp eq i64 %add7, %end
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @pte_alloc_one_kernel() unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pte_t* @__pte_alloc_one_kernel() #16
  ret %struct.pte_t* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @__pte_alloc_one_kernel() unnamed_addr #0 {
entry:
  %call = call i64 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #17
  %0 = inttoptr i64 %call to %struct.pte_t*
  ret %struct.pte_t* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1is\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1is\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #15, !srcloc !22
  call void asm sideeffect "dsb ish", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vmemmap_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 4096
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @free_bootmem_page(%struct.page* noundef %page) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__free_pages(%struct.page* noundef %page, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_bootmem_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @free_reserved_page(%struct.page* noundef %page) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_reserved_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i) #17
  call fastcc void @init_page_count(%struct.page* noundef %page) #16
  call void @__free_pages(%struct.page* noundef %page, i32 noundef 0) #17
  call void @adjust_managed_page_count(%struct.page* noundef %page, i64 noundef 1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_page_count(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  call fastcc void @set_page_count(%struct.page* noundef %page) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(%struct.page* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 4096, i64* elementtype(i64) %counter) #15, !srcloc !25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @set_page_count(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #11 {
entry:
  call fastcc void @numa_node_id() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %nid, %struct.nodemask_t* noundef null) #17
  ret %struct.page* %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #20, !srcloc !26
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid_raw(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define internal fastcc i64 @vmem_altmap_next_pfn(%struct.vmem_altmap* nocapture noundef readonly %altmap) unnamed_addr #8 section ".meminit.text" {
entry:
  %base_pfn = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 0
  %0 = load i64, i64* %base_pfn, align 8
  %reserve = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 2
  %1 = load i64, i64* %reserve, align 8
  %add = add i64 %1, %0
  %alloc = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 5
  %2 = load i64, i64* %alloc, align 8
  %add1 = add i64 %add, %2
  %align = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 4
  %3 = load i64, i64* %align, align 8
  %add2 = add i64 %add1, %3
  ret i64 %add2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_first_bit(i64* nocapture noundef readonly %addr) unnamed_addr #13 {
entry:
  %0 = load i64, i64* %addr, align 8
  %1 = call i64 @llvm.cttz.i64(i64 %0, i1 false) #15, !range !13
  ret i64 %1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define internal fastcc i64 @vmem_altmap_nr_free(%struct.vmem_altmap* nocapture noundef readonly %altmap) unnamed_addr #8 section ".meminit.text" {
entry:
  %alloc = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 5
  %0 = load i64, i64* %alloc, align 8
  %align = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 4
  %1 = load i64, i64* %align, align 8
  %add = add i64 %1, %0
  %free = getelementptr inbounds %struct.vmem_altmap, %struct.vmem_altmap* %altmap, i64 0, i32 3
  %2 = load i64, i64* %free, align 8
  %3 = call i64 @llvm.usub.sat.i64(i64 %2, i64 %add)
  ret i64 %3
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
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
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !27
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pmd_populate(%struct.pmd_t* noundef %pmdp, i64 noundef %ptep) unnamed_addr #0 {
entry:
  %or = or i64 %ptep, 1152921504606846979
  call fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %or) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pmd(%struct.pmd_t* noundef %pmdp, i64 %pmd.coerce) unnamed_addr #0 {
entry:
  %pmd.sroa.0 = alloca i64, align 8
  store i64 %pmd.coerce, i64* %pmd.sroa.0, align 8
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp, i64 0, i32 0
  %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0, align 8
  store volatile i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, i64* %pmd.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !29
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pud_populate(%struct.pud_t* noundef %pudp, i64 noundef %pmdp) unnamed_addr #0 {
entry:
  %or = or i64 %pmdp, 1152921504606846979
  call fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %or) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pud(%struct.pud_t* noundef %pudp, i64 %pud.coerce) unnamed_addr #0 {
entry:
  %pud.sroa.0 = alloca i64, align 8
  store i64 %pud.coerce, i64* %pud.sroa.0, align 8
  %0 = bitcast %struct.pud_t* %pudp to i8*
  %call = call fastcc i1 @in_swapper_pgdir(i8* noundef %0) #16
  br i1 %call, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %1 = getelementptr %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0
  call void @set_swapper_pgd(%struct.pgd_t* noundef %1, i64 %pud.coerce) #17
  br label %if.end16

do.body7:                                         ; preds = %entry
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pudp, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0, align 8
  store volatile i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, i64* %pud.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.copyload, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %do.body7
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !31
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !32
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.then15, %do.body7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @in_swapper_pgdir(i8* noundef %addr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %1 = xor i64 %0, ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64)
  %cmp = icmp ult i64 %1, 4096
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_swapper_pgd(%struct.pgd_t* noundef, i64) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #14

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin "no-builtins" }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readonly }

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
!9 = !{i64 2153752416}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153744097}
!12 = !{i64 2153761301}
!13 = !{i64 0, i64 65}
!14 = !{i64 2153778605}
!15 = !{i64 2151469306}
!16 = !{i64 2151469783, i64 2151469508, i64 2151470147, i64 2151470193, i64 2151470199, i64 2151471587, i64 2151470236, i64 2151470254, i64 2151471662, i64 2151471710, i64 2151471758, i64 2151471821, i64 2151471870, i64 2151470332, i64 2151470357, i64 2151470383, i64 2151470389, i64 2151471608, i64 2151470426, i64 2151470432, i64 2151470482, i64 2151470528, i64 2151470561}
!17 = !{i64 2151471934}
!18 = !{i64 2151471981}
!19 = !{!"auto-init"}
!20 = !{i64 2153722707}
!21 = !{i64 2151294056}
!22 = !{i64 2151294481, i64 2151294225, i64 2151294833, i64 2151294879, i64 2151294885, i64 2151296273, i64 2151294922, i64 2151294940, i64 2151296342, i64 2151296390, i64 2151296438, i64 2151296501, i64 2151296550, i64 2151295018, i64 2151295043, i64 2151295069, i64 2151295075, i64 2151296294, i64 2151295112, i64 2151295118, i64 2151295168, i64 2151295214, i64 2151295247}
!23 = !{i64 2151296614}
!24 = !{i64 2151296661}
!25 = !{i64 2148041558, i64 2148042079, i64 2148042109, i64 2148042135, i64 2148042167, i64 2148042196}
!26 = !{i64 2149124699, i64 2149124746, i64 2149124752, i64 2149124789, i64 2149124807, i64 2149125734, i64 2149125782, i64 2149125830, i64 2149125893, i64 2149125942, i64 2149124885, i64 2149124910, i64 2149124936, i64 2149124942, i64 2149124979, i64 2149124985, i64 2149125035, i64 2149125081, i64 2149125114}
!27 = !{i64 2151498528}
!28 = !{i64 2151498577}
!29 = !{i64 2151514138}
!30 = !{i64 2151514187}
!31 = !{i64 2151517565}
!32 = !{i64 2151517614}
