; ModuleID = 'mm/vmalloc.c'
source_filename = "mm/vmalloc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_vmalloc__475_3972_proc_vmalloc_init6:\09\09\09"
module asm ".long\09proc_vmalloc_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.vmap_block_queue = type { %struct.spinlock, %struct.list_head }
%struct.vfree_deferred = type { %struct.llist_head, %struct.work_struct }
%struct.llist_head = type { %struct.llist_node* }
%struct.vmap_area = type { i64, i64, %struct.rb_node, %struct.list_head, %union.anon.72 }
%union.anon.72 = type { i64 }
%struct.vmap_block = type { %struct.spinlock, %struct.vmap_area*, i64, i64, i64, i64, %struct.list_head, %struct.callback_head, %struct.list_head }
%struct.nodemask_t = type { [1 x i64] }
%struct.proc_dir_entry = type opaque

@__setup_str_set_nohugeiomap = internal constant [12 x i8] c"nohugeiomap\00", section ".init.rodata", align 1
@__setup_set_nohugeiomap = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_set_nohugeiomap, i32 0, i32 0), i32 (i8*)* @set_nohugeiomap, i32 1 }, section ".init.setup", align 8
@ioremap_max_page_shift = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@vmap_area_list = dso_local global %struct.list_head { %struct.list_head* @vmap_area_list, %struct.list_head* @vmap_area_list }, align 8
@nr_vmalloc_pages = internal global %struct.atomic64_t zeroinitializer, align 8
@vmap_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @vmap_notify_list to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @vmap_notify_list to i8*), i64 24) to %struct.list_head*) } }, %struct.notifier_block* null }, align 8
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@vmap_initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vmlist = internal unnamed_addr global %struct.vm_struct* null, section ".init.data", align 8
@vm_area_register_early.vm_init_off = internal unnamed_addr global i64 0, section ".init.data", align 8
@.str = private unnamed_addr constant [10 x i8] c"vmap_area\00", align 1
@vmap_area_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@vmap_block_queue = internal global %struct.vmap_block_queue zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@vfree_deferred = internal global %struct.vfree_deferred zeroinitializer, section ".data..percpu", align 8
@vmap_area_root = internal global %struct.rb_root zeroinitializer, align 8
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vmalloc error: size %lu, exceeds total pages\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"vmalloc error: size %lu, vm_struct allocation failed\00", align 1
@free_vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@free_vmap_area_root = internal global %struct.rb_root zeroinitializer, align 8
@free_vmap_area_list = internal global %struct.list_head { %struct.list_head* @free_vmap_area_list, %struct.list_head* @free_vmap_area_list }, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"\01c %u-page vmalloc region starting at %#lx allocated at %pS\0A\00", align 1
@__UNIQUE_ID___addressable_proc_vmalloc_init476 = internal global i8* bitcast (i32 ()* @proc_vmalloc_init to i8*), section ".discard.addressable", align 8
@vmap_purge_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @vmap_purge_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @vmap_purge_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@vmap_blocks = internal global %struct.xarray zeroinitializer, align 8
@vmap_lazy_nr = internal global %struct.atomic64_t zeroinitializer, align 8
@purge_vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@purge_vmap_area_root = internal global %struct.rb_root zeroinitializer, align 8
@purge_vmap_area_list = internal global %struct.list_head { %struct.list_head* @purge_vmap_area_list, %struct.list_head* @purge_vmap_area_list }, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"vmalloc bug: 0x%lx-0x%lx overlaps with 0x%lx-0x%lx\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__func__.alloc_vmap_area = private unnamed_addr constant [16 x i8] c"alloc_vmap_area\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"\014vmap allocation for size %lu failed: use vmalloc=<size> to increase size\0A\00", align 1
@ne_fit_preload_node = internal global %struct.vmap_area* null, section ".data..percpu", align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Trying to vfree() bad address (%p)\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"\013Trying to vfree() nonexistent vm area (%p)\0A\00", align 1
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.10 = private unnamed_addr constant [65 x i8] c"vmalloc error: size %lu, failed to allocated page array size %lu\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"vmalloc error: size %lu, page order %u, failed to allocate pages\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"vmalloc error: size %lu, failed to map pages\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"vmallocinfo\00", align 1
@vmalloc_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @s_start, void (%struct.seq_file*, i8*)* @s_stop, i8* (%struct.seq_file*, i8*, i64*)* @s_next, i32 (%struct.seq_file*, i8*)* @s_show }, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"0x%pK-0x%pK %7ld vm_map_ram\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"0x%pK-0x%pK %7ld\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" %pS\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" pages=%d\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" phys=%pa\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" ioremap\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" vmalloc\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" vmap\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c" user\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" dma-coherent\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" vpages\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"0x%pK-0x%pK %7ld unpurged vm_area\0A\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_vmalloc_init476 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_set_nohugeiomap to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @set_nohugeiomap(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 true, i1* @ioremap_max_page_shift, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i1 @is_vmalloc_addr(i8* noundef readnone %x) local_unnamed_addr #1 {
entry:
  %cmp = icmp ugt i8* %x, inttoptr (i64 -274609471489 to i8*)
  %cmp1 = icmp ult i8* %x, inttoptr (i64 -8858370048 to i8*)
  %0 = and i1 %cmp, %cmp1
  ret i1 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ioremap_page_range(i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce) local_unnamed_addr #3 {
entry:
  %or = or i64 %prot.coerce, 9007199254740992
  %.b = load i1, i1* @ioremap_max_page_shift, align 4
  %0 = select i1 %.b, i32 12, i32 63
  %call = call fastcc i32 @vmap_range_noflush(i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %or, i32 noundef %0) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_range_noflush(i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift) unnamed_addr #3 {
entry:
  %mask = alloca i32, align 4
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %mask, align 4
  %cmp.not = icmp ult i64 %addr, %end
  br i1 %cmp.not, label %do.end13, label %do.body6, !prof !8

do.body6:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 296; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !9
  unreachable

do.end13:                                         ; preds = %entry
  %1 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %addr) #23
  %sub15 = add i64 %end, -1
  br label %do.body14

do.body14:                                        ; preds = %do.cond23, %do.end13
  %pgd.0 = phi %struct.pgd_t* [ %call, %do.end13 ], [ %incdec.ptr, %do.cond23 ]
  %phys_addr.addr.0 = phi i64 [ %phys_addr, %do.end13 ], [ %add25, %do.cond23 ]
  %addr.addr.0 = phi i64 [ %addr, %do.end13 ], [ %cond, %do.cond23 ]
  %add = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp16 = icmp ult i64 %sub, %sub15
  %cond = select i1 %cmp16, i64 %and, i64 %end
  %call19 = call fastcc i32 @vmap_p4d_range(%struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %phys_addr.addr.0, i64 %prot.coerce, i32 noundef %max_page_shift, i32* noundef nonnull %mask) #23
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.cond23, label %if.end32

do.cond23:                                        ; preds = %do.body14
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %sub24 = sub i64 %phys_addr.addr.0, %addr.addr.0
  %add25 = add i64 %sub24, %cond
  %cmp26.not = icmp eq i64 %cond, %end
  br i1 %cmp26.not, label %if.end32, label %do.body14

if.end32:                                         ; preds = %do.cond23, %do.body14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i32 %call19
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vunmap_range_noflush(i64 noundef %start, i64 noundef %end) local_unnamed_addr #3 {
entry:
  %mask = alloca i32, align 4
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %mask, align 4
  %cmp.not = icmp ult i64 %start, %end
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 428; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !10
  unreachable

do.end7:                                          ; preds = %entry
  %1 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %start) #23
  %sub9 = add i64 %end, -1
  br label %do.body8

do.body8:                                         ; preds = %do.body8, %do.end7
  %addr.0 = phi i64 [ %start, %do.end7 ], [ %cond, %do.body8 ]
  %pgd.0 = phi %struct.pgd_t* [ %call, %do.end7 ], [ %incdec.ptr, %do.body8 ]
  %add = add i64 %addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp10 = icmp ult i64 %sub, %sub9
  %cond = select i1 %cmp10, i64 %and, i64 %end
  call fastcc void @vunmap_p4d_range(%struct.pgd_t* noundef %pgd.0, i64 noundef %addr.0, i64 noundef %cond, i32* noundef nonnull %mask) #23
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp23.not = icmp eq i64 %cond, %end
  br i1 %cmp23.not, label %if.end29, label %do.body8

if.end29:                                         ; preds = %do.body8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #1 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vunmap_p4d_range(%struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #23
  call fastcc void @vunmap_pud_range(%struct.p4d_t* noundef %call, i64 noundef %addr, i64 noundef %end, i32* noundef %mask) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vunmap_range(i64 noundef %addr, i64 noundef %end) local_unnamed_addr #3 {
entry:
  call void @vunmap_range_noflush(i64 noundef %addr, i64 noundef %end) #23
  call fastcc void @flush_tlb_kernel_range(i64 noundef %addr, i64 noundef %end) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %end) unnamed_addr #3 {
entry:
  %sub = sub i64 %end, %start
  %cmp = icmp ugt i64 %sub, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_all() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %start, 12
  %and = and i64 %shr, 17592186044415
  %shr2 = lshr i64 %end, 12
  %and3 = and i64 %shr2, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  %cmp620 = icmp ult i64 %and, %and3
  br i1 %cmp620, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %addr.021 = phi i64 [ %add, %for.body ], [ %and, %if.end ]
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %addr.021) #24, !srcloc !12
  %add = add nuw nsw i64 %addr.021, 1
  %exitcond.not = icmp eq i64 %add, %and3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #24, !srcloc !13
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vmap_pages_range_noflush(i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages, i32 noundef %page_shift) local_unnamed_addr #3 {
entry:
  %cmp = icmp ult i32 %page_shift, 12
  br i1 %cmp, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 582; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @vmap_small_pages_range_noflush(i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** noundef %pages) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_small_pages_range_noflush(i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages) unnamed_addr #3 {
entry:
  %nr = alloca i32, align 4
  %mask = alloca i32, align 4
  %0 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %nr, align 4
  %1 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #24
  store i32 0, i32* %mask, align 4
  %cmp.not = icmp ult i64 %addr, %end
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 551; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !17
  unreachable

do.end7:                                          ; preds = %entry
  %2 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %2, i64 noundef %addr) #23
  %sub9 = add i64 %end, -1
  br label %do.body8

do.body8:                                         ; preds = %do.body8, %do.end7
  %pgd.0 = phi %struct.pgd_t* [ %call, %do.end7 ], [ %incdec.ptr, %do.body8 ]
  %addr.addr.0 = phi i64 [ %addr, %do.end7 ], [ %cond, %do.body8 ]
  %add = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp10 = icmp ult i64 %sub, %sub9
  %cond = select i1 %cmp10, i64 %and, i64 %end
  %call20 = call fastcc i32 @vmap_pages_p4d_range(%struct.pgd_t* noundef %pgd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 %prot.coerce, %struct.page** noundef %pages, i32* noundef nonnull %nr, i32* noundef nonnull %mask) #23
  %tobool21.not = icmp ne i32 %call20, 0
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd.0, i64 1
  %cmp25.not = icmp eq i64 %cond, %end
  %or.cond = or i1 %tobool21.not, %cmp25.not
  br i1 %or.cond, label %cleanup, label %do.body8

cleanup:                                          ; preds = %do.body8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i32 %call20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @is_vmalloc_or_module_addr(i8* noundef %x) local_unnamed_addr #1 {
entry:
  %call = call i1 @is_vmalloc_addr(i8* noundef %x) #23
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @vmalloc_to_page(i8* noundef %vmalloc_addr) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %vmalloc_addr to i64
  %1 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %call = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %1, i64 noundef %0) #23
  %call46 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call) #23
  %call83 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call46) #23
  %pgd86 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call83, i64 0, i32 0, i32 0, i32 0
  %2 = load i64, i64* %pgd86, align 8
  %tobool87.not = icmp eq i64 %2, 0
  br i1 %tobool87.not, label %cleanup, label %if.end89

if.end89:                                         ; preds = %entry
  %and = and i64 %2, 3
  switch i64 %and, label %if.then129 [
    i64 1, label %if.then94
    i64 3, label %if.end141
  ], !prof !18

if.then94:                                        ; preds = %if.end89
  %3 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %3, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %and101 = lshr i64 %2, 12
  %shr102 = and i64 %and101, 68719476735
  %add.ptr103 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr102
  %and104 = lshr i64 %0, 12
  %shr105 = and i64 %and104, 262143
  %add.ptr106 = getelementptr %struct.page, %struct.page* %add.ptr103, i64 %shr105
  br label %cleanup

if.then129:                                       ; preds = %if.end89
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 681; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !19
  br label %cleanup

if.end141:                                        ; preds = %if.end89
  %call142 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call83, i64 noundef %0) #23
  %pmd143 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call142, i64 0, i32 0
  %4 = load i64, i64* %pmd143, align 8
  %tobool144.not = icmp eq i64 %4, 0
  br i1 %tobool144.not, label %cleanup, label %if.end146

if.end146:                                        ; preds = %if.end141
  %and148 = and i64 %4, 3
  switch i64 %and148, label %if.then186 [
    i64 1, label %if.then151
    i64 3, label %if.end198
  ], !prof !18

if.then151:                                       ; preds = %if.end146
  %5 = load i64, i64* @memstart_addr, align 8
  %shr152 = ashr i64 %5, 12
  %idx.neg153 = sub nsw i64 0, %shr152
  %add.ptr154 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg153
  %and160 = lshr i64 %4, 12
  %shr161 = and i64 %and160, 68719476735
  %add.ptr162 = getelementptr %struct.page, %struct.page* %add.ptr154, i64 %shr161
  %and163 = lshr i64 %0, 12
  %shr164 = and i64 %and163, 511
  %add.ptr165 = getelementptr %struct.page, %struct.page* %add.ptr162, i64 %shr164
  br label %cleanup

if.then186:                                       ; preds = %if.end146
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 689; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !20
  br label %cleanup

if.end198:                                        ; preds = %if.end146
  %call199 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call142, i64 noundef %0) #23
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call199, i64 0, i32 0
  %pte.sroa.0.0.copyload = load i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and201 = and i64 %pte.sroa.0.0.copyload, 288230376151711745
  %tobool202.not = icmp eq i64 %and201, 0
  br i1 %tobool202.not, label %cleanup, label %if.then203

if.then203:                                       ; preds = %if.end198
  %6 = load i64, i64* @memstart_addr, align 8
  %shr204 = ashr i64 %6, 12
  %idx.neg205 = sub nsw i64 0, %shr204
  %add.ptr206 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg205
  %and208 = lshr i64 %pte.sroa.0.0.copyload, 12
  %shr209 = and i64 %and208, 68719476735
  %add.ptr210 = getelementptr %struct.page, %struct.page* %add.ptr206, i64 %shr209
  br label %cleanup

cleanup:                                          ; preds = %if.then186, %if.then129, %if.end198, %if.then203, %if.end141, %entry, %if.then151, %if.then94
  %retval.0 = phi %struct.page* [ %add.ptr106, %if.then94 ], [ %add.ptr165, %if.then151 ], [ null, %entry ], [ null, %if.then129 ], [ null, %if.end141 ], [ null, %if.then186 ], [ %add.ptr210, %if.then203 ], [ null, %if.end198 ]
  ret %struct.page* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #23
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #23
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #5 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #23
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #23
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vmalloc_to_pfn(i8* noundef %vmalloc_addr) local_unnamed_addr #3 {
entry:
  %call = call %struct.page* @vmalloc_to_page(i8* noundef %vmalloc_addr) #23
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @vmalloc_nr_pages() local_unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @nr_vmalloc_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_vmap_purge_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #3 {
entry:
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef nonnull @vmap_notify_list, %struct.notifier_block* noundef %nb) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_vmap_purge_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #3 {
entry:
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef nonnull @vmap_notify_list, %struct.notifier_block* noundef %nb) #25
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vm_unmap_aliases() local_unnamed_addr #3 {
entry:
  call fastcc void @_vm_unmap_aliases(i64 noundef -1, i64 noundef 0, i32 noundef 0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_vm_unmap_aliases(i64 noundef %start, i64 noundef %end, i32 noundef %flush) unnamed_addr #3 {
entry:
  %.b98 = load i1, i1* @vmap_initialized, align 1
  br i1 %.b98, label %for.cond.preheader, label %cleanup, !prof !8

for.cond.preheader:                               ; preds = %entry
  %call111 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp112 = icmp ult i32 %call111, %0
  br i1 %cmp112, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond.preheader, %for.end
  %call116 = phi i32 [ %call, %for.end ], [ %call111, %for.cond.preheader ]
  %start.addr.0115 = phi i64 [ %start.addr.1.lcssa, %for.end ], [ %start, %for.cond.preheader ]
  %end.addr.0114 = phi i64 [ %end.addr.1.lcssa, %for.end ], [ %end, %for.cond.preheader ]
  %flush.addr.0113 = phi i32 [ %flush.addr.1.lcssa, %for.end ], [ %flush, %for.cond.preheader ]
  %idxprom = sext i32 %call116 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.vmap_block_queue* @vmap_block_queue to i64)
  %2 = inttoptr i64 %add to %struct.vmap_block_queue*
  call fastcc void @__rcu_read_lock() #25
  %free = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 1
  %.pn.in102 = getelementptr inbounds %struct.list_head, %struct.list_head* %free, i64 0, i32 0
  %.pn103 = load volatile %struct.list_head*, %struct.list_head** %.pn.in102, align 8
  %cmp22.not104 = icmp eq %struct.list_head* %.pn103, %free
  br i1 %cmp22.not104, label %for.end, label %for.body24

for.body24:                                       ; preds = %for.body, %if.end44
  %.pn108 = phi %struct.list_head* [ %.pn, %if.end44 ], [ %.pn103, %for.body ]
  %start.addr.1107 = phi i64 [ %start.addr.2, %if.end44 ], [ %start.addr.0115, %for.body ]
  %end.addr.1106 = phi i64 [ %end.addr.2, %if.end44 ], [ %end.addr.0114, %for.body ]
  %flush.addr.1105 = phi i32 [ %flush.addr.2, %if.end44 ], [ %flush.addr.0113, %for.body ]
  %vb.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn108, i64 -3
  %rlock.i = bitcast %struct.list_head* %vb.0.in to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #25
  %dirty = getelementptr %struct.list_head, %struct.list_head* %.pn108, i64 -2, i32 1
  %3 = bitcast %struct.list_head** %dirty to i64*
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %if.then29 [
    i64 0, label %if.end44
    i64 1024, label %if.end44
  ]

if.then29:                                        ; preds = %for.body24
  %va = getelementptr %struct.list_head, %struct.list_head* %.pn108, i64 -3, i32 1
  %5 = bitcast %struct.list_head** %va to %struct.vmap_area**
  %6 = load %struct.vmap_area*, %struct.vmap_area** %5, align 8
  %va_start30 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %6, i64 0, i32 0
  %7 = load i64, i64* %va_start30, align 8
  %dirty_min = getelementptr %struct.list_head, %struct.list_head* %.pn108, i64 -1
  %8 = bitcast %struct.list_head* %dirty_min to i64*
  %9 = load i64, i64* %8, align 8
  %shl = shl i64 %9, 12
  %add31 = add i64 %shl, %7
  %dirty_max = getelementptr %struct.list_head, %struct.list_head* %.pn108, i64 -1, i32 1
  %10 = bitcast %struct.list_head** %dirty_max to i64*
  %11 = load i64, i64* %10, align 8
  %shl32 = shl i64 %11, 12
  %add33 = add i64 %shl32, %7
  %cmp35 = icmp ult i64 %add31, %start.addr.1107
  %cond = select i1 %cmp35, i64 %add31, i64 %start.addr.1107
  %cmp38 = icmp ugt i64 %add33, %end.addr.1106
  %cond43 = select i1 %cmp38, i64 %add33, i64 %end.addr.1106
  br label %if.end44

if.end44:                                         ; preds = %for.body24, %for.body24, %if.then29
  %flush.addr.2 = phi i32 [ 1, %if.then29 ], [ %flush.addr.1105, %for.body24 ], [ %flush.addr.1105, %for.body24 ]
  %end.addr.2 = phi i64 [ %cond43, %if.then29 ], [ %end.addr.1106, %for.body24 ], [ %end.addr.1106, %for.body24 ]
  %start.addr.2 = phi i64 [ %cond, %if.then29 ], [ %start.addr.1107, %for.body24 ], [ %start.addr.1107, %for.body24 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn108, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %cmp22.not = icmp eq %struct.list_head* %.pn, %free
  br i1 %cmp22.not, label %for.end, label %for.body24

for.end:                                          ; preds = %if.end44, %for.body
  %flush.addr.1.lcssa = phi i32 [ %flush.addr.0113, %for.body ], [ %flush.addr.2, %if.end44 ]
  %end.addr.1.lcssa = phi i64 [ %end.addr.0114, %for.body ], [ %end.addr.2, %if.end44 ]
  %start.addr.1.lcssa = phi i64 [ %start.addr.0115, %for.body ], [ %start.addr.2, %if.end44 ]
  call fastcc void @rcu_read_unlock() #23
  %call = call i32 @cpumask_next(i32 noundef %call116, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %12
  br i1 %cmp, label %for.body, label %for.end58

for.end58:                                        ; preds = %for.end, %for.cond.preheader
  %flush.addr.0.lcssa = phi i32 [ %flush, %for.cond.preheader ], [ %flush.addr.1.lcssa, %for.end ]
  %end.addr.0.lcssa = phi i64 [ %end, %for.cond.preheader ], [ %end.addr.1.lcssa, %for.end ]
  %start.addr.0.lcssa = phi i64 [ %start, %for.cond.preheader ], [ %start.addr.1.lcssa, %for.end ]
  call void @mutex_lock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  call fastcc void @purge_fragmented_blocks_allcpus() #23
  %call59 = call fastcc i1 @__purge_vmap_area_lazy(i64 noundef %start.addr.0.lcssa, i64 noundef %end.addr.0.lcssa) #23
  %call59.not = xor i1 %call59, true
  %tobool61 = icmp ne i32 %flush.addr.0.lcssa, 0
  %or.cond = select i1 %call59.not, i1 %tobool61, i1 false
  br i1 %or.cond, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end58
  call fastcc void @flush_tlb_kernel_range(i64 noundef %start.addr.0.lcssa, i64 noundef %end.addr.0.lcssa) #23
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %for.end58
  call void @mutex_unlock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end63
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vm_unmap_ram(i8* noundef %mem, i32 noundef %count) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %count to i64
  %shl = shl nuw nsw i64 %conv, 12
  %0 = ptrtoint i8* %mem to i64
  %tobool.not = icmp eq i8* %mem, null
  br i1 %tobool.not, label %do.body9, label %do.body17, !prof !15

do.body9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2146; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !21
  unreachable

do.body17:                                        ; preds = %entry
  %cmp = icmp ult i8* %mem, inttoptr (i64 -274609471488 to i8*)
  br i1 %cmp, label %do.body27, label %do.body36, !prof !15

do.body27:                                        ; preds = %do.body17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2147; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !22
  unreachable

do.body36:                                        ; preds = %do.body17
  %cmp37 = icmp ugt i8* %mem, inttoptr (i64 -8858370048 to i8*)
  br i1 %cmp37, label %do.body47, label %do.body56, !prof !15

do.body47:                                        ; preds = %do.body36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2148; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !23
  unreachable

do.body56:                                        ; preds = %do.body36
  %and = and i64 %0, 4095
  %cmp57.not = icmp eq i64 %and, 0
  br i1 %cmp57.not, label %do.end77, label %do.body69, !prof !8

do.body69:                                        ; preds = %do.body56
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2149; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !24
  unreachable

do.end77:                                         ; preds = %do.body56
  %cmp78 = icmp ult i32 %count, 65
  br i1 %cmp78, label %if.then87, label %if.end88, !prof !8

if.then87:                                        ; preds = %do.end77
  call fastcc void @vb_free(i64 noundef %0, i64 noundef %shl) #23
  br label %cleanup

if.end88:                                         ; preds = %do.end77
  %call = call fastcc %struct.vmap_area* @find_vmap_area(i64 noundef %0) #23
  %tobool90.not = icmp eq %struct.vmap_area* %call, null
  br i1 %tobool90.not, label %do.body101, label %do.end109, !prof !15

do.body101:                                       ; preds = %if.end88
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2160; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !25
  unreachable

do.end109:                                        ; preds = %if.end88
  call fastcc void @free_unmap_vmap_area(%struct.vmap_area* noundef nonnull %call) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %if.then87
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vb_free(i64 noundef %addr, i64 noundef %size) unnamed_addr #3 {
entry:
  %and = and i64 %size, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2043; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !26
  unreachable

do.body9:                                         ; preds = %entry
  %cmp = icmp ugt i64 %size, 262144
  br i1 %cmp, label %do.body19, label %do.end27, !prof !15

do.body19:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2044; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !27
  unreachable

do.end27:                                         ; preds = %do.body9
  %add = add i64 %size, %addr
  %and28 = lshr i64 %addr, 12
  %shr = and i64 %and28, 1023
  %call29 = call fastcc i64 @addr_to_vb_idx(i64 noundef %addr) #23, !range !28
  %call30 = call i8* @xa_load(%struct.xarray* noundef nonnull @vmap_blocks, i64 noundef %call29) #25
  %0 = bitcast i8* %call30 to %struct.vmap_block*
  call void @vunmap_range_noflush(i64 noundef %addr, i64 noundef %add) #23
  %dec.i = add nsw i64 %size, -1
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %shr.i = lshr i64 %dec.i, 12
  %1 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #24, !range !29
  %conv.i.i = sub nuw nsw i64 64, %1
  %rlock.i = bitcast i8* %call30 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #25
  %dirty_min = getelementptr inbounds i8, i8* %call30, i64 32
  %2 = bitcast i8* %dirty_min to i64*
  %3 = load i64, i64* %2, align 8
  %cmp36 = icmp ult i64 %3, %shr
  %cond = select i1 %cmp36, i64 %3, i64 %shr
  store i64 %cond, i64* %2, align 8
  %dirty_max = getelementptr inbounds i8, i8* %call30, i64 40
  %4 = bitcast i8* %dirty_max to i64*
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %conv.i.i, 4294967295
  %.op = shl nuw i64 1, %6
  %shl = select i1 %cmp.i.i, i64 1, i64 %.op
  %add39 = add nuw i64 %shl, %shr
  %cmp41 = icmp ugt i64 %5, %add39
  %cond46 = select i1 %cmp41, i64 %5, i64 %add39
  store i64 %cond46, i64* %4, align 8
  %dirty = getelementptr inbounds i8, i8* %call30, i64 24
  %7 = bitcast i8* %dirty to i64*
  %8 = load i64, i64* %7, align 8
  %add50 = add i64 %8, %shl
  store i64 %add50, i64* %7, align 8
  %cmp52 = icmp eq i64 %add50, 1024
  br i1 %cmp52, label %do.body55, label %if.else

do.body55:                                        ; preds = %do.end27
  %free = getelementptr inbounds i8, i8* %call30, i64 16
  %9 = bitcast i8* %free to i64*
  %10 = load i64, i64* %9, align 8
  %tobool56.not = icmp eq i64 %10, 0
  br i1 %tobool56.not, label %do.end73, label %do.body65, !prof !8

do.body65:                                        ; preds = %do.body55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2065; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !30
  unreachable

do.end73:                                         ; preds = %do.body55
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  call fastcc void @free_vmap_block(%struct.vmap_block* noundef %0) #23
  br label %if.end76

if.else:                                          ; preds = %do.end27
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  br label %if.end76

if.end76:                                         ; preds = %if.else, %do.end73
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vmap_area* @find_vmap_area(i64 noundef %addr) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %call = call fastcc %struct.vmap_area* @__find_vmap_area(i64 noundef %addr) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  ret %struct.vmap_area* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_unmap_vmap_area(%struct.vmap_area* noundef %va) unnamed_addr #3 {
entry:
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %va_end = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %0 = load i64, i64* %va_start, align 8
  %1 = load i64, i64* %va_end, align 8
  call void @vunmap_range_noflush(i64 noundef %0, i64 noundef %1) #23
  call fastcc void @free_vmap_area_noflush(%struct.vmap_area* noundef %va) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vm_map_ram(%struct.page** nocapture noundef readonly %pages, i32 noundef %count, i32 noundef %node) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %count to i64
  %shl = shl nuw nsw i64 %conv, 12
  %cmp = icmp ult i32 %count, 65
  br i1 %cmp, label %if.then, label %if.else, !prof !8

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @vb_alloc(i64 noundef %shl) #23
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %call) #23
  br i1 %call4, label %cleanup22, label %if.end

if.end:                                           ; preds = %if.then
  %0 = ptrtoint i8* %call to i64
  br label %if.end10

if.else:                                          ; preds = %entry
  %call6 = call fastcc %struct.vmap_area* @alloc_vmap_area(i64 noundef %shl, i64 noundef 4096, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3264) #23
  %1 = bitcast %struct.vmap_area* %call6 to i8*
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call7, label %cleanup22, label %cleanup

cleanup:                                          ; preds = %if.else
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call6, i64 0, i32 0
  %2 = load i64, i64* %va_start, align 8
  %3 = inttoptr i64 %2 to i8*
  br label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end
  %addr.1 = phi i64 [ %0, %if.end ], [ %2, %cleanup ]
  %mem.1 = phi i8* [ %call, %if.end ], [ %3, %cleanup ]
  %add = add i64 %addr.1, %shl
  %4 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !31
  %tobool11.not = icmp eq i8 %4, 0
  %or15 = select i1 %tobool11.not, i64 29273397577910019, i64 29273397577912067
  %call17 = call fastcc i32 @vmap_pages_range(i64 noundef %addr.1, i64 noundef %add, i64 %or15, %struct.page** noundef %pages) #23
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %cleanup22

if.then20:                                        ; preds = %if.end10
  call void @vm_unmap_ram(i8* noundef %mem.1, i32 noundef %count) #23
  br label %cleanup22

cleanup22:                                        ; preds = %if.else, %if.end10, %if.then, %if.then20
  %retval.1 = phi i8* [ null, %if.then20 ], [ null, %if.then ], [ %mem.1, %if.end10 ], [ null, %if.else ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @vb_alloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %and = and i64 %size, 4095
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1991; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !32
  unreachable

do.body9:                                         ; preds = %entry
  %cmp = icmp ugt i64 %size, 262144
  br i1 %cmp, label %do.body19, label %do.end27, !prof !15

do.body19:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1992; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !33
  unreachable

do.end27:                                         ; preds = %do.body9
  %cmp28 = icmp eq i64 %size, 0
  br i1 %cmp28, label %if.then42, label %if.end14.i, !prof !15

if.then42:                                        ; preds = %do.end27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1993; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !34
  br label %cleanup112

if.end14.i:                                       ; preds = %do.end27
  %dec.i = add nsw i64 %size, -1
  %shr.i = lshr i64 %dec.i, 12
  %cmp.i.i = icmp ult i64 %dec.i, 4096
  %0 = call i64 @llvm.ctlz.i64(i64 %shr.i, i1 false) #24, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i.i = sub nuw nsw i32 64, %1
  %retval.0.i.i = select i1 %cmp.i.i, i32 0, i32 %conv.i.i
  call fastcc void @__rcu_read_lock() #25
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !35
  %call60 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call60, ptrtoint (%struct.vmap_block_queue* @vmap_block_queue to i64)
  %2 = inttoptr i64 %add to %struct.vmap_block_queue*
  %free = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 1
  %.pn.in13 = getelementptr inbounds %struct.list_head, %struct.list_head* %free, i64 0, i32 0
  %.pn14 = load volatile %struct.list_head*, %struct.list_head** %.pn.in13, align 8
  %cmp70.not15 = icmp eq %struct.list_head* %.pn14, %free
  br i1 %cmp70.not15, label %do.body105, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end14.i
  %sh_prom = zext i32 %retval.0.i.i to i64
  %shl = shl nuw i64 1, %sh_prom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %.pn16 = phi %struct.list_head* [ %.pn14, %for.body.lr.ph ], [ %.pn, %cleanup ]
  %vb.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn16, i64 -3
  %rlock.i = bitcast %struct.list_head* %vb.0.in to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #25
  %free72 = getelementptr %struct.list_head, %struct.list_head* %.pn16, i64 -2
  %3 = bitcast %struct.list_head* %free72 to i64*
  %4 = load i64, i64* %3, align 8
  %cmp73 = icmp ult i64 %4, %shl
  br i1 %cmp73, label %cleanup, label %if.end77

if.end77:                                         ; preds = %for.body
  %rlock.i.le = bitcast %struct.list_head* %vb.0.in to %struct.raw_spinlock*
  %5 = bitcast %struct.list_head* %free72 to i64*
  %sub = sub i64 1024, %4
  %va = getelementptr %struct.list_head, %struct.list_head* %.pn16, i64 -3, i32 1
  %6 = bitcast %struct.list_head** %va to %struct.vmap_area**
  %7 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %7, i64 0, i32 0
  %8 = load i64, i64* %va_start, align 8
  %call79 = call fastcc i8* @vmap_block_vaddr(i64 noundef %8, i64 noundef %sub) #23
  %9 = load i64, i64* %5, align 8
  %sub83 = sub i64 %9, %shl
  store i64 %sub83, i64* %5, align 8
  %cmp85 = icmp eq i64 %sub83, 0
  br i1 %cmp85, label %if.then87, label %cleanup.thread

if.then87:                                        ; preds = %if.end77
  %rlock.i4 = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i4) #25
  call fastcc void @list_del_rcu(%struct.list_head* noundef %.pn16) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i4) #25
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end77, %if.then87
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i.le) #25
  br label %do.body105

cleanup:                                          ; preds = %for.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn16, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %cmp70.not = icmp eq %struct.list_head* %.pn, %free
  br i1 %cmp70.not, label %do.body105, label %for.body

do.body105:                                       ; preds = %cleanup, %if.end14.i, %cleanup.thread
  %vaddr.2 = phi i8* [ %call79, %cleanup.thread ], [ null, %if.end14.i ], [ null, %cleanup ]
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !36
  call fastcc void @rcu_read_unlock() #23
  %tobool108.not = icmp eq i8* %vaddr.2, null
  br i1 %tobool108.not, label %if.then109, label %cleanup112

if.then109:                                       ; preds = %do.body105
  %call110 = call fastcc i8* @new_vmap_block(i32 noundef %retval.0.i.i) #23
  br label %cleanup112

cleanup112:                                       ; preds = %if.then42, %do.body105, %if.then109
  %retval.0 = phi i8* [ null, %if.then42 ], [ %vaddr.2, %do.body105 ], [ %call110, %if.then109 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #1 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vmap_area* @alloc_vmap_area(i64 noundef %size, i64 noundef %align, i64 noundef %vstart, i64 noundef %vend, i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %freed = alloca i64, align 8
  %0 = bitcast i64* %freed to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store i64 0, i64* %freed, align 8, !annotation !37
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !15

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1521; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !38
  unreachable

do.body10:                                        ; preds = %entry
  %and = and i64 %size, 4095
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %do.body29, label %do.body20, !prof !8

do.body20:                                        ; preds = %do.body10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1522; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !39
  unreachable

do.body29:                                        ; preds = %do.body10
  %call = call fastcc i1 @is_power_of_2(i64 noundef %align) #27
  br i1 %call, label %do.end48, label %do.body40, !prof !8

do.body40:                                        ; preds = %do.body29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1523; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !40
  unreachable

do.end48:                                         ; preds = %do.body29
  %.b1 = load i1, i1* @vmap_initialized, align 1
  br i1 %.b1, label %do.end67, label %cleanup.sink.split, !prof !8

do.end67:                                         ; preds = %do.end48
  %and68 = and i32 %gfp_mask, 782048
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef %and68) #25
  %2 = bitcast i8* %call.i to %struct.vmap_area*
  %tobool70.not = icmp eq i8* %call.i, null
  br i1 %tobool70.not, label %cleanup.sink.split, label %retry.preheader, !prof !15

retry.preheader:                                  ; preds = %do.end67
  %add.i.i = add i64 %align, -1
  %sub.i.i = add i64 %add.i.i, %size
  %neg6.i.i.i = sub i64 0, %align
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %tobool166.not = phi i1 [ true, %retry.preheader ], [ %53, %retry.backedge ]
  call fastcc void @preload_this_cpu_lock(i32 noundef %and68) #23
  %3 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool.not105.i.i = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not105.i.i, label %__alloc_vmap_area.exit.thread, label %while.body.i.i

while.body.i.i:                                   ; preds = %retry, %while.cond.backedge.i.i
  %node.0106.i.i = phi %struct.rb_node* [ %node.0.be.i.i, %while.cond.backedge.i.i ], [ %3, %retry ]
  %add.ptr.i.i = getelementptr %struct.rb_node, %struct.rb_node* %node.0106.i.i, i64 -1, i32 1
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.0106.i.i, i64 0, i32 2
  %4 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i, align 8
  %tobool.not.i.i.i = icmp eq %struct.rb_node* %4, null
  %add.ptr.i.i.i = getelementptr %struct.rb_node, %struct.rb_node* %4, i64 -1, i32 1
  %tobool2.not12.i.i.i = icmp eq %struct.rb_node** %add.ptr.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not12.i.i.i
  br i1 %tobool2.not.i.i.i, label %get_subtree_max_size.exit.i.i, label %cond.true3.i.i.i

cond.true3.i.i.i:                                 ; preds = %while.body.i.i
  %subtree_max_size.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 7
  %5 = bitcast %struct.rb_node** %subtree_max_size.i.i.i to i64*
  %6 = load i64, i64* %5, align 8
  br label %get_subtree_max_size.exit.i.i

get_subtree_max_size.exit.i.i:                    ; preds = %cond.true3.i.i.i, %while.body.i.i
  %cond6.i.i.i = phi i64 [ %6, %cond.true3.i.i.i ], [ 0, %while.body.i.i ]
  %cmp.not.i.i = icmp uge i64 %cond6.i.i.i, %sub.i.i
  %va_start.i.phi.trans.insert.i.i = bitcast %struct.rb_node** %add.ptr.i.i to i64*
  %.pre.i.i = load i64, i64* %va_start.i.phi.trans.insert.i.i, align 8
  %cmp1.i.i = icmp ugt i64 %.pre.i.i, %vstart
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %while.cond.backedge.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %get_subtree_max_size.exit.i.i
  %.vstart.i.i.i = select i1 %cmp1.i.i, i64 %.pre.i.i, i64 %vstart
  %add4.i.i.i = add i64 %.vstart.i.i.i, %add.i.i
  %and7.i.i.i = and i64 %add4.i.i.i, %neg6.i.i.i
  %add8.i.i.i = add i64 %and7.i.i.i, %size
  %cmp9.i.i.i = icmp ult i64 %add8.i.i.i, %and7.i.i.i
  %cmp10.i.i.i = icmp ult i64 %and7.i.i.i, %vstart
  %or.cond.i.i.i = or i1 %cmp10.i.i.i, %cmp9.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i, label %is_within_this_va.exit.i.i

is_within_this_va.exit.i.i:                       ; preds = %if.else.i.i
  %va_end.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 1
  %7 = bitcast %struct.rb_node** %va_end.i.i.i to i64*
  %8 = load i64, i64* %7, align 8
  %cmp14.i.not.i.i = icmp ugt i64 %add8.i.i.i, %8
  br i1 %cmp14.i.not.i.i, label %if.end.i.i, label %cleanup.loopexit97.split.loop.exit.i.i

if.end.i.i:                                       ; preds = %is_within_this_va.exit.i.i, %if.else.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.0106.i.i, i64 0, i32 1
  %9 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i, align 8
  %tobool.not.i63.i.i = icmp eq %struct.rb_node* %9, null
  %add.ptr.i64.i.i = getelementptr %struct.rb_node, %struct.rb_node* %9, i64 -1, i32 1
  %tobool2.not12.i65.i.i = icmp eq %struct.rb_node** %add.ptr.i64.i.i, null
  %tobool2.not.i66.i.i = or i1 %tobool.not.i63.i.i, %tobool2.not12.i65.i.i
  br i1 %tobool2.not.i66.i.i, label %get_subtree_max_size.exit70.i.i, label %cond.true3.i68.i.i

cond.true3.i68.i.i:                               ; preds = %if.end.i.i
  %subtree_max_size.i67.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i64.i.i, i64 7
  %10 = bitcast %struct.rb_node** %subtree_max_size.i67.i.i to i64*
  %11 = load i64, i64* %10, align 8
  br label %get_subtree_max_size.exit70.i.i

get_subtree_max_size.exit70.i.i:                  ; preds = %cond.true3.i68.i.i, %if.end.i.i
  %cond6.i69.i.i = phi i64 [ %11, %cond.true3.i68.i.i ], [ 0, %if.end.i.i ]
  %cmp6.not.i.i = icmp ult i64 %cond6.i69.i.i, %sub.i.i
  br i1 %cmp6.not.i.i, label %while.cond10.preheader.i.i, label %while.cond.backedge.i.i

while.cond10.preheader.i.i:                       ; preds = %get_subtree_max_size.exit70.i.i
  %__rb_parent_color98.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.0106.i.i, i64 0, i32 0
  %12 = load i64, i64* %__rb_parent_color98.i.i, align 8
  %and99.i.i = and i64 %12, -4
  %tobool11.not100.i.i = icmp eq i64 %and99.i.i, 0
  br i1 %tobool11.not100.i.i, label %__alloc_vmap_area.exit.thread, label %while.body12.i.i

while.body12.i.i:                                 ; preds = %while.cond10.preheader.i.i, %if.end30.i.i
  %and101.i.i = phi i64 [ %and.i.i, %if.end30.i.i ], [ %and99.i.i, %while.cond10.preheader.i.i ]
  %13 = inttoptr i64 %and101.i.i to %struct.rb_node*
  %14 = inttoptr i64 %and101.i.i to i8*
  %add.ptr18.i.i = getelementptr i8, i8* %14, i64 -16
  %va_start.i71.i.i = bitcast i8* %add.ptr18.i.i to i64*
  %15 = load i64, i64* %va_start.i71.i.i, align 8
  %cmp.i72.i.i = icmp ugt i64 %15, %vstart
  %.vstart.i74.i.i = select i1 %cmp.i72.i.i, i64 %15, i64 %vstart
  %add4.i75.i.i = add i64 %.vstart.i74.i.i, %add.i.i
  %and7.i77.i.i = and i64 %add4.i75.i.i, %neg6.i.i.i
  %add8.i78.i.i = add i64 %and7.i77.i.i, %size
  %cmp9.i79.i.i = icmp ult i64 %add8.i78.i.i, %and7.i77.i.i
  %cmp10.i80.i.i = icmp ult i64 %and7.i77.i.i, %vstart
  %or.cond.i81.i.i = or i1 %cmp10.i80.i.i, %cmp9.i79.i.i
  br i1 %or.cond.i81.i.i, label %if.end21.i.i, label %is_within_this_va.exit86.i.i

is_within_this_va.exit86.i.i:                     ; preds = %while.body12.i.i
  %va_end.i82.i.i = getelementptr i8, i8* %14, i64 -8
  %16 = bitcast i8* %va_end.i82.i.i to i64*
  %17 = load i64, i64* %16, align 8
  %cmp14.i83.not.i.i = icmp ugt i64 %add8.i78.i.i, %17
  br i1 %cmp14.i83.not.i.i, label %if.end21.i.i, label %cleanup.loopexit.i.i

if.end21.i.i:                                     ; preds = %is_within_this_va.exit86.i.i, %while.body12.i.i
  %rb_right22.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i64 0, i32 1
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_right22.i.i, align 8
  %tobool.not.i87.i.i = icmp eq %struct.rb_node* %18, null
  %add.ptr.i88.i.i = getelementptr %struct.rb_node, %struct.rb_node* %18, i64 -1, i32 1
  %tobool2.not12.i89.i.i = icmp eq %struct.rb_node** %add.ptr.i88.i.i, null
  %tobool2.not.i90.i.i = or i1 %tobool.not.i87.i.i, %tobool2.not12.i89.i.i
  br i1 %tobool2.not.i90.i.i, label %get_subtree_max_size.exit94.i.i, label %cond.true3.i92.i.i

cond.true3.i92.i.i:                               ; preds = %if.end21.i.i
  %subtree_max_size.i91.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i88.i.i, i64 7
  %19 = bitcast %struct.rb_node** %subtree_max_size.i91.i.i to i64*
  %20 = load i64, i64* %19, align 8
  br label %get_subtree_max_size.exit94.i.i

get_subtree_max_size.exit94.i.i:                  ; preds = %cond.true3.i92.i.i, %if.end21.i.i
  %cond6.i93.i.i = phi i64 [ %20, %cond.true3.i92.i.i ], [ 0, %if.end21.i.i ]
  %cmp24.not.i.i = icmp ult i64 %cond6.i93.i.i, %sub.i.i
  %cmp27.not.i.i = icmp ult i64 %15, %vstart
  %or.cond121.i.i = select i1 %cmp24.not.i.i, i1 true, i1 %cmp27.not.i.i
  br i1 %or.cond121.i.i, label %if.end30.i.i, label %while.cond.backedge.i.i

if.end30.i.i:                                     ; preds = %get_subtree_max_size.exit94.i.i
  %__rb_parent_color.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i64 0, i32 0
  %21 = load i64, i64* %__rb_parent_color.i.i, align 8
  %and.i.i = and i64 %21, -4
  %tobool11.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %__alloc_vmap_area.exit.thread, label %while.body12.i.i

while.cond.backedge.i.i:                          ; preds = %get_subtree_max_size.exit94.i.i, %get_subtree_max_size.exit70.i.i, %get_subtree_max_size.exit.i.i
  %node.0.be.i.i = phi %struct.rb_node* [ %9, %get_subtree_max_size.exit70.i.i ], [ %4, %get_subtree_max_size.exit.i.i ], [ %18, %get_subtree_max_size.exit94.i.i ]
  %tobool.not.i.i = icmp eq %struct.rb_node* %node.0.be.i.i, null
  br i1 %tobool.not.i.i, label %__alloc_vmap_area.exit.thread, label %while.body.i.i

cleanup.loopexit.i.i:                             ; preds = %is_within_this_va.exit86.i.i
  %22 = bitcast i8* %add.ptr18.i.i to %struct.vmap_area*
  br label %find_vmap_lowest_match.exit.i

cleanup.loopexit97.split.loop.exit.i.i:           ; preds = %is_within_this_va.exit.i.i
  %23 = bitcast %struct.rb_node** %add.ptr.i.i to %struct.vmap_area*
  br label %find_vmap_lowest_match.exit.i

find_vmap_lowest_match.exit.i:                    ; preds = %cleanup.loopexit97.split.loop.exit.i.i, %cleanup.loopexit.i.i
  %retval.0.i.i = phi %struct.vmap_area* [ %22, %cleanup.loopexit.i.i ], [ %23, %cleanup.loopexit97.split.loop.exit.i.i ]
  %tobool.not.i = icmp eq %struct.vmap_area* %retval.0.i.i, null
  br i1 %tobool.not.i, label %__alloc_vmap_area.exit.thread, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %find_vmap_lowest_match.exit.i
  %va_start.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 0
  %24 = load i64, i64* %va_start.i, align 8
  %cmp.i = icmp ugt i64 %24, %vstart
  %add.pn.v.i = select i1 %cmp.i, i64 %24, i64 %vstart
  %add.pn.i = add i64 %add.pn.v.i, %add.i.i
  %nva_start_addr.0.i = and i64 %add.pn.i, %neg6.i.i.i
  %add14.i = add i64 %nva_start_addr.0.i, %size
  %cmp15.i = icmp ugt i64 %add14.i, %vend
  br i1 %cmp15.i, label %__alloc_vmap_area.exit.thread, label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i
  %cmp.i.i = icmp ugt i64 %24, %nva_start_addr.0.i
  br i1 %cmp.i.i, label %if.then34.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end18.i
  %va_end.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 1
  %25 = load i64, i64* %va_end.i.i, align 8
  %cmp1.i81.i = icmp ugt i64 %add14.i, %25
  br i1 %cmp1.i81.i, label %if.then34.i, label %classify_va_fit_type.exit.i

classify_va_fit_type.exit.i:                      ; preds = %lor.lhs.false.i.i
  %cmp3.i.i = icmp eq i64 %24, %nva_start_addr.0.i
  %cmp7.i.i = icmp eq i64 %25, %add14.i
  %..i.i = select i1 %cmp7.i.i, i32 1, i32 2
  %.30.i.i = select i1 %cmp7.i.i, i32 3, i32 4
  %type.0.i.i = select i1 %cmp3.i.i, i32 %..i.i, i32 %.30.i.i
  switch i32 %type.0.i.i, label %if.then8.i.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then2.i.i
    i32 3, label %if.then5.i.i
  ]

if.then34.i:                                      ; preds = %lor.lhs.false.i.i, %if.end18.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1448; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !41
  br label %__alloc_vmap_area.exit.thread

if.then.i.i:                                      ; preds = %classify_va_fit_type.exit.i
  %rb_node.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i.i.i, i64 0, i32 0
  %26 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %27 = ptrtoint %struct.rb_node* %rb_node.i.i.i to i64
  %cmp.i.i84.i = icmp eq i64 %26, %27
  br i1 %cmp.i.i84.i, label %if.end35.thread74.i.i, label %if.end17.i.i.i, !prof !15

if.end35.thread74.i.i:                            ; preds = %if.then.i.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  %28 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %29 = bitcast %struct.vmap_area* %retval.0.i.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %28, i8* noundef nonnull %29) #25
  br label %__alloc_vmap_area.exit

if.end17.i.i.i:                                   ; preds = %if.then.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2, i32 1
  %30 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i.i.i, align 8
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2, i32 2
  %31 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq %struct.rb_node* %31, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end17.i.i.i
  %and.i.i.i.i.i = and i64 %26, -4
  %32 = inttoptr i64 %and.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i.i, %struct.rb_node* noundef %30, %struct.rb_node* noundef %32) #25
  %tobool1.not.i.i.i.i.i = icmp eq %struct.rb_node* %30, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %__rb_parent_color3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i64 0, i32 0
  store i64 %26, i64* %__rb_parent_color3.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  %and4.i.i.i.i.i = and i64 %26, 1
  %tobool5.not.i.i.i.i.i = icmp eq i64 %and4.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %__rb_erase_augmented.exit.thread.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end17.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq %struct.rb_node* %30, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %__rb_parent_color10.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i64 0, i32 0
  store i64 %26, i64* %__rb_parent_color10.i.i.i.i.i, align 8
  %and11.i.i.i.i.i = and i64 %26, -4
  %33 = inttoptr i64 %and11.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i.i, %struct.rb_node* noundef nonnull %31, %struct.rb_node* noundef %33) #25
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i64 0, i32 2
  %34 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i.i.i, align 8
  %tobool14.not.i.i.i.i.i = icmp eq %struct.rb_node* %34, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i64 0, i32 1
  %35 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i.i.i, align 8
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i.i.i, %struct.rb_node* noundef nonnull %30) #25
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.else12.i.i.i.i.i, %do.body.i.i.i.i.i
  %tmp.0.i.i.i.i.i = phi %struct.rb_node* [ %36, %do.body.i.i.i.i.i ], [ %34, %if.else12.i.i.i.i.i ]
  %successor.0.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i ], [ %30, %if.else12.i.i.i.i.i ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 2
  %36 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i.i.i, align 8
  %tobool19.not.i.i.i.i.i = icmp eq %struct.rb_node* %36, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 1
  %37 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %37, %struct.rb_node** %rb_left26.i.i.i.i.i, align 8
  store volatile %struct.rb_node* %30, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %30, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i, %if.then15.i.i.i.i.i
  %parent.0.i.i.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %30, %if.then15.i.i.i.i.i ]
  %successor.1.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %30, %if.then15.i.i.i.i.i ]
  %child2.0.i.i.i.i.i = phi %struct.rb_node* [ %37, %do.end.i.i.i.i.i ], [ %35, %if.then15.i.i.i.i.i ]
  %38 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %38, %struct.rb_node** %rb_left49.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %38, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i) #25
  %39 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and55.i.i.i.i.i = and i64 %39, -4
  %40 = inttoptr i64 %and55.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i.i, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i, %struct.rb_node* noundef %40) #25
  %tobool56.not.i.i.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i.i.i) #25
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  %__rb_parent_color59.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  %41 = load i64, i64* %__rb_parent_color59.i.i.i.i.i, align 8
  %and60.i.i.i.i.i = and i64 %41, 1
  %tobool61.not.i.i.i.i.i = icmp eq i64 %and60.i.i.i.i.i, 0
  %cond65.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i.i.i ], [ %cond65.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %__rb_parent_color67.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  store i64 %39, i64* %__rb_parent_color67.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.thread.i.i.i.i:         ; preds = %if.then8.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.ph.i.i.i.i = phi %struct.rb_node* [ %32, %if.then2.i.i.i.i.i ], [ %33, %if.then8.i.i.i.i.i ], [ %32, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i.i.i, %struct.rb_node* noundef null) #25
  br label %if.end35.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %if.end66.i.i.i.i.i, %if.else.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %32, %if.else.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %32, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.i.i.i.i, %struct.rb_node* noundef null) #25
  %tobool.not.i.i.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end35.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i.i.i, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  br label %if.end35.i.i

if.then2.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  %add.i86.i = add i64 %24, %size
  store i64 %add.i86.i, i64* %va_start.i, align 8
  br label %if.then38.thread79.i.i

if.then5.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  store i64 %nva_start_addr.0.i, i64* %va_end.i.i, align 8
  br label %if.then38.thread79.i.i

if.then8.i.i:                                     ; preds = %classify_va_fit_type.exit.i
  %call.i.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add15.i.i = add i64 %call.i.i, ptrtoint (%struct.vmap_area** @ne_fit_preload_node to i64)
  %42 = inttoptr i64 %add15.i.i to %struct.vmap_area**
  %43 = load %struct.vmap_area*, %struct.vmap_area** %42, align 8
  store %struct.vmap_area* null, %struct.vmap_area** %42, align 8
  %tobool.not.i88.i = icmp eq %struct.vmap_area* %43, null
  br i1 %tobool.not.i88.i, label %if.then21.i.i, label %if.then38.i.i, !prof !15

if.then21.i.i:                                    ; preds = %if.then8.i.i
  %44 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call22.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %44, i32 noundef 2048) #25
  %45 = bitcast i8* %call22.i.i to %struct.vmap_area*
  %tobool23.not.i.i = icmp eq i8* %call22.i.i, null
  br i1 %tobool23.not.i.i, label %__alloc_vmap_area.exit.thread, label %if.then38.i.i

if.end35.i.i:                                     ; preds = %if.then.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i.i
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i.i) #25
  store i64 %27, i64* %__rb_parent_color.i.i.i, align 8
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %47 = bitcast %struct.vmap_area* %retval.0.i.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %46, i8* noundef nonnull %47) #25
  br label %__alloc_vmap_area.exit

if.then38.thread79.i.i:                           ; preds = %if.then5.i.i, %if.then2.i.i
  %rb_node.i7081.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i7081.i.i, %struct.rb_node* noundef null) #25
  br label %__alloc_vmap_area.exit

if.then38.i.i:                                    ; preds = %if.then21.i.i, %if.then8.i.i
  %lva.0.i.i = phi %struct.vmap_area* [ %45, %if.then21.i.i ], [ %43, %if.then8.i.i ]
  %48 = load i64, i64* %va_start.i, align 8
  %va_start27.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %lva.0.i.i, i64 0, i32 0
  store i64 %48, i64* %va_start27.i.i, align 8
  %va_end28.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %lva.0.i.i, i64 0, i32 1
  store i64 %nva_start_addr.0.i, i64* %va_end28.i.i, align 8
  store i64 %add14.i, i64* %va_start.i, align 8
  %rb_node.i70.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i70.i.i, %struct.rb_node* noundef null) #25
  %tobool39.not.i.i = icmp eq %struct.vmap_area* %lva.0.i.i, null
  br i1 %tobool39.not.i.i, label %__alloc_vmap_area.exit, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.then38.i.i
  call fastcc void @insert_vmap_area_augment(%struct.vmap_area* noundef nonnull %lva.0.i.i, %struct.rb_node* noundef %rb_node.i70.i.i) #25
  br label %__alloc_vmap_area.exit

__alloc_vmap_area.exit.thread:                    ; preds = %while.cond.backedge.i.i, %while.cond10.preheader.i.i, %if.end30.i.i, %find_vmap_lowest_match.exit.i, %if.end.i, %if.then34.i, %if.then21.i.i, %retry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %overflow

__alloc_vmap_area.exit:                           ; preds = %if.end35.thread74.i.i, %if.end35.i.i, %if.then38.thread79.i.i, %if.then38.i.i, %if.then40.i.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %cmp = icmp eq i64 %nva_start_addr.0.i, %vend
  br i1 %cmp, label %overflow, label %if.end93, !prof !15

if.end93:                                         ; preds = %__alloc_vmap_area.exit
  %va_start = bitcast i8* %call.i to i64*
  store i64 %nva_start_addr.0.i, i64* %va_start, align 8
  %va_end = getelementptr inbounds i8, i8* %call.i, i64 8
  %49 = bitcast i8* %va_end to i64*
  store i64 %add14.i, i64* %49, align 8
  %50 = getelementptr inbounds i8, i8* %call.i, i64 56
  %vm = bitcast i8* %50 to %struct.vm_struct**
  store %struct.vm_struct* null, %struct.vm_struct** %vm, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @insert_vmap_area(%struct.vmap_area* noundef nonnull %2) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %51 = load i64, i64* %va_start, align 8
  %and96 = and i64 %51, %add.i.i
  %cmp97.not = icmp eq i64 %and96, 0
  br i1 %cmp97.not, label %do.body118, label %do.body109, !prof !8

do.body109:                                       ; preds = %if.end93
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1561; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !43
  unreachable

do.body118:                                       ; preds = %if.end93
  %cmp120 = icmp ult i64 %51, %vstart
  br i1 %cmp120, label %do.body130, label %do.body139, !prof !15

do.body130:                                       ; preds = %do.body118
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1562; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !44
  unreachable

do.body139:                                       ; preds = %do.body118
  %52 = load i64, i64* %49, align 8
  %cmp141 = icmp ugt i64 %52, %vend
  br i1 %cmp141, label %do.body151, label %cleanup, !prof !15

do.body151:                                       ; preds = %do.body139
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1563; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !45
  unreachable

overflow:                                         ; preds = %__alloc_vmap_area.exit.thread, %__alloc_vmap_area.exit
  br i1 %tobool166.not, label %if.then167, label %if.end168

if.then167:                                       ; preds = %overflow
  call fastcc void @purge_vmap_area_lazy() #23
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then167, %if.end168
  %53 = xor i1 %tobool166.not, true
  br label %retry

if.end168:                                        ; preds = %overflow
  store i64 0, i64* %freed, align 8
  %call169 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef nonnull @vmap_notify_list, i64 noundef 0, i8* noundef nonnull %0) #25
  %54 = load i64, i64* %freed, align 8
  %cmp170.not = icmp eq i64 %54, 0
  br i1 %cmp170.not, label %if.end173, label %retry.backedge

if.end173:                                        ; preds = %if.end168
  %and174 = and i32 %gfp_mask, 8192
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %land.lhs.true, label %if.end183

land.lhs.true:                                    ; preds = %if.end173
  %call176 = call i32 @__printk_ratelimit(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.alloc_vmap_area, i64 0, i64 0)) #25
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end183, label %do.end181

do.end181:                                        ; preds = %land.lhs.true
  %call182 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i64 noundef %size) #28
  br label %if.end183

if.end183:                                        ; preds = %do.end181, %land.lhs.true, %if.end173
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %55, i8* noundef nonnull %call.i) #25
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end67, %do.end48, %if.end183
  %.sink = phi i64 [ -16, %if.end183 ], [ -16, %do.end48 ], [ -12, %do.end67 ]
  %call184 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #23
  %56 = bitcast i8* %call184 to %struct.vmap_area*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body139
  %retval.0 = phi %struct.vmap_area* [ %2, %do.body139 ], [ %56, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret %struct.vmap_area* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pages_range(i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages) unnamed_addr #3 {
entry:
  %call = call i32 @vmap_pages_range_noflush(i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** noundef %pages, i32 noundef 12) #23
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vm_area_add_early(%struct.vm_struct* noundef %vm) local_unnamed_addr #8 section ".init.text" {
entry:
  %.b78 = load i1, i1* @vmap_initialized, align 1
  br i1 %.b78, label %do.body3, label %for.cond.preheader, !prof !15

for.cond.preheader:                               ; preds = %entry
  %0 = load %struct.vm_struct*, %struct.vm_struct** @vmlist, align 8
  %cmp.not88 = icmp eq %struct.vm_struct* %0, null
  br i1 %cmp.not88, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr10 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 1
  %1 = load i8*, i8** %addr10, align 8
  %addr113 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %0, i64 0, i32 1
  %2 = load i8*, i8** %addr113, align 8
  %cmp11.not114 = icmp ult i8* %2, %1
  br i1 %cmp11.not114, label %do.body36, label %do.body14

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2249; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !46
  unreachable

for.body:                                         ; preds = %for.inc
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %8, i64 0, i32 1
  %3 = load i8*, i8** %addr, align 8
  %cmp11.not = icmp ult i8* %3, %1
  br i1 %cmp11.not, label %do.body36, label %do.body14.loopexit

do.body14.loopexit:                               ; preds = %for.body
  %next.le = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %6, i64 0, i32 0
  br label %do.body14

do.body14:                                        ; preds = %do.body14.loopexit, %for.body.lr.ph
  %.lcssa110 = phi %struct.vm_struct* [ %0, %for.body.lr.ph ], [ %8, %do.body14.loopexit ]
  %p.089.lcssa = phi %struct.vm_struct** [ @vmlist, %for.body.lr.ph ], [ %next.le, %do.body14.loopexit ]
  %.lcssa = phi i8* [ %2, %for.body.lr.ph ], [ %3, %do.body14.loopexit ]
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 2
  %4 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %4
  %cmp17 = icmp ult i8* %.lcssa, %add.ptr
  br i1 %cmp17, label %do.body27, label %for.end, !prof !15

do.body27:                                        ; preds = %do.body14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2252; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !47
  unreachable

do.body36:                                        ; preds = %for.body.lr.ph, %for.body
  %5 = phi i8* [ %3, %for.body ], [ %2, %for.body.lr.ph ]
  %6 = phi %struct.vm_struct* [ %8, %for.body ], [ %0, %for.body.lr.ph ]
  %size38 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %6, i64 0, i32 2
  %7 = load i64, i64* %size38, align 8
  %add.ptr39 = getelementptr i8, i8* %5, i64 %7
  %cmp41 = icmp ugt i8* %add.ptr39, %1
  br i1 %cmp41, label %do.body51, label %for.inc, !prof !15

do.body51:                                        ; preds = %do.body36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2255; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !48
  unreachable

for.inc:                                          ; preds = %do.body36
  %next = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %6, i64 0, i32 0
  %8 = load %struct.vm_struct*, %struct.vm_struct** %next, align 8
  %cmp.not = icmp eq %struct.vm_struct* %8, null
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %next.le126 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %6, i64 0, i32 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader, %do.body14
  %p.083 = phi %struct.vm_struct** [ %p.089.lcssa, %do.body14 ], [ @vmlist, %for.cond.preheader ], [ %next.le126, %for.end.loopexit ]
  %9 = phi %struct.vm_struct* [ %.lcssa110, %do.body14 ], [ null, %for.cond.preheader ], [ null, %for.end.loopexit ]
  %next61 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 0
  store %struct.vm_struct* %9, %struct.vm_struct** %next61, align 8
  store %struct.vm_struct* %vm, %struct.vm_struct** %p.083, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vm_area_register_early(%struct.vm_struct* noundef %vm, i64 noundef %align) local_unnamed_addr #8 section ".init.text" {
entry:
  %0 = load i64, i64* @vm_area_register_early.vm_init_off, align 8
  %sub = add i64 %align, -274609471489
  %add1 = add i64 %sub, %0
  %neg = sub i64 0, %align
  %and = and i64 %add1, %neg
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 2
  %1 = load i64, i64* %size, align 8
  %add3 = add i64 %1, 274609475583
  %2 = add i64 %add3, %and
  %sub6 = and i64 %2, -4096
  store i64 %sub6, i64* @vm_area_register_early.vm_init_off, align 8
  %3 = inttoptr i64 %and to i8*
  %addr7 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 1
  store i8* %3, i8** %addr7, align 8
  call void @vm_area_add_early(%struct.vm_struct* noundef %vm) #29
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @vmalloc_init() local_unnamed_addr #8 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #25
  store %struct.kmem_cache* %call, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call183 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp84 = icmp ult i32 %call183, %0
  br i1 %cmp84, label %for.body, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.body, %entry
  %tmp.086 = load %struct.vm_struct*, %struct.vm_struct** @vmlist, align 8
  %tobool.not87 = icmp eq %struct.vm_struct* %tmp.086, null
  br i1 %tobool.not87, label %for.end53, label %for.body29

for.body:                                         ; preds = %entry, %for.body
  %call185 = phi i32 [ %call1, %for.body ], [ %call183, %entry ]
  %idxprom = sext i32 %call185 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.vmap_block_queue* @vmap_block_queue to i64)
  %2 = inttoptr i64 %add to %struct.vmap_block_queue*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %free = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %free) #23
  %3 = load i64, i64* %arrayidx, align 8
  %add18 = add i64 %3, ptrtoint (%struct.vfree_deferred* @vfree_deferred to i64)
  %4 = inttoptr i64 %add18 to %struct.vfree_deferred*
  %list = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %4, i64 0, i32 0
  call fastcc void @init_llist_head(%struct.llist_head* noundef %list) #23
  %.compoundliteral21.sroa.0.0..sroa_idx = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %4, i64 0, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral21.sroa.0.0..sroa_idx, align 8
  %entry24 = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %4, i64 0, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry24) #23
  %func = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %4, i64 0, i32 1, i32 2
  store void (%struct.work_struct*)* @free_work, void (%struct.work_struct*)** %func, align 8
  %call1 = call i32 @cpumask_next(i32 noundef %call185, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %5
  br i1 %cmp, label %for.body, label %for.cond28.preheader

for.body29:                                       ; preds = %for.cond28.preheader, %for.inc
  %tmp.088 = phi %struct.vm_struct* [ %tmp.0, %for.inc ], [ %tmp.086, %for.cond28.preheader ]
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call30 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %6, i32 noundef 2048) #23
  %tobool31.not = icmp eq i8* %call30, null
  br i1 %tobool31.not, label %if.then, label %if.end50, !prof !15

if.then:                                          ; preds = %for.body29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2353; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !49
  br label %for.inc

if.end50:                                         ; preds = %for.body29
  %7 = bitcast i8* %call30 to %struct.vmap_area*
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %tmp.088, i64 0, i32 1
  %8 = load i8*, i8** %addr, align 8
  %9 = ptrtoint i8* %8 to i64
  %va_start = bitcast i8* %call30 to i64*
  store i64 %9, i64* %va_start, align 8
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %tmp.088, i64 0, i32 2
  %10 = load i64, i64* %size, align 8
  %add52 = add i64 %10, %9
  %va_end = getelementptr inbounds i8, i8* %call30, i64 8
  %11 = bitcast i8* %va_end to i64*
  store i64 %add52, i64* %11, align 8
  %12 = getelementptr inbounds i8, i8* %call30, i64 56
  %vm = bitcast i8* %12 to %struct.vm_struct**
  store %struct.vm_struct* %tmp.088, %struct.vm_struct** %vm, align 8
  call fastcc void @insert_vmap_area(%struct.vmap_area* noundef nonnull %7) #23
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end50
  %next = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %tmp.088, i64 0, i32 0
  %tmp.0 = load %struct.vm_struct*, %struct.vm_struct** %next, align 8
  %tobool.not = icmp eq %struct.vm_struct* %tmp.0, null
  br i1 %tobool.not, label %for.end53, label %for.body29

for.end53:                                        ; preds = %for.inc, %for.cond28.preheader
  call fastcc void @vmap_init_free_space() #23
  store i1 true, i1* @vmap_initialized, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_llist_head(%struct.llist_head* nocapture noundef writeonly %list) unnamed_addr #11 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %list, i64 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %first, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_work(%struct.work_struct* noundef %w) #3 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %w, i64 -1, i32 2
  %list = bitcast void (%struct.work_struct*)** %add.ptr to %struct.llist_head*
  %call = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %list) #23
  %tobool.not7 = icmp eq %struct.llist_node* %call, null
  br i1 %tobool.not7, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %land.rhs
  %llnode.08 = phi %struct.llist_node* [ %0, %land.rhs ], [ %call, %entry ]
  %next = getelementptr inbounds %struct.llist_node, %struct.llist_node* %llnode.08, i64 0, i32 0
  %0 = load %struct.llist_node*, %struct.llist_node** %next, align 8
  %1 = bitcast %struct.llist_node* %llnode.08 to i8*
  call fastcc void @__vunmap(i8* noundef nonnull %1, i32 noundef 1) #23
  %tobool.not = icmp eq %struct.llist_node* %0, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k, i32 noundef %flags) unnamed_addr #3 {
entry:
  %or = or i32 %flags, 256
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef %or) #25
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_vmap_area(%struct.vmap_area* noundef %va) unnamed_addr #3 {
entry:
  %0 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i = icmp eq %struct.rb_node* %0, null
  br i1 %tobool1.not.i, label %link_va.exit, label %if.end6.i, !prof !15

if.end6.i:                                        ; preds = %entry
  %va_start.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %1 = load i64, i64* %va_start.i, align 8
  %va_end1588.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %2 = load i64, i64* %va_end1588.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond59.i, %if.end6.i
  %3 = phi %struct.rb_node* [ %0, %if.end6.i ], [ %7, %do.cond59.i ]
  %add.ptr.i = getelementptr %struct.rb_node, %struct.rb_node* %3, i64 -1, i32 1
  %va_end.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 1
  %4 = bitcast %struct.rb_node** %va_end.i to i64*
  %5 = load i64, i64* %4, align 8
  %cmp.i = icmp ult i64 %1, %5
  %va_start10.i = bitcast %struct.rb_node** %add.ptr.i to i64*
  %6 = load i64, i64* %va_start10.i, align 8
  %cmp11.not.i = icmp ugt i64 %2, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else14.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  br i1 %cmp11.not.i, label %find_va_links.exit.thread, label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 2
  br label %do.cond59.i

if.else14.thread.i:                               ; preds = %do.body.i
  br i1 %cmp11.not.i, label %if.then24.i, label %find_va_links.exit.thread

if.then24.i:                                      ; preds = %if.else14.thread.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i64 0, i32 1
  br label %do.cond59.i

find_va_links.exit.thread:                        ; preds = %land.lhs.true.i, %if.else14.thread.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %1, i64 noundef %2, i64 noundef %6, i64 noundef %5) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %if.end

do.cond59.i:                                      ; preds = %if.then24.i, %if.then13.i
  %link.2.i = phi %struct.rb_node** [ %rb_left.i, %if.then13.i ], [ %rb_right.i, %if.then24.i ]
  %7 = load %struct.rb_node*, %struct.rb_node** %link.2.i, align 8
  %tobool60.not.i = icmp eq %struct.rb_node* %7, null
  br i1 %tobool60.not.i, label %find_va_links.exit, label %do.body.i

find_va_links.exit:                               ; preds = %do.cond59.i
  %rb_node62.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 2
  %8 = bitcast %struct.rb_node** %rb_node62.i to %struct.rb_node*
  %tobool.not = icmp eq %struct.rb_node** %link.2.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %find_va_links.exit
  %tobool.not.i = icmp eq %struct.rb_node** %rb_node62.i, null
  br i1 %tobool.not.i, label %link_va.exit, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %if.then
  %list.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 5
  %9 = bitcast %struct.rb_node** %list.i to %struct.list_head*
  %10 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 3
  %cmp.not.i = icmp eq %struct.rb_node** %10, %link.2.i
  br i1 %cmp.not.i, label %link_va.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %prev.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 6
  %11 = bitcast %struct.rb_node** %prev.i to %struct.list_head**
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  br label %link_va.exit

link_va.exit:                                     ; preds = %entry, %if.then, %if.then.i, %if.then4.i
  %retval.0.i8 = phi %struct.rb_node** [ %link.2.i, %if.then4.i ], [ %link.2.i, %if.then.i ], [ %link.2.i, %if.then ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @vmap_area_root, i64 0, i32 0), %entry ]
  %parent.07 = phi %struct.rb_node* [ %8, %if.then4.i ], [ %8, %if.then.i ], [ null, %if.then ], [ null, %entry ]
  %head.addr.0.i = phi %struct.list_head* [ %12, %if.then4.i ], [ %9, %if.then.i ], [ @vmap_area_list, %if.then ], [ @vmap_area_list, %entry ]
  %rb_node.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i, %struct.rb_node* noundef %parent.07, %struct.rb_node** noundef nonnull %retval.0.i8) #25
  call void @rb_insert_color(%struct.rb_node* noundef %rb_node.i, %struct.rb_root* noundef nonnull @vmap_area_root) #25
  %list12.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i, %struct.list_head* noundef %head.addr.0.i) #25
  br label %if.end

if.end:                                           ; preds = %find_va_links.exit.thread, %link_va.exit, %find_va_links.exit
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vmap_init_free_space() unnamed_addr #3 {
entry:
  %.pn95 = load i8*, i8** bitcast (%struct.list_head* @vmap_area_list to i8**), align 8
  %cmp.not96 = icmp eq i8* %.pn95, bitcast (%struct.list_head* @vmap_area_list to i8*)
  br i1 %cmp.not96, label %if.then37, label %for.body

for.body:                                         ; preds = %entry, %if.end25
  %.pn98 = phi i8* [ %.pn, %if.end25 ], [ %.pn95, %entry ]
  %vmap_start.097 = phi i64 [ %6, %if.end25 ], [ 1, %entry ]
  %busy.0.in = getelementptr i8, i8* %.pn98, i64 -40
  %va_start = bitcast i8* %busy.0.in to i64*
  %0 = load i64, i64* %va_start, align 8
  %cmp1.not = icmp eq i64 %0, %vmap_start.097
  br i1 %cmp1.not, label %if.end25, label %if.then

if.then:                                          ; preds = %for.body
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %1, i32 noundef 2048) #23
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then11, label %if.then21, !prof !15

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2301; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !51
  br label %if.end25

if.then21:                                        ; preds = %if.then
  %2 = bitcast i8* %call to %struct.vmap_area*
  %va_start22 = bitcast i8* %call to i64*
  store i64 %vmap_start.097, i64* %va_start22, align 8
  %3 = load i64, i64* %va_start, align 8
  %va_end = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %va_end to i64*
  store i64 %3, i64* %4, align 8
  call fastcc void @insert_vmap_area_augment(%struct.vmap_area* noundef nonnull %2, %struct.rb_node* noundef null) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then11, %if.then21, %for.body
  %va_end26 = getelementptr i8, i8* %.pn98, i64 -32
  %5 = bitcast i8* %va_end26 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = bitcast i8* %.pn98 to i8**
  %.pn = load i8*, i8** %7, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @vmap_area_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end25
  %cmp35.not = icmp eq i64 %6, -1
  br i1 %cmp35.not, label %if.end70, label %if.then37

if.then37:                                        ; preds = %entry, %for.end
  %vmap_start.0.lcssa101 = phi i64 [ %6, %for.end ], [ 1, %entry ]
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call38 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %8, i32 noundef 2048) #23
  %tobool40.not = icmp eq i8* %call38, null
  br i1 %tobool40.not, label %if.then55, label %if.then66, !prof !15

if.then55:                                        ; preds = %if.then37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2316; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !52
  br label %if.end70

if.then66:                                        ; preds = %if.then37
  %9 = bitcast i8* %call38 to %struct.vmap_area*
  %va_start67 = bitcast i8* %call38 to i64*
  store i64 %vmap_start.0.lcssa101, i64* %va_start67, align 8
  %va_end68 = getelementptr inbounds i8, i8* %call38, i64 8
  %10 = bitcast i8* %va_end68 to i64*
  store i64 -1, i64* %10, align 8
  call fastcc void @insert_vmap_area_augment(%struct.vmap_area* noundef nonnull %9, %struct.rb_node* noundef null) #23
  br label %if.end70

if.end70:                                         ; preds = %if.then55, %if.then66, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct* @__get_vm_area_caller(i64 noundef %size, i64 noundef %flags, i64 noundef %start, i64 noundef %end, i8* noundef %caller) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.vm_struct* @__get_vm_area_node(i64 noundef %size, i64 noundef 1, i64 noundef %flags, i64 noundef %start, i64 noundef %end, i32 noundef 3264, i8* noundef %caller) #23
  ret %struct.vm_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_struct* @__get_vm_area_node(i64 noundef %size, i64 noundef %align, i64 noundef %flags, i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask, i8* noundef %caller) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or3 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 65280
  %or75 = or i32 %or3, %2
  %tobool.not = icmp eq i32 %or75, 0
  br i1 %tobool.not, label %do.end16, label %do.body11, !prof !8

do.body11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2407; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !53
  unreachable

do.end16:                                         ; preds = %entry
  %add = add i64 %size, 4095
  %and19 = and i64 %add, -4096
  %tobool20.not = icmp eq i64 %and19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end31, !prof !15

if.end31:                                         ; preds = %do.end16
  %and32 = and i64 %flags, 1
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.end45, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = call fastcc i32 @get_count_order_long(i64 noundef %and19) #23
  %cmp = icmp sgt i32 %call35, 12
  %cond = select i1 %cmp, i32 %call35, i32 12
  %cmp38 = icmp ult i32 %cond, 30
  %cond43 = select i1 %cmp38, i32 %cond, i32 30
  %sh_prom = zext i32 %cond43 to i64
  %shl44 = shl nuw nsw i64 1, %sh_prom
  br label %if.end45

if.end45:                                         ; preds = %if.then34, %if.end31
  %align.addr.0 = phi i64 [ %shl44, %if.then34 ], [ %align, %if.end31 ]
  %and46 = and i32 %gfp_mask, 782048
  %call47 = call fastcc i8* @kzalloc_node(i32 noundef %and46) #23
  %3 = bitcast i8* %call47 to %struct.vm_struct*
  %tobool48.not = icmp eq i8* %call47, null
  br i1 %tobool48.not, label %cleanup, label %if.end59, !prof !15

if.end59:                                         ; preds = %if.end45
  %and60 = and i64 %flags, 64
  %tobool61.not = icmp eq i64 %and60, 0
  %add63 = add i64 %and19, 4096
  %spec.select = select i1 %tobool61.not, i64 %add63, i64 %and19
  %call65 = call fastcc %struct.vmap_area* @alloc_vmap_area(i64 noundef %spec.select, i64 noundef %align.addr.0, i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask) #23
  %4 = bitcast %struct.vmap_area* %call65 to i8*
  %call66 = call fastcc i1 @IS_ERR(i8* noundef %4) #23
  br i1 %call66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end59
  call void @kfree(i8* noundef nonnull %call47) #25
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  call fastcc void @setup_vmalloc_vm(%struct.vm_struct* noundef nonnull %3, %struct.vmap_area* noundef %call65, i64 noundef %flags, i8* noundef %caller) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end16, %if.end68, %if.then67
  %retval.0 = phi %struct.vm_struct* [ null, %if.then67 ], [ %3, %if.end68 ], [ null, %do.end16 ], [ null, %if.end45 ]
  ret %struct.vm_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct* @get_vm_area(i64 noundef %size, i64 noundef %flags) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call fastcc %struct.vm_struct* @__get_vm_area_node(i64 noundef %size, i64 noundef 1, i64 noundef %flags, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3264, i8* noundef %3) #23
  ret %struct.vm_struct* %call
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct* @get_vm_area_caller(i64 noundef %size, i64 noundef %flags, i8* noundef %caller) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.vm_struct* @__get_vm_area_node(i64 noundef %size, i64 noundef 1, i64 noundef %flags, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3264, i8* noundef %caller) #23
  ret %struct.vm_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct* @find_vm_area(i8* noundef %addr) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %call = call fastcc %struct.vmap_area* @find_vmap_area(i64 noundef %0) #23
  %tobool.not = icmp eq %struct.vmap_area* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call, i64 0, i32 4
  %vm = bitcast %union.anon.72* %1 to %struct.vm_struct**
  %2 = load %struct.vm_struct*, %struct.vm_struct** %vm, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.vm_struct* [ %2, %if.end ], [ null, %entry ]
  ret %struct.vm_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct* @remove_vm_area(i8* noundef %addr) local_unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %0 = ptrtoint i8* %addr to i64
  %call = call fastcc %struct.vmap_area* @__find_vmap_area(i64 noundef %0) #23
  %tobool.not = icmp eq %struct.vmap_area* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call, i64 0, i32 4
  %vm = bitcast %union.anon.72* %1 to %struct.vm_struct**
  %2 = load %struct.vm_struct*, %struct.vm_struct** %vm, align 8
  %tobool4.not = icmp eq %struct.vm_struct* %2, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.vm_struct* null, %struct.vm_struct** %vm, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @free_unmap_vmap_area(%struct.vmap_area* noundef nonnull %call) #23
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.vm_struct* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.vm_struct* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.vmap_area* @__find_vmap_area(i64 noundef %addr) unnamed_addr #13 {
entry:
  %n.020 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @vmap_area_root, i64 0, i32 0), align 8
  %tobool.not21 = icmp eq %struct.rb_node* %n.020, null
  br i1 %tobool.not21, label %cleanup5, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %n.022 = phi %struct.rb_node* [ %n.0, %cleanup ], [ %n.020, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %n.022, i64 -1, i32 1
  %va_start = bitcast %struct.rb_node** %add.ptr to i64*
  %0 = load i64, i64* %va_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.022, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %va_end = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 1
  %1 = bitcast %struct.rb_node** %va_end to i64*
  %2 = load i64, i64* %1, align 8
  %cmp1.not = icmp ugt i64 %2, %addr
  br i1 %cmp1.not, label %cleanup5.split.loop.exit, label %if.then2

if.then2:                                         ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.022, i64 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then2
  %n.1.in = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then2 ]
  %n.0 = load %struct.rb_node*, %struct.rb_node** %n.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %n.0, null
  br i1 %tobool.not, label %cleanup5, label %while.body

cleanup5.split.loop.exit:                         ; preds = %if.else
  %3 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup, %entry, %cleanup5.split.loop.exit
  %retval.2 = phi %struct.vmap_area* [ %3, %cleanup5.split.loop.exit ], [ null, %entry ], [ null, %cleanup ]
  ret %struct.vmap_area* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vfree_atomic(i8* noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2655; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !54
  unreachable

do.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq i8* %addr, null
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %do.end7
  call fastcc void @__vfree_deferred(i8* noundef nonnull %addr) #23
  br label %return

return:                                           ; preds = %do.end7, %if.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #30, !srcloc !55
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.14* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vfree_deferred(i8* noundef %addr) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (%struct.vfree_deferred* @vfree_deferred to i64)
  %0 = inttoptr i64 %add to %struct.vfree_deferred*
  %1 = bitcast i8* %addr to %struct.llist_node*
  %list = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %0, i64 0, i32 0
  %call2 = call fastcc i1 @llist_add(%struct.llist_node* noundef %1, %struct.llist_head* noundef %list) #23
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %wq = getelementptr inbounds %struct.vfree_deferred, %struct.vfree_deferred* %0, i64 0, i32 1
  call fastcc void @schedule_work(%struct.work_struct* noundef %wq) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vfree(i8* noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2691; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !56
  unreachable

do.end7:                                          ; preds = %entry
  %call9 = call fastcc i32 @preempt_count() #23
  %call12 = call fastcc i32 @preempt_count() #23
  %call15 = call fastcc i32 @preempt_count() #23
  %tobool27.not = icmp eq i8* %addr, null
  br i1 %tobool27.not, label %return, label %if.end29

if.end29:                                         ; preds = %do.end7
  call fastcc void @__vfree(i8* noundef nonnull %addr) #23
  br label %return

return:                                           ; preds = %do.end7, %if.end29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vfree(i8* noundef %addr) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or14 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 65280
  %or716 = or i32 %or14, %2
  %tobool.not = icmp eq i32 %or716, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call fastcc void @__vfree_deferred(i8* noundef %addr) #23
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__vunmap(i8* noundef %addr, i32 noundef 1) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vunmap(i8* noundef %addr) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or25 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 65280
  %or727 = or i32 %or25, %2
  %tobool.not = icmp eq i32 %or727, 0
  br i1 %tobool.not, label %do.end18, label %do.body11, !prof !8

do.body11:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2715; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !57
  unreachable

do.end18:                                         ; preds = %entry
  %tobool19.not = icmp eq i8* %addr, null
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %do.end18
  call fastcc void @__vunmap(i8* noundef nonnull %addr, i32 noundef 0) #23
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__vunmap(i8* noundef %addr, i32 noundef %deallocate_pages) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %addr, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint i8* %addr to i64
  %and = and i64 %0, 4095
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end26, label %do.end, !prof !8

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %addr) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2596; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !58
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call = call %struct.vm_struct* @find_vm_area(i8* noundef nonnull %addr) #23
  %tobool27.not = icmp eq %struct.vm_struct* %call, null
  br i1 %tobool27.not, label %do.end51, label %if.end66, !prof !15

do.end51:                                         ; preds = %if.end26
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %addr) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2602; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !59
  br label %cleanup

if.end66:                                         ; preds = %if.end26
  call fastcc void @vm_remove_mappings(%struct.vm_struct* noundef nonnull %call, i32 noundef %deallocate_pages) #23
  %tobool73.not = icmp eq i32 %deallocate_pages, 0
  br i1 %tobool73.not, label %if.end104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end66
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 5
  %1 = load i32, i32* %nr_pages, align 8
  %cmp76136.not = icmp eq i32 %1, 0
  br i1 %cmp76136.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.end98
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %do.end98 ]
  %2 = load %struct.page**, %struct.page*** %pages, align 8
  %idxprom = sext i32 %i.0137 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %2, i64 %idxprom
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %tobool79.not = icmp eq %struct.page* %3, null
  br i1 %tobool79.not, label %do.body90, label %do.end98, !prof !15

do.body90:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2620; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !60
  unreachable

do.end98:                                         ; preds = %for.body
  call void @__free_pages(%struct.page* noundef nonnull %3, i32 noundef 0) #25
  call fastcc void @_cond_resched() #23
  %add = add nuw i32 %i.0137, 1
  %4 = load i32, i32* %nr_pages, align 8
  %cmp76 = icmp ult i32 %add, %4
  br i1 %cmp76, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %do.end98
  %phi.cast = zext i32 %4 to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %phi.cast, %for.end.loopexit ]
  call fastcc void @__ll_sc_atomic64_sub(i64 noundef %.lcssa, %struct.atomic64_t* noundef nonnull @nr_vmalloc_pages) #25
  %pages103 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 4
  %5 = bitcast %struct.page*** %pages103 to i8**
  %6 = load i8*, i8** %5, align 8
  call void @kvfree(i8* noundef %6) #25
  br label %if.end104

if.end104:                                        ; preds = %for.end, %if.end66
  %7 = bitcast %struct.vm_struct* %call to i8*
  call void @kfree(i8* noundef nonnull %7) #25
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry, %if.end104, %do.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmap(%struct.page** noundef %pages, i32 noundef %count, i64 noundef %flags, i64 %prot.coerce) local_unnamed_addr #3 {
entry:
  %conv = zext i32 %count to i64
  %call = call fastcc i64 @totalram_pages() #23
  %cmp = icmp ult i64 %call, %conv
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %shl = shl nuw nsw i64 %conv, 12
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl9.neg = shl nsw i64 -1, %2
  %or = or i64 %shl9.neg, %1
  %and12 = and i64 %shl9.neg, 36028797018963967
  %neg = xor i64 %and12, -1
  %and14 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and14, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call15 = call %struct.vm_struct* @get_vm_area_caller(i64 noundef %shl, i64 noundef %flags, i8* noundef %3) #23
  %tobool16.not = icmp eq %struct.vm_struct* %call15, null
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %addr19 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call15, i64 0, i32 1
  %4 = load i8*, i8** %addr19, align 8
  %5 = ptrtoint i8* %4 to i64
  %add20 = add i64 %shl, %5
  %or23 = or i64 %prot.coerce, 9007199254740992
  %call25 = call fastcc i32 @vmap_pages_range(i64 noundef %5, i64 noundef %add20, i64 %or23, %struct.page** noundef %pages) #23
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end18
  %6 = load i8*, i8** %addr19, align 8
  call void @vunmap(i8* noundef %6) #23
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %and31 = and i64 %flags, 512
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end30
  %pages34 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call15, i64 0, i32 4
  store %struct.page** %pages, %struct.page*** %pages34, align 8
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call15, i64 0, i32 5
  store i32 %count, i32* %nr_pages, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %7 = load i8*, i8** %addr19, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end35, %if.then28
  %retval.0 = phi i8* [ null, %if.then28 ], [ %7, %if.end35 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__vmalloc_node_range(i64 noundef %size, i64 noundef %align, i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask, i64 %prot.coerce, i64 noundef %vm_flags, i32 noundef %node, i8* noundef %caller) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !15

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 2980; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !61
  br label %cleanup

if.end18:                                         ; preds = %entry
  %shr = lshr i64 %size, 12
  %call = call fastcc i64 @totalram_pages() #23
  %cmp = icmp ugt i64 %shr, %call
  br i1 %cmp, label %if.then20, label %again

if.then20:                                        ; preds = %if.end18
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %gfp_mask, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 noundef %size) #25
  br label %cleanup

again:                                            ; preds = %if.end18
  %or = or i64 %vm_flags, 34
  %call23 = call fastcc %struct.vm_struct* @__get_vm_area_node(i64 noundef %size, i64 noundef %align, i64 noundef %or, i64 noundef %start, i64 noundef %end, i32 noundef %gfp_mask, i8* noundef %caller) #23
  %tobool24.not = icmp eq %struct.vm_struct* %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %again
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %gfp_mask, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 noundef %size) #25
  br label %cleanup

if.end26:                                         ; preds = %again
  %call28 = call fastcc i8* @__vmalloc_area_node(%struct.vm_struct* noundef nonnull %call23, i32 noundef %gfp_mask, i64 %prot.coerce, i32 noundef %node) #23
  %tobool29.not = icmp eq i8* %call28, null
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end26
  call fastcc void @clear_vm_uninitialized_flag(%struct.vm_struct* noundef nonnull %call23) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end26, %if.then25, %if.end31, %if.then20
  %retval.0 = phi i8* [ null, %if.then20 ], [ %call28, %if.end31 ], [ null, %if.then ], [ null, %if.then25 ], [ null, %if.end26 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_alloc(i32 noundef, %struct.nodemask_t* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__vmalloc_area_node(%struct.vm_struct* noundef %area, i32 noundef %gfp_mask, i64 %prot.coerce, i32 noundef %node) unnamed_addr #3 {
entry:
  %and = and i32 %gfp_mask, 782048
  %or = or i32 %and, 256
  %addr1 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 1
  %0 = load i8*, i8** %addr1, align 8
  %1 = ptrtoint i8* %0 to i64
  %call = call fastcc i64 @get_vm_area_size(%struct.vm_struct* noundef %area) #23
  %shr = lshr i64 %call, 12
  %conv = trunc i64 %shr to i32
  %conv2 = and i64 %shr, 4294967295
  %mul = shl nuw nsw i64 %conv2, 3
  %and4 = and i32 %gfp_mask, 5
  %tobool.not = icmp eq i32 %and4, 0
  %spec.select.v = select i1 %tobool.not, i32 8194, i32 8192
  %spec.select = or i32 %spec.select.v, %gfp_mask
  %cmp = icmp ugt i64 %conv2, 512
  br i1 %cmp, label %if.then7, label %if.end6.i

if.then7:                                         ; preds = %entry
  %caller = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 7
  %2 = load i8*, i8** %caller, align 8
  %call8 = call i8* @__vmalloc_node(i64 noundef %mul, i64 noundef 1, i32 noundef %or, i32 noundef %node, i8* noundef %2) #23
  br label %if.end11

if.end6.i:                                        ; preds = %entry
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %mul, i32 noundef %or) #25
  br label %if.end11

if.end11:                                         ; preds = %if.end6.i, %if.then7
  %retval.1.i.sink = phi i8* [ %call8, %if.then7 ], [ %call.i.i, %if.end6.i ]
  %pages10 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 4
  %3 = bitcast %struct.page*** %pages10 to i8**
  store i8* %retval.1.i.sink, i8** %3, align 8
  %pages12 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 4
  %tobool13.not = icmp eq i8* %retval.1.i.sink, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  %mul16 = shl nuw nsw i64 %conv2, 12
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %spec.select, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i64 noundef %mul16, i64 noundef %mul) #25
  call void @free_vm_area(%struct.vm_struct* noundef %area) #23
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %4 = bitcast i8* %retval.1.i.sink to %struct.page**
  %call20 = call fastcc i32 @vm_area_alloc_pages(i32 noundef %spec.select, i32 noundef %node, i32 noundef %conv, %struct.page** noundef nonnull %4) #23
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 5
  store i32 %call20, i32* %nr_pages, align 8
  %conv22 = zext i32 %call20 to i64
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %conv22) #25
  %5 = load i32, i32* %nr_pages, align 8
  %cmp24.not = icmp eq i32 %5, %conv
  br i1 %cmp24.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end17
  %conv28 = zext i32 %5 to i64
  %mul29 = shl nuw nsw i64 %conv28, 12
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %spec.select, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i64 noundef %mul29, i32 noundef 0) #25
  br label %fail

if.end30:                                         ; preds = %if.end17
  %add = add i64 %call, %1
  %6 = load %struct.page**, %struct.page*** %pages12, align 8
  %call33 = call fastcc i32 @vmap_pages_range(i64 noundef %1, i64 noundef %add, i64 %prot.coerce, %struct.page** noundef %6) #23
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end30
  %7 = load i32, i32* %nr_pages, align 8
  %conv38 = zext i32 %7 to i64
  %mul39 = shl nuw nsw i64 %conv38, 12
  call void (i32, %struct.nodemask_t*, i8*, ...) @warn_alloc(i32 noundef %spec.select, %struct.nodemask_t* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i64 noundef %mul39) #25
  br label %fail

if.end40:                                         ; preds = %if.end30
  %8 = load i8*, i8** %addr1, align 8
  br label %cleanup

fail:                                             ; preds = %if.then36, %if.then26
  %9 = load i8*, i8** %addr1, align 8
  call fastcc void @__vfree(i8* noundef %9) #23
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end40, %if.then14
  %retval.0 = phi i8* [ null, %fail ], [ %8, %if.end40 ], [ null, %if.then14 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_vm_uninitialized_flag(%struct.vm_struct* nocapture noundef %vm) unnamed_addr #3 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !62
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, -33
  store i64 %and, i64* %flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__vmalloc_node(i64 noundef %size, i64 noundef %align, i32 noundef %gfp_mask, i32 noundef %node, i8* noundef %caller) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !31
  %tobool.not = icmp eq i8 %0, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %call = call i8* @__vmalloc_node_range(i64 noundef %size, i64 noundef %align, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef %gfp_mask, i64 %or3, i64 noundef 0, i32 noundef %node, i8* noundef %caller) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__vmalloc(i64 noundef %size, i32 noundef %gfp_mask) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef %gfp_mask, i32 noundef -1, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef 3264, i32 noundef -1, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc_no_huge(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !31
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool5.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl9.neg = shl nsw i64 -1, %3
  %or8 = or i64 %shl9.neg, %2
  %and12 = and i64 %shl9.neg, 36028797018963967
  %neg = xor i64 %and12, -1
  %and14 = and i64 %neg, %2
  %cond15 = select i1 %tobool5.not, i64 %and14, i64 %or8
  %tobool.not = icmp eq i8 %0, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %4 = inttoptr i64 %cond15 to i8*
  %call = call i8* @__vmalloc_node_range(i64 noundef %size, i64 noundef 1, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3264, i64 %or3, i64 noundef 1024, i32 noundef -1, i8* noundef %4) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vzalloc(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef 3520, i32 noundef -1, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc_user(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !31
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool5.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl9.neg = shl nsw i64 -1, %3
  %or8 = or i64 %shl9.neg, %2
  %and12 = and i64 %shl9.neg, 36028797018963967
  %neg = xor i64 %and12, -1
  %and14 = and i64 %neg, %2
  %cond15 = select i1 %tobool5.not, i64 %and14, i64 %or8
  %tobool.not = icmp eq i8 %0, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %4 = inttoptr i64 %cond15 to i8*
  %call = call i8* @__vmalloc_node_range(i64 noundef %size, i64 noundef 4096, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3520, i64 %or3, i64 noundef 8, i32 noundef -1, i8* noundef %4) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc_node(i64 noundef %size, i32 noundef %node) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef 3264, i32 noundef %node, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vzalloc_node(i64 noundef %size, i32 noundef %node) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef 3520, i32 noundef %node, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc_32(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i8* @__vmalloc_node(i64 noundef %size, i64 noundef 1, i32 noundef 3268, i32 noundef -1, i8* noundef %3) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vmalloc_32_user(i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !31
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool5.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl9.neg = shl nsw i64 -1, %3
  %or8 = or i64 %shl9.neg, %2
  %and12 = and i64 %shl9.neg, 36028797018963967
  %neg = xor i64 %and12, -1
  %and14 = and i64 %neg, %2
  %cond15 = select i1 %tobool5.not, i64 %and14, i64 %or8
  %tobool.not = icmp eq i8 %0, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %4 = inttoptr i64 %cond15 to i8*
  %call = call i8* @__vmalloc_node_range(i64 noundef %size, i64 noundef 4096, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3524, i64 %or3, i64 noundef 8, i32 noundef -1, i8* noundef %4) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vread(i8* noundef %buf, i8* noundef %addr, i64 noundef %count) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %addr to i64
  %1 = xor i64 %count, -1
  %cmp = icmp ult i64 %1, %0
  %sub = sub i64 0, %0
  %spec.select = select i1 %cmp, i64 %sub, i64 %count
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %call = call fastcc %struct.vmap_area* @find_vmap_area_exceed_addr(i64 noundef %0) #23
  %tobool.not = icmp eq %struct.vmap_area* %call, null
  br i1 %tobool.not, label %finished.thread, label %if.end2

if.end2:                                          ; preds = %entry
  %add3 = add i64 %spec.select, %0
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call, i64 0, i32 0
  %2 = load i64, i64* %va_start, align 8
  %cmp4.not = icmp ugt i64 %add3, %2
  br i1 %cmp4.not, label %for.cond.preheader, label %finished.thread

for.cond.preheader:                               ; preds = %if.end2
  %list128 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call, i64 0, i32 3
  %cmp7129 = icmp ne %struct.list_head* %list128, @vmap_area_list
  %tobool8130 = icmp ne i64 %spec.select, 0
  %or.cond131 = and i1 %cmp7129, %tobool8130
  br i1 %or.cond131, label %if.end10, label %finished.thread140

finished.thread140:                               ; preds = %for.cond.preheader
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %cleanup

if.end10:                                         ; preds = %for.cond.preheader, %for.inc
  %list136 = phi %struct.list_head* [ %18, %for.inc ], [ %list128, %for.cond.preheader ]
  %buf.addr.0135 = phi i8* [ %buf.addr.2, %for.inc ], [ %buf, %for.cond.preheader ]
  %va.0134 = phi %struct.vmap_area* [ %17, %for.inc ], [ %call, %for.cond.preheader ]
  %count.addr.1133 = phi i64 [ %count.addr.3, %for.inc ], [ %spec.select, %for.cond.preheader ]
  %addr.addr.0132 = phi i8* [ %addr.addr.2, %for.inc ], [ %addr, %for.cond.preheader ]
  %addr.addr.0132147 = ptrtoint i8* %addr.addr.0132 to i64
  %3 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.0134, i64 0, i32 4
  %vm11 = bitcast %union.anon.72* %3 to %struct.vm_struct**
  %4 = load %struct.vm_struct*, %struct.vm_struct** %vm11, align 8
  %tobool12.not = icmp eq %struct.vm_struct* %4, null
  br i1 %tobool12.not, label %for.inc, label %if.end14

if.end14:                                         ; preds = %if.end10
  %addr16 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %4, i64 0, i32 1
  %5 = load i8*, i8** %addr16, align 8
  %6 = ptrtoint i8* %5 to i64
  %call17 = call fastcc i64 @get_vm_area_size(%struct.vm_struct* noundef nonnull %4) #23
  %add.ptr = getelementptr i8, i8* %5, i64 %call17
  %cmp18.not = icmp ult i8* %addr.addr.0132, %add.ptr
  br i1 %cmp18.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %if.end14
  %cmp21122 = icmp ult i8* %addr.addr.0132, %5
  br i1 %cmp21122, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %7 = xor i64 %addr.addr.0132147, -1
  %8 = add i64 %7, %6
  %umin = call i64 @llvm.umin.i64(i64 %count.addr.1133, i64 %8)
  %9 = add i64 %umin, 1
  %min.iters.check = icmp ult i64 %9, 3
  br i1 %min.iters.check, label %while.body.preheader156, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.mod.vf = and i64 %9, 1
  %10 = icmp eq i64 %n.mod.vf, 0
  %11 = select i1 %10, i64 2, i64 %n.mod.vf
  %n.vec = sub i64 %9, %11
  %ind.end = getelementptr i8, i8* %buf.addr.0135, i64 %n.vec
  %ind.end149 = sub i64 %count.addr.1133, %n.vec
  %ind.end151 = getelementptr i8, i8* %addr.addr.0132, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, i8* %buf.addr.0135, i64 %index
  %12 = or i64 %index, 1
  %next.gep152 = getelementptr i8, i8* %buf.addr.0135, i64 %12
  store i8 0, i8* %next.gep, align 1
  store i8 0, i8* %next.gep152, align 1
  %index.next = add nuw i64 %index, 2
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %while.body.preheader156, label %vector.body, !llvm.loop !63

while.body.preheader156:                          ; preds = %vector.body, %while.body.preheader
  %buf.addr.1125.ph = phi i8* [ %buf.addr.0135, %while.body.preheader ], [ %ind.end, %vector.body ]
  %count.addr.2124.ph = phi i64 [ %count.addr.1133, %while.body.preheader ], [ %ind.end149, %vector.body ]
  %addr.addr.1123.ph = phi i8* [ %addr.addr.0132, %while.body.preheader ], [ %ind.end151, %vector.body ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader156, %if.end24
  %buf.addr.1125 = phi i8* [ %incdec.ptr, %if.end24 ], [ %buf.addr.1125.ph, %while.body.preheader156 ]
  %count.addr.2124 = phi i64 [ %dec, %if.end24 ], [ %count.addr.2124.ph, %while.body.preheader156 ]
  %addr.addr.1123 = phi i8* [ %incdec.ptr25, %if.end24 ], [ %addr.addr.1123.ph, %while.body.preheader156 ]
  %cmp22 = icmp eq i64 %count.addr.2124, 0
  br i1 %cmp22, label %finished, label %if.end24

if.end24:                                         ; preds = %while.body
  store i8 0, i8* %buf.addr.1125, align 1
  %incdec.ptr = getelementptr i8, i8* %buf.addr.1125, i64 1
  %incdec.ptr25 = getelementptr i8, i8* %addr.addr.1123, i64 1
  %dec = add i64 %count.addr.2124, -1
  %cmp21 = icmp ult i8* %incdec.ptr25, %5
  br i1 %cmp21, label %while.body, label %while.end, !llvm.loop !65

while.end:                                        ; preds = %if.end24, %while.cond.preheader
  %addr.addr.1.lcssa = phi i8* [ %addr.addr.0132, %while.cond.preheader ], [ %incdec.ptr25, %if.end24 ]
  %count.addr.2.lcssa = phi i64 [ %count.addr.1133, %while.cond.preheader ], [ %dec, %if.end24 ]
  %buf.addr.1.lcssa = phi i8* [ %buf.addr.0135, %while.cond.preheader ], [ %incdec.ptr, %if.end24 ]
  %call26 = call fastcc i64 @get_vm_area_size(%struct.vm_struct* noundef nonnull %4) #23
  %add.ptr27 = getelementptr i8, i8* %5, i64 %call26
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %addr.addr.1.lcssa to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp28 = icmp ugt i64 %sub.ptr.sub, %count.addr.2.lcssa
  %spec.select112 = select i1 %cmp28, i64 %count.addr.2.lcssa, i64 %sub.ptr.sub
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %4, i64 0, i32 3
  %14 = load i64, i64* %flags, align 8
  %and = and i64 %14, 1
  %tobool31.not = icmp eq i64 %and, 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %while.end
  call fastcc void @aligned_vread(i8* noundef %buf.addr.1.lcssa, i8* noundef %addr.addr.1.lcssa, i64 noundef %spec.select112) #23
  br label %if.end35

if.else:                                          ; preds = %while.end
  %call34 = call i8* @memset(i8* noundef %buf.addr.1.lcssa, i32 noundef 0, i64 noundef %spec.select112) #25
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %add.ptr36 = getelementptr i8, i8* %buf.addr.1.lcssa, i64 %spec.select112
  %add.ptr37 = getelementptr i8, i8* %addr.addr.1.lcssa, i64 %spec.select112
  %sub38 = sub i64 %count.addr.2.lcssa, %spec.select112
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.end10, %if.end35
  %addr.addr.2 = phi i8* [ %addr.addr.0132, %if.end14 ], [ %add.ptr37, %if.end35 ], [ %addr.addr.0132, %if.end10 ]
  %count.addr.3 = phi i64 [ %count.addr.1133, %if.end14 ], [ %sub38, %if.end35 ], [ %count.addr.1133, %if.end10 ]
  %buf.addr.2 = phi i8* [ %buf.addr.0135, %if.end14 ], [ %add.ptr36, %if.end35 ], [ %buf.addr.0135, %if.end10 ]
  %15 = bitcast %struct.list_head* %list136 to i8**
  %16 = load i8*, i8** %15, align 8
  %add.ptr40 = getelementptr i8, i8* %16, i64 -40
  %17 = bitcast i8* %add.ptr40 to %struct.vmap_area*
  %18 = bitcast i8* %16 to %struct.list_head*
  %cmp7 = icmp ne i8* %16, bitcast (%struct.list_head* @vmap_area_list to i8*)
  %tobool8 = icmp ne i64 %count.addr.3, 0
  %or.cond = select i1 %cmp7, i1 %tobool8, i1 false
  br i1 %or.cond, label %if.end10, label %finished

finished.thread:                                  ; preds = %if.end2, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %cleanup

finished:                                         ; preds = %for.inc, %while.body
  %buf.addr.3 = phi i8* [ %buf.addr.1125, %while.body ], [ %buf.addr.2, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %cmp41 = icmp eq i8* %buf.addr.3, %buf
  br i1 %cmp41, label %cleanup, label %if.end43

if.end43:                                         ; preds = %finished
  %add.ptr44 = getelementptr i8, i8* %buf, i64 %count
  %cmp45.not = icmp eq i8* %buf.addr.3, %add.ptr44
  br i1 %cmp45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %if.end43
  %sub.ptr.lhs.cast47 = ptrtoint i8* %buf.addr.3 to i64
  %sub.ptr.rhs.cast48 = ptrtoint i8* %buf to i64
  %sub.ptr.sub49.neg = add i64 %sub.ptr.rhs.cast48, %count
  %sub50 = sub i64 %sub.ptr.sub49.neg, %sub.ptr.lhs.cast47
  %call51 = call i8* @memset(i8* noundef %buf.addr.3, i32 noundef 0, i64 noundef %sub50) #25
  br label %cleanup

cleanup:                                          ; preds = %finished.thread140, %finished.thread, %if.end43, %if.then46, %finished
  %retval.0 = phi i64 [ 0, %finished ], [ %count, %if.then46 ], [ %count, %if.end43 ], [ 0, %finished.thread ], [ 0, %finished.thread140 ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.vmap_area* @find_vmap_area_exceed_addr(i64 noundef %addr) unnamed_addr #13 {
entry:
  %n.023 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @vmap_area_root, i64 0, i32 0), align 8
  %tobool.not24 = icmp eq %struct.rb_node* %n.023, null
  br i1 %tobool.not24, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %n.026 = phi %struct.rb_node* [ %n.0, %cleanup ], [ %n.023, %entry ]
  %va.025 = phi %struct.vmap_area* [ %va.1, %cleanup ], [ null, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %n.026, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  %va_end = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 1
  %1 = bitcast %struct.rb_node** %va_end to i64*
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ugt i64 %2, %addr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %va_start = bitcast %struct.rb_node** %add.ptr to i64*
  %3 = load i64, i64* %va_start, align 8
  %cmp2.not = icmp ugt i64 %3, %addr
  br i1 %cmp2.not, label %if.end, label %while.end.loopexit.split.loop.exit

if.end:                                           ; preds = %if.then
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.026, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.026, i64 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else
  %n.1.in = phi %struct.rb_node** [ %rb_left, %if.end ], [ %rb_right, %if.else ]
  %va.1 = phi %struct.vmap_area* [ %0, %if.end ], [ %va.025, %if.else ]
  %n.0 = load %struct.rb_node*, %struct.rb_node** %n.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %n.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end.loopexit.split.loop.exit:               ; preds = %if.then
  %4 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  br label %while.end

while.end:                                        ; preds = %cleanup, %while.end.loopexit.split.loop.exit, %entry
  %va.3 = phi %struct.vmap_area* [ null, %entry ], [ %4, %while.end.loopexit.split.loop.exit ], [ %va.1, %cleanup ]
  ret %struct.vmap_area* %va.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_vm_area_size(%struct.vm_struct* nocapture noundef readonly %area) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 64
  %tobool.not = icmp eq i64 %and, 0
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 2
  %1 = load i64, i64* %size, align 8
  %sub = add i64 %1, -4096
  %retval.0 = select i1 %tobool.not, i64 %sub, i64 %1
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @aligned_vread(i8* noundef %buf, i8* noundef %addr, i64 noundef %count) unnamed_addr #3 {
entry:
  %tobool.not1 = icmp eq i64 %count, 0
  br i1 %tobool.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %buf.addr.05 = phi i8* [ %add.ptr11, %if.end9 ], [ %buf, %entry ]
  %count.addr.03 = phi i64 [ %sub13, %if.end9 ], [ %count, %entry ]
  %addr.addr.02 = phi i8* [ %add.ptr10, %if.end9 ], [ %addr, %entry ]
  %0 = ptrtoint i8* %addr.addr.02 to i64
  %and = and i64 %0, 4095
  %sub = sub nuw nsw i64 4096, %and
  %cmp = icmp ugt i64 %sub, %count.addr.03
  %spec.select = select i1 %cmp, i64 %count.addr.03, i64 %sub
  %call = call %struct.page* @vmalloc_to_page(i8* noundef %addr.addr.02) #23
  %tobool1.not = icmp eq %struct.page* %call, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %while.body
  %call3 = call fastcc i8* @kmap_atomic(%struct.page* noundef nonnull %call) #23
  %add.ptr = getelementptr i8, i8* %call3, i64 %and
  %call4 = call i8* @memcpy(i8* noundef %buf.addr.05, i8* noundef %add.ptr, i64 noundef %spec.select) #25
  call fastcc void @__kunmap_atomic() #23
  br label %if.end9

if.else:                                          ; preds = %while.body
  %call8 = call i8* @memset(i8* noundef %buf.addr.05, i32 noundef 0, i64 noundef %spec.select) #25
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %add.ptr10 = getelementptr i8, i8* %addr.addr.02, i64 %spec.select
  %add.ptr11 = getelementptr i8, i8* %buf.addr.05, i64 %spec.select
  %sub13 = sub i64 %count.addr.03, %spec.select
  %tobool.not = icmp eq i64 %sub13, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end9, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remap_vmalloc_range_partial(%struct.vm_area_struct* noundef %vma, i64 noundef %uaddr, i8* noundef %kaddr, i64 noundef %pgoff, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %shl = shl i64 %pgoff, 12
  %0 = icmp ugt i64 %pgoff, 4503599627370495
  br i1 %0, label %cleanup62, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %size, 4095
  %and = and i64 %add, -4096
  %1 = ptrtoint i8* %kaddr to i64
  %2 = or i64 %1, %uaddr
  %3 = and i64 %2, 4095
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %if.end29, label %cleanup62

if.end29:                                         ; preds = %if.end
  %call30 = call %struct.vm_struct* @find_vm_area(i8* noundef %kaddr) #23
  %tobool31.not = icmp eq %struct.vm_struct* %call30, null
  br i1 %tobool31.not, label %cleanup62, label %if.end33

if.end33:                                         ; preds = %if.end29
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call30, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8
  %and34 = and i64 %5, 24
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %cleanup62, label %if.end37

if.end37:                                         ; preds = %if.end33
  %6 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %and, i64 %shl)
  %7 = extractvalue { i64, i1 } %6, 1
  br i1 %7, label %cleanup62, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end37
  %8 = extractvalue { i64, i1 } %6, 0
  %call47 = call fastcc i64 @get_vm_area_size(%struct.vm_struct* noundef nonnull %call30) #23
  %cmp48 = icmp ugt i64 %8, %call47
  br i1 %cmp48, label %cleanup62, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false46
  %add.ptr = getelementptr i8, i8* %kaddr, i64 %shl
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end51
  %size.addr.0 = phi i64 [ %and, %if.end51 ], [ %sub, %do.cond ]
  %kaddr.addr.0 = phi i8* [ %add.ptr, %if.end51 ], [ %add.ptr58, %do.cond ]
  %uaddr.addr.0 = phi i64 [ %uaddr, %if.end51 ], [ %add57, %do.cond ]
  %call52 = call %struct.page* @vmalloc_to_page(i8* noundef %kaddr.addr.0) #23
  %call53 = call i32 @vm_insert_page(%struct.vm_area_struct* noundef %vma, i64 noundef %uaddr.addr.0, %struct.page* noundef %call52) #25
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.cond, label %cleanup62

do.cond:                                          ; preds = %do.body
  %add57 = add i64 %uaddr.addr.0, 4096
  %add.ptr58 = getelementptr i8, i8* %kaddr.addr.0, i64 4096
  %sub = add i64 %size.addr.0, -4096
  %cmp60.not = icmp eq i64 %sub, 0
  br i1 %cmp60.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %9 = load i64, i64* %vm_flags, align 8
  %or = or i64 %9, 67371008
  store i64 %or, i64* %vm_flags, align 8
  br label %cleanup62

cleanup62:                                        ; preds = %do.body, %if.end37, %lor.lhs.false46, %if.end33, %if.end29, %if.end, %entry, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end29 ], [ -22, %if.end33 ], [ -22, %lor.lhs.false46 ], [ -22, %if.end37 ], [ %call53, %do.body ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(%struct.vm_area_struct* noundef, i64 noundef, %struct.page* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct* noundef %vma, i8* noundef %addr, i64 noundef %pgoff) local_unnamed_addr #3 {
entry:
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %1 = load i64, i64* %vm_end, align 8
  %sub = sub i64 %1, %0
  %call = call i32 @remap_vmalloc_range_partial(%struct.vm_area_struct* noundef %vma, i64 noundef %0, i8* noundef %addr, i64 noundef %pgoff, i64 noundef %sub) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_vm_area(%struct.vm_struct* noundef %area) local_unnamed_addr #3 {
entry:
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 1
  %0 = load i8*, i8** %addr, align 8
  %call = call %struct.vm_struct* @remove_vm_area(i8* noundef %0) #23
  %cmp.not = icmp eq %struct.vm_struct* %call, %area
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3467; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !66
  unreachable

do.end7:                                          ; preds = %entry
  %1 = bitcast %struct.vm_struct* %area to i8*
  call void @kfree(i8* noundef %1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_struct** @pcpu_get_vm_areas(i64* nocapture noundef readonly %offsets, i64* nocapture noundef readonly %sizes, i32 noundef %nr_vms, i64 noundef %align) #3 {
entry:
  %va = alloca %struct.vmap_area*, align 8
  %sub = add i64 %align, -1
  %add = add i64 %align, -274609471489
  %neg = sub i64 0, %align
  %and = and i64 %add, %neg
  %and4 = and i64 %neg, -8858370048
  %0 = bitcast %struct.vmap_area** %va to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  %and5 = and i64 %align, 4095
  %tobool.not = icmp eq i64 %and5, 0
  br i1 %tobool.not, label %lor.rhs, label %do.body9, !prof !8

lor.rhs:                                          ; preds = %entry
  %call = call fastcc i1 @is_power_of_2(i64 noundef %align) #27
  br i1 %call, label %for.cond.preheader, label %do.body9, !prof !8

for.cond.preheader:                               ; preds = %lor.rhs
  %cmp665 = icmp sgt i32 %nr_vms, 0
  br i1 %cmp665, label %for.body.preheader, label %for.end111

for.body.preheader:                               ; preds = %for.cond.preheader
  %1 = zext i32 %nr_vms to i64
  %wide.trip.count721 = zext i32 %nr_vms to i64
  br label %for.body

do.body9:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3578; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !67
  unreachable

for.cond.loopexit:                                ; preds = %for.cond78, %do.end70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond722.not = icmp eq i64 %indvars.iv.next719, %wide.trip.count721
  br i1 %exitcond722.not, label %for.end111, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond.loopexit
  %indvars.iv718 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next719, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond.loopexit ]
  %last_area.0667 = phi i32 [ 0, %for.body.preheader ], [ %spec.select, %for.cond.loopexit ]
  %arrayidx = getelementptr i64, i64* %offsets, i64 %indvars.iv718
  %2 = load i64, i64* %arrayidx, align 8
  %arrayidx17 = getelementptr i64, i64* %sizes, i64 %indvars.iv718
  %3 = load i64, i64* %arrayidx17, align 8
  %add18 = add i64 %3, %2
  %and23 = and i64 %2, %sub
  %cmp24.not = icmp eq i64 %and23, 0
  br i1 %cmp24.not, label %do.body45, label %do.body36, !prof !8

do.body36:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3584; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !68
  unreachable

do.body45:                                        ; preds = %for.body
  %and49 = and i64 %3, %sub
  %cmp50.not = icmp eq i64 %and49, 0
  br i1 %cmp50.not, label %do.end70, label %do.body62, !prof !8

do.body62:                                        ; preds = %do.body45
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3585; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !69
  unreachable

do.end70:                                         ; preds = %do.body45
  %idxprom71 = sext i32 %last_area.0667 to i64
  %arrayidx72 = getelementptr i64, i64* %offsets, i64 %idxprom71
  %4 = load i64, i64* %arrayidx72, align 8
  %cmp73 = icmp ugt i64 %2, %4
  %5 = trunc i64 %indvars.iv718 to i32
  %spec.select = select i1 %cmp73, i32 %5, i32 %last_area.0667
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1
  %cmp79663 = icmp ult i64 %indvars.iv.next719, %1
  br i1 %cmp79663, label %for.body81, label %for.cond.loopexit

for.cond78:                                       ; preds = %for.body81
  %exitcond.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count721
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body81

for.body81:                                       ; preds = %do.end70, %for.cond78
  %indvars.iv715 = phi i64 [ %indvars.iv.next716, %for.cond78 ], [ %indvars.iv, %do.end70 ]
  %arrayidx83 = getelementptr i64, i64* %offsets, i64 %indvars.iv715
  %6 = load i64, i64* %arrayidx83, align 8
  %arrayidx85 = getelementptr i64, i64* %sizes, i64 %indvars.iv715
  %7 = load i64, i64* %arrayidx85, align 8
  %add86 = add i64 %7, %6
  %cmp88 = icmp ult i64 %6, %add18
  %cmp90 = icmp ult i64 %2, %add86
  %8 = select i1 %cmp88, i1 %cmp90, i1 false
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1
  br i1 %8, label %do.body100, label %for.cond78, !prof !15

do.body100:                                       ; preds = %for.body81
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3595; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !70
  unreachable

for.end111:                                       ; preds = %for.cond.loopexit, %for.cond.preheader
  %last_area.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select, %for.cond.loopexit ]
  %idxprom112 = sext i32 %last_area.0.lcssa to i64
  %arrayidx113 = getelementptr i64, i64* %offsets, i64 %idxprom112
  %9 = load i64, i64* %arrayidx113, align 8
  %arrayidx115 = getelementptr i64, i64* %sizes, i64 %idxprom112
  %10 = load i64, i64* %arrayidx115, align 8
  %add116 = add i64 %10, %9
  %sub117 = sub i64 %and4, %and
  %cmp118 = icmp ult i64 %sub117, %add116
  br i1 %cmp118, label %if.then129, label %if.end138

if.then129:                                       ; preds = %for.end111
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3601; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !71
  br label %cleanup420

if.end138:                                        ; preds = %for.end111
  %conv139 = sext i32 %nr_vms to i64
  %call140 = call fastcc i8* @kcalloc(i64 noundef %conv139) #23
  %11 = bitcast i8* %call140 to %struct.vm_struct**
  %call142 = call fastcc i8* @kcalloc(i64 noundef %conv139) #23
  %12 = bitcast i8* %call142 to %struct.vmap_area**
  %tobool143 = icmp ne i8* %call142, null
  %tobool144 = icmp ne i8* %call140, null
  %or.cond = select i1 %tobool143, i1 %tobool144, i1 false
  br i1 %or.cond, label %for.cond147.preheader, label %err_free2

for.cond147.preheader:                            ; preds = %if.end138
  br i1 %cmp665, label %for.body150.preheader, label %retry.preheader

for.body150.preheader:                            ; preds = %for.cond147.preheader
  %wide.trip.count726 = zext i32 %nr_vms to i64
  br label %for.body150

for.cond147:                                      ; preds = %for.body150
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %retry.preheader, label %for.body150

retry.preheader:                                  ; preds = %for.cond147, %for.cond147.preheader
  %add178 = add i64 %add116, %and
  %add203 = add i32 %nr_vms, -1
  %wide.trip.count735 = zext i32 %nr_vms to i64
  br label %retry

for.body150:                                      ; preds = %for.body150.preheader, %for.cond147
  %indvars.iv723 = phi i64 [ 0, %for.body150.preheader ], [ %indvars.iv.next724, %for.cond147 ]
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call151 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %13, i32 noundef 3264) #23
  %arrayidx153 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %indvars.iv723
  %14 = bitcast %struct.vmap_area** %arrayidx153 to i8**
  store i8* %call151, i8** %14, align 8
  %call154 = call fastcc i8* @kzalloc() #23
  %arrayidx156 = getelementptr %struct.vm_struct*, %struct.vm_struct** %11, i64 %indvars.iv723
  %15 = bitcast %struct.vm_struct** %arrayidx156 to i8**
  store i8* %call154, i8** %15, align 8
  %16 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx153, align 8
  %tobool159.not = icmp eq %struct.vmap_area* %16, null
  %tobool163.not = icmp eq i8* %call154, null
  %or.cond628 = select i1 %tobool159.not, i1 true, i1 %tobool163.not
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1
  br i1 %or.cond628, label %err_free, label %for.cond147

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %purged.0.off0 = phi i1 [ false, %retry.preheader ], [ true, %retry.backedge ]
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %17 = load i64, i64* %arrayidx113, align 8
  %18 = load i64, i64* %arrayidx115, align 8
  %add173 = add i64 %18, %17
  %call174 = call fastcc %struct.vmap_area* @pvm_find_va_enclose_addr(i64 noundef %and4) #23
  store %struct.vmap_area* %call174, %struct.vmap_area** %va, align 8
  %call175 = call fastcc i64 @pvm_determine_end_from_reverse(%struct.vmap_area** noundef nonnull %va, i64 noundef %align) #23
  %sub176 = sub i64 %call175, %add173
  %add177670676 = add i64 %sub176, %add116
  %cmp179671677 = icmp ult i64 %add177670676, %add178
  %19 = load %struct.vmap_area*, %struct.vmap_area** %va, align 8
  %cmp183672678 = icmp eq %struct.vmap_area* %19, null
  %or.cond438673679 = select i1 %cmp179671677, i1 true, i1 %cmp183672678
  br i1 %or.cond438673679, label %overflow, label %if.end186.lr.ph

if.end186.lr.ph:                                  ; preds = %retry, %if.end208
  %20 = phi %struct.vmap_area* [ %call215, %if.end208 ], [ %19, %retry ]
  %end.0.ph684 = phi i64 [ %add213, %if.end208 ], [ %add173, %retry ]
  %start.0.ph683 = phi i64 [ %25, %if.end208 ], [ %17, %retry ]
  %base.0.ph682 = phi i64 [ %base.0675, %if.end208 ], [ %sub176, %retry ]
  %term_area.0.ph681 = phi i32 [ %term_area.0674, %if.end208 ], [ %last_area.0.lcssa, %retry ]
  %area.2.ph680 = phi i32 [ %rem, %if.end208 ], [ %last_area.0.lcssa, %retry ]
  br label %if.end186

if.end186:                                        ; preds = %if.end186.lr.ph, %while.cond.backedge
  %21 = phi %struct.vmap_area* [ %20, %if.end186.lr.ph ], [ %23, %while.cond.backedge ]
  %base.0675 = phi i64 [ %base.0.ph682, %if.end186.lr.ph ], [ %base.0.be, %while.cond.backedge ]
  %term_area.0674 = phi i32 [ %term_area.0.ph681, %if.end186.lr.ph ], [ %area.2.ph680, %while.cond.backedge ]
  %add187 = add i64 %end.0.ph684, %base.0675
  %va_end = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %21, i64 0, i32 1
  %22 = load i64, i64* %va_end, align 8
  %cmp188 = icmp ugt i64 %add187, %22
  br i1 %cmp188, label %while.cond.backedge, label %if.end193

while.cond.backedge:                              ; preds = %if.end186, %if.then197
  %call191 = call fastcc i64 @pvm_determine_end_from_reverse(%struct.vmap_area** noundef nonnull %va, i64 noundef %align) #23
  %base.0.be = sub i64 %call191, %end.0.ph684
  %add177 = add i64 %base.0.be, %add116
  %cmp179 = icmp ult i64 %add177, %add178
  %23 = load %struct.vmap_area*, %struct.vmap_area** %va, align 8
  %cmp183 = icmp eq %struct.vmap_area* %23, null
  %or.cond438 = select i1 %cmp179, i1 true, i1 %cmp183
  br i1 %or.cond438, label %overflow, label %if.end186

if.end193:                                        ; preds = %if.end186
  %add194 = add i64 %start.0.ph683, %base.0675
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %21, i64 0, i32 0
  %24 = load i64, i64* %va_start, align 8
  %cmp195 = icmp ult i64 %add194, %24
  br i1 %cmp195, label %if.then197, label %if.end202

if.then197:                                       ; preds = %if.end193
  %rb_node = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %21, i64 0, i32 2
  %call198 = call %struct.rb_node* @rb_prev(%struct.rb_node* noundef %rb_node) #25
  %call199 = call fastcc %struct.vmap_area* @node_to_va(%struct.rb_node* noundef %call198) #23
  store %struct.vmap_area* %call199, %struct.vmap_area** %va, align 8
  br label %while.cond.backedge

if.end202:                                        ; preds = %if.end193
  %sub204 = add i32 %add203, %area.2.ph680
  %rem = srem i32 %sub204, %nr_vms
  %cmp205 = icmp eq i32 %rem, %term_area.0674
  br i1 %cmp205, label %for.cond216.preheader, label %if.end208

for.cond216.preheader:                            ; preds = %if.end202
  br i1 %cmp665, label %for.body219, label %for.end335.critedge

if.end208:                                        ; preds = %if.end202
  %idxprom209 = sext i32 %rem to i64
  %arrayidx210 = getelementptr i64, i64* %offsets, i64 %idxprom209
  %25 = load i64, i64* %arrayidx210, align 8
  %arrayidx212 = getelementptr i64, i64* %sizes, i64 %idxprom209
  %26 = load i64, i64* %arrayidx212, align 8
  %add213 = add i64 %26, %25
  %add214 = add i64 %add213, %base.0675
  %call215 = call fastcc %struct.vmap_area* @pvm_find_va_enclose_addr(i64 noundef %add214) #23
  store %struct.vmap_area* %call215, %struct.vmap_area** %va, align 8
  %add177670 = add i64 %base.0675, %add116
  %cmp179671 = icmp ult i64 %add177670, %add178
  %cmp183672 = icmp eq %struct.vmap_area* %call215, null
  %or.cond438673 = select i1 %cmp179671, i1 true, i1 %cmp183672
  br i1 %or.cond438673, label %overflow, label %if.end186.lr.ph

for.body219:                                      ; preds = %for.cond216.preheader, %for.inc299
  %area.3686 = phi i32 [ %inc300, %for.inc299 ], [ 0, %for.cond216.preheader ]
  %idxprom220 = sext i32 %area.3686 to i64
  %arrayidx221 = getelementptr i64, i64* %offsets, i64 %idxprom220
  %27 = load i64, i64* %arrayidx221, align 8
  %add222 = add i64 %27, %base.0675
  %arrayidx224 = getelementptr i64, i64* %sizes, i64 %idxprom220
  %28 = load i64, i64* %arrayidx224, align 8
  %call225 = call fastcc %struct.vmap_area* @pvm_find_va_enclose_addr(i64 noundef %add222) #23
  store %struct.vmap_area* %call225, %struct.vmap_area** %va, align 8
  %cmp227 = icmp eq %struct.vmap_area* %call225, null
  br i1 %cmp227, label %if.then241, label %if.end253, !prof !15

if.then241:                                       ; preds = %for.body219
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3682; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !72
  br label %cleanup

if.end253:                                        ; preds = %for.body219
  %va_start.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 0
  %29 = load i64, i64* %va_start.i, align 8
  %cmp.i = icmp ugt i64 %29, %add222
  br i1 %cmp.i, label %if.then270, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end253
  %add.i = add i64 %28, %add222
  %va_end.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 1
  %30 = load i64, i64* %va_end.i, align 8
  %cmp1.i = icmp ugt i64 %add.i, %30
  br i1 %cmp1.i, label %if.then270, label %classify_va_fit_type.exit

classify_va_fit_type.exit:                        ; preds = %lor.lhs.false.i
  %cmp3.i = icmp eq i64 %29, %add222
  %cmp7.i = icmp eq i64 %30, %add.i
  %..i = select i1 %cmp7.i, i32 1, i32 2
  %.30.i = select i1 %cmp7.i, i32 3, i32 4
  %type.0.i = select i1 %cmp3.i, i32 %..i, i32 %.30.i
  switch i32 %type.0.i, label %if.then8.i [
    i32 1, label %if.then.i
    i32 2, label %if.then2.i
    i32 3, label %if.then5.i
  ]

if.then270:                                       ; preds = %if.end253, %lor.lhs.false.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 3687; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !73
  br label %cleanup

if.then.i:                                        ; preds = %classify_va_fit_type.exit
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 2
  %__rb_parent_color.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i.i, i64 0, i32 0
  %31 = load i64, i64* %__rb_parent_color.i.i, align 8
  %32 = ptrtoint %struct.rb_node* %rb_node.i.i to i64
  %cmp.i.i = icmp eq i64 %31, %32
  br i1 %cmp.i.i, label %if.end35.thread74.i, label %if.end17.i.i, !prof !15

if.end35.thread74.i:                              ; preds = %if.then.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %34 = bitcast %struct.vmap_area* %call225 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %33, i8* noundef nonnull %34) #25
  br label %for.inc299

if.end17.i.i:                                     ; preds = %if.then.i
  %rb_right.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 2, i32 1
  %35 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i.i, align 8
  %rb_left.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 2, i32 2
  %36 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq %struct.rb_node* %36, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.else6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end17.i.i
  %and.i.i.i.i = and i64 %31, -4
  %37 = inttoptr i64 %and.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef %35, %struct.rb_node* noundef %37) #25
  %tobool1.not.i.i.i.i = icmp eq %struct.rb_node* %35, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %__rb_parent_color3.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 0
  store i64 %31, i64* %__rb_parent_color3.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  %and4.i.i.i.i = and i64 %31, 1
  %tobool5.not.i.i.i.i = icmp eq i64 %and4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %__rb_erase_augmented.exit.thread.i.i.i, label %__rb_erase_augmented.exit.i.i.i

if.else6.i.i.i.i:                                 ; preds = %if.end17.i.i
  %tobool7.not.i.i.i.i = icmp eq %struct.rb_node* %35, null
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.else12.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else6.i.i.i.i
  %__rb_parent_color10.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i64 0, i32 0
  store i64 %31, i64* %__rb_parent_color10.i.i.i.i, align 8
  %and11.i.i.i.i = and i64 %31, -4
  %38 = inttoptr i64 %and11.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef nonnull %36, %struct.rb_node* noundef %38) #25
  br label %__rb_erase_augmented.exit.thread.i.i.i

if.else12.i.i.i.i:                                ; preds = %if.else6.i.i.i.i
  %rb_left13.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 2
  %39 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i.i, align 8
  %tobool14.not.i.i.i.i = icmp eq %struct.rb_node* %39, null
  br i1 %tobool14.not.i.i.i.i, label %if.then15.i.i.i.i, label %do.body.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  %rb_right16.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i64 0, i32 1
  %40 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i.i, align 8
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef nonnull %35) #25
  br label %if.end42.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.else12.i.i.i.i, %do.body.i.i.i.i
  %tmp.0.i.i.i.i = phi %struct.rb_node* [ %41, %do.body.i.i.i.i ], [ %39, %if.else12.i.i.i.i ]
  %successor.0.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i, %do.body.i.i.i.i ], [ %35, %if.else12.i.i.i.i ]
  %rb_left18.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i, i64 0, i32 2
  %41 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i.i, align 8
  %tobool19.not.i.i.i.i = icmp eq %struct.rb_node* %41, null
  br i1 %tobool19.not.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %rb_right20.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i, i64 0, i32 1
  %42 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i.i, align 8
  %rb_left26.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %42, %struct.rb_node** %rb_left26.i.i.i.i, align 8
  store volatile %struct.rb_node* %35, %struct.rb_node** %rb_right20.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %35, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i) #25
  br label %if.end42.i.i.i.i

if.end42.i.i.i.i:                                 ; preds = %do.end.i.i.i.i, %if.then15.i.i.i.i
  %parent.0.i.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i.i, %do.end.i.i.i.i ], [ %35, %if.then15.i.i.i.i ]
  %successor.1.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i, %do.end.i.i.i.i ], [ %35, %if.then15.i.i.i.i ]
  %child2.0.i.i.i.i = phi %struct.rb_node* [ %42, %do.end.i.i.i.i ], [ %40, %if.then15.i.i.i.i ]
  %43 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i, align 8
  %rb_left49.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %43, %struct.rb_node** %rb_left49.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %43, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i) #25
  %44 = load i64, i64* %__rb_parent_color.i.i, align 8
  %and55.i.i.i.i = and i64 %44, -4
  %45 = inttoptr i64 %and55.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i, %struct.rb_node* noundef %45) #25
  %tobool56.not.i.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i, label %if.else58.i.i.i.i, label %if.then57.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %if.end42.i.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i.i) #25
  br label %if.end66.i.i.i.i

if.else58.i.i.i.i:                                ; preds = %if.end42.i.i.i.i
  %__rb_parent_color59.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i, i64 0, i32 0
  %46 = load i64, i64* %__rb_parent_color59.i.i.i.i, align 8
  %and60.i.i.i.i = and i64 %46, 1
  %tobool61.not.i.i.i.i = icmp eq i64 %and60.i.i.i.i, 0
  %cond65.i.i.i.i = select i1 %tobool61.not.i.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i.i
  br label %if.end66.i.i.i.i

if.end66.i.i.i.i:                                 ; preds = %if.else58.i.i.i.i, %if.then57.i.i.i.i
  %rebalance.1.i.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i.i ], [ %cond65.i.i.i.i, %if.else58.i.i.i.i ]
  %__rb_parent_color67.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i, i64 0, i32 0
  store i64 %44, i64* %__rb_parent_color67.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i.i

__rb_erase_augmented.exit.thread.i.i.i:           ; preds = %if.then8.i.i.i.i, %if.else.i.i.i.i, %if.then2.i.i.i.i
  %tmp.1.i.ph.i.i.i = phi %struct.rb_node* [ %37, %if.then2.i.i.i.i ], [ %38, %if.then8.i.i.i.i ], [ %37, %if.else.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i.i, %struct.rb_node* noundef null) #25
  br label %if.end35.i

__rb_erase_augmented.exit.i.i.i:                  ; preds = %if.end66.i.i.i.i, %if.else.i.i.i.i
  %tmp.1.i.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i.i, %if.end66.i.i.i.i ], [ %37, %if.else.i.i.i.i ]
  %rebalance.2.i.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i.i, %if.end66.i.i.i.i ], [ %37, %if.else.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.i.i.i, %struct.rb_node* noundef null) #25
  %tobool.not.i.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end35.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i.i, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  br label %if.end35.i

if.then2.i:                                       ; preds = %classify_va_fit_type.exit
  %add.i630 = add i64 %29, %28
  store i64 %add.i630, i64* %va_start.i, align 8
  br label %if.then38.thread79.i

if.then5.i:                                       ; preds = %classify_va_fit_type.exit
  store i64 %add222, i64* %va_end.i, align 8
  br label %if.then38.thread79.i

if.then8.i:                                       ; preds = %classify_va_fit_type.exit
  %call.i = call fastcc i64 @__kern_my_cpu_offset() #25
  %add15.i = add i64 %call.i, ptrtoint (%struct.vmap_area** @ne_fit_preload_node to i64)
  %47 = inttoptr i64 %add15.i to %struct.vmap_area**
  %48 = load %struct.vmap_area*, %struct.vmap_area** %47, align 8
  store %struct.vmap_area* null, %struct.vmap_area** %47, align 8
  %tobool.not.i = icmp eq %struct.vmap_area* %48, null
  br i1 %tobool.not.i, label %if.then21.i, label %if.then38.i, !prof !15

if.then21.i:                                      ; preds = %if.then8.i
  %49 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call22.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %49, i32 noundef 2048) #25
  %50 = bitcast i8* %call22.i to %struct.vmap_area*
  %tobool23.not.i = icmp eq i8* %call22.i, null
  br i1 %tobool23.not.i, label %cleanup, label %if.then38.i

if.end35.i:                                       ; preds = %if.then.i.i.i, %__rb_erase_augmented.exit.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i
  %list.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i) #25
  store i64 %32, i64* %__rb_parent_color.i.i, align 8
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %52 = bitcast %struct.vmap_area* %call225 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %51, i8* noundef nonnull %52) #25
  br label %for.inc299

if.then38.thread79.i:                             ; preds = %if.then5.i, %if.then2.i
  %rb_node.i7081.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i7081.i, %struct.rb_node* noundef null) #25
  br label %for.inc299

if.then38.i:                                      ; preds = %if.then21.i, %if.then8.i
  %lva.0.i = phi %struct.vmap_area* [ %50, %if.then21.i ], [ %48, %if.then8.i ]
  %53 = load i64, i64* %va_start.i, align 8
  %va_start27.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %lva.0.i, i64 0, i32 0
  store i64 %53, i64* %va_start27.i, align 8
  %va_end28.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %lva.0.i, i64 0, i32 1
  store i64 %add222, i64* %va_end28.i, align 8
  store i64 %add.i, i64* %va_start.i, align 8
  %rb_node.i70.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call225, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i70.i, %struct.rb_node* noundef null) #25
  %tobool39.not.i = icmp eq %struct.vmap_area* %lva.0.i, null
  br i1 %tobool39.not.i, label %for.inc299, label %if.then40.i

if.then40.i:                                      ; preds = %if.then38.i
  call fastcc void @insert_vmap_area_augment(%struct.vmap_area* noundef nonnull %lva.0.i, %struct.rb_node* noundef %rb_node.i70.i) #25
  br label %for.inc299

cleanup:                                          ; preds = %if.then21.i, %if.then270, %if.then241
  %tobool337.not690 = icmp eq i32 %area.3686, 0
  br i1 %tobool337.not690, label %overflow, label %while.body338.preheader

while.body338.preheader:                          ; preds = %cleanup
  %54 = zext i32 %area.3686 to i64
  br label %while.body338

for.inc299:                                       ; preds = %if.then38.thread79.i, %if.end35.thread74.i, %if.end35.i, %if.then40.i, %if.then38.i
  %arrayidx295 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %idxprom220
  %55 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx295, align 8
  store %struct.vmap_area* %55, %struct.vmap_area** %va, align 8
  %va_start296 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %55, i64 0, i32 0
  store i64 %add222, i64* %va_start296, align 8
  %va_end298 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %55, i64 0, i32 1
  store i64 %add.i, i64* %va_end298, align 8
  %inc300 = add nuw i32 %area.3686, 1
  %exitcond728.not = icmp eq i32 %inc300, %nr_vms
  br i1 %exitcond728.not, label %for.end301, label %for.body219

for.end301:                                       ; preds = %for.inc299
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br i1 %cmp665, label %for.body326.preheader, label %for.end335

for.body326.preheader:                            ; preds = %for.end301
  %wide.trip.count740 = zext i32 %nr_vms to i64
  br label %for.body326

for.body326:                                      ; preds = %for.body326.preheader, %for.body326
  %indvars.iv737 = phi i64 [ 0, %for.body326.preheader ], [ %indvars.iv.next738, %for.body326 ]
  %arrayidx328 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %indvars.iv737
  %56 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx328, align 8
  call fastcc void @insert_vmap_area(%struct.vmap_area* noundef %56) #23
  %arrayidx330 = getelementptr %struct.vm_struct*, %struct.vm_struct** %11, i64 %indvars.iv737
  %57 = load %struct.vm_struct*, %struct.vm_struct** %arrayidx330, align 8
  %58 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx328, align 8
  call fastcc void @setup_vmalloc_vm_locked(%struct.vm_struct* noundef %57, %struct.vmap_area* noundef %58, i64 noundef 2, i8* noundef bitcast (%struct.vm_struct** (i64*, i64*, i32, i64)* @pcpu_get_vm_areas to i8*)) #23
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %for.end335, label %for.body326

for.end335.critedge:                              ; preds = %for.cond216.preheader
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %for.end335

for.end335:                                       ; preds = %for.body326, %for.end335.critedge, %for.end301
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call void @kfree(i8* noundef nonnull %call142) #25
  br label %cleanup420

while.body338:                                    ; preds = %while.body338.preheader, %if.end352
  %indvars.iv729 = phi i64 [ %54, %while.body338.preheader ], [ %indvars.iv.next730, %if.end352 ]
  %indvars.iv.next730 = add nsw i64 %indvars.iv729, -1
  %arrayidx340 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %indvars.iv.next730
  %59 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx340, align 8
  %60 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i.i.i = icmp eq %struct.rb_node* %60, null
  br i1 %tobool1.not.i.i.i, label %if.end5.i.i.i, label %if.end6.i.i.i, !prof !15

if.end6.i.i.i:                                    ; preds = %while.body338
  %va_start.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %59, i64 0, i32 0
  %61 = load i64, i64* %va_start.i.i.i, align 8
  %va_end1588.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %59, i64 0, i32 1
  %62 = load i64, i64* %va_end1588.i.i.i, align 8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond59.i.i.i, %if.end6.i.i.i
  %63 = phi %struct.rb_node* [ %60, %if.end6.i.i.i ], [ %67, %do.cond59.i.i.i ]
  %add.ptr.i.i.i = getelementptr %struct.rb_node, %struct.rb_node* %63, i64 -1, i32 1
  %va_end.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 1
  %64 = bitcast %struct.rb_node** %va_end.i.i.i to i64*
  %65 = load i64, i64* %64, align 8
  %cmp.i.i.i = icmp ult i64 %61, %65
  %va_start10.i.i.i = bitcast %struct.rb_node** %add.ptr.i.i.i to i64*
  %66 = load i64, i64* %va_start10.i.i.i, align 8
  %cmp11.not.i.i.i = icmp ugt i64 %62, %66
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else14.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %find_va_links.exit.thread.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %63, i64 0, i32 2
  br label %do.cond59.i.i.i

if.else14.thread.i.i.i:                           ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %if.then24.i.i.i, label %find_va_links.exit.thread.i.i

if.then24.i.i.i:                                  ; preds = %if.else14.thread.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %63, i64 0, i32 1
  br label %do.cond59.i.i.i

find_va_links.exit.thread.i.i:                    ; preds = %if.else14.thread.i.i.i, %land.lhs.true.i.i.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %61, i64 noundef %62, i64 noundef %66, i64 noundef %65) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %if.end352

do.cond59.i.i.i:                                  ; preds = %if.then24.i.i.i, %if.then13.i.i.i
  %link.2.i.i.i = phi %struct.rb_node** [ %rb_left.i.i.i, %if.then13.i.i.i ], [ %rb_right.i.i.i, %if.then24.i.i.i ]
  %67 = load %struct.rb_node*, %struct.rb_node** %link.2.i.i.i, align 8
  %tobool60.not.i.i.i = icmp eq %struct.rb_node* %67, null
  br i1 %tobool60.not.i.i.i, label %find_va_links.exit.i.i, label %do.body.i.i.i

find_va_links.exit.i.i:                           ; preds = %do.cond59.i.i.i
  %rb_node62.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 2
  %68 = bitcast %struct.rb_node** %rb_node62.i.i.i to %struct.rb_node*
  %tobool.not.i.i = icmp eq %struct.rb_node** %link.2.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end352, label %if.end.i.i

if.end.i.i:                                       ; preds = %find_va_links.exit.i.i
  %list4.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 5
  %69 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 3
  %cmp.i79.i.i = icmp eq %struct.rb_node** %69, %link.2.i.i.i
  br i1 %cmp.i79.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  %next.i.i.i = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head**
  %70 = load %struct.list_head*, %struct.list_head** %next.i.i.i, align 8
  br label %get_va_next_sibling.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  %71 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br label %get_va_next_sibling.exit.i.i

get_va_next_sibling.exit.i.i:                     ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %retval.0.i80.i.i = phi %struct.list_head* [ %70, %cond.true.i.i.i ], [ %71, %cond.false.i.i.i ]
  %cmp.i.i633 = icmp eq %struct.list_head* %retval.0.i80.i.i, null
  br i1 %cmp.i.i633, label %if.then.i88.i.i, label %if.end5.i.i, !prof !15

if.end5.i.i:                                      ; preds = %get_va_next_sibling.exit.i.i
  %cmp6.not.i.i = icmp eq %struct.list_head* %retval.0.i80.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i, label %if.end15.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 -3, i32 1
  %va_start.i.i = bitcast %struct.list_head** %add.ptr.i.i to i64*
  %72 = load i64, i64* %va_start.i.i, align 8
  %cmp9.i.i = icmp eq i64 %72, %62
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end15.i.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  %73 = bitcast %struct.list_head** %add.ptr.i.i to %struct.vmap_area*
  store i64 %61, i64* %va_start.i.i, align 8
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %75 = bitcast %struct.vmap_area* %59 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %74, i8* noundef %75) #25
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %if.then8.i.i, %if.end5.i.i
  %merged.0.off0.i.i = phi i1 [ true, %if.then11.i.i ], [ false, %if.then8.i.i ], [ false, %if.end5.i.i ]
  %va.addr.0.i.i = phi %struct.vmap_area* [ %73, %if.then11.i.i ], [ %59, %if.then8.i.i ], [ %59, %if.end5.i.i ]
  %prev.i.i = getelementptr inbounds %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 0, i32 1
  %76 = load %struct.list_head*, %struct.list_head** %prev.i.i, align 8
  %cmp16.not.i.i = icmp eq %struct.list_head* %76, @free_vmap_area_list
  br i1 %cmp16.not.i.i, label %insert.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %add.ptr25.i.i = getelementptr %struct.list_head, %struct.list_head* %76, i64 -3, i32 1
  %77 = bitcast %struct.list_head** %add.ptr25.i.i to %struct.vmap_area*
  %va_end26.i.i = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr25.i.i, i64 1
  %78 = bitcast %struct.list_head** %va_end26.i.i to i64*
  %79 = load i64, i64* %78, align 8
  %va_start27.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 0
  %80 = load i64, i64* %va_start27.i.i, align 8
  %cmp28.i.i = icmp eq i64 %79, %80
  br i1 %cmp28.i.i, label %if.then30.i.i, label %insert.i.i

if.then30.i.i:                                    ; preds = %if.then18.i.i
  br i1 %merged.0.off0.i.i, label %if.then32.i.i, label %insert.thread128.i.i

if.then32.i.i:                                    ; preds = %if.then30.i.i
  %rb_node.i81.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i81.i.i, i64 0, i32 0
  %81 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %82 = ptrtoint %struct.rb_node* %rb_node.i81.i.i to i64
  %cmp.i82.i.i = icmp eq i64 %81, %82
  br i1 %cmp.i82.i.i, label %if.then.i83.i.i, label %if.end17.i.i.i, !prof !15

if.then.i83.i.i:                                  ; preds = %if.then32.i.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %insert.thread128.i.i

if.end17.i.i.i:                                   ; preds = %if.then32.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 1
  %83 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i.i.i, align 8
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 2
  %84 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq %struct.rb_node* %84, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end17.i.i.i
  %and.i.i.i.i.i = and i64 %81, -4
  %85 = inttoptr i64 %and.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef %83, %struct.rb_node* noundef %85) #25
  %tobool1.not.i.i.i.i.i = icmp eq %struct.rb_node* %83, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %__rb_parent_color3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %83, i64 0, i32 0
  store i64 %81, i64* %__rb_parent_color3.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  %and4.i.i.i.i.i = and i64 %81, 1
  %tobool5.not.i.i.i.i.i = icmp eq i64 %and4.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %__rb_erase_augmented.exit.thread.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end17.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq %struct.rb_node* %83, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %__rb_parent_color10.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %84, i64 0, i32 0
  store i64 %81, i64* %__rb_parent_color10.i.i.i.i.i, align 8
  %and11.i.i.i.i.i = and i64 %81, -4
  %86 = inttoptr i64 %and11.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %84, %struct.rb_node* noundef %86) #25
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %83, i64 0, i32 2
  %87 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i.i.i, align 8
  %tobool14.not.i.i.i.i.i = icmp eq %struct.rb_node* %87, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %83, i64 0, i32 1
  %88 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i.i.i, align 8
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %83) #25
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.else12.i.i.i.i.i, %do.body.i.i.i.i.i
  %tmp.0.i.i.i.i.i = phi %struct.rb_node* [ %89, %do.body.i.i.i.i.i ], [ %87, %if.else12.i.i.i.i.i ]
  %successor.0.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i ], [ %83, %if.else12.i.i.i.i.i ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 2
  %89 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i.i.i, align 8
  %tobool19.not.i.i.i.i.i = icmp eq %struct.rb_node* %89, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 1
  %90 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %90, %struct.rb_node** %rb_left26.i.i.i.i.i, align 8
  store volatile %struct.rb_node* %83, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %83, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i, %if.then15.i.i.i.i.i
  %parent.0.i.i.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %83, %if.then15.i.i.i.i.i ]
  %successor.1.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %83, %if.then15.i.i.i.i.i ]
  %child2.0.i.i.i.i.i = phi %struct.rb_node* [ %90, %do.end.i.i.i.i.i ], [ %88, %if.then15.i.i.i.i.i ]
  %91 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %91, %struct.rb_node** %rb_left49.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %91, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i) #25
  %92 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and55.i.i.i.i.i = and i64 %92, -4
  %93 = inttoptr i64 %and55.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i, %struct.rb_node* noundef %93) #25
  %tobool56.not.i.i.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i.i.i) #25
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  %__rb_parent_color59.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  %94 = load i64, i64* %__rb_parent_color59.i.i.i.i.i, align 8
  %and60.i.i.i.i.i = and i64 %94, 1
  %tobool61.not.i.i.i.i.i = icmp eq i64 %and60.i.i.i.i.i, 0
  %cond65.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i.i.i ], [ %cond65.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %__rb_parent_color67.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  store i64 %92, i64* %__rb_parent_color67.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.thread.i.i.i.i:         ; preds = %if.then8.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.ph.i.i.i.i = phi %struct.rb_node* [ %85, %if.then2.i.i.i.i.i ], [ %86, %if.then8.i.i.i.i.i ], [ %85, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i.i.i, %struct.rb_node* noundef null) #25
  br label %if.end23.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %if.end66.i.i.i.i.i, %if.else.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %85, %if.else.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %85, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.i.i.i.i, %struct.rb_node* noundef null) #25
  %tobool.not.i.i.i.i634 = icmp eq %struct.rb_node* %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i634, label %if.end23.i.i.i, label %if.then.i.i.i.i635

if.then.i.i.i.i635:                               ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i.i.i, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then.i.i.i.i635, %__rb_erase_augmented.exit.i.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i.i
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i.i) #25
  store i64 %82, i64* %__rb_parent_color.i.i.i, align 8
  br label %insert.thread128.i.i

insert.thread128.i.i:                             ; preds = %if.end23.i.i.i, %if.then.i83.i.i, %if.then30.i.i
  %va_end34.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 1
  %95 = load i64, i64* %va_end34.i.i, align 8
  store i64 %95, i64* %78, align 8
  %96 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %97 = bitcast %struct.vmap_area* %va.addr.0.i.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %96, i8* noundef %97) #25
  br label %merge_or_add_vmap_area.exit.i

insert.i.i:                                       ; preds = %if.then18.i.i, %if.end15.i.i
  br i1 %merged.0.off0.i.i, label %merge_or_add_vmap_area.exit.i, label %if.then.i88.i.i

if.then.i88.i.i:                                  ; preds = %insert.i.i, %get_va_next_sibling.exit.i.i
  %va.addr.1127138.i.i = phi %struct.vmap_area* [ %59, %get_va_next_sibling.exit.i.i ], [ %va.addr.0.i.i, %insert.i.i ]
  %98 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br i1 %cmp.i79.i.i, label %if.end5.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i88.i.i
  %prev.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 6
  %99 = bitcast %struct.rb_node** %prev.i.i.i to %struct.list_head**
  %100 = load %struct.list_head*, %struct.list_head** %99, align 8
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.then.i88.i.i, %while.body338
  %va.addr.1127139.i.i = phi %struct.vmap_area* [ %va.addr.1127138.i.i, %if.then4.i.i.i ], [ %va.addr.1127138.i.i, %if.then.i88.i.i ], [ %59, %while.body338 ]
  %retval.0.i99.i.i = phi %struct.rb_node** [ %link.2.i.i.i, %if.then4.i.i.i ], [ %link.2.i.i.i, %if.then.i88.i.i ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), %while.body338 ]
  %parent.097.i.i = phi %struct.rb_node* [ %68, %if.then4.i.i.i ], [ %68, %if.then.i88.i.i ], [ null, %while.body338 ]
  %head.addr.0.i.i.i = phi %struct.list_head* [ %100, %if.then4.i.i.i ], [ %98, %if.then.i88.i.i ], [ @free_vmap_area_list, %while.body338 ]
  %rb_node.i89.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i89.i.i, %struct.rb_node* noundef %parent.097.i.i, %struct.rb_node** noundef nonnull %retval.0.i99.i.i) #25
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %rb_node.i89.i.i) #25
  %subtree_max_size.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 4, i32 0
  store i64 0, i64* %subtree_max_size.i.i.i, align 8
  %list12.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i.i.i, %struct.list_head* noundef %head.addr.0.i.i.i) #25
  br label %merge_or_add_vmap_area.exit.i

merge_or_add_vmap_area.exit.i:                    ; preds = %if.end5.i.i.i, %insert.i.i, %insert.thread128.i.i
  %retval.0.i.i = phi %struct.vmap_area* [ %va.addr.1127139.i.i, %if.end5.i.i.i ], [ %va.addr.0.i.i, %insert.i.i ], [ %77, %insert.thread128.i.i ]
  %tobool.not.i636 = icmp eq %struct.vmap_area* %retval.0.i.i, null
  br i1 %tobool.not.i636, label %if.end352, label %if.then349

if.then349:                                       ; preds = %merge_or_add_vmap_area.exit.i
  %rb_node.i.i637 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i.i637, %struct.rb_node* noundef null) #25
  br label %if.end352

if.end352:                                        ; preds = %find_va_links.exit.thread.i.i, %find_va_links.exit.i.i, %merge_or_add_vmap_area.exit.i, %if.then349
  %storemerge = phi %struct.vmap_area* [ %retval.0.i.i, %if.then349 ], [ null, %merge_or_add_vmap_area.exit.i ], [ null, %find_va_links.exit.i.i ], [ null, %find_va_links.exit.thread.i.i ]
  store %struct.vmap_area* %storemerge, %struct.vmap_area** %va, align 8
  store %struct.vmap_area* null, %struct.vmap_area** %arrayidx340, align 8
  %101 = icmp eq i64 %indvars.iv.next730, 0
  br i1 %101, label %overflow, label %while.body338

overflow:                                         ; preds = %if.end208, %if.end352, %while.cond.backedge, %retry, %cleanup
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br i1 %purged.0.off0, label %err_free, label %if.then357

if.then357:                                       ; preds = %overflow
  call fastcc void @purge_vmap_area_lazy() #23
  br i1 %cmp665, label %for.body361, label %retry.backedge

retry.backedge:                                   ; preds = %for.inc375, %if.then357
  br label %retry

for.body361:                                      ; preds = %if.then357, %for.inc375
  %indvars.iv732 = phi i64 [ %indvars.iv.next733, %for.inc375 ], [ 0, %if.then357 ]
  %arrayidx363 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %indvars.iv732
  %102 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx363, align 8
  %tobool364.not = icmp eq %struct.vmap_area* %102, null
  br i1 %tobool364.not, label %if.end366, label %for.inc375

if.end366:                                        ; preds = %for.body361
  %103 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call367 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %103, i32 noundef 3264) #23
  %104 = bitcast %struct.vmap_area** %arrayidx363 to i8**
  store i8* %call367, i8** %104, align 8
  %tobool372.not = icmp eq i8* %call367, null
  br i1 %tobool372.not, label %err_free, label %for.inc375

for.inc375:                                       ; preds = %if.end366, %for.body361
  %indvars.iv.next733 = add nuw nsw i64 %indvars.iv732, 1
  %exitcond736.not = icmp eq i64 %indvars.iv.next733, %wide.trip.count735
  br i1 %exitcond736.not, label %retry.backedge, label %for.body361

err_free:                                         ; preds = %for.body150, %overflow, %if.end366
  br i1 %cmp665, label %for.body382.preheader, label %err_free2

for.body382.preheader:                            ; preds = %err_free
  %wide.trip.count745 = zext i32 %nr_vms to i64
  br label %for.body382

for.body382:                                      ; preds = %for.body382.preheader, %if.end389
  %indvars.iv742 = phi i64 [ 0, %for.body382.preheader ], [ %indvars.iv.next743, %if.end389 ]
  %arrayidx384 = getelementptr %struct.vmap_area*, %struct.vmap_area** %12, i64 %indvars.iv742
  %105 = load %struct.vmap_area*, %struct.vmap_area** %arrayidx384, align 8
  %tobool385.not = icmp eq %struct.vmap_area* %105, null
  br i1 %tobool385.not, label %if.end389, label %if.then386

if.then386:                                       ; preds = %for.body382
  %106 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %107 = bitcast %struct.vmap_area* %105 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %106, i8* noundef nonnull %107) #25
  br label %if.end389

if.end389:                                        ; preds = %if.then386, %for.body382
  %arrayidx391 = getelementptr %struct.vm_struct*, %struct.vm_struct** %11, i64 %indvars.iv742
  %108 = bitcast %struct.vm_struct** %arrayidx391 to i8**
  %109 = load i8*, i8** %108, align 8
  call void @kfree(i8* noundef %109) #25
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1
  %exitcond746.not = icmp eq i64 %indvars.iv.next743, %wide.trip.count745
  br i1 %exitcond746.not, label %err_free2, label %for.body382

err_free2:                                        ; preds = %if.end389, %err_free, %if.end138
  call void @kfree(i8* noundef %call142) #25
  call void @kfree(i8* noundef %call140) #25
  br label %cleanup420

cleanup420:                                       ; preds = %err_free2, %for.end335, %if.then129
  %retval.0 = phi %struct.vm_struct** [ null, %if.then129 ], [ null, %err_free2 ], [ %11, %for.end335 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret %struct.vm_struct** %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #15 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !29
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #23
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #25
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.vmap_area* @pvm_find_va_enclose_addr(i64 noundef %addr) unnamed_addr #13 {
entry:
  %n.017 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool.not18 = icmp eq %struct.rb_node* %n.017, null
  br i1 %tobool.not18, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end4
  %n.020 = phi %struct.rb_node* [ %n.0, %if.end4 ], [ %n.017, %entry ]
  %va.019 = phi %struct.vmap_area* [ %va.1, %if.end4 ], [ null, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %n.020, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  %va_start = bitcast %struct.rb_node** %add.ptr to i64*
  %1 = load i64, i64* %va_start, align 8
  %cmp.not = icmp ugt i64 %1, %addr
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %va_end = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 1
  %2 = bitcast %struct.rb_node** %va_end to i64*
  %3 = load i64, i64* %2, align 8
  %cmp2.not = icmp ult i64 %3, %addr
  br i1 %cmp2.not, label %if.end, label %while.end.loopexit.split.loop.exit

if.end:                                           ; preds = %if.then
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.020, i64 0, i32 1
  br label %if.end4

if.else:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %n.020, i64 0, i32 2
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %n.1.in = phi %struct.rb_node** [ %rb_right, %if.end ], [ %rb_left, %if.else ]
  %va.1 = phi %struct.vmap_area* [ %0, %if.end ], [ %va.019, %if.else ]
  %n.0 = load %struct.rb_node*, %struct.rb_node** %n.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %n.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end.loopexit.split.loop.exit:               ; preds = %if.then
  %4 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  br label %while.end

while.end:                                        ; preds = %if.end4, %while.end.loopexit.split.loop.exit, %entry
  %va.2 = phi %struct.vmap_area* [ null, %entry ], [ %4, %while.end.loopexit.split.loop.exit ], [ %va.1, %if.end4 ]
  ret %struct.vmap_area* %va.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i64 @pvm_determine_end_from_reverse(%struct.vmap_area** nocapture noundef %va, i64 noundef %align) unnamed_addr #16 {
entry:
  %neg = sub i64 0, %align
  %and = and i64 %neg, -8858370048
  %0 = load %struct.vmap_area*, %struct.vmap_area** %va, align 8
  %tobool.not = icmp eq %struct.vmap_area* %0, null
  %list32 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %0, i64 0, i32 3
  %cmp.not33 = icmp eq %struct.list_head* %list32, @free_vmap_area_list
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not33
  br i1 %or.cond, label %cleanup, label %for.body.lr.ph, !prof !74

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.vmap_area** %va to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi %struct.vmap_area* [ %0, %for.body.lr.ph ], [ %.cast, %for.inc ]
  %va_end = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %2, i64 0, i32 1
  %3 = load i64, i64* %va_end, align 8
  %and8 = and i64 %3, %neg
  %cmp9 = icmp ult i64 %and8, %and
  %cond = select i1 %cmp9, i64 %and8, i64 %and
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %2, i64 0, i32 0
  %4 = load i64, i64* %va_start, align 8
  %cmp11 = icmp ult i64 %4, %cond
  br i1 %cmp11, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %prev = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %2, i64 0, i32 3, i32 1
  %5 = bitcast %struct.list_head** %prev to i8**
  %6 = load i8*, i8** %5, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 -40
  store i8* %add.ptr, i8** %1, align 8
  %.cast = bitcast i8* %add.ptr to %struct.vmap_area*
  %cmp.not = icmp eq i8* %6, bitcast (%struct.list_head* @free_vmap_area_list to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %cond, %for.body ], [ 0, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.vmap_area* @node_to_va(%struct.rb_node* noundef readnone %n) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %n, null
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %n, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  %cond = select i1 %tobool.not, %struct.vmap_area* null, %struct.vmap_area* %0
  ret %struct.vmap_area* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @setup_vmalloc_vm_locked(%struct.vm_struct* noundef %vm, %struct.vmap_area* nocapture noundef %va, i64 noundef %flags, i8* noundef %caller) unnamed_addr #17 {
entry:
  %flags1 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 3
  store i64 %flags, i64* %flags1, align 8
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %0 = load i64, i64* %va_start, align 8
  %1 = inttoptr i64 %0 to i8*
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 1
  store i8* %1, i8** %addr, align 8
  %va_end = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %2 = load i64, i64* %va_end, align 8
  %3 = load i64, i64* %va_start, align 8
  %sub = sub i64 %2, %3
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 2
  store i64 %sub, i64* %size, align 8
  %caller3 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %vm, i64 0, i32 7
  store i8* %caller, i8** %caller3, align 8
  %4 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 4
  %vm4 = bitcast %union.anon.72* %4 to %struct.vm_struct**
  store %struct.vm_struct* %vm, %struct.vm_struct** %vm4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @purge_vmap_area_lazy() unnamed_addr #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  call fastcc void @purge_fragmented_blocks_allcpus() #23
  %call = call fastcc i1 @__purge_vmap_area_lazy(i64 noundef -1, i64 noundef 0) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pcpu_free_vm_areas(%struct.vm_struct** noundef %vms, i32 noundef %nr_vms) local_unnamed_addr #3 {
entry:
  %cmp5 = icmp sgt i32 %nr_vms, 0
  br i1 %cmp5, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nr_vms to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr %struct.vm_struct*, %struct.vm_struct** %vms, i64 %indvars.iv
  %0 = load %struct.vm_struct*, %struct.vm_struct** %arrayidx, align 8
  call void @free_vm_area(%struct.vm_struct* noundef %0) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %1 = bitcast %struct.vm_struct** %vms to i8*
  call void @kfree(i8* noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @vmalloc_dump_obj(i8* noundef %object) local_unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %object to i64
  %add = add i64 %0, 4095
  %and = and i64 %add, -4096
  %1 = inttoptr i64 %and to i8*
  %call = call %struct.vm_struct* @find_vm_area(i8* noundef %1) #23
  %tobool.not = icmp eq %struct.vm_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 5
  %2 = load i32, i32* %nr_pages, align 8
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 1
  %3 = load i8*, i8** %addr, align 8
  %4 = ptrtoint i8* %3 to i64
  %caller = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %call, i64 0, i32 7
  %5 = load i8*, i8** %caller, align 8
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i64 noundef %4, i8* noundef %5) #28
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %6 = xor i1 %tobool.not, true
  ret i1 %6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #18

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @proc_vmalloc_init() #8 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i16 noundef 256, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @vmalloc_op, i32 noundef 0, i8* noundef null) #25
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_p4d_range(%struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_alloc_track(%struct.pgd_t* noundef %pgd) #23
  %tobool.not = icmp eq %struct.p4d_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call8 = call fastcc i32 @vmap_pud_range(%struct.p4d_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift, i32* noundef %mask) #23
  %tobool9.not = icmp eq i32 %call8, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %spec.select, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_alloc_track(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #1 {
entry:
  %call9 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgd) #23
  ret %struct.p4d_t* %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pud_range(%struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_alloc_track(%struct.p4d_t* noundef %p4d) #23
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call fastcc i32 @vmap_try_huge_pud(%struct.pud_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %do.body
  %0 = load i32, i32* %mask, align 4
  %1 = or i32 %0, 4
  store i32 %1, i32* %mask, align 4
  br label %do.end

if.end6:                                          ; preds = %do.body
  %call8 = call fastcc i32 @vmap_pmd_range(%struct.pud_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift, i32* noundef %mask) #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %cleanup

do.end:                                           ; preds = %if.then4, %if.end6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry ], [ -12, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_alloc_track(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #1 {
entry:
  %call10 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #23
  ret %struct.pud_t* %call10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_try_huge_pud(%struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift) unnamed_addr #3 {
entry:
  %cmp = icmp ult i32 %max_page_shift, 30
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %end, %addr
  %cmp4.not = icmp eq i64 %sub, 1073741824
  %0 = or i64 %phys_addr, %addr
  %1 = and i64 %0, 1073741823
  %2 = icmp eq i64 %1, 0
  %3 = and i1 %cmp4.not, %2
  br i1 %3, label %if.end13, label %return

if.end13:                                         ; preds = %if.end
  %coerce.dive16 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %4 = load i64, i64* %coerce.dive16, align 8
  %and19 = and i64 %4, 288230376151711745
  %tobool.not = icmp eq i64 %and19, 0
  br i1 %tobool.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %call20 = call i32 @pud_free_pmd_page(%struct.pud_t* noundef %pud, i64 noundef %addr) #25
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %return, label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.end13
  %call25 = call i32 @pud_set_huge(%struct.pud_t* noundef %pud, i64 noundef %phys_addr, i64 %prot.coerce) #25
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pmd_range(%struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_alloc_track(%struct.pud_t* noundef %pud, i64 noundef %addr, i32* noundef %mask) #23
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %phys_addr.addr.0 = phi i64 [ %add14, %do.cond ], [ %phys_addr, %do.body.preheader ]
  %pmd.0 = phi %struct.pmd_t* [ %incdec.ptr, %do.cond ], [ %call, %do.body.preheader ]
  %addr.addr.0 = phi i64 [ %cond, %do.cond ], [ %addr, %do.body.preheader ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call3 = call fastcc i32 @vmap_try_huge_pmd(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %phys_addr.addr.0, i64 %prot.coerce, i32 noundef %max_page_shift) #23
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.body
  %0 = load i32, i32* %mask, align 4
  %1 = or i32 %0, 8
  store i32 %1, i32* %mask, align 4
  br label %do.cond

if.end7:                                          ; preds = %do.body
  %call9 = call fastcc i32 @vmap_pte_range(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 noundef %phys_addr.addr.0, i64 %prot.coerce, i32* noundef %mask) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %if.end7, %if.then5
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %sub13 = sub i64 %phys_addr.addr.0, %addr.addr.0
  %add14 = add i64 %sub13, %cond
  %cmp15.not = icmp eq i64 %cond, %end
  br i1 %cmp15.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %if.end7, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %do.cond ], [ -12, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pud_free_pmd_page(%struct.pud_t* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pud_set_huge(%struct.pud_t* noundef, i64 noundef, i64) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pmd_t* @pmd_alloc_track(%struct.pud_t* noundef %pud, i64 noundef %address, i32* nocapture noundef %mod_mask) unnamed_addr #3 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !15

if.then:                                          ; preds = %entry
  %call = call i32 @__pmd_alloc(%struct.mm_struct* noundef nonnull @init_mm, %struct.pud_t* noundef %pud, i64 noundef %address) #25
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %mod_mask, align 4
  %2 = or i32 %1, 4
  store i32 %2, i32* %mod_mask, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %call10 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %address) #23
  br label %return

return:                                           ; preds = %if.then, %if.end9
  %retval.0 = phi %struct.pmd_t* [ %call10, %if.end9 ], [ null, %if.then ]
  ret %struct.pmd_t* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_try_huge_pmd(%struct.pmd_t* noundef %pmd, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32 noundef %max_page_shift) unnamed_addr #3 {
entry:
  %cmp = icmp ult i32 %max_page_shift, 21
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %end, %addr
  %cmp4.not = icmp eq i64 %sub, 2097152
  %0 = or i64 %phys_addr, %addr
  %1 = and i64 %0, 2097151
  %2 = icmp eq i64 %1, 0
  %3 = and i1 %cmp4.not, %2
  br i1 %3, label %if.end13, label %return

if.end13:                                         ; preds = %if.end
  %coerce.dive14 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %4 = load i64, i64* %coerce.dive14, align 8
  %call15 = call fastcc i32 @pmd_present(i64 %4) #23
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %call16 = call i32 @pmd_free_pte_page(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #25
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.end13
  %call21 = call i32 @pmd_set_huge(%struct.pmd_t* noundef %pmd, i64 noundef %phys_addr, i64 %prot.coerce) #25
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pte_range(%struct.pmd_t* noundef %pmd, i64 noundef %addr, i64 noundef %end, i64 noundef %phys_addr, i64 %prot.coerce, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %shr = lshr i64 %phys_addr, 12
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.end, !prof !15

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__pte_alloc_kernel(%struct.pmd_t* noundef %pmd) #25
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 8
  store i32 %2, i32* %mask, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %lor.lhs.false
  %call9 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #23
  %tobool10.not = icmp eq %struct.pte_t* %call9, null
  br i1 %tobool10.not, label %cleanup, label %do.body

do.body:                                          ; preds = %cond.end, %do.end32
  %pte.0 = phi %struct.pte_t* [ %add.ptr, %do.end32 ], [ %call9, %cond.end ]
  %pfn.0 = phi i64 [ %inc, %do.end32 ], [ %shr, %cond.end ]
  %addr.addr.0 = phi i64 [ %add, %do.end32 ], [ %addr, %cond.end ]
  %pte12 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0, i64 0, i32 0
  %3 = load i64, i64* %pte12, align 8
  %tobool13.not = icmp eq i64 %3, 0
  br i1 %tobool13.not, label %do.end32, label %do.body26, !prof !8

do.body26:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 112; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !75
  unreachable

do.end32:                                         ; preds = %do.body
  %shl = shl i64 %pfn.0, 12
  %or34 = or i64 %shl, %prot.coerce
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0, i64 %or34) #23
  %inc = add i64 %pfn.0, 1
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp.not = icmp eq i64 %add, %end
  br i1 %cmp.not, label %do.end39, label %do.body

do.end39:                                         ; preds = %do.end32
  %4 = load i32, i32* %mask, align 4
  %5 = or i32 %4, 16
  store i32 %5, i32* %mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %cond.end, %do.end39
  %retval.0 = phi i32 [ 0, %do.end39 ], [ -12, %cond.end ], [ -12, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pmd_alloc(%struct.mm_struct* noundef, %struct.pud_t* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pmd_present(i64 %pmd.coerce) unnamed_addr #1 {
entry:
  %and = and i64 %pmd.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  %and4 = lshr i64 %pmd.coerce, 59
  %0 = trunc i64 %and4 to i32
  %1 = and i32 %0, 1
  %2 = select i1 %tobool.not, i32 %1, i32 1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmd_free_pte_page(%struct.pmd_t* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmd_set_huge(%struct.pmd_t* noundef, i64 noundef, i64) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc_kernel(%struct.pmd_t* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #3 {
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
  call void @__sync_icache_dcache(i64 %pte.coerce) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #3 {
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
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !76
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vunmap_pud_range(%struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4d) #23
  %call1 = call i32 @pud_clear_huge(%struct.pud_t* noundef %call) #25
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %entry
  %pgd3 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd3, align 8
  %and = and i64 %0, 3
  %cmp = icmp eq i64 %and, 3
  br i1 %cmp, label %if.end7, label %if.end.thread27

if.end.thread27:                                  ; preds = %lor.lhs.false
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 4
  store i32 %2, i32* %mask, align 4
  br label %if.end7

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mask, align 4
  %4 = or i32 %3, 4
  store i32 %4, i32* %mask, align 4
  br label %do.end

if.end7:                                          ; preds = %lor.lhs.false, %if.end.thread27
  %call8 = call fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* noundef %call) #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

if.end11:                                         ; preds = %if.end7
  call fastcc void @vunmap_pmd_range(%struct.pud_t* noundef %call, i64 noundef %addr, i64 noundef %end, i32* noundef %mask) #23
  br label %do.end

do.end:                                           ; preds = %if.end, %if.end11, %if.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pud_clear_huge(%struct.pud_t* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pud_none_or_clear_bad(%struct.pud_t* nocapture noundef readonly %pud) unnamed_addr #5 {
entry:
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %and = and i64 %0, 3
  %cmp.not = icmp ne i64 %and, 3
  %retval.0 = zext i1 %cmp.not to i32
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vunmap_pmd_range(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %addr, i64 noundef %end, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pud, i64 noundef %addr) #23
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %pmd.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %do.cond ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %do.cond ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call2 = call i32 @pmd_clear_huge(%struct.pmd_t* noundef %pmd.0) #25
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %do.body
  %pmd3 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 0, i32 0
  %0 = load i64, i64* %pmd3, align 8
  %and4 = and i64 %0, 3
  %cmp5 = icmp eq i64 %and4, 3
  br i1 %cmp5, label %if.end9, label %if.end.thread35

if.end.thread35:                                  ; preds = %lor.lhs.false
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 8
  store i32 %2, i32* %mask, align 4
  br label %if.end9

if.end:                                           ; preds = %do.body
  %3 = load i32, i32* %mask, align 4
  %4 = or i32 %3, 8
  store i32 %4, i32* %mask, align 4
  br label %do.cond

if.end9:                                          ; preds = %lor.lhs.false, %if.end.thread35
  %call10 = call fastcc i32 @pmd_none_or_clear_bad(%struct.pmd_t* noundef %pmd.0) #23
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.cond

if.end13:                                         ; preds = %if.end9
  call fastcc void @vunmap_pte_range(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i32* noundef %mask) #23
  call fastcc void @_cond_resched() #23
  br label %do.cond

do.cond:                                          ; preds = %if.end, %if.end9, %if.end13
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp16.not = icmp eq i64 %cond, %end
  br i1 %cmp16.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmd_clear_huge(%struct.pmd_t* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pmd_none_or_clear_bad(%struct.pmd_t* noundef %pmd) unnamed_addr #3 {
entry:
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %0, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %return, label %if.then6, !prof !8

if.then6:                                         ; preds = %if.end
  call void @pmd_clear_bad(%struct.pmd_t* noundef %pmd) #25
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vunmap_pte_range(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %addr, i64 noundef %end, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #23
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %pte.0 = phi %struct.pte_t* [ %call, %entry ], [ %incdec.ptr, %if.end ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %add, %if.end ]
  %call1 = call fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %pte.0) #23
  %tobool.not = icmp ne i64 %call1, 0
  %and = and i64 %call1, 288230376151711745
  %tobool4.not = icmp eq i64 %and, 0
  %0 = and i1 %tobool.not, %tobool4.not
  br i1 %0, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 333; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp.not = icmp eq i64 %add, %end
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 16
  store i32 %2, i32* %mask, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #3 {
entry:
  %call = call i32 @__cond_resched() #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(%struct.pmd_t* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_and_clear(%struct.pte_t* noundef %ptep) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.pte_t* %ptep to i8*
  %call11.i = call fastcc i64 @__xchg_case_64(i8* noundef %0) #25
  ret i64 %call11.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #24, !srcloc !79
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_all() unnamed_addr #3 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !80
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1is\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1is\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #24, !srcloc !81
  call void asm sideeffect "dsb ish", "~{memory}"() #24, !srcloc !82
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !83
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pages_p4d_range(%struct.pgd_t* noundef %pgd, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages, i32* nocapture noundef %nr, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_alloc_track(%struct.pgd_t* noundef %pgd) #23
  %tobool.not = icmp eq %struct.p4d_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call fastcc i32 @vmap_pages_pud_range(%struct.p4d_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** noundef %pages, i32* noundef %nr, i32* noundef %mask) #23
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %spec.select, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pages_pud_range(%struct.p4d_t* noundef %p4d, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages, i32* nocapture noundef %nr, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pud_t* @pud_alloc_track(%struct.p4d_t* noundef %p4d) #23
  %tobool.not = icmp eq %struct.pud_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call fastcc i32 @vmap_pages_pmd_range(%struct.pud_t* noundef nonnull %call, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** noundef %pages, i32* noundef %nr, i32* noundef %mask) #23
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %spec.select, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pages_pmd_range(%struct.pud_t* noundef %pud, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages, i32* nocapture noundef %nr, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.pmd_t* @pmd_alloc_track(%struct.pud_t* noundef %pud, i64 noundef %addr, i32* noundef %mask) #23
  %tobool.not = icmp eq %struct.pmd_t* %call, null
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %sub1 = add i64 %end, -1
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %pmd.0 = phi %struct.pmd_t* [ %incdec.ptr, %do.cond ], [ %call, %do.body.preheader ]
  %addr.addr.0 = phi i64 [ %cond, %do.cond ], [ %addr, %do.body.preheader ]
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call3 = call fastcc i32 @vmap_pages_pte_range(%struct.pmd_t* noundef %pmd.0, i64 noundef %addr.addr.0, i64 noundef %cond, i64 %prot.coerce, %struct.page** noundef %pages, i32* noundef %nr, i32* noundef %mask) #23
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmd.0, i64 1
  %cmp7.not = icmp eq i64 %cond, %end
  br i1 %cmp7.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %do.body, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ 0, %do.cond ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vmap_pages_pte_range(%struct.pmd_t* noundef %pmd, i64 noundef %addr, i64 noundef %end, i64 %prot.coerce, %struct.page** nocapture noundef readonly %pages, i32* nocapture noundef %nr, i32* nocapture noundef %mask) unnamed_addr #3 {
entry:
  %pmd1 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %pmd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %cond.end, !prof !15

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__pte_alloc_kernel(%struct.pmd_t* noundef %pmd) #25
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %cleanup78

lor.lhs.false:                                    ; preds = %land.lhs.true
  %1 = load i32, i32* %mask, align 4
  %2 = or i32 %1, 8
  store i32 %2, i32* %mask, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %lor.lhs.false
  %call9 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %addr) #23
  %tobool10.not = icmp eq %struct.pte_t* %call9, null
  br i1 %tobool10.not, label %cleanup78, label %do.body.preheader

do.body.preheader:                                ; preds = %cond.end
  %.pre = load i32, i32* %nr, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %3 = phi i32 [ %inc, %do.cond ], [ %.pre, %do.body.preheader ]
  %pte.0 = phi %struct.pte_t* [ %incdec.ptr, %do.cond ], [ %call9, %do.body.preheader ]
  %addr.addr.0 = phi i64 [ %add, %do.cond ], [ %addr, %do.body.preheader ]
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %4 = load %struct.page*, %struct.page** %arrayidx, align 8
  %pte11 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte.0, i64 0, i32 0
  %5 = load i64, i64* %pte11, align 8
  %tobool12.not = icmp eq i64 %5, 0
  br i1 %tobool12.not, label %if.end41, label %if.then29, !prof !8

if.then29:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 476; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !84
  br label %cleanup78

if.end41:                                         ; preds = %do.body
  %tobool43.not = icmp eq %struct.page* %4, null
  br i1 %tobool43.not, label %if.then58, label %do.cond, !prof !15

if.then58:                                        ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 478; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !85
  br label %cleanup78

do.cond:                                          ; preds = %if.end41
  %6 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %6, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %or72 = or i64 %shl, %prot.coerce
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte.0, i64 %or72) #23
  %7 = load i32, i32* %nr, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %nr, align 4
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp.not = icmp eq i64 %add, %end
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %mask, align 4
  %9 = or i32 %8, 16
  store i32 %9, i32* %mask, align 4
  br label %cleanup78

cleanup78:                                        ; preds = %if.then58, %if.then29, %land.lhs.true, %cond.end, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ -12, %cond.end ], [ -12, %land.lhs.true ], [ -12, %if.then58 ], [ -16, %if.then29 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #23
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #1 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #1 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #23
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #1 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #1 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_unlock() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @purge_fragmented_blocks_allcpus() unnamed_addr #3 {
entry:
  %call4 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call6 = phi i32 [ %call, %for.body ], [ %call4, %entry ]
  call fastcc void @purge_fragmented_blocks(i32 noundef %call6) #23
  %call = call i32 @cpumask_next(i32 noundef %call6, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #26
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__purge_vmap_area_lazy(i64 noundef %start, i64 noundef %end) unnamed_addr #3 {
entry:
  %local_pure_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %local_pure_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !37
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  store %struct.rb_node* null, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @purge_vmap_area_root, i64 0, i32 0), align 8
  call fastcc void @list_replace_init(%struct.list_head* noundef nonnull %local_pure_list) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %local_pure_list) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup72, !prof !8

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.list_head* %local_pure_list to i8**
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -40
  %va_start = bitcast i8* %add.ptr to i64*
  %3 = load i64, i64* %va_start, align 8
  %cmp = icmp ugt i64 %3, %start
  %cond = select i1 %cmp, i64 %start, i64 %3
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %local_pure_list, i64 0, i32 1
  %4 = bitcast %struct.list_head** %prev to i8**
  %5 = load i8*, i8** %4, align 8
  %va_end = getelementptr i8, i8* %5, i64 -32
  %6 = bitcast i8* %va_end to i64*
  %7 = load i64, i64* %6, align 8
  %cmp15 = icmp ult i64 %7, %end
  %cond20 = select i1 %cmp15, i64 %end, i64 %7
  call fastcc void @flush_tlb_kernel_range(i64 noundef %cond, i64 noundef %cond20) #23
  %call21 = call fastcc i64 @lazy_max_pages() #23
  %shl = shl i64 %call21, 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %8 = load i8*, i8** %1, align 8
  %9 = bitcast i8* %8 to %struct.list_head*
  %cmp37.not118 = icmp eq %struct.list_head* %local_pure_list, %9
  br i1 %cmp37.not118, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %cleanup
  %.pn.in.in119 = phi i8* [ %.pn121, %cleanup ], [ %8, %if.end ]
  %va.0.in120 = getelementptr i8, i8* %.pn.in.in119, i64 -40
  %.pn121.in = bitcast i8* %.pn.in.in119 to i8**
  %.pn121 = load i8*, i8** %.pn121.in, align 8
  %va.0 = bitcast i8* %va.0.in120 to %struct.vmap_area*
  %va_end41 = getelementptr i8, i8* %.pn.in.in119, i64 -32
  %10 = bitcast i8* %va_end41 to i64*
  %11 = load i64, i64* %10, align 8
  %va_start42 = bitcast i8* %va.0.in120 to i64*
  %12 = load i64, i64* %va_start42, align 8
  %sub = sub i64 %11, %12
  %shr = lshr i64 %sub, 12
  %13 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i.i.i = icmp eq %struct.rb_node* %13, null
  br i1 %tobool1.not.i.i.i, label %if.end5.i.i.i, label %do.body.i.i.i, !prof !15

do.body.i.i.i:                                    ; preds = %for.body, %do.cond59.i.i.i
  %14 = phi %struct.rb_node* [ %18, %do.cond59.i.i.i ], [ %13, %for.body ]
  %add.ptr.i.i.i = getelementptr %struct.rb_node, %struct.rb_node* %14, i64 -1, i32 1
  %va_end.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 1
  %15 = bitcast %struct.rb_node** %va_end.i.i.i to i64*
  %16 = load i64, i64* %15, align 8
  %cmp.i.i.i = icmp ult i64 %12, %16
  %va_start10.i.i.i = bitcast %struct.rb_node** %add.ptr.i.i.i to i64*
  %17 = load i64, i64* %va_start10.i.i.i, align 8
  %cmp11.not.i.i.i = icmp ugt i64 %11, %17
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else14.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %find_va_links.exit.thread.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i64 0, i32 2
  br label %do.cond59.i.i.i

if.else14.thread.i.i.i:                           ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %if.then24.i.i.i, label %find_va_links.exit.thread.i.i

if.then24.i.i.i:                                  ; preds = %if.else14.thread.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i64 0, i32 1
  br label %do.cond59.i.i.i

find_va_links.exit.thread.i.i:                    ; preds = %if.else14.thread.i.i.i, %land.lhs.true.i.i.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %12, i64 noundef %11, i64 noundef %17, i64 noundef %16) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %cleanup

do.cond59.i.i.i:                                  ; preds = %if.then24.i.i.i, %if.then13.i.i.i
  %link.2.i.i.i = phi %struct.rb_node** [ %rb_left.i.i.i, %if.then13.i.i.i ], [ %rb_right.i.i.i, %if.then24.i.i.i ]
  %18 = load %struct.rb_node*, %struct.rb_node** %link.2.i.i.i, align 8
  %tobool60.not.i.i.i = icmp eq %struct.rb_node* %18, null
  br i1 %tobool60.not.i.i.i, label %find_va_links.exit.i.i, label %do.body.i.i.i

find_va_links.exit.i.i:                           ; preds = %do.cond59.i.i.i
  %rb_node62.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 2
  %19 = bitcast %struct.rb_node** %rb_node62.i.i.i to %struct.rb_node*
  %tobool.not.i.i = icmp eq %struct.rb_node** %link.2.i.i.i, null
  br i1 %tobool.not.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %find_va_links.exit.i.i
  %list4.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 5
  %20 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 3
  %cmp.i79.i.i = icmp eq %struct.rb_node** %20, %link.2.i.i.i
  br i1 %cmp.i79.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  %next.i.i.i = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head**
  %21 = load %struct.list_head*, %struct.list_head** %next.i.i.i, align 8
  br label %get_va_next_sibling.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  %22 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br label %get_va_next_sibling.exit.i.i

get_va_next_sibling.exit.i.i:                     ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %retval.0.i80.i.i = phi %struct.list_head* [ %21, %cond.true.i.i.i ], [ %22, %cond.false.i.i.i ]
  %cmp.i.i = icmp eq %struct.list_head* %retval.0.i80.i.i, null
  br i1 %cmp.i.i, label %if.then.i88.i.i, label %if.end5.i.i, !prof !15

if.end5.i.i:                                      ; preds = %get_va_next_sibling.exit.i.i
  %cmp6.not.i.i = icmp eq %struct.list_head* %retval.0.i80.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i, label %if.end15.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 -3, i32 1
  %va_start.i.i = bitcast %struct.list_head** %add.ptr.i.i to i64*
  %23 = load i64, i64* %va_start.i.i, align 8
  %cmp9.i.i = icmp eq i64 %23, %11
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end15.i.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  %24 = bitcast %struct.list_head** %add.ptr.i.i to %struct.vmap_area*
  store i64 %12, i64* %va_start.i.i, align 8
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %25, i8* noundef %va.0.in120) #25
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %if.then8.i.i, %if.end5.i.i
  %merged.0.off0.i.i = phi i1 [ true, %if.then11.i.i ], [ false, %if.then8.i.i ], [ false, %if.end5.i.i ]
  %va.addr.0.i.i = phi %struct.vmap_area* [ %24, %if.then11.i.i ], [ %va.0, %if.then8.i.i ], [ %va.0, %if.end5.i.i ]
  %prev.i.i = getelementptr inbounds %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 0, i32 1
  %26 = load %struct.list_head*, %struct.list_head** %prev.i.i, align 8
  %cmp16.not.i.i = icmp eq %struct.list_head* %26, @free_vmap_area_list
  br i1 %cmp16.not.i.i, label %insert.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %add.ptr25.i.i = getelementptr %struct.list_head, %struct.list_head* %26, i64 -3, i32 1
  %27 = bitcast %struct.list_head** %add.ptr25.i.i to %struct.vmap_area*
  %va_end26.i.i = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr25.i.i, i64 1
  %28 = bitcast %struct.list_head** %va_end26.i.i to i64*
  %29 = load i64, i64* %28, align 8
  %va_start27.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 0
  %30 = load i64, i64* %va_start27.i.i, align 8
  %cmp28.i.i = icmp eq i64 %29, %30
  br i1 %cmp28.i.i, label %if.then30.i.i, label %insert.i.i

if.then30.i.i:                                    ; preds = %if.then18.i.i
  br i1 %merged.0.off0.i.i, label %if.then32.i.i, label %insert.thread128.i.i

if.then32.i.i:                                    ; preds = %if.then30.i.i
  %rb_node.i81.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i81.i.i, i64 0, i32 0
  %31 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %32 = ptrtoint %struct.rb_node* %rb_node.i81.i.i to i64
  %cmp.i82.i.i = icmp eq i64 %31, %32
  br i1 %cmp.i82.i.i, label %if.then.i83.i.i, label %if.end17.i.i.i, !prof !15

if.then.i83.i.i:                                  ; preds = %if.then32.i.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %insert.thread128.i.i

if.end17.i.i.i:                                   ; preds = %if.then32.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 1
  %33 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i.i.i, align 8
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 2
  %34 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq %struct.rb_node* %34, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end17.i.i.i
  %and.i.i.i.i.i = and i64 %31, -4
  %35 = inttoptr i64 %and.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef %33, %struct.rb_node* noundef %35) #25
  %tobool1.not.i.i.i.i.i = icmp eq %struct.rb_node* %33, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %__rb_parent_color3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i64 0, i32 0
  store i64 %31, i64* %__rb_parent_color3.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  %and4.i.i.i.i.i = and i64 %31, 1
  %tobool5.not.i.i.i.i.i = icmp eq i64 %and4.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %__rb_erase_augmented.exit.thread.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end17.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq %struct.rb_node* %33, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %__rb_parent_color10.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i64 0, i32 0
  store i64 %31, i64* %__rb_parent_color10.i.i.i.i.i, align 8
  %and11.i.i.i.i.i = and i64 %31, -4
  %36 = inttoptr i64 %and11.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %34, %struct.rb_node* noundef %36) #25
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i64 0, i32 2
  %37 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i.i.i, align 8
  %tobool14.not.i.i.i.i.i = icmp eq %struct.rb_node* %37, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i64 0, i32 1
  %38 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i.i.i, align 8
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %33) #25
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.else12.i.i.i.i.i, %do.body.i.i.i.i.i
  %tmp.0.i.i.i.i.i = phi %struct.rb_node* [ %39, %do.body.i.i.i.i.i ], [ %37, %if.else12.i.i.i.i.i ]
  %successor.0.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i ], [ %33, %if.else12.i.i.i.i.i ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 2
  %39 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i.i.i, align 8
  %tobool19.not.i.i.i.i.i = icmp eq %struct.rb_node* %39, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 1
  %40 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %40, %struct.rb_node** %rb_left26.i.i.i.i.i, align 8
  store volatile %struct.rb_node* %33, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %33, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i, %if.then15.i.i.i.i.i
  %parent.0.i.i.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %33, %if.then15.i.i.i.i.i ]
  %successor.1.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %33, %if.then15.i.i.i.i.i ]
  %child2.0.i.i.i.i.i = phi %struct.rb_node* [ %40, %do.end.i.i.i.i.i ], [ %38, %if.then15.i.i.i.i.i ]
  %41 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %41, %struct.rb_node** %rb_left49.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %41, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i) #25
  %42 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and55.i.i.i.i.i = and i64 %42, -4
  %43 = inttoptr i64 %and55.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i, %struct.rb_node* noundef %43) #25
  %tobool56.not.i.i.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i.i.i) #25
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  %__rb_parent_color59.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  %44 = load i64, i64* %__rb_parent_color59.i.i.i.i.i, align 8
  %and60.i.i.i.i.i = and i64 %44, 1
  %tobool61.not.i.i.i.i.i = icmp eq i64 %and60.i.i.i.i.i, 0
  %cond65.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i.i.i ], [ %cond65.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %__rb_parent_color67.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  store i64 %42, i64* %__rb_parent_color67.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.thread.i.i.i.i:         ; preds = %if.then8.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.ph.i.i.i.i = phi %struct.rb_node* [ %35, %if.then2.i.i.i.i.i ], [ %36, %if.then8.i.i.i.i.i ], [ %35, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i.i.i, %struct.rb_node* noundef null) #25
  br label %if.end23.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %if.end66.i.i.i.i.i, %if.else.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %35, %if.else.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %35, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.i.i.i.i, %struct.rb_node* noundef null) #25
  %tobool.not.i.i.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end23.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i.i.i, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i.i
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i.i) #25
  store i64 %32, i64* %__rb_parent_color.i.i.i, align 8
  br label %insert.thread128.i.i

insert.thread128.i.i:                             ; preds = %if.end23.i.i.i, %if.then.i83.i.i, %if.then30.i.i
  %va_end34.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 1
  %45 = load i64, i64* %va_end34.i.i, align 8
  store i64 %45, i64* %28, align 8
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %47 = bitcast %struct.vmap_area* %va.addr.0.i.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %46, i8* noundef %47) #25
  br label %merge_or_add_vmap_area.exit.i

insert.i.i:                                       ; preds = %if.then18.i.i, %if.end15.i.i
  br i1 %merged.0.off0.i.i, label %merge_or_add_vmap_area.exit.i, label %if.then.i88.i.i

if.then.i88.i.i:                                  ; preds = %insert.i.i, %get_va_next_sibling.exit.i.i
  %va.addr.1127138.i.i = phi %struct.vmap_area* [ %va.0, %get_va_next_sibling.exit.i.i ], [ %va.addr.0.i.i, %insert.i.i ]
  %48 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br i1 %cmp.i79.i.i, label %if.end5.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i88.i.i
  %prev.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 6
  %49 = bitcast %struct.rb_node** %prev.i.i.i to %struct.list_head**
  %50 = load %struct.list_head*, %struct.list_head** %49, align 8
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.then.i88.i.i, %for.body
  %va.addr.1127139.i.i = phi %struct.vmap_area* [ %va.addr.1127138.i.i, %if.then4.i.i.i ], [ %va.addr.1127138.i.i, %if.then.i88.i.i ], [ %va.0, %for.body ]
  %retval.0.i99.i.i = phi %struct.rb_node** [ %link.2.i.i.i, %if.then4.i.i.i ], [ %link.2.i.i.i, %if.then.i88.i.i ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), %for.body ]
  %parent.097.i.i = phi %struct.rb_node* [ %19, %if.then4.i.i.i ], [ %19, %if.then.i88.i.i ], [ null, %for.body ]
  %head.addr.0.i.i.i = phi %struct.list_head* [ %50, %if.then4.i.i.i ], [ %48, %if.then.i88.i.i ], [ @free_vmap_area_list, %for.body ]
  %rb_node.i89.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i89.i.i, %struct.rb_node* noundef %parent.097.i.i, %struct.rb_node** noundef nonnull %retval.0.i99.i.i) #25
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %rb_node.i89.i.i) #25
  %subtree_max_size.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 4, i32 0
  store i64 0, i64* %subtree_max_size.i.i.i, align 8
  %list12.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i.i.i, %struct.list_head* noundef %head.addr.0.i.i.i) #25
  br label %merge_or_add_vmap_area.exit.i

merge_or_add_vmap_area.exit.i:                    ; preds = %if.end5.i.i.i, %insert.i.i, %insert.thread128.i.i
  %retval.0.i.i = phi %struct.vmap_area* [ %va.addr.1127139.i.i, %if.end5.i.i.i ], [ %va.addr.0.i.i, %insert.i.i ], [ %27, %insert.thread128.i.i ]
  %tobool.not.i = icmp eq %struct.vmap_area* %retval.0.i.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end48

if.end48:                                         ; preds = %merge_or_add_vmap_area.exit.i
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef null) #25
  call fastcc void @__ll_sc_atomic64_sub(i64 noundef %shr, %struct.atomic64_t* noundef nonnull @vmap_lazy_nr) #25
  %51 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @vmap_lazy_nr, i64 0, i32 0), align 8
  %cmp56 = icmp ult i64 %51, %shl
  br i1 %cmp56, label %if.then58, label %cleanup

if.then58:                                        ; preds = %if.end48
  %call60 = call i32 @__cond_resched_lock(%struct.spinlock* noundef nonnull @free_vmap_area_lock) #25
  br label %cleanup

cleanup:                                          ; preds = %find_va_links.exit.thread.i.i, %find_va_links.exit.i.i, %merge_or_add_vmap_area.exit.i, %if.end48, %if.then58
  %52 = bitcast i8* %.pn121 to %struct.list_head*
  %cmp37.not = icmp eq %struct.list_head* %local_pure_list, %52
  br i1 %cmp37.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %cleanup72

cleanup72:                                        ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !86
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !87
  call void @rcu_read_unlock_strict() #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @purge_fragmented_blocks(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %purge = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %purge to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %purge, i64 0, i32 0
  store %struct.list_head* %purge, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %purge, i64 0, i32 1
  store %struct.list_head* %purge, %struct.list_head** %prev, align 8
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.vmap_block_queue* @vmap_block_queue to i64)
  %2 = inttoptr i64 %add to %struct.vmap_block_queue*
  call fastcc void @__rcu_read_lock() #25
  %free = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 1
  %.pn112.in119 = getelementptr inbounds %struct.list_head, %struct.list_head* %free, i64 0, i32 0
  %.pn112120 = load volatile %struct.list_head*, %struct.list_head** %.pn112.in119, align 8
  %cmp.not122 = icmp eq %struct.list_head* %.pn112120, %free
  br i1 %cmp.not122, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %rlock.i115 = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %2, i64 0, i32 0, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn112123 = phi %struct.list_head* [ %.pn112120, %for.body.lr.ph ], [ %.pn112, %for.inc ]
  %free12 = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 -2
  %3 = bitcast %struct.list_head* %free12 to i64*
  %4 = load i64, i64* %3, align 8
  %dirty = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 -2, i32 1
  %5 = bitcast %struct.list_head** %dirty to i64*
  %6 = load i64, i64* %5, align 8
  %add13 = add i64 %6, %4
  %cmp14 = icmp ne i64 %add13, 1024
  %cmp16.not = icmp eq i64 %6, 1024
  %or.cond = or i1 %cmp16.not, %cmp14
  br i1 %or.cond, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %vb.0.in124 = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 -3
  %rlock.i = bitcast %struct.list_head* %vb.0.in124 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #25
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %5, align 8
  %add19 = add i64 %8, %7
  %cmp20 = icmp ne i64 %add19, 1024
  %cmp23.not = icmp eq i64 %8, 1024
  %or.cond114 = or i1 %cmp23.not, %cmp20
  br i1 %or.cond114, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  store i64 0, i64* %3, align 8
  store i64 1024, i64* %5, align 8
  %dirty_min = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 -1
  %9 = bitcast %struct.list_head* %dirty_min to i64*
  store i64 0, i64* %9, align 8
  %dirty_max = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 -1, i32 1
  %10 = bitcast %struct.list_head** %dirty_max to i64*
  store i64 1024, i64* %10, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i115) #25
  call fastcc void @list_del_rcu(%struct.list_head* noundef %.pn112123) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i115) #25
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  %11 = getelementptr %struct.list_head, %struct.list_head* %.pn112123, i64 2
  call fastcc void @list_add_tail(%struct.list_head* noundef %11, %struct.list_head* noundef nonnull %purge) #23
  br label %for.inc

if.else:                                          ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.else, %for.body
  %.pn112.in = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn112123, i64 0, i32 0
  %.pn112 = load volatile %struct.list_head*, %struct.list_head** %.pn112.in, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn112, %free
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @rcu_read_unlock() #23
  %12 = bitcast %struct.list_head* %purge to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.list_head*
  %cmp63.not125 = icmp eq %struct.list_head* %purge, %14
  br i1 %cmp63.not125, label %for.end75, label %for.body64

for.body64:                                       ; preds = %for.end, %for.body64
  %15 = phi %struct.list_head* [ %16, %for.body64 ], [ %14, %for.end ]
  %.pn.in.in126 = phi i8* [ %.pn, %for.body64 ], [ %13, %for.end ]
  %vb.1.in = getelementptr i8, i8* %.pn.in.in126, i64 -80
  %vb.1 = bitcast i8* %vb.1.in to %struct.vmap_block*
  %.pn.in = bitcast i8* %.pn.in.in126 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @list_del(%struct.list_head* noundef %15) #23
  call fastcc void @free_vmap_block(%struct.vmap_block* noundef %vb.1) #23
  %16 = bitcast i8* %.pn to %struct.list_head*
  %cmp63.not = icmp eq %struct.list_head* %purge, %16
  br i1 %cmp63.not, label %for.end75, label %for.body64

for.end75:                                        ; preds = %for.body64, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vmap_block(%struct.vmap_block* noundef %vb) unnamed_addr #3 {
entry:
  %va = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %vb, i64 0, i32 1
  %0 = load %struct.vmap_area*, %struct.vmap_area** %va, align 8
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %0, i64 0, i32 0
  %1 = load i64, i64* %va_start, align 8
  %call = call fastcc i64 @addr_to_vb_idx(i64 noundef %1) #23, !range !28
  %call1 = call i8* @xa_erase(%struct.xarray* noundef nonnull @vmap_blocks, i64 noundef %call) #25
  %2 = bitcast i8* %call1 to %struct.vmap_block*
  %cmp.not = icmp eq %struct.vmap_block* %2, %vb
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1935; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !88
  unreachable

do.end8:                                          ; preds = %entry
  %3 = load %struct.vmap_area*, %struct.vmap_area** %va, align 8
  call fastcc void @free_vmap_area_noflush(%struct.vmap_area* noundef %3) #23
  %tobool11.not = icmp eq %struct.vmap_block* %vb, null
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %do.end8
  %callback_head = getelementptr inbounds %struct.vmap_block, %struct.vmap_block* %vb, i64 0, i32 7
  call void @kvfree_call_rcu(%struct.callback_head* noundef %callback_head, void (%struct.callback_head*)* noundef nonnull inttoptr (i64 64 to void (%struct.callback_head*)*)) #25
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.end8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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
declare dso_local i8* @xa_erase(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @addr_to_vb_idx(i64 noundef %addr) unnamed_addr #1 {
entry:
  %sub = add i64 %addr, 274609471488
  %div = lshr i64 %sub, 22
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vmap_area_noflush(%struct.vmap_area* noundef %va) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %rb_node.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 2
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color.i, align 8
  %1 = ptrtoint %struct.rb_node* %rb_node.i to i64
  %cmp.i = icmp eq i64 %0, %1
  br i1 %cmp.i, label %if.then.i, label %if.end17.i, !prof !15

if.then.i:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %unlink_va.exit

if.end17.i:                                       ; preds = %entry
  call void @rb_erase(%struct.rb_node* noundef %rb_node.i, %struct.rb_root* noundef nonnull @vmap_area_root) #25
  %list.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i) #25
  store i64 %1, i64* %__rb_parent_color.i, align 8
  br label %unlink_va.exit

unlink_va.exit:                                   ; preds = %if.then.i, %if.end17.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %va_end = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %2 = load i64, i64* %va_end, align 8
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %3 = load i64, i64* %va_start, align 8
  %sub = sub i64 %2, %3
  %shr = lshr i64 %sub, 12
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %shr) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %4 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @purge_vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i.i = icmp eq %struct.rb_node* %4, null
  br i1 %tobool1.not.i.i, label %if.end5.i.i, label %if.end6.i.i, !prof !15

if.end6.i.i:                                      ; preds = %unlink_va.exit
  %5 = load i64, i64* %va_start, align 8
  %6 = load i64, i64* %va_end, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond59.i.i, %if.end6.i.i
  %7 = phi %struct.rb_node* [ %4, %if.end6.i.i ], [ %11, %do.cond59.i.i ]
  %add.ptr.i.i = getelementptr %struct.rb_node, %struct.rb_node* %7, i64 -1, i32 1
  %va_end.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 1
  %8 = bitcast %struct.rb_node** %va_end.i.i to i64*
  %9 = load i64, i64* %8, align 8
  %cmp.i.i = icmp ult i64 %5, %9
  %va_start10.i.i = bitcast %struct.rb_node** %add.ptr.i.i to i64*
  %10 = load i64, i64* %va_start10.i.i, align 8
  %cmp11.not.i.i = icmp ugt i64 %6, %10
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else14.thread.i.i

land.lhs.true.i.i:                                ; preds = %do.body.i.i
  br i1 %cmp11.not.i.i, label %find_va_links.exit.thread.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i.i
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i64 0, i32 2
  br label %do.cond59.i.i

if.else14.thread.i.i:                             ; preds = %do.body.i.i
  br i1 %cmp11.not.i.i, label %if.then24.i.i, label %find_va_links.exit.thread.i

if.then24.i.i:                                    ; preds = %if.else14.thread.i.i
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i64 0, i32 1
  br label %do.cond59.i.i

find_va_links.exit.thread.i:                      ; preds = %if.else14.thread.i.i, %land.lhs.true.i.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %5, i64 noundef %6, i64 noundef %10, i64 noundef %9) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %merge_or_add_vmap_area.exit

do.cond59.i.i:                                    ; preds = %if.then24.i.i, %if.then13.i.i
  %link.2.i.i = phi %struct.rb_node** [ %rb_left.i.i, %if.then13.i.i ], [ %rb_right.i.i, %if.then24.i.i ]
  %11 = load %struct.rb_node*, %struct.rb_node** %link.2.i.i, align 8
  %tobool60.not.i.i = icmp eq %struct.rb_node* %11, null
  br i1 %tobool60.not.i.i, label %find_va_links.exit.i, label %do.body.i.i

find_va_links.exit.i:                             ; preds = %do.cond59.i.i
  %rb_node62.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 2
  %12 = bitcast %struct.rb_node** %rb_node62.i.i to %struct.rb_node*
  %tobool.not.i = icmp eq %struct.rb_node** %link.2.i.i, null
  br i1 %tobool.not.i, label %merge_or_add_vmap_area.exit, label %if.end.i

if.end.i:                                         ; preds = %find_va_links.exit.i
  %list4.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 5
  %13 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 3
  %cmp.i79.i = icmp eq %struct.rb_node** %13, %link.2.i.i
  br i1 %cmp.i79.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  %next.i.i = bitcast %struct.rb_node** %list4.i.i to %struct.list_head**
  %14 = load %struct.list_head*, %struct.list_head** %next.i.i, align 8
  br label %get_va_next_sibling.exit.i

cond.false.i.i:                                   ; preds = %if.end.i
  %15 = bitcast %struct.rb_node** %list4.i.i to %struct.list_head*
  br label %get_va_next_sibling.exit.i

get_va_next_sibling.exit.i:                       ; preds = %cond.false.i.i, %cond.true.i.i
  %retval.0.i80.i = phi %struct.list_head* [ %14, %cond.true.i.i ], [ %15, %cond.false.i.i ]
  %cmp.i8 = icmp eq %struct.list_head* %retval.0.i80.i, null
  br i1 %cmp.i8, label %if.then.i88.i, label %if.end5.i, !prof !15

if.end5.i:                                        ; preds = %get_va_next_sibling.exit.i
  %cmp6.not.i = icmp eq %struct.list_head* %retval.0.i80.i, @purge_vmap_area_list
  br i1 %cmp6.not.i, label %if.end15.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  %add.ptr.i = getelementptr %struct.list_head, %struct.list_head* %retval.0.i80.i, i64 -3, i32 1
  %va_start.i = bitcast %struct.list_head** %add.ptr.i to i64*
  %16 = load i64, i64* %va_start.i, align 8
  %cmp9.i = icmp eq i64 %16, %6
  br i1 %cmp9.i, label %if.then11.i, label %if.end15.i

if.then11.i:                                      ; preds = %if.then8.i
  %17 = bitcast %struct.list_head** %add.ptr.i to %struct.vmap_area*
  store i64 %5, i64* %va_start.i, align 8
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %19 = bitcast %struct.vmap_area* %va to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %18, i8* noundef %19) #25
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then8.i, %if.end5.i
  %merged.0.off0.i = phi i1 [ true, %if.then11.i ], [ false, %if.then8.i ], [ false, %if.end5.i ]
  %va.addr.0.i = phi %struct.vmap_area* [ %17, %if.then11.i ], [ %va, %if.then8.i ], [ %va, %if.end5.i ]
  %prev.i = getelementptr inbounds %struct.list_head, %struct.list_head* %retval.0.i80.i, i64 0, i32 1
  %20 = load %struct.list_head*, %struct.list_head** %prev.i, align 8
  %cmp16.not.i = icmp eq %struct.list_head* %20, @purge_vmap_area_list
  br i1 %cmp16.not.i, label %insert.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  %add.ptr25.i = getelementptr %struct.list_head, %struct.list_head* %20, i64 -3, i32 1
  %va_end26.i = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr25.i, i64 1
  %21 = bitcast %struct.list_head** %va_end26.i to i64*
  %22 = load i64, i64* %21, align 8
  %va_start27.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i, i64 0, i32 0
  %23 = load i64, i64* %va_start27.i, align 8
  %cmp28.i = icmp eq i64 %22, %23
  br i1 %cmp28.i, label %if.then30.i, label %insert.i

if.then30.i:                                      ; preds = %if.then18.i
  br i1 %merged.0.off0.i, label %if.then32.i, label %insert.thread128.i

if.then32.i:                                      ; preds = %if.then30.i
  %rb_node.i81.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i, i64 0, i32 2
  %__rb_parent_color.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i81.i, i64 0, i32 0
  %24 = load i64, i64* %__rb_parent_color.i.i, align 8
  %25 = ptrtoint %struct.rb_node* %rb_node.i81.i to i64
  %cmp.i82.i = icmp eq i64 %24, %25
  br i1 %cmp.i82.i, label %if.then.i83.i, label %if.end17.i.i, !prof !15

if.then.i83.i:                                    ; preds = %if.then32.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %insert.thread128.i

if.end17.i.i:                                     ; preds = %if.then32.i
  call void @rb_erase(%struct.rb_node* noundef %rb_node.i81.i, %struct.rb_root* noundef nonnull @purge_vmap_area_root) #25
  %list.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i) #25
  store i64 %25, i64* %__rb_parent_color.i.i, align 8
  br label %insert.thread128.i

insert.thread128.i:                               ; preds = %if.end17.i.i, %if.then.i83.i, %if.then30.i
  %va_end34.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i, i64 0, i32 1
  %26 = load i64, i64* %va_end34.i, align 8
  store i64 %26, i64* %21, align 8
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %28 = bitcast %struct.vmap_area* %va.addr.0.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %27, i8* noundef %28) #25
  br label %merge_or_add_vmap_area.exit

insert.i:                                         ; preds = %if.then18.i, %if.end15.i
  br i1 %merged.0.off0.i, label %merge_or_add_vmap_area.exit, label %if.then.i88.i

if.then.i88.i:                                    ; preds = %insert.i, %get_va_next_sibling.exit.i
  %va.addr.1127138.i = phi %struct.vmap_area* [ %va, %get_va_next_sibling.exit.i ], [ %va.addr.0.i, %insert.i ]
  %29 = bitcast %struct.rb_node** %list4.i.i to %struct.list_head*
  br i1 %cmp.i79.i, label %if.end5.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i88.i
  %prev.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i, i64 6
  %30 = bitcast %struct.rb_node** %prev.i.i to %struct.list_head**
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.then.i88.i, %unlink_va.exit
  %va.addr.1127139.i = phi %struct.vmap_area* [ %va.addr.1127138.i, %if.then4.i.i ], [ %va.addr.1127138.i, %if.then.i88.i ], [ %va, %unlink_va.exit ]
  %retval.0.i99.i = phi %struct.rb_node** [ %link.2.i.i, %if.then4.i.i ], [ %link.2.i.i, %if.then.i88.i ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @purge_vmap_area_root, i64 0, i32 0), %unlink_va.exit ]
  %parent.097.i = phi %struct.rb_node* [ %12, %if.then4.i.i ], [ %12, %if.then.i88.i ], [ null, %unlink_va.exit ]
  %head.addr.0.i.i = phi %struct.list_head* [ %31, %if.then4.i.i ], [ %29, %if.then.i88.i ], [ @purge_vmap_area_list, %unlink_va.exit ]
  %rb_node.i89.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i89.i, %struct.rb_node* noundef %parent.097.i, %struct.rb_node** noundef nonnull %retval.0.i99.i) #25
  call void @rb_insert_color(%struct.rb_node* noundef %rb_node.i89.i, %struct.rb_root* noundef nonnull @purge_vmap_area_root) #25
  %list12.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i.i, %struct.list_head* noundef %head.addr.0.i.i) #25
  br label %merge_or_add_vmap_area.exit

merge_or_add_vmap_area.exit:                      ; preds = %find_va_links.exit.thread.i, %find_va_links.exit.i, %insert.thread128.i, %insert.i, %if.end5.i.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %call2 = call fastcc i64 @lazy_max_pages() #23
  %cmp = icmp ugt i64 %call.i.i.i, %call2
  br i1 %cmp, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %merge_or_add_vmap_area.exit
  call fastcc void @try_purge_vmap_area_lazy() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %merge_or_add_vmap_area.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @lazy_max_pages() unnamed_addr #19 {
entry:
  %call = call fastcc i32 @num_online_cpus() #23
  %tobool.not.i = icmp eq i32 %call, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %call, i1 false) #24, !range !89
  %narrow.i = sub nuw nsw i32 32, %0
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  %conv = zext i32 %narrow3.i to i64
  %mul = shl nuw nsw i64 %conv, 13
  ret i64 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @try_purge_vmap_area_lazy() unnamed_addr #3 {
entry:
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i1 @__purge_vmap_area_lazy(i64 noundef -1, i64 noundef 0) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__rb_change_child(%struct.rb_node* noundef readnone %old, %struct.rb_node* noundef %new, %struct.rb_node* noundef %parent) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %parent, null
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 2
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %cmp = icmp eq %struct.rb_node* %0, %old
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %parent, i64 0, i32 1
  %spec.select = select i1 %cmp, %struct.rb_node** %rb_left, %struct.rb_node** %rb_right
  br label %if.end20

if.end20:                                         ; preds = %if.then, %entry
  %rb_left.sink = phi %struct.rb_node** [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), %entry ], [ %spec.select, %if.then ]
  store volatile %struct.rb_node* %new, %struct.rb_node** %rb_left.sink, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rb_set_parent(%struct.rb_node* nocapture noundef %rb, %struct.rb_node* noundef %p) unnamed_addr #17 {
entry:
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %0, 1
  %1 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %and, %1
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_set_parent_color(%struct.rb_node* nocapture noundef writeonly %rb, %struct.rb_node* noundef %p) unnamed_addr #11 {
entry:
  %0 = ptrtoint %struct.rb_node* %p to i64
  %or = or i64 %0, 1
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i64 0, i32 0
  store i64 %or, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb, %struct.rb_node* noundef readnone %stop) unnamed_addr #16 {
entry:
  %cmp.not8 = icmp eq %struct.rb_node* %rb, %stop
  br i1 %cmp.not8, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %rb.addr.09 = phi %struct.rb_node* [ %2, %cleanup ], [ %rb, %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb.addr.09, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  %call = call fastcc i1 @free_vmap_area_rb_augment_cb_compute_max(%struct.vmap_area* noundef %0, i1 noundef true) #23
  br i1 %call, label %while.end, label %cleanup

cleanup:                                          ; preds = %while.body
  %rb_node = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 2
  %__rb_parent_color = bitcast %struct.rb_node** %rb_node to i64*
  %1 = load i64, i64* %__rb_parent_color, align 8
  %and = and i64 %1, -4
  %2 = inttoptr i64 %and to %struct.rb_node*
  %cmp.not = icmp eq %struct.rb_node* %2, %stop
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* nocapture noundef readonly %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) unnamed_addr #17 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -1, i32 1
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -1, i32 1
  %0 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %subtree_max_size = bitcast %struct.rb_node** %0 to i64*
  %1 = load i64, i64* %subtree_max_size, align 8
  %2 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %subtree_max_size7 = bitcast %struct.rb_node** %2 to i64*
  store i64 %1, i64* %subtree_max_size7, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @free_vmap_area_rb_augment_cb_rotate(%struct.rb_node* nocapture noundef %rb_old, %struct.rb_node* nocapture noundef writeonly %rb_new) #17 {
entry:
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %rb_old, i64 -1, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.vmap_area*
  %add.ptr6 = getelementptr %struct.rb_node, %struct.rb_node* %rb_new, i64 -1, i32 1
  %1 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %subtree_max_size = bitcast %struct.rb_node** %1 to i64*
  %2 = load i64, i64* %subtree_max_size, align 8
  %3 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr6, i64 7
  %subtree_max_size7 = bitcast %struct.rb_node** %3 to i64*
  store i64 %2, i64* %subtree_max_size7, align 8
  %call = call fastcc i1 @free_vmap_area_rb_augment_cb_compute_max(%struct.vmap_area* noundef %0, i1 noundef false) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @free_vmap_area_rb_augment_cb_compute_max(%struct.vmap_area* nocapture noundef %node, i1 noundef %exit) unnamed_addr #17 {
entry:
  %va_end.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 1
  %0 = load i64, i64* %va_end.i, align 8
  %va_start.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 0
  %1 = load i64, i64* %va_start.i, align 8
  %sub.i = sub i64 %0, %1
  %rb_left = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 2, i32 2
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8
  %tobool.not = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %2, i64 -1, i32 1
  %3 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %subtree_max_size = bitcast %struct.rb_node** %3 to i64*
  %4 = load i64, i64* %subtree_max_size, align 8
  %cmp = icmp ugt i64 %4, %sub.i
  %spec.select = select i1 %cmp, i64 %4, i64 %sub.i
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %max.0 = phi i64 [ %sub.i, %entry ], [ %spec.select, %if.then ]
  %rb_right = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 2, i32 1
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8
  %tobool7.not = icmp eq %struct.rb_node* %5, null
  br i1 %tobool7.not, label %if.end22, label %if.then8

if.then8:                                         ; preds = %if.end5
  %add.ptr16 = getelementptr %struct.rb_node, %struct.rb_node* %5, i64 -1, i32 1
  %6 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr16, i64 7
  %subtree_max_size17 = bitcast %struct.rb_node** %6 to i64*
  %7 = load i64, i64* %subtree_max_size17, align 8
  %cmp18 = icmp ugt i64 %7, %max.0
  %spec.select49 = select i1 %cmp18, i64 %7, i64 %max.0
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %if.end5
  %max.1 = phi i64 [ %max.0, %if.end5 ], [ %spec.select49, %if.then8 ]
  br i1 %exit, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end22
  %subtree_max_size24 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 4, i32 0
  %8 = load i64, i64* %subtree_max_size24, align 8
  %cmp25 = icmp eq i64 %8, %max.1
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %land.lhs.true, %if.end22
  %subtree_max_size28 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %node, i64 0, i32 4, i32 0
  store i64 %max.1, i64* %subtree_max_size28, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end27
  %retval.0 = phi i1 [ false, %if.end27 ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i) unnamed_addr #3 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @vmap_lazy_nr, i64 0, i32 0), i64 %i, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @vmap_lazy_nr, i64 0, i32 0)) #24, !srcloc !90
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #11 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_augmented(%struct.rb_node* noundef %node) unnamed_addr #3 {
entry:
  call void @__rb_insert_augmented(%struct.rb_node* noundef %node, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(%struct.rb_node* noundef, %struct.rb_root* noundef, void (%struct.rb_node*, %struct.rb_node*)* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_replace_init(%struct.list_head* noundef %new) unnamed_addr #10 {
entry:
  call fastcc void @list_replace(%struct.list_head* noundef %new) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull @purge_vmap_area_list) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(%struct.spinlock* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_replace(%struct.list_head* noundef %new) unnamed_addr #17 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @purge_vmap_area_list, i64 0, i32 0), align 8
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev, align 8
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @purge_vmap_area_list, i64 0, i32 1), align 8
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev4, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #24, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @xa_load(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #20 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #31, !srcloc !92
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @vmap_block_vaddr(i64 noundef %va_start, i64 noundef %pages_off) unnamed_addr #3 {
entry:
  %shl = shl i64 %pages_off, 12
  %add = add i64 %shl, %va_start
  %call = call fastcc i64 @addr_to_vb_idx(i64 noundef %add) #23
  %call1 = call fastcc i64 @addr_to_vb_idx(i64 noundef %va_start) #23
  %cmp.not = icmp eq i64 %call, %call1
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1866; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !93
  unreachable

do.end8:                                          ; preds = %entry
  %0 = inttoptr i64 %add to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @new_vmap_block(i32 noundef %order) unnamed_addr #3 {
entry:
  call fastcc void @numa_node_id() #23
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #25
  %tobool.not = icmp eq i8* %call.i.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call fastcc %struct.vmap_area* @alloc_vmap_area(i64 noundef 4194304, i64 noundef 4194304, i64 noundef -274609471488, i64 noundef -8858370048, i32 noundef 3264) #23
  %1 = bitcast %struct.vmap_area* %call6 to i8*
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call.i.i.i) #25
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %va_start = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %call6, i64 0, i32 0
  %2 = load i64, i64* %va_start, align 8
  %call11 = call fastcc i8* @vmap_block_vaddr(i64 noundef %2, i64 noundef 0) #23
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call.i.i.i to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %va14 = getelementptr inbounds i8, i8* %call.i.i.i, i64 8
  %3 = bitcast i8* %va14 to %struct.vmap_area**
  store %struct.vmap_area* %call6, %struct.vmap_area** %3, align 8
  %cmp = icmp ugt i32 %order, 9
  br i1 %cmp, label %do.body25, label %do.end33, !prof !15

do.body25:                                        ; preds = %if.end10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 1906; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !94
  unreachable

do.end33:                                         ; preds = %if.end10
  %sh_prom = zext i32 %order to i64
  %shl.neg = shl nsw i64 -1, %sh_prom
  %sub = add nsw i64 %shl.neg, 1024
  %free = getelementptr inbounds i8, i8* %call.i.i.i, i64 16
  %4 = bitcast i8* %free to i64*
  store i64 %sub, i64* %4, align 8
  %dirty = getelementptr inbounds i8, i8* %call.i.i.i, i64 24
  %5 = bitcast i8* %dirty to i64*
  store i64 0, i64* %5, align 8
  %dirty_min = getelementptr inbounds i8, i8* %call.i.i.i, i64 32
  %6 = bitcast i8* %dirty_min to i64*
  store i64 1024, i64* %6, align 8
  %dirty_max = getelementptr inbounds i8, i8* %call.i.i.i, i64 40
  %7 = bitcast i8* %dirty_max to i64*
  store i64 0, i64* %7, align 8
  %free_list = getelementptr inbounds i8, i8* %call.i.i.i, i64 48
  %8 = bitcast i8* %free_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #23
  %9 = load i64, i64* %va_start, align 8
  %call37 = call fastcc i64 @addr_to_vb_idx(i64 noundef %9) #23, !range !28
  %call38 = call fastcc i32 @xa_insert(i64 noundef %call37, i8* noundef nonnull %call.i.i.i) #23
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %do.end33
  call void @kfree(i8* noundef nonnull %call.i.i.i) #25
  call fastcc void @free_vmap_area(%struct.vmap_area* noundef %call6) #23
  %conv41 = sext i32 %call38 to i64
  %call42 = call fastcc i8* @ERR_PTR(i64 noundef %conv41) #23
  br label %cleanup

if.end43:                                         ; preds = %do.end33
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !95
  %call49 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call49, ptrtoint (%struct.vmap_block_queue* @vmap_block_queue to i64)
  %10 = inttoptr i64 %add to %struct.vmap_block_queue*
  %rlock.i = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #25
  %free52 = getelementptr inbounds %struct.vmap_block_queue, %struct.vmap_block_queue* %10, i64 0, i32 1
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %8, %struct.list_head* noundef %free52) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #25
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then40, %if.then8, %if.then
  %retval.0 = phi i8* [ %call5, %if.then ], [ %1, %if.then8 ], [ %call42, %if.then40 ], [ %call11, %if.end43 ]
  ret i8* %retval.0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #21

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #20 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @xa_insert(i64 noundef %index, i8* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.xarray, %struct.xarray* @vmap_blocks, i64 0, i32 0, i32 0, i32 0)) #25
  %call = call i32 @__xa_insert(%struct.xarray* noundef nonnull @vmap_blocks, i64 noundef %index, i8* noundef %entry1, i32 noundef 3264) #25
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.xarray, %struct.xarray* @vmap_blocks, i64 0, i32 0, i32 0, i32 0)) #25
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vmap_area(%struct.vmap_area* noundef %va) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %rb_node.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 2
  %__rb_parent_color.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i, i64 0, i32 0
  %0 = load i64, i64* %__rb_parent_color.i, align 8
  %1 = ptrtoint %struct.rb_node* %rb_node.i to i64
  %cmp.i = icmp eq i64 %0, %1
  br i1 %cmp.i, label %if.then.i, label %if.end17.i, !prof !15

if.then.i:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %unlink_va.exit

if.end17.i:                                       ; preds = %entry
  call void @rb_erase(%struct.rb_node* noundef %rb_node.i, %struct.rb_root* noundef nonnull @vmap_area_root) #25
  %list.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i) #25
  store i64 %1, i64* %__rb_parent_color.i, align 8
  br label %unlink_va.exit

unlink_va.exit:                                   ; preds = %if.then.i, %if.end17.i
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %2 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i.i.i = icmp eq %struct.rb_node* %2, null
  br i1 %tobool1.not.i.i.i, label %if.end5.i.i.i, label %if.end6.i.i.i, !prof !15

if.end6.i.i.i:                                    ; preds = %unlink_va.exit
  %va_start.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %3 = load i64, i64* %va_start.i.i.i, align 8
  %va_end1588.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %4 = load i64, i64* %va_end1588.i.i.i, align 8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond59.i.i.i, %if.end6.i.i.i
  %5 = phi %struct.rb_node* [ %2, %if.end6.i.i.i ], [ %9, %do.cond59.i.i.i ]
  %add.ptr.i.i.i = getelementptr %struct.rb_node, %struct.rb_node* %5, i64 -1, i32 1
  %va_end.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 1
  %6 = bitcast %struct.rb_node** %va_end.i.i.i to i64*
  %7 = load i64, i64* %6, align 8
  %cmp.i.i.i = icmp ult i64 %3, %7
  %va_start10.i.i.i = bitcast %struct.rb_node** %add.ptr.i.i.i to i64*
  %8 = load i64, i64* %va_start10.i.i.i, align 8
  %cmp11.not.i.i.i = icmp ugt i64 %4, %8
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else14.thread.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %find_va_links.exit.thread.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 2
  br label %do.cond59.i.i.i

if.else14.thread.i.i.i:                           ; preds = %do.body.i.i.i
  br i1 %cmp11.not.i.i.i, label %if.then24.i.i.i, label %find_va_links.exit.thread.i.i

if.then24.i.i.i:                                  ; preds = %if.else14.thread.i.i.i
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 0, i32 1
  br label %do.cond59.i.i.i

find_va_links.exit.thread.i.i:                    ; preds = %if.else14.thread.i.i.i, %land.lhs.true.i.i.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %3, i64 noundef %4, i64 noundef %8, i64 noundef %7) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %merge_or_add_vmap_area_augment.exit

do.cond59.i.i.i:                                  ; preds = %if.then24.i.i.i, %if.then13.i.i.i
  %link.2.i.i.i = phi %struct.rb_node** [ %rb_left.i.i.i, %if.then13.i.i.i ], [ %rb_right.i.i.i, %if.then24.i.i.i ]
  %9 = load %struct.rb_node*, %struct.rb_node** %link.2.i.i.i, align 8
  %tobool60.not.i.i.i = icmp eq %struct.rb_node* %9, null
  br i1 %tobool60.not.i.i.i, label %find_va_links.exit.i.i, label %do.body.i.i.i

find_va_links.exit.i.i:                           ; preds = %do.cond59.i.i.i
  %rb_node62.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 2
  %10 = bitcast %struct.rb_node** %rb_node62.i.i.i to %struct.rb_node*
  %tobool.not.i.i = icmp eq %struct.rb_node** %link.2.i.i.i, null
  br i1 %tobool.not.i.i, label %merge_or_add_vmap_area_augment.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %find_va_links.exit.i.i
  %list4.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 5
  %11 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 3
  %cmp.i79.i.i = icmp eq %struct.rb_node** %11, %link.2.i.i.i
  br i1 %cmp.i79.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i
  %next.i.i.i = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head**
  %12 = load %struct.list_head*, %struct.list_head** %next.i.i.i, align 8
  br label %get_va_next_sibling.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  %13 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br label %get_va_next_sibling.exit.i.i

get_va_next_sibling.exit.i.i:                     ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %retval.0.i80.i.i = phi %struct.list_head* [ %12, %cond.true.i.i.i ], [ %13, %cond.false.i.i.i ]
  %cmp.i.i = icmp eq %struct.list_head* %retval.0.i80.i.i, null
  br i1 %cmp.i.i, label %if.then.i88.i.i, label %if.end5.i.i, !prof !15

if.end5.i.i:                                      ; preds = %get_va_next_sibling.exit.i.i
  %cmp6.not.i.i = icmp eq %struct.list_head* %retval.0.i80.i.i, @free_vmap_area_list
  br i1 %cmp6.not.i.i, label %if.end15.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 -3, i32 1
  %va_start.i.i = bitcast %struct.list_head** %add.ptr.i.i to i64*
  %14 = load i64, i64* %va_start.i.i, align 8
  %cmp9.i.i = icmp eq i64 %14, %4
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end15.i.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  %15 = bitcast %struct.list_head** %add.ptr.i.i to %struct.vmap_area*
  store i64 %3, i64* %va_start.i.i, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %17 = bitcast %struct.vmap_area* %va to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %16, i8* noundef %17) #25
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %if.then8.i.i, %if.end5.i.i
  %merged.0.off0.i.i = phi i1 [ true, %if.then11.i.i ], [ false, %if.then8.i.i ], [ false, %if.end5.i.i ]
  %va.addr.0.i.i = phi %struct.vmap_area* [ %15, %if.then11.i.i ], [ %va, %if.then8.i.i ], [ %va, %if.end5.i.i ]
  %prev.i.i = getelementptr inbounds %struct.list_head, %struct.list_head* %retval.0.i80.i.i, i64 0, i32 1
  %18 = load %struct.list_head*, %struct.list_head** %prev.i.i, align 8
  %cmp16.not.i.i = icmp eq %struct.list_head* %18, @free_vmap_area_list
  br i1 %cmp16.not.i.i, label %insert.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  %add.ptr25.i.i = getelementptr %struct.list_head, %struct.list_head* %18, i64 -3, i32 1
  %19 = bitcast %struct.list_head** %add.ptr25.i.i to %struct.vmap_area*
  %va_end26.i.i = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr25.i.i, i64 1
  %20 = bitcast %struct.list_head** %va_end26.i.i to i64*
  %21 = load i64, i64* %20, align 8
  %va_start27.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 0
  %22 = load i64, i64* %va_start27.i.i, align 8
  %cmp28.i.i = icmp eq i64 %21, %22
  br i1 %cmp28.i.i, label %if.then30.i.i, label %insert.i.i

if.then30.i.i:                                    ; preds = %if.then18.i.i
  br i1 %merged.0.off0.i.i, label %if.then32.i.i, label %insert.thread128.i.i

if.then32.i.i:                                    ; preds = %if.then30.i.i
  %rb_node.i81.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_node.i81.i.i, i64 0, i32 0
  %23 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %24 = ptrtoint %struct.rb_node* %rb_node.i81.i.i to i64
  %cmp.i82.i.i = icmp eq i64 %23, %24
  br i1 %cmp.i82.i.i, label %if.then.i83.i.i, label %if.end17.i.i.i, !prof !15

if.then.i83.i.i:                                  ; preds = %if.then32.i.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 960; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !42
  br label %insert.thread128.i.i

if.end17.i.i.i:                                   ; preds = %if.then32.i.i
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 1
  %25 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i.i.i, align 8
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 2, i32 2
  %26 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq %struct.rb_node* %26, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end17.i.i.i
  %and.i.i.i.i.i = and i64 %23, -4
  %27 = inttoptr i64 %and.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef %25, %struct.rb_node* noundef %27) #25
  %tobool1.not.i.i.i.i.i = icmp eq %struct.rb_node* %25, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  %__rb_parent_color3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i64 0, i32 0
  store i64 %23, i64* %__rb_parent_color3.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  %and4.i.i.i.i.i = and i64 %23, 1
  %tobool5.not.i.i.i.i.i = icmp eq i64 %and4.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %__rb_erase_augmented.exit.thread.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.end17.i.i.i
  %tobool7.not.i.i.i.i.i = icmp eq %struct.rb_node* %25, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %__rb_parent_color10.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i64 0, i32 0
  store i64 %23, i64* %__rb_parent_color10.i.i.i.i.i, align 8
  %and11.i.i.i.i.i = and i64 %23, -4
  %28 = inttoptr i64 %and11.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %26, %struct.rb_node* noundef %28) #25
  br label %__rb_erase_augmented.exit.thread.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i64 0, i32 2
  %29 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i.i.i, align 8
  %tobool14.not.i.i.i.i.i = icmp eq %struct.rb_node* %29, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i64 0, i32 1
  %30 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i.i.i, align 8
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %25) #25
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.else12.i.i.i.i.i, %do.body.i.i.i.i.i
  %tmp.0.i.i.i.i.i = phi %struct.rb_node* [ %31, %do.body.i.i.i.i.i ], [ %29, %if.else12.i.i.i.i.i ]
  %successor.0.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i ], [ %25, %if.else12.i.i.i.i.i ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 2
  %31 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i.i.i, align 8
  %tobool19.not.i.i.i.i.i = icmp eq %struct.rb_node* %31, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %tmp.0.i.i.i.i.i, i64 0, i32 1
  %32 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.0.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %32, %struct.rb_node** %rb_left26.i.i.i.i.i, align 8
  store volatile %struct.rb_node* %25, %struct.rb_node** %rb_right20.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef nonnull %25, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_copy(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef nonnull %successor.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %tmp.0.i.i.i.i.i) #25
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %do.end.i.i.i.i.i, %if.then15.i.i.i.i.i
  %parent.0.i.i.i.i.i = phi %struct.rb_node* [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %25, %if.then15.i.i.i.i.i ]
  %successor.1.i.i.i.i.i = phi %struct.rb_node* [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i ], [ %25, %if.then15.i.i.i.i.i ]
  %child2.0.i.i.i.i.i = phi %struct.rb_node* [ %32, %do.end.i.i.i.i.i ], [ %30, %if.then15.i.i.i.i.i ]
  %33 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i.i.i, align 8
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 2
  store volatile %struct.rb_node* %33, %struct.rb_node** %rb_left49.i.i.i.i.i, align 8
  call fastcc void @rb_set_parent(%struct.rb_node* noundef %33, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i) #25
  %34 = load i64, i64* %__rb_parent_color.i.i.i, align 8
  %and55.i.i.i.i.i = and i64 %34, -4
  %35 = inttoptr i64 %and55.i.i.i.i.i to %struct.rb_node*
  call fastcc void @__rb_change_child(%struct.rb_node* noundef %rb_node.i81.i.i, %struct.rb_node* noundef nonnull %successor.1.i.i.i.i.i, %struct.rb_node* noundef %35) #25
  %tobool56.not.i.i.i.i.i = icmp eq %struct.rb_node* %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  call fastcc void @rb_set_parent_color(%struct.rb_node* noundef nonnull %child2.0.i.i.i.i.i, %struct.rb_node* noundef nonnull %parent.0.i.i.i.i.i) #25
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %if.end42.i.i.i.i.i
  %__rb_parent_color59.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  %36 = load i64, i64* %__rb_parent_color59.i.i.i.i.i, align 8
  %and60.i.i.i.i.i = and i64 %36, 1
  %tobool61.not.i.i.i.i.i = icmp eq i64 %and60.i.i.i.i.i, 0
  %cond65.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, %struct.rb_node* null, %struct.rb_node* %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi %struct.rb_node* [ null, %if.then57.i.i.i.i.i ], [ %cond65.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %__rb_parent_color67.i.i.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %successor.1.i.i.i.i.i, i64 0, i32 0
  store i64 %34, i64* %__rb_parent_color67.i.i.i.i.i, align 8
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.thread.i.i.i.i:         ; preds = %if.then8.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.ph.i.i.i.i = phi %struct.rb_node* [ %27, %if.then2.i.i.i.i.i ], [ %28, %if.then8.i.i.i.i.i ], [ %27, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.ph.i.i.i.i, %struct.rb_node* noundef null) #25
  br label %if.end23.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %if.end66.i.i.i.i.i, %if.else.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi %struct.rb_node* [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %27, %if.else.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi %struct.rb_node* [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %27, %if.else.i.i.i.i.i ]
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %tmp.1.i.i.i.i.i, %struct.rb_node* noundef null) #25
  %tobool.not.i.i.i.i = icmp eq %struct.rb_node* %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end23.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__rb_erase_color(%struct.rb_node* noundef nonnull %rebalance.2.i.i.i.i.i, %struct.rb_root* noundef nonnull @free_vmap_area_root, void (%struct.rb_node*, %struct.rb_node*)* noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #25
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i, %__rb_erase_augmented.exit.thread.i.i.i.i
  %list.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %list.i.i.i) #25
  store i64 %24, i64* %__rb_parent_color.i.i.i, align 8
  br label %insert.thread128.i.i

insert.thread128.i.i:                             ; preds = %if.end23.i.i.i, %if.then.i83.i.i, %if.then30.i.i
  %va_end34.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.0.i.i, i64 0, i32 1
  %37 = load i64, i64* %va_end34.i.i, align 8
  store i64 %37, i64* %20, align 8
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %39 = bitcast %struct.vmap_area* %va.addr.0.i.i to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %38, i8* noundef %39) #25
  br label %merge_or_add_vmap_area.exit.i

insert.i.i:                                       ; preds = %if.then18.i.i, %if.end15.i.i
  br i1 %merged.0.off0.i.i, label %merge_or_add_vmap_area.exit.i, label %if.then.i88.i.i

if.then.i88.i.i:                                  ; preds = %insert.i.i, %get_va_next_sibling.exit.i.i
  %va.addr.1127138.i.i = phi %struct.vmap_area* [ %va, %get_va_next_sibling.exit.i.i ], [ %va.addr.0.i.i, %insert.i.i ]
  %40 = bitcast %struct.rb_node** %list4.i.i.i to %struct.list_head*
  br i1 %cmp.i79.i.i, label %if.end5.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i88.i.i
  %prev.i.i.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i.i.i, i64 6
  %41 = bitcast %struct.rb_node** %prev.i.i.i to %struct.list_head**
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.then.i88.i.i, %unlink_va.exit
  %va.addr.1127139.i.i = phi %struct.vmap_area* [ %va.addr.1127138.i.i, %if.then4.i.i.i ], [ %va.addr.1127138.i.i, %if.then.i88.i.i ], [ %va, %unlink_va.exit ]
  %retval.0.i99.i.i = phi %struct.rb_node** [ %link.2.i.i.i, %if.then4.i.i.i ], [ %link.2.i.i.i, %if.then.i88.i.i ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), %unlink_va.exit ]
  %parent.097.i.i = phi %struct.rb_node* [ %10, %if.then4.i.i.i ], [ %10, %if.then.i88.i.i ], [ null, %unlink_va.exit ]
  %head.addr.0.i.i.i = phi %struct.list_head* [ %42, %if.then4.i.i.i ], [ %40, %if.then.i88.i.i ], [ @free_vmap_area_list, %unlink_va.exit ]
  %rb_node.i89.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i89.i.i, %struct.rb_node* noundef %parent.097.i.i, %struct.rb_node** noundef nonnull %retval.0.i99.i.i) #25
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %rb_node.i89.i.i) #25
  %subtree_max_size.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 4, i32 0
  store i64 0, i64* %subtree_max_size.i.i.i, align 8
  %list12.i.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va.addr.1127139.i.i, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i.i.i, %struct.list_head* noundef %head.addr.0.i.i.i) #25
  br label %merge_or_add_vmap_area.exit.i

merge_or_add_vmap_area.exit.i:                    ; preds = %if.end5.i.i.i, %insert.i.i, %insert.thread128.i.i
  %retval.0.i.i = phi %struct.vmap_area* [ %va.addr.1127139.i.i, %if.end5.i.i.i ], [ %va.addr.0.i.i, %insert.i.i ], [ %19, %insert.thread128.i.i ]
  %tobool.not.i = icmp eq %struct.vmap_area* %retval.0.i.i, null
  br i1 %tobool.not.i, label %merge_or_add_vmap_area_augment.exit, label %if.then.i2

if.then.i2:                                       ; preds = %merge_or_add_vmap_area.exit.i
  %rb_node.i.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %retval.0.i.i, i64 0, i32 2
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i.i, %struct.rb_node* noundef null) #25
  br label %merge_or_add_vmap_area_augment.exit

merge_or_add_vmap_area_augment.exit:              ; preds = %find_va_links.exit.thread.i.i, %find_va_links.exit.i.i, %merge_or_add_vmap_area.exit.i, %if.then.i2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(%struct.xarray* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #24, !srcloc !97
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preload_this_cpu_lock(i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !98
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (%struct.vmap_area** @ne_fit_preload_node to i64)
  %0 = inttoptr i64 %add to i8*
  %call6 = call fastcc i64 @__percpu_read_64(i8* noundef %0) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !99
  %tobool.not = icmp eq i64 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  br label %if.end31

if.end:                                           ; preds = %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef %gfp_mask) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @free_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %tobool10.not = icmp eq i8* %call.i, null
  br i1 %tobool10.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call23 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add24 = add i64 %call23, ptrtoint (%struct.vmap_area** @ne_fit_preload_node to i64)
  %2 = inttoptr i64 %add24 to %struct.vmap_area**
  %3 = load %struct.vmap_area*, %struct.vmap_area** %2, align 8
  %cond = icmp eq %struct.vmap_area* %3, null
  br i1 %cond, label %if.then25, label %if.then30

if.then25:                                        ; preds = %land.lhs.true
  %4 = inttoptr i64 %add24 to i8**
  store i8* %call.i, i8** %4, align 8
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** @vmap_area_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %5, i8* noundef nonnull %call.i) #25
  br label %if.end31

if.end31:                                         ; preds = %if.end.thread, %if.then25, %if.then30, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(i8* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_64(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = load volatile i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #25
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #24, !srcloc !100
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_vmap_area_augment(%struct.vmap_area* noundef %va, %struct.rb_node* noundef %from) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.rb_node* %from, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %va_start.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %0 = load i64, i64* %va_start.i, align 8
  %va_end1588.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %1 = load i64, i64* %va_end1588.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond59.i, %if.then
  %2 = phi %struct.rb_node* [ %from, %if.then ], [ %6, %do.cond59.i ]
  %add.ptr.i = getelementptr %struct.rb_node, %struct.rb_node* %2, i64 -1, i32 1
  %va_end.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i, i64 1
  %3 = bitcast %struct.rb_node** %va_end.i to i64*
  %4 = load i64, i64* %3, align 8
  %cmp.i = icmp ult i64 %0, %4
  %va_start10.i = bitcast %struct.rb_node** %add.ptr.i to i64*
  %5 = load i64, i64* %va_start10.i, align 8
  %cmp11.not.i = icmp ugt i64 %1, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else14.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  br i1 %cmp11.not.i, label %do.end38.i, label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i64 0, i32 2
  br label %do.cond59.i

if.else14.thread.i:                               ; preds = %do.body.i
  br i1 %cmp11.not.i, label %if.then24.i, label %do.end38.i

if.then24.i:                                      ; preds = %if.else14.thread.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i64 0, i32 1
  br label %do.cond59.i

do.end38.i:                                       ; preds = %if.else14.thread.i, %land.lhs.true.i
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %0, i64 noundef %1, i64 noundef %5, i64 noundef %4) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %if.end4

do.cond59.i:                                      ; preds = %if.then24.i, %if.then13.i
  %link.2.i = phi %struct.rb_node** [ %rb_left.i, %if.then13.i ], [ %rb_right.i, %if.then24.i ]
  %6 = load %struct.rb_node*, %struct.rb_node** %link.2.i, align 8
  %tobool60.not.i = icmp eq %struct.rb_node* %6, null
  br i1 %tobool60.not.i, label %if.end, label %do.body.i

if.else:                                          ; preds = %entry
  %7 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), align 8
  %tobool1.not.i = icmp eq %struct.rb_node* %7, null
  br i1 %tobool1.not.i, label %link_va.exit, label %if.end6.i, !prof !15

if.end6.i:                                        ; preds = %if.else
  %va_start.i1 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 0
  %8 = load i64, i64* %va_start.i1, align 8
  %va_end1588.i2 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 1
  %9 = load i64, i64* %va_end1588.i2, align 8
  br label %do.body.i8

do.body.i8:                                       ; preds = %do.cond59.i18, %if.end6.i
  %10 = phi %struct.rb_node* [ %7, %if.end6.i ], [ %14, %do.cond59.i18 ]
  %add.ptr.i3 = getelementptr %struct.rb_node, %struct.rb_node* %10, i64 -1, i32 1
  %va_end.i4 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr.i3, i64 1
  %11 = bitcast %struct.rb_node** %va_end.i4 to i64*
  %12 = load i64, i64* %11, align 8
  %cmp.i5 = icmp ult i64 %8, %12
  %va_start10.i6 = bitcast %struct.rb_node** %add.ptr.i3 to i64*
  %13 = load i64, i64* %va_start10.i6, align 8
  %cmp11.not.i7 = icmp ugt i64 %9, %13
  br i1 %cmp.i5, label %land.lhs.true.i9, label %if.else14.thread.i12

land.lhs.true.i9:                                 ; preds = %do.body.i8
  br i1 %cmp11.not.i7, label %do.end38.i15, label %if.then13.i11

if.then13.i11:                                    ; preds = %land.lhs.true.i9
  %rb_left.i10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 2
  br label %do.cond59.i18

if.else14.thread.i12:                             ; preds = %do.body.i8
  br i1 %cmp11.not.i7, label %if.then24.i14, label %do.end38.i15

if.then24.i14:                                    ; preds = %if.else14.thread.i12
  %rb_right.i13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i64 0, i32 1
  br label %do.cond59.i18

do.end38.i15:                                     ; preds = %if.else14.thread.i12, %land.lhs.true.i9
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 noundef %8, i64 noundef %9, i64 noundef %13, i64 noundef %12) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/vmalloc.c\22; .popsection; .long 14472b - 14470b; .short 890; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %if.end4

do.cond59.i18:                                    ; preds = %if.then24.i14, %if.then13.i11
  %link.2.i16 = phi %struct.rb_node** [ %rb_left.i10, %if.then13.i11 ], [ %rb_right.i13, %if.then24.i14 ]
  %14 = load %struct.rb_node*, %struct.rb_node** %link.2.i16, align 8
  %tobool60.not.i17 = icmp eq %struct.rb_node* %14, null
  br i1 %tobool60.not.i17, label %if.end, label %do.body.i8

if.end:                                           ; preds = %do.cond59.i, %do.cond59.i18
  %15 = phi %struct.rb_node* [ %10, %do.cond59.i18 ], [ %2, %do.cond59.i ]
  %link.0 = phi %struct.rb_node** [ %link.2.i16, %do.cond59.i18 ], [ %link.2.i, %do.cond59.i ]
  %16 = getelementptr %struct.rb_node, %struct.rb_node* %15, i64 -1, i32 1
  %parent.2.in = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %16, i64 2
  %parent.2 = bitcast %struct.rb_node** %parent.2.in to %struct.rb_node*
  %tobool2.not = icmp eq %struct.rb_node** %link.0, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %tobool.not.i = icmp eq %struct.rb_node** %parent.2.in, null
  br i1 %tobool.not.i, label %link_va.exit, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %if.then3
  %list.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %16, i64 5
  %17 = bitcast %struct.rb_node** %list.i to %struct.list_head*
  %18 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %16, i64 3
  %cmp.not.i = icmp eq %struct.rb_node** %18, %link.0
  br i1 %cmp.not.i, label %link_va.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %prev.i = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %16, i64 6
  %19 = bitcast %struct.rb_node** %prev.i to %struct.list_head**
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  br label %link_va.exit

link_va.exit:                                     ; preds = %if.else, %if.then3, %if.then.i, %if.then4.i
  %link.031 = phi %struct.rb_node** [ %link.0, %if.then4.i ], [ %link.0, %if.then.i ], [ %link.0, %if.then3 ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @free_vmap_area_root, i64 0, i32 0), %if.else ]
  %parent.230 = phi %struct.rb_node* [ %parent.2, %if.then4.i ], [ %parent.2, %if.then.i ], [ null, %if.then3 ], [ null, %if.else ]
  %head.addr.0.i = phi %struct.list_head* [ %20, %if.then4.i ], [ %17, %if.then.i ], [ @free_vmap_area_list, %if.then3 ], [ @free_vmap_area_list, %if.else ]
  %rb_node.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 2
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node.i, %struct.rb_node* noundef %parent.230, %struct.rb_node** noundef nonnull %link.031) #25
  call fastcc void @rb_insert_augmented(%struct.rb_node* noundef %rb_node.i) #25
  %subtree_max_size.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 4, i32 0
  store i64 0, i64* %subtree_max_size.i, align 8
  %list12.i = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %va, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list12.i, %struct.list_head* noundef %head.addr.0.i) #25
  call fastcc void @free_vmap_area_rb_augment_cb_propagate(%struct.rb_node* noundef %rb_node.i, %struct.rb_node* noundef null) #25
  br label %if.end4

if.end4:                                          ; preds = %do.end38.i15, %do.end38.i, %link_va.exit, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_count_order_long(i64 noundef %l) unnamed_addr #15 {
entry:
  %cmp = icmp eq i64 %l, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dec = add i64 %l, -1
  %call = call fastcc i32 @fls_long(i64 noundef %dec) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node(i32 noundef %flags) unnamed_addr #3 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i1.i, label %kmalloc_node.exit, label %if.end.i2.i, !prof !8

if.end.i2.i:                                      ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc_node.exit

kmalloc_node.exit:                                ; preds = %entry, %if.end.i2.i
  %retval.0.i3.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i2.i ]
  %or = or i32 %flags, 256
  %arrayidx4.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i3.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx4.i, align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %or) #25
  ret i8* %call.i.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_vmalloc_vm(%struct.vm_struct* noundef %vm, %struct.vmap_area* nocapture noundef %va, i64 noundef %flags, i8* noundef %caller) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call fastcc void @setup_vmalloc_vm_locked(%struct.vm_struct* noundef %vm, %struct.vmap_area* noundef %va, i64 noundef %flags, i8* noundef %caller) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #15 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #24, !range !29
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !101
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #24, !srcloc !102
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !103
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #24, !srcloc !104
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #3 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #25
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_remove_mappings(%struct.vm_struct* nocapture noundef readonly %area, i32 noundef %deallocate_pages) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 1
  %1 = load i8*, i8** %addr, align 8
  %call1 = call %struct.vm_struct* @remove_vm_area(i8* noundef %1) #23
  %conv56 = and i64 %0, 256
  %tobool.not = icmp eq i64 %conv56, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i32 %deallocate_pages, 0
  br i1 %tobool2.not, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 5
  %2 = load i32, i32* %nr_pages, align 8
  %cmp57.not = icmp eq i32 %2, 0
  br i1 %cmp57.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 4
  %3 = load %struct.page**, %struct.page*** %pages, align 8
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @vm_unmap_aliases() #23
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %if.end19
  %start.061 = phi i64 [ -1, %for.body.lr.ph ], [ %start.1, %if.end19 ]
  %end.060 = phi i64 [ 0, %for.body.lr.ph ], [ %end.1, %if.end19 ]
  %flush_dmap.059 = phi i32 [ 0, %for.body.lr.ph ], [ %flush_dmap.1, %if.end19 ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %add21, %if.end19 ]
  %idxprom = sext i32 %i.058 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %3, i64 %idxprom
  %4 = load %struct.page*, %struct.page** %arrayidx, align 8
  %5 = ptrtoint %struct.page* %4 to i64
  %sub.i = shl i64 %5, 6
  %add.i = and i64 %sub.i, -4096
  %tobool8.not = icmp eq i64 %add.i, 0
  br i1 %tobool8.not, label %if.end19, label %if.then9

if.then9:                                         ; preds = %for.body
  %cmp10 = icmp ugt i64 %start.061, %add.i
  %cond = select i1 %cmp10, i64 %add.i, i64 %start.061
  %add = add i64 %add.i, 4096
  %cmp13 = icmp ugt i64 %add, %end.060
  %cond18 = select i1 %cmp13, i64 %add, i64 %end.060
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %for.body
  %flush_dmap.1 = phi i32 [ 1, %if.then9 ], [ %flush_dmap.059, %for.body ]
  %end.1 = phi i64 [ %cond18, %if.then9 ], [ %end.060, %for.body ]
  %start.1 = phi i64 [ %cond, %if.then9 ], [ %start.061, %for.body ]
  %add21 = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %add21, %2
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end19, %for.cond.preheader
  %flush_dmap.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %flush_dmap.1, %if.end19 ]
  %end.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %end.1, %if.end19 ]
  %start.0.lcssa = phi i64 [ -1, %for.cond.preheader ], [ %start.1, %if.end19 ]
  call fastcc void @set_area_direct_map(%struct.vm_struct* noundef %area, i32 (%struct.page*)* noundef nonnull @set_direct_map_invalid_noflush) #23
  call fastcc void @_vm_unmap_aliases(i64 noundef %start.0.lcssa, i64 noundef %end.0.lcssa, i32 noundef %flush_dmap.0.lcssa) #23
  call fastcc void @set_area_direct_map(%struct.vm_struct* noundef %area, i32 (%struct.page*)* noundef nonnull @set_direct_map_default_noflush) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_area_direct_map(%struct.vm_struct* nocapture noundef readonly %area, i32 (%struct.page*)* nocapture noundef readonly %set_direct_map) unnamed_addr #3 {
entry:
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 5
  %0 = load i32, i32* %nr_pages, align 8
  %cmp11.not = icmp eq i32 %0, 0
  br i1 %cmp11.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %area, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %6, %for.inc ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.page**, %struct.page*** %pages, align 8
  %idxprom = sext i32 %i.012 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %2, i64 %idxprom
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %4 = ptrtoint %struct.page* %3 to i64
  %5 = and i64 %4, 288230376151711680
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call4 = call i32 %set_direct_map(%struct.page* noundef %3) #25, !callees !105
  %.pre = load i32, i32* %nr_pages, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %6 = phi i32 [ %1, %for.body ], [ %.pre, %if.then ]
  %inc = add nuw i32 %i.012, 1
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_direct_map_invalid_noflush(%struct.page* noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_direct_map_default_noflush(%struct.page* noundef) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vm_area_alloc_pages(i32 noundef %gfp, i32 noundef %nid, i32 noundef %nr_pages, %struct.page** noundef %pages) unnamed_addr #3 {
entry:
  %cmp.not = icmp eq i32 %nid, -1
  br i1 %cmp.not, label %if.end13, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %nr_allocated.0 = phi i32 [ %add, %while.body ], [ 0, %entry ]
  %cmp1 = icmp ult i32 %nr_allocated.0, %nr_pages
  br i1 %cmp1, label %while.body, label %if.end13

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %nr_pages, %nr_allocated.0
  %0 = icmp ult i32 %sub, 100
  %cond = select i1 %0, i32 %sub, i32 100
  %conv = zext i32 %cond to i64
  %idx.ext = zext i32 %nr_allocated.0 to i64
  %add.ptr = getelementptr %struct.page*, %struct.page** %pages, i64 %idx.ext
  %call = call fastcc i64 @alloc_pages_bulk_array_node(i32 noundef %gfp, i32 noundef %nid, i64 noundef %conv, %struct.page** noundef %add.ptr) #23
  %conv3 = trunc i64 %call to i32
  %add = add i32 %nr_allocated.0, %conv3
  call fastcc void @_cond_resched() #23
  %cmp6.not = icmp eq i32 %cond, %conv3
  br i1 %cmp6.not, label %while.cond, label %if.end13

if.end13:                                         ; preds = %while.body, %while.cond, %entry
  %nr_allocated.1 = phi i32 [ 0, %entry ], [ %nr_allocated.0, %while.cond ], [ %add, %while.body ]
  %cmp151 = icmp ult i32 %nr_allocated.1, %nr_pages
  br i1 %cmp151, label %while.body17.preheader, label %while.end41

while.body17.preheader:                           ; preds = %if.end13
  %1 = zext i32 %nr_allocated.1 to i64
  %wide.trip.count = zext i32 %nr_pages to i64
  br label %while.body17

while.body17:                                     ; preds = %while.body17.preheader, %for.body
  %indvars.iv = phi i64 [ %1, %while.body17.preheader ], [ %indvars.iv.next, %for.body ]
  br i1 %cmp.not, label %if.then20, label %if.else22

if.then20:                                        ; preds = %while.body17
  %call21 = call fastcc %struct.page* @alloc_pages(i32 noundef %gfp) #23
  br label %if.end24

if.else22:                                        ; preds = %while.body17
  %call23 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp) #23
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  %page.0 = phi %struct.page* [ %call21, %if.then20 ], [ %call23, %if.else22 ]
  %tobool25.not = icmp eq %struct.page* %page.0, null
  br i1 %tobool25.not, label %while.end41.loopexit.split.loop.exit, label %for.body, !prof !15

for.body:                                         ; preds = %if.end24
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %indvars.iv
  store %struct.page* %page.0, %struct.page** %arrayidx, align 8
  call fastcc void @_cond_resched() #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %while.end41, label %while.body17

while.end41.loopexit.split.loop.exit:             ; preds = %if.end24
  %2 = trunc i64 %indvars.iv to i32
  br label %while.end41

while.end41:                                      ; preds = %for.body, %while.end41.loopexit.split.loop.exit, %if.end13
  %nr_allocated.2.lcssa = phi i32 [ %nr_allocated.1, %if.end13 ], [ %2, %while.end41.loopexit.split.loop.exit ], [ %nr_pages, %for.body ]
  ret i32 %nr_allocated.2.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @alloc_pages_bulk_array_node(i32 noundef %gfp, i32 noundef %nid, i64 noundef %nr_pages, %struct.page** noundef %page_array) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %conv = trunc i64 %nr_pages to i32
  %call1 = call i64 @__alloc_pages_bulk(i32 noundef %gfp, i32 noundef %nid.addr.0, %struct.nodemask_t* noundef null, i32 noundef %conv, %struct.list_head* noundef null, %struct.page** noundef %page_array) #25
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  call fastcc void @numa_node_id() #23
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask) #23
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) #23
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #20 {
entry:
  call fastcc void @numa_node_id() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__alloc_pages_bulk(i32 noundef, i32 noundef, %struct.nodemask_t* noundef, i32 noundef, %struct.list_head* noundef, %struct.page** noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask) unnamed_addr #3 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #25
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i) unnamed_addr #3 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @nr_vmalloc_pages, i64 0, i32 0), i64 %i, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @nr_vmalloc_pages, i64 0, i32 0)) #24, !srcloc !106
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmap_atomic(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !107
  call fastcc void @pagefault_disable() #23
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kunmap_atomic() unnamed_addr #3 {
entry:
  call fastcc void @pagefault_enable() #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !108
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #30, !srcloc !55
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !109
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !110
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #30, !srcloc !55
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !15

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @s_start(%struct.seq_file* nocapture noundef readnone %m, i64* nocapture noundef readonly %pos) #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %0 = load i64, i64* %pos, align 8
  %call = call %struct.list_head* @seq_list_start(%struct.list_head* noundef nonnull @vmap_area_list, i64 noundef %0) #25
  %1 = bitcast %struct.list_head* %call to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @s_stop(%struct.seq_file* nocapture noundef readnone %m, i8* nocapture noundef readnone %p) #3 {
entry:
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @vmap_area_lock, i64 0, i32 0, i32 0)) #25
  call void @mutex_unlock(%struct.mutex* noundef nonnull @vmap_purge_lock) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @s_next(%struct.seq_file* nocapture noundef readnone %m, i8* noundef %p, i64* noundef %pos) #3 {
entry:
  %call = call %struct.list_head* @seq_list_next(i8* noundef %p, %struct.list_head* noundef nonnull @vmap_area_list, i64* noundef %pos) #25
  %0 = bitcast %struct.list_head* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @s_show(%struct.seq_file* noundef %m, i8* nocapture noundef readonly %p) #3 {
entry:
  %0 = getelementptr i8, i8* %p, i64 16
  %vm = bitcast i8* %0 to %struct.vm_struct**
  %1 = load %struct.vm_struct*, %struct.vm_struct** %vm, align 8
  %tobool.not = icmp eq %struct.vm_struct* %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %p, i64 -40
  %va_start = bitcast i8* %add.ptr to i64*
  %2 = load i64, i64* %va_start, align 8
  %3 = inttoptr i64 %2 to i8*
  %va_end = getelementptr i8, i8* %p, i64 -32
  %4 = bitcast i8* %va_end to i64*
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %sub = sub i64 %5, %2
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* noundef %3, i8* noundef %6, i64 noundef %sub) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 1
  %7 = load i8*, i8** %addr, align 8
  %size = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 2
  %8 = load i64, i64* %size, align 8
  %add.ptr5 = getelementptr i8, i8* %7, i64 %8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* noundef %7, i8* noundef %add.ptr5, i64 noundef %8) #25
  %caller = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 7
  %9 = load i8*, i8** %caller, align 8
  %tobool7.not = icmp eq i8* %9, null
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %9) #25
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %nr_pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 5
  %10 = load i32, i32* %nr_pages, align 8
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 noundef %10) #25
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %phys_addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 6
  %11 = load i64, i64* %phys_addr, align 8
  %tobool15.not = icmp eq i64 %11, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i64* noundef %phys_addr) #25
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %flags = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 3
  %12 = load i64, i64* %flags, align 8
  %and = and i64 %12, 1
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #25
  %.pre = load i64, i64* %flags, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %13 = phi i64 [ %.pre, %if.then20 ], [ %12, %if.end18 ]
  %and23 = and i64 %13, 2
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #25
  %.pre89 = load i64, i64* %flags, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21
  %14 = phi i64 [ %.pre89, %if.then25 ], [ %13, %if.end21 ]
  %and28 = and i64 %14, 4
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #25
  %.pre90 = load i64, i64* %flags, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26
  %15 = phi i64 [ %.pre90, %if.then30 ], [ %14, %if.end26 ]
  %and33 = and i64 %15, 8
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #25
  %.pre91 = load i64, i64* %flags, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31
  %16 = phi i64 [ %.pre91, %if.then35 ], [ %15, %if.end31 ]
  %and38 = and i64 %16, 16
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #25
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36
  %pages = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %1, i64 0, i32 4
  %17 = bitcast %struct.page*** %pages to i8**
  %18 = load i8*, i8** %17, align 8
  %call = call i1 @is_vmalloc_addr(i8* noundef %18) #23
  br i1 %call, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end41
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0)) #25
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end41
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #25
  %19 = bitcast i8* %p to %struct.list_head*
  %call44 = call fastcc i32 @list_is_last(%struct.list_head* noundef %19) #23
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %if.end43
  call fastcc void @show_purge_info(%struct.seq_file* noundef %m) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then46, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_start(%struct.list_head* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_next(i8* noundef, %struct.list_head* noundef, i64* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @list_is_last(%struct.list_head* nocapture noundef readonly %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, @vmap_area_list
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_purge_info(%struct.seq_file* noundef %m) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  %.pn18 = load i8*, i8** bitcast (%struct.list_head* @purge_vmap_area_list to i8**), align 8
  %cmp.not19 = icmp eq i8* %.pn18, bitcast (%struct.list_head* @purge_vmap_area_list to i8*)
  br i1 %cmp.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn20 = phi i8* [ %.pn, %for.body ], [ %.pn18, %entry ]
  %va.0.in = getelementptr i8, i8* %.pn20, i64 -40
  %va_start = bitcast i8* %va.0.in to i64*
  %0 = load i64, i64* %va_start, align 8
  %1 = inttoptr i64 %0 to i8*
  %va_end = getelementptr i8, i8* %.pn20, i64 -32
  %2 = bitcast i8* %va_end to i64*
  %3 = load i64, i64* %2, align 8
  %4 = inttoptr i64 %3 to i8*
  %sub = sub i64 %3, %0
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8* noundef %1, i8* noundef %4, i64 noundef %sub) #25
  %5 = bitcast i8* %.pn20 to i8**
  %.pn = load i8*, i8** %5, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @purge_vmap_area_list to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @purge_vmap_area_lock, i64 0, i32 0, i32 0)) #25
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #22

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #19 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree nounwind readonly }
attributes #22 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nobuiltin "no-builtins" }
attributes #24 = { nounwind }
attributes #25 = { nobuiltin nounwind "no-builtins" }
attributes #26 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #27 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #28 = { cold nobuiltin nounwind "no-builtins" }
attributes #29 = { cold nobuiltin "no-builtins" }
attributes #30 = { nounwind readnone }
attributes #31 = { nounwind readonly }

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
!9 = !{i64 2154564206}
!10 = !{i64 2154569857}
!11 = !{i64 2151569618}
!12 = !{i64 2151570095, i64 2151569820, i64 2151570459, i64 2151570505, i64 2151570511, i64 2151571899, i64 2151570548, i64 2151570566, i64 2151571974, i64 2151572022, i64 2151572070, i64 2151572133, i64 2151572182, i64 2151570644, i64 2151570669, i64 2151570695, i64 2151570701, i64 2151571920, i64 2151570738, i64 2151570744, i64 2151570794, i64 2151570840, i64 2151570873}
!13 = !{i64 2151572246}
!14 = !{i64 2151572293}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2154585649}
!17 = !{i64 2154583295}
!18 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!19 = !{i64 2154599232}
!20 = !{i64 2154603256}
!21 = !{i64 2154950081}
!22 = !{i64 2154955973}
!23 = !{i64 2154959261}
!24 = !{i64 2154961015}
!25 = !{i64 2154962388}
!26 = !{i64 2154891767}
!27 = !{i64 2154893238}
!28 = !{i64 0, i64 4398046511104}
!29 = !{i64 0, i64 65}
!30 = !{i64 2154904562}
!31 = !{i8 0, i8 2}
!32 = !{i64 2154845800}
!33 = !{i64 2154847271}
!34 = !{i64 2154848846}
!35 = !{i64 2154849286}
!36 = !{i64 2154890503}
!37 = !{!"auto-init"}
!38 = !{i64 2154695828}
!39 = !{i64 2154697394}
!40 = !{i64 2154698747}
!41 = !{i64 2154682544}
!42 = !{i64 2154663948}
!43 = !{i64 2154701094}
!44 = !{i64 2154702447}
!45 = !{i64 2154703792}
!46 = !{i64 2154968432}
!47 = !{i64 2154969817}
!48 = !{i64 2154971192}
!49 = !{i64 2154986573}
!50 = !{i64 2154657336}
!51 = !{i64 2154979925}
!52 = !{i64 2154981645}
!53 = !{i64 2154989098}
!54 = !{i64 2155024439}
!55 = !{i64 1278078}
!56 = !{i64 2155026895}
!57 = !{i64 2155030097}
!58 = !{i64 2155018435}
!59 = !{i64 2155020441}
!60 = !{i64 2155021774}
!61 = !{i64 2155037692}
!62 = !{i64 2154987093}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = distinct !{!65, !64}
!66 = !{i64 2155076986}
!67 = !{i64 2155089951}
!68 = !{i64 2155091474}
!69 = !{i64 2155097046}
!70 = !{i64 2155098413}
!71 = !{i64 2155099983}
!72 = !{i64 2155102383}
!73 = !{i64 2155104036}
!74 = !{!"branch_weights", i32 2002, i32 2000}
!75 = !{i64 2154558988}
!76 = !{i64 2151598840}
!77 = !{i64 2151598889}
!78 = !{i64 2154567005}
!79 = !{i64 2148012219, i64 2148012251, i64 2148012295, i64 2148012341, i64 2148012367}
!80 = !{i64 2151394368}
!81 = !{i64 2151394793, i64 2151394537, i64 2151395145, i64 2151395191, i64 2151395197, i64 2151396585, i64 2151395234, i64 2151395252, i64 2151396654, i64 2151396702, i64 2151396750, i64 2151396813, i64 2151396862, i64 2151395330, i64 2151395355, i64 2151395381, i64 2151395387, i64 2151396606, i64 2151395424, i64 2151395430, i64 2151395480, i64 2151395526, i64 2151395559}
!82 = !{i64 2151396926}
!83 = !{i64 2151396973}
!84 = !{i64 2154576662}
!85 = !{i64 2154578216}
!86 = !{i64 2149653299}
!87 = !{i64 2149653516}
!88 = !{i64 2154776283}
!89 = !{i32 0, i32 33}
!90 = !{i64 2147931957, i64 2147932605, i64 2147932635, i64 2147932666, i64 2147932698, i64 2147932733, i64 2147932758}
!91 = !{i64 2147944842, i64 2147945356, i64 2147945386, i64 2147945412, i64 2147945444, i64 2147945473}
!92 = !{i64 2149039958, i64 2149040005, i64 2149040011, i64 2149040048, i64 2149040066, i64 2149040993, i64 2149041041, i64 2149041089, i64 2149041152, i64 2149041201, i64 2149040144, i64 2149040169, i64 2149040195, i64 2149040201, i64 2149040238, i64 2149040244, i64 2149040294, i64 2149040340, i64 2149040373}
!93 = !{i64 2154745452}
!94 = !{i64 2154767082}
!95 = !{i64 2154774313}
!96 = !{i64 2154775256}
!97 = !{i64 2150899166}
!98 = !{i64 2154688082}
!99 = !{i64 2154688954}
!100 = !{i64 2148025301, i64 2148025333, i64 2148025377, i64 2148025424, i64 2148025450}
!101 = !{i64 2149466813}
!102 = !{i64 2147986285, i64 2147986318, i64 2147986371, i64 2147986430, i64 2147986464, i64 2147986519, i64 2147986548, i64 2147986568}
!103 = !{i64 2149474094}
!104 = !{i64 2149266324}
!105 = !{i32 (%struct.page*)* @set_direct_map_default_noflush, i32 (%struct.page*)* @set_direct_map_invalid_noflush}
!106 = !{i64 2147931109, i64 2147931623, i64 2147931653, i64 2147931679, i64 2147931711, i64 2147931740}
!107 = !{i64 2153726733}
!108 = !{i64 2153728991}
!109 = !{i64 2152221640}
!110 = !{i64 2152221847}
