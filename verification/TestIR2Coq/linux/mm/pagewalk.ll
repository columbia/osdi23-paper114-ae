; ModuleID = 'mm/pagewalk.c'
source_filename = "mm/pagewalk.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.1, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.1 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.67, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.44, %struct.list_head, %struct.list_head, %union.anon.45 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.42, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.16 = type { i32 }
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
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.26 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.26 = type { %struct.callback_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%struct.request_queue = type opaque
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.41, i32, [12 x i8] }
%union.anon.41 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.43, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.43 = type { i64, i64, %struct.user_fpsimd_state }
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
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.46 }
%union.anon.46 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.47, %union.anon.48 }
%union.anon.47 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.48 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.52 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.50, %struct.qspinlock }
%union.anon.50 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.52 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [48 x i8] }
%struct.anon.23 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.24, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mm_walk_ops = type { i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)*, void (%struct.mm_walk*)* }
%struct.mm_walk = type { %struct.mm_walk_ops*, %struct.mm_struct*, %struct.pgd_t*, %struct.vm_area_struct*, i32, i8, i8* }

@memstart_addr = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_page_range(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %end, %struct.mm_walk_ops* noundef %ops, i8* noundef %private) local_unnamed_addr #0 {
entry:
  %walk = alloca %struct.mm_walk, align 8
  %0 = bitcast %struct.mm_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #6
  %1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  store %struct.mm_walk_ops* %ops, %struct.mm_walk_ops** %ops1, align 8
  %mm2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm2, align 8
  %pgd = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 2
  store %struct.pgd_t* null, %struct.pgd_t** %pgd, align 8
  %vma3 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma3, align 8
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  store i8 0, i8* %no_vma, align 4
  %private4 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  store i8* %private, i8** %private4, align 8
  %cmp.not = icmp uge i64 %start, %end
  %tobool.not = icmp eq %struct.mm_struct* %mm, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef nonnull %mm, i64 noundef %start) #7
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end7
  %vma.0 = phi %struct.vm_area_struct* [ %call, %if.end7 ], [ %vma.2, %do.cond ]
  %start.addr.0 = phi i64 [ %start, %if.end7 ], [ %next.1, %do.cond ]
  %tobool10.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.body
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma3, align 8
  br label %lor.lhs.false

if.else:                                          ; preds = %do.body
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %cmp13 = icmp ult i64 %start.addr.0, %3
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma3, align 8
  %4 = load i64, i64* %vm_start, align 8
  %cmp17 = icmp ugt i64 %4, %end
  %cond = select i1 %cmp17, i64 %end, i64 %4
  br label %lor.lhs.false

if.else18:                                        ; preds = %if.else
  store %struct.vm_area_struct* %vma.0, %struct.vm_area_struct** %vma3, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 1
  %5 = load i64, i64* %vm_end, align 8
  %cmp21 = icmp ugt i64 %5, %end
  %cond25 = select i1 %cmp21, i64 %end, i64 %5
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 2
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %call26 = call fastcc i32 @walk_page_test(i64 noundef %start.addr.0, i64 noundef %cond25, %struct.mm_walk* noundef nonnull %walk) #8
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %do.cond, label %if.end29

if.end29:                                         ; preds = %if.else18
  %cmp30 = icmp slt i32 %call26, 0
  br i1 %cmp30, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end29
  %.pr = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma3, align 8
  %tobool36.not = icmp eq %struct.vm_area_struct* %.pr, null
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end41

lor.lhs.false:                                    ; preds = %if.then11, %if.then14, %if.end34
  %next.086 = phi i64 [ %cond25, %if.end34 ], [ %end, %if.then11 ], [ %cond, %if.then14 ]
  %vma.184 = phi %struct.vm_area_struct* [ %6, %if.end34 ], [ null, %if.then11 ], [ %vma.0, %if.then14 ]
  %7 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %7, i64 0, i32 5
  %8 = load i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)** %pte_hole, align 8
  %tobool38.not = icmp eq i32 (i64, i64, i32, %struct.mm_walk*)* %8, null
  br i1 %tobool38.not, label %do.cond, label %if.end41

if.end41:                                         ; preds = %if.end34, %lor.lhs.false
  %next.085 = phi i64 [ %next.086, %lor.lhs.false ], [ %cond25, %if.end34 ]
  %vma.182 = phi %struct.vm_area_struct* [ %vma.184, %lor.lhs.false ], [ %6, %if.end34 ]
  %call40 = call fastcc i32 @__walk_page_range(i64 noundef %start.addr.0, i64 noundef %next.085, %struct.mm_walk* noundef nonnull %walk) #8
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %lor.lhs.false, %if.else18, %if.end41
  %vma.2 = phi %struct.vm_area_struct* [ %vma.182, %if.end41 ], [ %6, %if.else18 ], [ %vma.184, %lor.lhs.false ]
  %next.1 = phi i64 [ %next.085, %if.end41 ], [ %cond25, %if.else18 ], [ %next.086, %lor.lhs.false ]
  %cmp45 = icmp ult i64 %next.1, %end
  br i1 %cmp45, label %do.body, label %cleanup

cleanup:                                          ; preds = %do.cond, %if.end29, %if.end41, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %call26, %if.end29 ], [ 0, %do.cond ], [ %call40, %if.end41 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_page_test(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops2, align 8
  %test_walk = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 7
  %1 = load i32 (i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)** %test_walk, align 8
  %tobool.not = icmp eq i32 (i64, i64, %struct.mm_walk*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i64 0, i32 8
  %3 = load i64, i64* %vm_flags, align 8
  %and = and i64 %3, 1024
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 5
  %4 = load i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)** %pte_hole, align 8
  %tobool6.not = icmp eq i32 (i64, i64, i32, %struct.mm_walk*)* %4, null
  br i1 %tobool6.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then5
  %call9 = call i32 %4(i64 noundef %start, i64 noundef %end, i32 noundef -1, %struct.mm_walk* noundef %walk) #7
  %tobool11.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool11.not, i32 1, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5, %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ 1, %if.then5 ], [ %spec.select, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__walk_page_range(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %vma1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma1, align 8
  %ops2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %1 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops2, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %0, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pre_vma = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %1, i64 0, i32 8
  %2 = load i32 (i64, i64, %struct.mm_walk*)*, i32 (i64, i64, %struct.mm_walk*)** %pre_vma, align 8
  %tobool3.not = icmp eq i32 (i64, i64, %struct.mm_walk*)* %2, null
  br i1 %tobool3.not, label %land.lhs.true19, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 %2(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) #7
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true19, label %cleanup

if.else:                                          ; preds = %entry
  %call16 = call fastcc i32 @walk_pgd_range(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.then, %land.lhs.true
  %call1649 = call fastcc i32 @walk_pgd_range(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  %post_vma = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %1, i64 0, i32 9
  %3 = load void (%struct.mm_walk*)*, void (%struct.mm_walk*)** %post_vma, align 8
  %tobool20.not = icmp eq void (%struct.mm_walk*)* %3, null
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  call void %3(%struct.mm_walk* noundef %walk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true19, %if.then21, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1649, %if.then21 ], [ %call1649, %land.lhs.true19 ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_page_range_novma(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %end, %struct.mm_walk_ops* noundef %ops, %struct.pgd_t* noundef %pgd, i8* noundef %private) local_unnamed_addr #0 {
entry:
  %walk = alloca %struct.mm_walk, align 8
  %0 = bitcast %struct.mm_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #6
  %1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  store %struct.mm_walk_ops* %ops, %struct.mm_walk_ops** %ops1, align 8
  %mm2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm2, align 8
  %pgd3 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 2
  store %struct.pgd_t* %pgd, %struct.pgd_t** %pgd3, align 8
  %vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma, align 8
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  store i8 1, i8* %no_vma, align 4
  %private4 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  store i8* %private, i8** %private4, align 8
  %cmp = icmp ult i64 %start, %end
  %tobool = icmp ne %struct.mm_struct* %mm, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__walk_page_range(i64 noundef %start, i64 noundef %end, %struct.mm_walk* noundef nonnull %walk) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_page_vma(%struct.vm_area_struct* noundef %vma, %struct.mm_walk_ops* noundef %ops, i8* noundef %private) local_unnamed_addr #0 {
entry:
  %walk = alloca %struct.mm_walk, align 8
  %0 = bitcast %struct.mm_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #6
  %1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  store %struct.mm_walk_ops* %ops, %struct.mm_walk_ops** %ops1, align 8
  %mm = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %3 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  store %struct.mm_struct* %3, %struct.mm_struct** %mm, align 8
  %pgd = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 2
  store %struct.pgd_t* null, %struct.pgd_t** %pgd, align 8
  %vma2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma2, align 8
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  store i8 0, i8* %no_vma, align 4
  %private3 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  store i8* %private, i8** %private3, align 8
  %tobool.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %5 = load i64, i64* %vm_end, align 8
  %call = call fastcc i32 @walk_page_test(i64 noundef %4, i64 noundef %5, %struct.mm_walk* noundef nonnull %walk) #8
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7
  %6 = load i64, i64* %vm_start, align 8
  %7 = load i64, i64* %vm_end, align 8
  %call13 = call fastcc i32 @__walk_page_range(i64 noundef %6, i64 noundef %7, %struct.mm_walk* noundef nonnull %walk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -22, %entry ], [ 0, %if.end ], [ %call, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @walk_page_mapping(%struct.address_space* noundef %mapping, i64 noundef %first_index, i64 noundef %nr, %struct.mm_walk_ops* noundef %ops, i8* noundef %private) local_unnamed_addr #0 {
entry:
  %walk = alloca %struct.mm_walk, align 8
  %0 = bitcast %struct.mm_walk* %walk to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #6
  %1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  store %struct.mm_walk_ops* %ops, %struct.mm_walk_ops** %ops1, align 8
  %mm = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  store %struct.mm_struct* null, %struct.mm_struct** %mm, align 8
  %pgd = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 2
  store %struct.pgd_t* null, %struct.pgd_t** %pgd, align 8
  %vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %vma, align 8
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  store i8 0, i8* %no_vma, align 4
  %private2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 6
  store i8* %private, i8** %private2, align 8
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 5
  %add = add i64 %nr, %first_index
  %sub = add i64 %add, -1
  %call = call %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef %i_mmap, i64 noundef %first_index, i64 noundef %sub) #7
  %tobool.not80 = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not80, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %vma3.081 = phi %struct.vm_area_struct* [ %call36, %for.inc ], [ %call, %entry ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma3.081, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %call4 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %vma3.081) #8
  %add5 = add i64 %call4, %3
  %cmp8 = icmp ult i64 %add, %add5
  %cond12 = select i1 %cmp8, i64 %add, i64 %add5
  %4 = call i64 @llvm.usub.sat.i64(i64 %first_index, i64 %3)
  %shl = shl i64 %4, 12
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma3.081, i64 0, i32 0
  %5 = load i64, i64* %vm_start, align 8
  %add14 = add i64 %shl, %5
  %sub15 = sub i64 %cond12, %3
  %shl16 = shl i64 %sub15, 12
  %add18 = add i64 %shl16, %5
  %cmp19.not = icmp ult i64 %add14, %add18
  br i1 %cmp19.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  store %struct.vm_area_struct* %vma3.081, %struct.vm_area_struct** %vma, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma3.081, i64 0, i32 6
  %6 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %mm, align 8
  %7 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma3.081, i64 0, i32 1
  %8 = load i64, i64* %vm_end, align 8
  %call23 = call fastcc i32 @walk_page_test(i64 noundef %7, i64 noundef %8, %struct.mm_walk* noundef nonnull %walk) #8
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %for.end, label %if.else

if.else:                                          ; preds = %if.end
  %cmp26 = icmp slt i32 %call23, 0
  br i1 %cmp26, label %for.end, label %if.end29

if.end29:                                         ; preds = %if.else
  %call30 = call fastcc i32 @__walk_page_range(i64 noundef %add14, i64 noundef %add18, %struct.mm_walk* noundef nonnull %walk) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end29, %for.body
  %call36 = call %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef nonnull %vma3.081, i64 noundef %first_index, i64 noundef %sub) #7
  %tobool.not = icmp eq %struct.vm_area_struct* %call36, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.else, %if.end29, %if.end, %entry
  %err.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %call30, %if.end29 ], [ %call23, %if.else ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #6
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_first(%struct.rb_root_cached* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #3 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_interval_tree_iter_next(%struct.vm_area_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_pgd_range(i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %pgd2 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 2
  %1 = load %struct.pgd_t*, %struct.pgd_t** %pgd2, align 8
  %tobool.not = icmp eq %struct.pgd_t* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i64 %addr, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %1, i64 %and
  br label %if.end

if.else:                                          ; preds = %entry
  %mm = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 1
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %pgd4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %3 = load %struct.pgd_t*, %struct.pgd_t** %pgd4, align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %3, i64 noundef %addr) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pgd.0 = phi %struct.pgd_t* [ %add.ptr, %if.then ], [ %call, %if.else ]
  %sub6 = add i64 %end, -1
  %pgd_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 0
  %p4d_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 1
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 2
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 3
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %pgd.1 = phi %struct.pgd_t* [ %pgd.0, %if.end ], [ %incdec.ptr, %do.cond ]
  %addr.addr.0 = phi i64 [ %addr, %if.end ], [ %cond, %do.cond ]
  %add = add i64 %addr.addr.0, 1073741824
  %and5 = and i64 %add, -1073741824
  %sub = add i64 %and5, -1
  %cmp = icmp ult i64 %sub, %sub6
  %cond = select i1 %cmp, i64 %and5, i64 %end
  %4 = load i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)** %pgd_entry, align 8
  %tobool19.not = icmp eq i32 (%struct.pgd_t*, i64, i64, %struct.mm_walk*)* %4, null
  br i1 %tobool19.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %do.body
  %call22 = call i32 %4(%struct.pgd_t* noundef %pgd.1, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.mm_walk* noundef %walk) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %do.end

if.end26:                                         ; preds = %if.then20, %do.body
  %5 = load i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)** %p4d_entry, align 8
  %tobool27.not = icmp eq i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* %5, null
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end35

lor.lhs.false:                                    ; preds = %if.end26
  %6 = load i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)** %pud_entry, align 8
  %tobool28.not = icmp eq i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* %6, null
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.end35

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %7 = load i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)** %pmd_entry, align 8
  %tobool30.not = icmp eq i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* %7, null
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end35

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %8 = load i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)** %pte_entry, align 8
  %tobool32.not = icmp eq i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* %8, null
  br i1 %tobool32.not, label %do.cond, label %if.end35

if.end35:                                         ; preds = %if.end26, %lor.lhs.false, %lor.lhs.false29, %lor.lhs.false31
  %call34 = call fastcc i32 @walk_p4d_range(%struct.pgd_t* noundef %pgd.1, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.mm_walk* noundef %walk) #8
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %do.cond, label %do.end

do.cond:                                          ; preds = %lor.lhs.false31, %if.end35
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.1, i64 1
  %cmp39.not = icmp eq i64 %cond, %end
  br i1 %cmp39.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end35, %if.then20, %do.cond
  %err.5 = phi i32 [ 0, %do.cond ], [ %call22, %if.then20 ], [ %call34, %if.end35 ]
  ret i32 %err.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_p4d_range(%struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %call2 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #8
  %p4d_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 1
  %1 = load i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)** %p4d_entry, align 8
  %tobool12.not = icmp eq i32 (%struct.p4d_t*, i64, i64, %struct.mm_walk*)* %1, null
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %entry
  %call15 = call i32 %1(%struct.p4d_t* noundef %call2, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %do.end

if.end19:                                         ; preds = %if.then13, %entry
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 2
  %2 = load i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)** %pud_entry, align 8
  %tobool20.not = icmp eq i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* %2, null
  br i1 %tobool20.not, label %lor.lhs.false, label %if.then24

lor.lhs.false:                                    ; preds = %if.end19
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 3
  %3 = load i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)** %pmd_entry, align 8
  %tobool21.not = icmp eq i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* %3, null
  br i1 %tobool21.not, label %lor.lhs.false22, label %if.then24

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 4
  %4 = load i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)** %pte_entry, align 8
  %tobool23.not = icmp eq i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* %4, null
  br i1 %tobool23.not, label %do.end, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false22, %lor.lhs.false, %if.end19
  %call25 = call fastcc i32 @walk_pud_range(%struct.p4d_t* noundef %call2, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false22, %if.then24, %if.then13
  %err.5 = phi i32 [ %call15, %if.then13 ], [ %call25, %if.then24 ], [ 0, %lor.lhs.false22 ]
  ret i32 %err.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @real_depth(i32 noundef %depth) unnamed_addr #4 {
entry:
  %cmp1 = icmp eq i32 %depth, 2
  %spec.store.select7 = select i1 %cmp1, i32 1, i32 %depth
  %cmp4 = icmp eq i32 %spec.store.select7, 1
  %spec.store.select = select i1 %cmp4, i32 0, i32 %spec.store.select7
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_pud_range(%struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %call = call fastcc i32 @real_depth(i32 noundef 2) #8
  %call2 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #8
  %pgd4 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call2, i64 0, i32 0, i32 0, i32 0
  %1 = load i64, i64* %pgd4, align 8
  %tobool.not110 = icmp eq i64 %1, 0
  br i1 %tobool.not110, label %if.then, label %lor.lhs.false.lr.ph

lor.lhs.false.lr.ph:                              ; preds = %entry
  %vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  %action = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %pud_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 2
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 3
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %again.backedge
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %tobool5.not = icmp eq %struct.vm_area_struct* %2, null
  br i1 %tobool5.not, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i8, i8* %no_vma, align 4, !range !8
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then, label %if.end14.thread

if.then:                                          ; preds = %again.backedge, %land.lhs.true, %if.end48, %entry
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 5
  %4 = load i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)** %pte_hole, align 8
  %tobool7.not = icmp eq i32 (i64, i64, i32, %struct.mm_walk*)* %4, null
  br i1 %tobool7.not, label %do.cond64, label %if.end

if.end:                                           ; preds = %if.then
  %call10 = call i32 %4(i64 noundef %addr, i64 noundef %end, i32 noundef %call, %struct.mm_walk* noundef %walk) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.cond64, label %do.end66

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %action, align 8
  %5 = load i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)** %pud_entry, align 8
  %tobool15.not = icmp eq i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* %5, null
  br i1 %tobool15.not, label %lor.lhs.false43, label %if.end19

if.end14.thread:                                  ; preds = %land.lhs.true
  store i32 0, i32* %action, align 8
  %6 = load i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)** %pud_entry, align 8
  %tobool15.not115 = icmp eq i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* %6, null
  br i1 %tobool15.not115, label %land.lhs.true28, label %if.end19

if.end19:                                         ; preds = %if.end14.thread, %if.end14
  %7 = phi i32 (%struct.pud_t*, i64, i64, %struct.mm_walk*)* [ %6, %if.end14.thread ], [ %5, %if.end14 ]
  %call18 = call i32 %7(%struct.pud_t* noundef %call2, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #7
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end22, label %do.end66

if.end22:                                         ; preds = %if.end19
  %.pr = load i32, i32* %action, align 8
  %cmp = icmp eq i32 %.pr, 2
  br i1 %cmp, label %again.backedge, label %if.end25

again.backedge:                                   ; preds = %if.end22
  %.pre111 = load i64, i64* %pgd4, align 8
  %tobool.not = icmp eq i64 %.pre111, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

if.end25:                                         ; preds = %if.end22
  %.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %tobool27.not = icmp eq %struct.vm_area_struct* %.pre, null
  br i1 %tobool27.not, label %land.lhs.true28, label %lor.lhs.false40

land.lhs.true28:                                  ; preds = %if.end14.thread, %if.end25
  %8 = phi i32 [ %.pr, %if.end25 ], [ 0, %if.end14.thread ]
  %9 = load i64, i64* %pgd4, align 8
  %and = and i64 %9, 3
  %cmp32 = icmp eq i64 %and, 1
  br i1 %cmp32, label %do.cond64, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true28
  %and38 = and i64 %9, 288230376151711745
  %tobool39.not = icmp eq i64 %and38, 0
  %cmp42 = icmp eq i32 %8, 1
  %or.cond = select i1 %tobool39.not, i1 true, i1 %cmp42
  br i1 %or.cond, label %do.cond64, label %lor.lhs.false43

lor.lhs.false40:                                  ; preds = %if.end25
  %cmp42.old = icmp eq i32 %.pr, 1
  br i1 %cmp42.old, label %do.cond64, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end14, %lor.lhs.false33, %lor.lhs.false40
  %10 = load i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)** %pmd_entry, align 8
  %tobool44.not = icmp eq i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* %10, null
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.end48

lor.lhs.false45:                                  ; preds = %lor.lhs.false43
  %11 = load i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)** %pte_entry, align 8
  %tobool46.not = icmp eq i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* %11, null
  br i1 %tobool46.not, label %do.cond64, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false45, %lor.lhs.false43
  %12 = load i64, i64* %pgd4, align 8
  %tobool57.not = icmp eq i64 %12, 0
  br i1 %tobool57.not, label %if.then, label %if.end59

if.end59:                                         ; preds = %if.end48
  %call60 = call fastcc i32 @walk_pmd_range(%struct.pud_t* noundef %call2, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.cond64, label %do.end66

do.cond64:                                        ; preds = %land.lhs.true28, %lor.lhs.false33, %lor.lhs.false40, %lor.lhs.false45, %if.then, %if.end59, %if.end
  br label %do.end66

do.end66:                                         ; preds = %if.end19, %do.cond64, %if.end59, %if.end
  %err.5 = phi i32 [ 0, %do.cond64 ], [ %call60, %if.end59 ], [ %call10, %if.end ], [ %call18, %if.end19 ]
  ret i32 %err.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_pmd_range(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %call = call fastcc i32 @real_depth(i32 noundef 3) #8
  %call2 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #8
  %sub3 = add i64 %end, -1
  %vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 3
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  %action = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 4
  %pmd_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 3
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 4
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond56, %entry
  %pmd.0 = phi %struct.pmd_t* [ %call2, %entry ], [ %incdec.ptr, %do.cond56 ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %do.cond56 ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub3
  %cond = select i1 %cmp, i64 %and, i64 %end
  %pmd4 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 0, i32 0
  br label %again

again:                                            ; preds = %if.end22, %do.body
  %1 = load i64, i64* %pmd4, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %again
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %tobool5.not = icmp eq %struct.vm_area_struct* %2, null
  br i1 %tobool5.not, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i8, i8* %no_vma, align 4, !range !8
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then, label %if.end14.thread

if.then:                                          ; preds = %land.lhs.true, %again
  %4 = load i32 (i64, i64, i32, %struct.mm_walk*)*, i32 (i64, i64, i32, %struct.mm_walk*)** %pte_hole, align 8
  %tobool7.not = icmp eq i32 (i64, i64, i32, %struct.mm_walk*)* %4, null
  br i1 %tobool7.not, label %do.cond56, label %if.end

if.end:                                           ; preds = %if.then
  %call10 = call i32 %4(i64 noundef %addr.addr.0, i64 noundef %cond, i32 noundef %call, %struct.mm_walk* noundef %walk) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.cond56, label %do.end58

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %action, align 8
  %5 = load i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)** %pmd_entry, align 8
  %tobool15.not = icmp eq i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* %5, null
  br i1 %tobool15.not, label %lor.lhs.false39, label %if.end19

if.end14.thread:                                  ; preds = %land.lhs.true
  store i32 0, i32* %action, align 8
  %6 = load i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)** %pmd_entry, align 8
  %tobool15.not115 = icmp eq i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* %6, null
  br i1 %tobool15.not115, label %land.lhs.true29, label %if.end19

if.end19:                                         ; preds = %if.end14.thread, %if.end14
  %7 = phi i32 (%struct.pmd_t*, i64, i64, %struct.mm_walk*)* [ %6, %if.end14.thread ], [ %5, %if.end14 ]
  %call18 = call i32 %7(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.mm_walk* noundef %walk) #7
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end22, label %do.end58

if.end22:                                         ; preds = %if.end19
  %.pr = load i32, i32* %action, align 8
  %cmp24 = icmp eq i32 %.pr, 2
  br i1 %cmp24, label %again, label %if.end26

if.end26:                                         ; preds = %if.end22
  %.pre = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma, align 8
  %tobool28.not = icmp eq %struct.vm_area_struct* %.pre, null
  br i1 %tobool28.not, label %land.lhs.true29, label %lor.lhs.false36

land.lhs.true29:                                  ; preds = %if.end14.thread, %if.end26
  %8 = phi i32 [ %.pr, %if.end26 ], [ 0, %if.end14.thread ]
  %9 = load i64, i64* %pmd4, align 8
  %and31 = and i64 %9, 3
  %cmp32 = icmp eq i64 %and31, 1
  br i1 %cmp32, label %do.cond56, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true29
  %call34 = call fastcc i32 @pmd_present(i64 %9) #8
  %tobool35.not = icmp eq i32 %call34, 0
  %cmp38 = icmp eq i32 %8, 1
  %or.cond = select i1 %tobool35.not, i1 true, i1 %cmp38
  br i1 %or.cond, label %do.cond56, label %lor.lhs.false39

lor.lhs.false36:                                  ; preds = %if.end26
  %cmp38.old = icmp eq i32 %.pr, 1
  br i1 %cmp38.old, label %do.cond56, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end14, %lor.lhs.false33, %lor.lhs.false36
  %10 = load i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)** %pte_entry, align 8
  %tobool40.not = icmp eq i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)* %10, null
  br i1 %tobool40.not, label %do.cond56, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false39
  %call52 = call fastcc i32 @walk_pte_range(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, %struct.mm_walk* noundef %walk) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.cond56, label %do.end58

do.cond56:                                        ; preds = %if.then, %if.end51, %land.lhs.true29, %lor.lhs.false33, %lor.lhs.false36, %lor.lhs.false39, %if.end
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp57.not = icmp eq i64 %cond, %end
  br i1 %cmp57.not, label %do.end58, label %do.body

do.end58:                                         ; preds = %if.end51, %if.end, %do.cond56, %if.end19
  %err.5 = phi i32 [ %call18, %if.end19 ], [ %call10, %if.end ], [ %call52, %if.end51 ], [ 0, %do.cond56 ]
  ret i32 %err.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #3 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #8
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #8
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pmd_present(i64 %pmd.coerce) unnamed_addr #4 {
entry:
  %and = and i64 %pmd.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  %and4 = lshr i64 %pmd.coerce, 59
  %0 = trunc i64 %and4 to i32
  %1 = and i32 %0, 1
  %2 = select i1 %tobool.not, i32 %1, i32 1
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %no_vma = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 5
  %0 = load i8, i8* %no_vma, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #8
  %call1 = call fastcc i32 @walk_pte_range_inner(%struct.pte_t* noundef %call, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #8
  %call3 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call2, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #7
  %call4 = call fastcc i32 @walk_pte_range_inner(%struct.pte_t* noundef %call3, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) #8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #8
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #4 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #8
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #8
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @walk_pte_range_inner(%struct.pte_t* noundef %pte, i64 noundef %addr, i64 noundef %end, %struct.mm_walk* noundef %walk) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %walk, i64 0, i32 0
  %0 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %ops1, align 8
  %pte_entry = getelementptr inbounds %struct.mm_walk_ops, %struct.mm_walk_ops* %0, i64 0, i32 4
  %sub = add i64 %end, -4096
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %add, %for.cond ]
  %pte.addr.0 = phi %struct.pte_t* [ %pte, %entry ], [ %incdec.ptr, %for.cond ]
  %1 = load i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)*, i32 (%struct.pte_t*, i64, i64, %struct.mm_walk*)** %pte_entry, align 8
  %add = add i64 %addr.addr.0, 4096
  %call = call i32 %1(%struct.pte_t* noundef %pte.addr.0, i64 noundef %addr.addr.0, i64 noundef %add, %struct.mm_walk* noundef %walk) #7
  %tobool.not = icmp eq i32 %call, 0
  %cmp.not = icmp ult i64 %addr.addr.0, %sub
  %or.cond = and i1 %cmp.not, %tobool.not
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.addr.0, i64 1
  br i1 %or.cond, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #3 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %1, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #8
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #8
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #4 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #4 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #4 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #6, !srcloc !11
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #6, !srcloc !13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149555493}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148065770, i64 2148065803, i64 2148065856, i64 2148065915, i64 2148065949, i64 2148066004, i64 2148066033, i64 2148066053}
!12 = !{i64 2149562774}
!13 = !{i64 2149355004}
