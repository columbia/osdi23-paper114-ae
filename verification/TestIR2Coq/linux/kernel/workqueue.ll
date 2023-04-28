; ModuleID = 'kernel/workqueue.c'
source_filename = "kernel/workqueue.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_workqueue__498_5691_wq_sysfs_init1:\09\09\09"
module asm ".long\09wq_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.cpumask = type { [4 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.lock_class_key = type {}
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.worker_pool = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, %struct.list_head, i32, i32, %struct.list_head, %struct.timer_list, %struct.timer_list, [64 x %struct.hlist_head], %struct.worker*, %struct.list_head, %struct.completion*, %struct.ida, %struct.workqueue_attrs*, %struct.hlist_node, i32, [28 x i8], %struct.atomic_t, %struct.callback_head, [40 x i8] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.worker = type { %union.anon.18, %struct.work_struct*, void (%struct.work_struct*)*, %struct.pool_workqueue*, i32, %struct.list_head, %struct.task_struct*, %struct.worker_pool*, %struct.list_head, i64, i32, i32, i32, [24 x i8], %struct.workqueue_struct*, void (%struct.work_struct*)* }
%union.anon.18 = type { %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pool_workqueue = type { %struct.worker_pool*, %struct.workqueue_struct*, i32, i32, i32, [16 x i32], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.callback_head, [56 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.page = type { i64, %union.anon.6, %union.anon.43, %struct.atomic_t, [8 x i8] }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.19, %struct.list_head, %struct.list_head, %union.anon.20 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.13, i8* }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
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
%struct.block_device = type opaque
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
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.21 }
%union.anon.21 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.22, %union.anon.23 }
%union.anon.22 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.23 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.27 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.25, %struct.qspinlock }
%union.anon.25 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.27 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type opaque
%union.anon.43 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.12, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.29 = type { %struct.callback_head }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.49, %union.anon.50, i32 }
%struct.request_queue = type opaque
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.63, i32, [12 x i8] }
%union.anon.63 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.65, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.65 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.workqueue_struct = type { %struct.list_head, %struct.list_head, %struct.mutex, i32, i32, %struct.atomic_t, %struct.wq_flusher*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.worker*, i32, i32, %struct.workqueue_attrs*, %struct.pool_workqueue*, %struct.wq_device*, [24 x i8], %struct.callback_head, [40 x i8], i32, %struct.pool_workqueue*, [0 x %struct.pool_workqueue*], [48 x i8] }
%struct.wq_flusher = type { %struct.list_head, i32, %struct.completion }
%struct.wq_device = type { %struct.workqueue_struct*, %struct.device }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.70, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.70 = type { %struct.kernfs_elem_dir }
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
%struct.ida = type { %struct.xarray }
%struct.workqueue_attrs = type { i32, [1 x %struct.cpumask], i8 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.wq_barrier = type { %struct.work_struct, %struct.completion, %struct.task_struct* }
%struct.cwt_wait = type { %struct.wait_queue_entry, %struct.work_struct* }
%struct.execute_work = type { %struct.work_struct }
%struct.apply_wqattrs_ctx = type { %struct.workqueue_struct*, %struct.workqueue_attrs*, %struct.list_head, %struct.pool_workqueue*, [0 x %struct.pool_workqueue*] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.work_for_cpu = type { %struct.work_struct, i64 (i8*)*, i8*, i64 }

@__param_str_disable_numa = internal constant [23 x i8] c"workqueue.disable_numa\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@wq_disable_numa = internal global i8 0, align 1
@__param_disable_numa = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_disable_numa, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @wq_disable_numa } }, section "__param", align 8
@__UNIQUE_ID_disable_numatype374 = internal constant [37 x i8] c"workqueue.parmtype=disable_numa:bool\00", section ".modinfo", align 1
@__param_str_power_efficient = internal constant [26 x i8] c"workqueue.power_efficient\00", align 1
@wq_power_efficient = internal global i8 0, align 4
@__param_power_efficient = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_power_efficient, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @wq_power_efficient } }, section "__param", align 8
@__UNIQUE_ID_power_efficienttype375 = internal constant [40 x i8] c"workqueue.parmtype=power_efficient:bool\00", section ".modinfo", align 1
@__param_str_debug_force_rr_cpu = internal constant [29 x i8] c"workqueue.debug_force_rr_cpu\00", align 1
@wq_debug_force_rr_cpu = internal global i8 0, align 4
@__param_debug_force_rr_cpu = internal constant %struct.kernel_param { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__param_str_debug_force_rr_cpu, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon { i8* @wq_debug_force_rr_cpu } }, section "__param", align 8
@__UNIQUE_ID_debug_force_rr_cputype376 = internal constant [43 x i8] c"workqueue.parmtype=debug_force_rr_cpu:bool\00", section ".modinfo", align 1
@wq_online = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [52 x i8] c"\014workqueue %s: %s() isn't complete after %u tries\0A\00", align 1
@__func__.drain_workqueue = private unnamed_addr constant [16 x i8] c"drain_workqueue\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@wq_pool_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wq_pool_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wq_pool_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@alloc_workqueue.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&wq->mutex\00", align 1
@workqueues = internal global %struct.list_head { %struct.list_head* @workqueues, %struct.list_head* @workqueues }, align 8
@wq_mayday_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\014%s: %s has the following busy pwq\0A\00", align 1
@__func__.destroy_workqueue = private unnamed_addr constant [18 x i8] c"destroy_workqueue\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%sWorkqueue: %s %ps\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\01c (%s)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\016Showing busy workqueues and worker pools:\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\016workqueue %s: flags=0x%x\0A\00", align 1
@worker_pool_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, i8* null }, i32 0, i32 0 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"\016pool %d:\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\01c hung=%us workers=%d\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [15 x i8] c"\01c manager: %d\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\01c %s%d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"idle: \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@wq_pool_attach_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wq_pool_attach_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @wq_pool_attach_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@cpu_worker_pools = internal global [2 x %struct.worker_pool] zeroinitializer, section ".data..percpu..shared_aligned", align 64
@wq_unbound_cpumask = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@__UNIQUE_ID___addressable_wq_sysfs_init499 = internal global i8* bitcast (i32 ()* @wq_sysfs_init to i8*), section ".discard.addressable", align 8
@wq_subsys = internal global %struct.bus_type { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @wq_sysfs_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i64)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@wq_sysfs_unbound_attrs = internal global [5 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wq_pool_ids_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wq_nice_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wq_nice_store }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wq_cpumask_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wq_cpumask_store }, %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wq_numa_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wq_numa_store }, %struct.device_attribute zeroinitializer], align 8
@__const.workqueue_init_early.std_nice = private unnamed_addr constant [2 x i32] [i32 0, i32 -20], align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"pool_workqueue\00", align 1
@pwq_cache = internal unnamed_addr global %struct.kmem_cache* null, align 8
@unbound_std_wq_attrs = internal unnamed_addr global [2 x %struct.workqueue_attrs*] zeroinitializer, align 8
@ordered_wq_attrs = internal unnamed_addr global [2 x %struct.workqueue_attrs*] zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@system_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"events_highpri\00", align 1
@system_highpri_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"events_long\00", align 1
@system_long_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"events_unbound\00", align 1
@system_unbound_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"events_freezable\00", align 1
@system_freezable_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.23 = private unnamed_addr constant [23 x i8] c"events_power_efficient\00", align 1
@system_power_efficient_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.24 = private unnamed_addr constant [33 x i8] c"events_freezable_power_efficient\00", align 1
@system_freezable_power_efficient_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, section ".data..read_mostly", align 8
@.str.25 = private unnamed_addr constant [49 x i8] c"workqueue: failed to create early rescuer for %s\00", align 1
@unbound_pool_hash = internal global [64 x %struct.hlist_head] zeroinitializer, align 8
@__queue_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"workqueue: per-cpu pwq for %s on cpu%d has 0 refcnt\00", align 1
@wq_select_unbound_cpu.printed_dbg_warning = internal unnamed_addr global i1 false, align 1
@.str.27 = private unnamed_addr constant [74 x i8] c"\014workqueue: round-robin CPU selection forced, expect performance impact\0A\00", align 1
@wq_rr_cpu_last = internal global i32 0, section ".data..percpu", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@check_flush_dependency.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"workqueue: PF_MEMALLOC task %d(%s) is flushing !WQ_MEM_RECLAIM %s:%ps\00", align 1
@check_flush_dependency.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"workqueue: WQ_MEM_RECLAIM %s:%ps is flushing !WQ_MEM_RECLAIM %s:%ps\00", align 1
@__cancel_work_timer.cancel_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @__cancel_work_timer.cancel_waitq to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @__cancel_work_timer.cancel_waitq to i8*), i64 8) to %struct.list_head*) } }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@manager_wait = internal global %struct.rcuwait zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [89 x i8] c"\014workqueue: max_active %d requested for %s is out of range, clamping between %d and %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"ordering guarantee broken for workqueue %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [78 x i8] c"\013BUG: workqueue leaked lock or atomic: %s/0x%08x/%d\0A     last function: %ps\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"\016  pwq %d:\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"\01c active=%d/%d refcnt=%d%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" MAYDAY\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\016    in-flight:\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"\01c%s %d%s:%ps\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"(RESCUER)\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"\016    pending:\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"\016    inactive:\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"\01c%s BAR(%d)\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"\01c%s %ps\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"\01c cpus=%*pbl\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"\01c node=%d\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"\01c flags=0x%x nice=%d\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"%d:%d%s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"u%d:%d\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"kworker/%s\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"kworker/dying\00", align 1
@restore_unbound_workers_cpumask.cpumask = internal global %struct.cpumask zeroinitializer, align 8
@wq_sysfs_cpumask_attr = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wq_unbound_cpumask_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wq_unbound_cpumask_store }, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"workqueue\00", align 1
@wq_sysfs_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @wq_sysfs_group, %struct.attribute_group* null], align 8
@wq_sysfs_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @wq_sysfs_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@wq_sysfs_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_per_cpu, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_active, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_per_cpu = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @per_cpu_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_max_active = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_active_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_active_store }, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c"per_cpu\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"max_active\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"pool_ids\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"numa\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"%s%d:%d\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@llvm.compiler.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_wq_sysfs_init499 to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_debug_force_rr_cputype376, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_disable_numatype374, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_power_efficienttype375, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug_force_rr_cpu to i8*), i8* bitcast (%struct.kernel_param* @__param_disable_numa to i8*), i8* bitcast (%struct.kernel_param* @__param_power_efficient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wq_worker_running(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call i8* @kthread_data(%struct.task_struct* noundef %task) #22
  %sleeping = getelementptr inbounds i8, i8* %call, i64 112
  %0 = bitcast i8* %sleeping to i32*
  %1 = load i32, i32* %0, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds i8, i8* %call, i64 104
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 8
  %and = and i32 %3, 456
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %pool = getelementptr inbounds i8, i8* %call, i64 72
  %4 = bitcast i8* %pool to %struct.worker_pool**
  %5 = load %struct.worker_pool*, %struct.worker_pool** %4, align 8
  %nr_running = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %5, i64 0, i32 21
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_running) #22
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kthread_data(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wq_worker_sleeping(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call i8* @kthread_data(%struct.task_struct* noundef %task) #22
  %flags = getelementptr inbounds i8, i8* %call, i64 104
  %0 = bitcast i8* %flags to i32*
  %1 = load i32, i32* %0, align 8
  %and = and i32 %1, 456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pool1 = getelementptr inbounds i8, i8* %call, i64 72
  %2 = bitcast i8* %pool1 to %struct.worker_pool**
  %3 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %sleeping = getelementptr inbounds i8, i8* %call, i64 112
  %4 = bitcast i8* %sleeping to i32*
  %5 = load i32, i32* %4, align 8
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 1, i32* %4, align 8
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %nr_running = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 21
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_running) #22
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 6
  %call7 = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist) #23
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %call10 = call fastcc %struct.worker* @first_idle_worker(%struct.worker_pool* noundef %3) #23
  %tobool11.not = icmp eq %struct.worker* %call10, null
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.then9
  %task13 = getelementptr inbounds %struct.worker, %struct.worker* %call10, i64 0, i32 6
  %6 = load %struct.task_struct*, %struct.task_struct** %task13, align 8
  %call14 = call i32 @wake_up_process(%struct.task_struct* noundef %6) #22
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.then12, %land.lhs.true, %if.end4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.worker* @first_idle_worker(%struct.worker_pool* noundef %pool) unnamed_addr #3 {
entry:
  %idle_list = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 9
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %idle_list) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.list_head* %idle_list to %struct.worker**
  %1 = load %struct.worker*, %struct.worker** %0, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.worker* [ %1, %if.end ], [ null, %entry ]
  ret %struct.worker* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @arch_local_irq_enable() #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void (%struct.work_struct*)* @wq_worker_last_func(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call i8* @kthread_data(%struct.task_struct* noundef %task) #22
  %last_func = getelementptr inbounds i8, i8* %call, i64 152
  %0 = bitcast i8* %last_func to void (%struct.work_struct*)**
  %1 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %0, align 8
  ret void (%struct.work_struct*)* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @queue_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  %0 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %call4 = call fastcc i1 @test_and_set_bit(i64* noundef %0) #23
  br i1 %call4, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__queue_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #23
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %1 = xor i1 %call4, true
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #23
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #22
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__queue_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end26, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @is_chained_work(%struct.workqueue_struct* noundef %wq) #23
  br i1 %call, label %if.end26, label %if.then, !prof !9

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1440; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !11
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true, %entry
  call fastcc void @__rcu_read_lock() #22
  %cmp = icmp eq i32 %cpu, 256
  %cpu_pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 20
  br label %retry

retry:                                            ; preds = %if.then101, %if.end26
  %cpu.addr.0 = phi i32 [ %cpu, %if.end26 ], [ %cpu.addr.3, %if.then101 ]
  %1 = load i32, i32* %flags, align 64
  %and28 = and i32 %1, 2
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %retry
  br i1 %cmp, label %do.body33, label %if.end40

do.body33:                                        ; preds = %if.then30
  %call38 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call38, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %call39 = call fastcc i32 @wq_select_unbound_cpu(i32 noundef %3) #23
  br label %if.end40

if.end40:                                         ; preds = %do.body33, %if.then30
  %cpu.addr.1 = phi i32 [ %call39, %do.body33 ], [ %cpu.addr.0, %if.then30 ]
  %call41 = call fastcc %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* noundef %wq) #23
  br label %if.end63

if.else:                                          ; preds = %retry
  br i1 %cmp, label %do.body45, label %do.body55

do.body45:                                        ; preds = %if.else
  %call52 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add53 = add i64 %call52, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add53 to i32*
  %5 = load i32, i32* %4, align 4
  br label %do.body55

do.body55:                                        ; preds = %if.else, %do.body45
  %cpu.addr.2 = phi i32 [ %5, %do.body45 ], [ %cpu.addr.0, %if.else ]
  %6 = load %struct.pool_workqueue*, %struct.pool_workqueue** %cpu_pwqs, align 8
  %7 = ptrtoint %struct.pool_workqueue* %6 to i64
  %idxprom = sext i32 %cpu.addr.2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %add62 = add i64 %8, %7
  %9 = inttoptr i64 %add62 to %struct.pool_workqueue*
  br label %if.end63

if.end63:                                         ; preds = %do.body55, %if.end40
  %pwq.0 = phi %struct.pool_workqueue* [ %call41, %if.end40 ], [ %9, %do.body55 ]
  %cpu.addr.3 = phi i32 [ %cpu.addr.1, %if.end40 ], [ %cpu.addr.2, %do.body55 ]
  %call64 = call fastcc %struct.worker_pool* @get_work_pool(%struct.work_struct* noundef %work) #23
  %tobool65.not = icmp eq %struct.worker_pool* %call64, null
  %pool84.phi.trans.insert = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0, i64 0, i32 0
  %.pre = load %struct.worker_pool*, %struct.worker_pool** %pool84.phi.trans.insert, align 256
  br i1 %tobool65.not, label %if.end86.sink.split, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end63
  %cmp67.not = icmp eq %struct.worker_pool* %call64, %.pre
  br i1 %cmp67.not, label %if.end86.sink.split, label %if.then69

if.then69:                                        ; preds = %land.lhs.true66
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %call64, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  %call70 = call fastcc %struct.worker* @find_worker_executing_work(%struct.worker_pool* noundef nonnull %call64, %struct.work_struct* noundef %work) #23
  %tobool71.not = icmp eq %struct.worker* %call70, null
  br i1 %tobool71.not, label %if.else78, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %if.then69
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %call70, i64 0, i32 3
  %10 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq, align 8
  %wq73 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %10, i64 0, i32 1
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq73, align 8
  %cmp74 = icmp eq %struct.workqueue_struct* %11, %wq
  br i1 %cmp74, label %if.end86, label %if.else78

if.else78:                                        ; preds = %land.lhs.true72, %if.then69
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  %12 = load %struct.worker_pool*, %struct.worker_pool** %pool84.phi.trans.insert, align 256
  br label %if.end86.sink.split

if.end86.sink.split:                              ; preds = %land.lhs.true66, %if.end63, %if.else78
  %.sink = phi %struct.worker_pool* [ %12, %if.else78 ], [ %call64, %land.lhs.true66 ], [ %.pre, %if.end63 ]
  %lock81 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %.sink, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock81) #23
  br label %if.end86

if.end86:                                         ; preds = %if.end86.sink.split, %land.lhs.true72
  %pwq.2 = phi %struct.pool_workqueue* [ %10, %land.lhs.true72 ], [ %pwq.0, %if.end86.sink.split ]
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 4
  %13 = load i32, i32* %refcnt, align 8
  %tobool87.not = icmp eq i32 %13, 0
  br i1 %tobool87.not, label %if.then97, label %if.end155, !prof !12

if.then97:                                        ; preds = %if.end86
  %14 = load i32, i32* %flags, align 64
  %and99 = and i32 %14, 2
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end104, label %if.then101

if.then101:                                       ; preds = %if.then97
  %pool102 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 0
  %15 = load %struct.worker_pool*, %struct.worker_pool** %pool102, align 256
  %lock103 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %15, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock103) #23
  call fastcc void @cpu_relax() #23
  br label %retry

if.end104:                                        ; preds = %if.then97
  %.b279 = load i1, i1* @__queue_work.__already_done, align 1
  br i1 %.b279, label %if.end155, label %if.then117, !prof !9

if.then117:                                       ; preds = %if.end104
  store i1 true, i1* @__queue_work.__already_done, align 1
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %cpu.addr.3) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1495; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !13
  br label %if.end155

if.end155:                                        ; preds = %if.end86, %if.end104, %if.then117
  %entry157 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1
  %call158 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry157) #23
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then174, label %if.end186, !prof !12

if.then174:                                       ; preds = %if.end155
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1501; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !14
  br label %out

if.end186:                                        ; preds = %if.end155
  %work_color = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 2
  %16 = load i32, i32* %work_color, align 16
  %idxprom187 = sext i32 %16 to i64
  %arrayidx188 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 5, i64 %idxprom187
  %17 = load i32, i32* %arrayidx188, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %arrayidx188, align 4
  %18 = load i32, i32* %work_color, align 16
  %call190 = call fastcc i32 @work_color_to_flags(i32 noundef %18) #23
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 6
  %19 = load i32, i32* %nr_active, align 4
  %max_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 7
  %20 = load i32, i32* %max_active, align 32
  %cmp191 = icmp slt i32 %19, %20
  br i1 %cmp191, label %if.then200, label %if.else210, !prof !9

if.then200:                                       ; preds = %if.end186
  %inc202 = add nsw i32 %19, 1
  store i32 %inc202, i32* %nr_active, align 4
  %pool203 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 0
  %21 = load %struct.worker_pool*, %struct.worker_pool** %pool203, align 256
  %worklist204 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %21, i64 0, i32 6
  %call205 = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist204) #23
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end211, label %if.then207

if.then207:                                       ; preds = %if.then200
  %22 = load volatile i64, i64* @jiffies, align 64
  %23 = load %struct.worker_pool*, %struct.worker_pool** %pool203, align 256
  %watchdog_ts = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %23, i64 0, i32 5
  store i64 %22, i64* %watchdog_ts, align 8
  br label %if.end211

if.else210:                                       ; preds = %if.end186
  %or = or i32 %call190, 2
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 8
  br label %if.end211

if.end211:                                        ; preds = %if.then200, %if.then207, %if.else210
  %work_flags.0 = phi i32 [ %call190, %if.then207 ], [ %call190, %if.then200 ], [ %or, %if.else210 ]
  %worklist.0 = phi %struct.list_head* [ %worklist204, %if.then207 ], [ %worklist204, %if.then200 ], [ %inactive_works, %if.else210 ]
  call fastcc void @insert_work(%struct.pool_workqueue* noundef %pwq.2, %struct.work_struct* noundef %work, %struct.list_head* noundef %worklist.0, i32 noundef %work_flags.0) #23
  br label %out

out:                                              ; preds = %if.then174, %if.end211
  %pool212 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.2, i64 0, i32 0
  %24 = load %struct.worker_pool*, %struct.worker_pool** %pool212, align 256
  %lock213 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %24, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock213) #23
  call fastcc void @rcu_read_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %if.then, %out
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #24, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @queue_work_node(i32 noundef %node, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags1, align 64
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1623; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i64 @arch_local_irq_save() #23
  %1 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %call22 = call fastcc i1 @test_and_set_bit(i64* noundef %1) #23
  br i1 %call22, label %do.body27, label %if.then23

if.then23:                                        ; preds = %if.end
  call fastcc void @__queue_work(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #23
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %if.end
  %2 = xor i1 %call22, true
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1, i32 0, i32 1
  %cpu = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 10
  %0 = bitcast %struct.hlist_node*** %cpu to i32*
  %1 = load i32, i32* %0, align 8
  %wq = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 9
  %2 = bitcast %struct.hlist_node*** %wq to %struct.workqueue_struct**
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %work = bitcast %struct.hlist_node*** %add.ptr to %struct.work_struct*
  call fastcc void @__queue_work(i32 noundef %1, %struct.workqueue_struct* noundef %3, %struct.work_struct* noundef %work) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @queue_delayed_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  %0 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0, i32 0, i32 0
  %call5 = call fastcc i1 @test_and_set_bit(i64* noundef %0) #23
  br i1 %call5, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__queue_delayed_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #23
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %1 = xor i1 %call5, true
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__queue_delayed_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #0 {
entry:
  %timer1 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 1
  %work2 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  %tobool.not = icmp eq %struct.workqueue_struct* %wq, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1654; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %function = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 1, i32 2
  %0 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function, align 8
  %cmp.not = icmp eq void (%struct.timer_list*)* %0, @delayed_work_timer_fn
  br i1 %cmp.not, label %if.end33, label %if.then32, !prof !9

if.then32:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1655; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !18
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer1) #23
  %tobool43.not = icmp eq i32 %call, 0
  br i1 %tobool43.not, label %if.end57, label %if.then56, !prof !9

if.then56:                                        ; preds = %if.end33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1656; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !19
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end33
  %entry67 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0, i32 1
  %call68 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry67) #23
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then84, label %if.end85, !prof !12

if.then84:                                        ; preds = %if.end57
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1657; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !20
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end57
  %tobool94.not = icmp eq i64 %delay, 0
  br i1 %tobool94.not, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end85
  call fastcc void @__queue_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work2) #23
  br label %cleanup

if.end97:                                         ; preds = %if.end85
  %wq98 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 2
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq98, align 8
  %cpu99 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 3
  store i32 %cpu, i32* %cpu99, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %1, %delay
  %expires = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 1, i32 1
  store i64 %add, i64* %expires, align 8
  %cmp100.not = icmp eq i32 %cpu, 256
  br i1 %cmp100.not, label %if.else, label %if.then109, !prof !9

if.then109:                                       ; preds = %if.end97
  call void @add_timer_on(%struct.timer_list* noundef %timer1, i32 noundef %cpu) #22
  br label %cleanup

if.else:                                          ; preds = %if.end97
  call void @add_timer(%struct.timer_list* noundef %timer1) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.else, %if.then95
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @mod_delayed_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store i64 0, i64* %flags, align 8, !annotation !21
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call fastcc i32 @try_to_grab_pending(%struct.work_struct* noundef %work, i1 noundef true, i64* noundef nonnull %flags) #23
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %do.body, label %do.end, !prof !12

do.end:                                           ; preds = %do.body
  %cmp2 = icmp sgt i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %do.end
  call fastcc void @__queue_delayed_work(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #23
  %1 = load i64, i64* %flags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %tobool22 = icmp ne i32 %call, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret i1 %tobool22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_grab_pending(%struct.work_struct* noundef %work, i1 noundef %is_dwork, i64* nocapture noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  store i64 %call, i64* %flags, align 8
  br i1 %is_dwork, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call4 = call fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef %work) #23
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %call4, i64 0, i32 1
  %call5 = call i32 @del_timer(%struct.timer_list* noundef %timer) #22
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %cleanup51

if.end11:                                         ; preds = %if.then, %entry
  %0 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %call12 = call fastcc i1 @test_and_set_bit(i64* noundef %0) #23
  br i1 %call12, label %if.end14, label %cleanup51

if.end14:                                         ; preds = %if.end11
  call fastcc void @__rcu_read_lock() #22
  %call15 = call fastcc %struct.worker_pool* @get_work_pool(%struct.work_struct* noundef %work) #23
  %tobool16.not = icmp eq %struct.worker_pool* %call15, null
  br i1 %tobool16.not, label %fail, label %if.end18

if.end18:                                         ; preds = %if.end14
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %call15, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  %call19 = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) #23
  %tobool20.not = icmp eq %struct.pool_workqueue* %call19, null
  br i1 %tobool20.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %pool21 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call19, i64 0, i32 0
  %1 = load %struct.worker_pool*, %struct.worker_pool** %pool21, align 256
  %cmp22 = icmp eq %struct.worker_pool* %1, %call15
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %land.lhs.true
  %2 = load i64, i64* %0, align 8
  %and = and i64 %2, 2
  %tobool26.not = icmp eq i64 %and, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.then24
  call fastcc void @pwq_activate_inactive_work(%struct.work_struct* noundef %work) #23
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then24
  %entry29 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %entry29) #23
  %3 = load i64, i64* %0, align 8
  call fastcc void @pwq_dec_nr_in_flight(%struct.pool_workqueue* noundef nonnull %call19, i64 noundef %3) #23
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %call15, i64 0, i32 3
  %4 = load i32, i32* %id, align 4
  call fastcc void @set_work_pool_and_keep_pending(%struct.work_struct* noundef %work, i32 noundef %4) #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @rcu_read_unlock() #23
  br label %cleanup51

if.end32:                                         ; preds = %land.lhs.true, %if.end18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  br label %fail

fail:                                             ; preds = %if.end14, %if.end32
  call fastcc void @rcu_read_unlock() #23
  %5 = load i64, i64* %flags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %5) #23
  %call48 = call fastcc i1 @work_is_canceling(%struct.work_struct* noundef %work) #23
  br i1 %call48, label %cleanup51, label %if.end50

if.end50:                                         ; preds = %fail
  call fastcc void @cpu_relax() #23
  br label %cleanup51

cleanup51:                                        ; preds = %fail, %if.end11, %if.then, %if.end50, %if.end28
  %retval.1 = phi i32 [ 1, %if.end28 ], [ -11, %if.end50 ], [ 1, %if.then ], [ 0, %if.end11 ], [ -2, %fail ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @queue_rcu_work(%struct.workqueue_struct* noundef %wq, %struct.rcu_work* noundef %rwork) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %rwork, i64 0, i32 0, i32 0, i32 0
  %call = call fastcc i1 @test_and_set_bit(i64* noundef %0) #23
  br i1 %call, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %wq2 = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %rwork, i64 0, i32 2
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq2, align 8
  %rcu = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %rwork, i64 0, i32 1
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @rcu_work_rcufn) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %1 = xor i1 %call, true
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_work_rcufn(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr10 = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -2
  call fastcc void @arch_local_irq_disable() #23
  %wq = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 1
  %0 = bitcast %struct.callback_head* %wq to %struct.workqueue_struct**
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %0, align 8
  %work = bitcast %struct.callback_head* %add.ptr10 to %struct.work_struct*
  call fastcc void @__queue_work(i32 noundef 256, %struct.workqueue_struct* noundef %1, %struct.work_struct* noundef %work) #23
  call fastcc void @arch_local_irq_enable() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_workqueue(%struct.workqueue_struct* noundef %wq) local_unnamed_addr #0 {
entry:
  %this_flusher = alloca %struct.wq_flusher, align 8
  %0 = bitcast %struct.wq_flusher* %this_flusher to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #24
  %1 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 40, i1 false), !annotation !21
  %list = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 0
  %next = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  %flush_color = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 1
  store i32 -1, i32* %flush_color, align 8
  %done = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %this_flusher, i64 0, i32 2
  call fastcc void @init_completion(%struct.completion* noundef %done) #23
  %.b520 = load i1, i1* @wq_online, align 1
  br i1 %.b520, label %do.end26, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2814; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !22
  br label %cleanup421

do.end26:                                         ; preds = %entry
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %work_color = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 3
  %3 = load i32, i32* %work_color, align 64
  %call = call fastcc i32 @work_next_color(i32 noundef %3) #23
  %flush_color27 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 4
  %4 = load i32, i32* %flush_color27, align 4
  %cmp.not = icmp eq i32 %call, %4
  %flusher_overflow130 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 8
  br i1 %cmp.not, label %if.else128, label %if.then29

if.then29:                                        ; preds = %do.end26
  %call31 = call fastcc i32 @list_empty(%struct.list_head* noundef %flusher_overflow130) #23
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then47, label %if.end48, !prof !12

if.then47:                                        ; preds = %if.then29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2833; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !23
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then29
  %5 = load i32, i32* %work_color, align 64
  store i32 %5, i32* %flush_color, align 8
  store i32 %call, i32* %work_color, align 64
  %first_flusher = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 6
  %6 = load %struct.wq_flusher*, %struct.wq_flusher** %first_flusher, align 16
  %tobool60.not = icmp eq %struct.wq_flusher* %6, null
  %7 = load i32, i32* %flush_color27, align 4
  %cmp65.not = icmp eq i32 %7, %5
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end48
  br i1 %cmp65.not, label %if.end80, label %if.then79, !prof !9

if.then79:                                        ; preds = %if.then61
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2839; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !24
  %.pre = load i32, i32* %flush_color27, align 4
  %.pre537 = load i32, i32* %work_color, align 64
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.then61
  %8 = phi i32 [ %.pre537, %if.then79 ], [ %call, %if.then61 ]
  %9 = phi i32 [ %.pre, %if.then79 ], [ %5, %if.then61 ]
  store %struct.wq_flusher* %this_flusher, %struct.wq_flusher** %first_flusher, align 16
  %call92 = call fastcc i1 @flush_workqueue_prep_pwqs(%struct.workqueue_struct* noundef %wq, i32 noundef %9, i32 noundef %8) #23
  br i1 %call92, label %if.end131, label %if.then93

if.then93:                                        ; preds = %if.end80
  store i32 %call, i32* %flush_color27, align 4
  store %struct.wq_flusher* null, %struct.wq_flusher** %first_flusher, align 16
  br label %out_unlock

if.else:                                          ; preds = %if.end48
  br i1 %cmp65.not, label %if.then114, label %if.end115, !prof !12

if.then114:                                       ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2852; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !25
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.else
  %flusher_queue = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 7
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef %flusher_queue) #23
  %10 = load i32, i32* %work_color, align 64
  %call126 = call fastcc i1 @flush_workqueue_prep_pwqs(%struct.workqueue_struct* noundef %wq, i32 noundef -1, i32 noundef %10) #23
  br label %if.end131

if.else128:                                       ; preds = %do.end26
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %list, %struct.list_head* noundef %flusher_overflow130) #23
  br label %if.end131

if.end131:                                        ; preds = %if.end115, %if.end80, %if.else128
  call fastcc void @check_flush_dependency(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef null) #23
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  call void @wait_for_completion(%struct.completion* noundef %done) #22
  %first_flusher138 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 6
  %11 = load volatile %struct.wq_flusher*, %struct.wq_flusher** %first_flusher138, align 16
  %cmp139.not = icmp eq %struct.wq_flusher* %11, %this_flusher
  br i1 %cmp139.not, label %if.end142, label %cleanup421

if.end142:                                        ; preds = %if.end131
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %12 = load %struct.wq_flusher*, %struct.wq_flusher** %first_flusher138, align 16
  %cmp145.not = icmp eq %struct.wq_flusher* %12, %this_flusher
  br i1 %cmp145.not, label %do.body153, label %out_unlock

do.body153:                                       ; preds = %if.end142
  store volatile %struct.wq_flusher* null, %struct.wq_flusher** %first_flusher138, align 16
  %call161 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %list) #23
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then177, label %if.end178, !prof !12

if.then177:                                       ; preds = %do.body153
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2888; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !26
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %do.body153
  %13 = load i32, i32* %flush_color27, align 4
  %14 = load i32, i32* %flush_color, align 8
  %cmp190.not = icmp eq i32 %13, %14
  br i1 %cmp190.not, label %if.end205, label %if.then204, !prof !9

if.then204:                                       ; preds = %if.end178
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2889; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !27
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end178
  %flusher_queue216 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 7
  %15 = bitcast %struct.list_head* %flusher_queue216 to %struct.wq_flusher**
  %flusher_overflow253 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 8
  %16 = bitcast %struct.list_head* %flusher_overflow253 to %struct.wq_flusher**
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end205
  %17 = load %struct.wq_flusher*, %struct.wq_flusher** %15, align 8
  %list230525 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %17, i64 0, i32 0
  %cmp232.not526 = icmp eq %struct.list_head* %list230525, %flusher_queue216
  br i1 %cmp232.not526, label %for.end, label %for.body

for.body:                                         ; preds = %while.cond, %if.end241
  %list230529 = phi %struct.list_head* [ %list230, %if.end241 ], [ %list230525, %while.cond ]
  %next214.0527 = phi %struct.wq_flusher* [ %tmp215.0528, %if.end241 ], [ %17, %while.cond ]
  %tmp215.0528.in = bitcast %struct.wq_flusher* %next214.0527 to %struct.wq_flusher**
  %tmp215.0528 = load %struct.wq_flusher*, %struct.wq_flusher** %tmp215.0528.in, align 8
  %flush_color236 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %next214.0527, i64 0, i32 1
  %18 = load i32, i32* %flush_color236, align 8
  %19 = load i32, i32* %flush_color27, align 4
  %cmp238.not = icmp eq i32 %18, %19
  br i1 %cmp238.not, label %if.end241, label %for.end

if.end241:                                        ; preds = %for.body
  call fastcc void @list_del_init(%struct.list_head* noundef %list230529) #23
  %done243 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %next214.0527, i64 0, i32 2
  call void @complete(%struct.completion* noundef %done243) #22
  %list230 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %tmp215.0528, i64 0, i32 0
  %cmp232.not = icmp eq %struct.list_head* %list230, %flusher_queue216
  br i1 %cmp232.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end241, %for.body, %while.cond
  %next214.0.lcssa = phi %struct.wq_flusher* [ %17, %while.cond ], [ %next214.0527, %for.body ], [ %tmp215.0528, %if.end241 ]
  %list230.lcssa = phi %struct.list_head* [ %flusher_queue216, %while.cond ], [ %list230529, %for.body ], [ %flusher_queue216, %if.end241 ]
  %call254 = call fastcc i32 @list_empty(%struct.list_head* noundef %flusher_overflow253) #23
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %land.rhs, label %if.end274

land.rhs:                                         ; preds = %for.end
  %20 = load i32, i32* %flush_color27, align 4
  %21 = load i32, i32* %work_color, align 64
  %call258 = call fastcc i32 @work_next_color(i32 noundef %21) #23
  %cmp259.not = icmp eq i32 %20, %call258
  br i1 %cmp259.not, label %if.end274, label %if.then273, !prof !9

if.then273:                                       ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2903; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !28
  br label %if.end274

if.end274:                                        ; preds = %for.end, %if.then273, %land.rhs
  %22 = load i32, i32* %flush_color27, align 4
  %call284 = call fastcc i32 @work_next_color(i32 noundef %22) #23
  store i32 %call284, i32* %flush_color27, align 4
  %call287 = call fastcc i32 @list_empty(%struct.list_head* noundef %flusher_overflow253) #23
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.then289, label %if.end325

if.then289:                                       ; preds = %if.end274
  %tmp215.1533 = load %struct.wq_flusher*, %struct.wq_flusher** %16, align 8
  %list299534 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %tmp215.1533, i64 0, i32 0
  %cmp301.not535 = icmp eq %struct.list_head* %list299534, %flusher_overflow253
  br i1 %cmp301.not535, label %for.end317, label %for.body305

for.body305:                                      ; preds = %if.then289, %for.body305
  %tmp215.1536 = phi %struct.wq_flusher* [ %tmp215.1, %for.body305 ], [ %tmp215.1533, %if.then289 ]
  %23 = load i32, i32* %work_color, align 64
  %flush_color307 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %tmp215.1536, i64 0, i32 1
  store i32 %23, i32* %flush_color307, align 8
  %24 = bitcast %struct.wq_flusher* %tmp215.1536 to %struct.wq_flusher**
  %tmp215.1 = load %struct.wq_flusher*, %struct.wq_flusher** %24, align 8
  %list299 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %tmp215.1, i64 0, i32 0
  %cmp301.not = icmp eq %struct.list_head* %list299, %flusher_overflow253
  br i1 %cmp301.not, label %for.end317, label %for.body305

for.end317:                                       ; preds = %for.body305, %if.then289
  %25 = load i32, i32* %work_color, align 64
  %call319 = call fastcc i32 @work_next_color(i32 noundef %25) #23
  store i32 %call319, i32* %work_color, align 64
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %flusher_overflow253, %struct.list_head* noundef %flusher_queue216) #23
  %26 = load i32, i32* %work_color, align 64
  %call324 = call fastcc i1 @flush_workqueue_prep_pwqs(%struct.workqueue_struct* noundef %wq, i32 noundef -1, i32 noundef %26) #23
  br label %if.end325

if.end325:                                        ; preds = %for.end317, %if.end274
  %call327 = call fastcc i32 @list_empty(%struct.list_head* noundef %flusher_queue216) #23
  %tobool328.not = icmp eq i32 %call327, 0
  %27 = load i32, i32* %flush_color27, align 4
  %28 = load i32, i32* %work_color, align 64
  %cmp361 = icmp eq i32 %27, %28
  br i1 %tobool328.not, label %if.end357, label %if.then329

if.then329:                                       ; preds = %if.end325
  br i1 %cmp361, label %out_unlock, label %if.then347, !prof !9

if.then347:                                       ; preds = %if.then329
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2927; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !29
  br label %out_unlock

if.end357:                                        ; preds = %if.end325
  br i1 %cmp361, label %if.then375, label %if.end376, !prof !12

if.then375:                                       ; preds = %if.end357
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2935; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !30
  %.pre538 = load i32, i32* %flush_color27, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.then375, %if.end357
  %29 = phi i32 [ %.pre538, %if.then375 ], [ %27, %if.end357 ]
  %flush_color387 = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %next214.0.lcssa, i64 0, i32 1
  %30 = load i32, i32* %flush_color387, align 8
  %cmp388.not = icmp eq i32 %29, %30
  br i1 %cmp388.not, label %if.end403, label %if.then402, !prof !9

if.then402:                                       ; preds = %if.end376
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2936; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !31
  br label %if.end403

if.end403:                                        ; preds = %if.then402, %if.end376
  call fastcc void @list_del_init(%struct.list_head* noundef %list230.lcssa) #23
  store %struct.wq_flusher* %next214.0.lcssa, %struct.wq_flusher** %first_flusher138, align 16
  %31 = load i32, i32* %flush_color27, align 4
  %call415 = call fastcc i1 @flush_workqueue_prep_pwqs(%struct.workqueue_struct* noundef %wq, i32 noundef %31, i32 noundef -1) #23
  br i1 %call415, label %out_unlock, label %cleanup

cleanup:                                          ; preds = %if.end403
  store %struct.wq_flusher* null, %struct.wq_flusher** %first_flusher138, align 16
  br label %while.cond

out_unlock:                                       ; preds = %if.end403, %if.then329, %if.then347, %if.end142, %if.then93
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  br label %cleanup421

cleanup421:                                       ; preds = %if.then, %if.end131, %out_unlock
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @work_next_color(i32 noundef %color) unnamed_addr #6 {
entry:
  %add = add i32 %color, 1
  %rem = srem i32 %add, 16
  ret i32 %rem
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @flush_workqueue_prep_pwqs(%struct.workqueue_struct* noundef %wq, i32 noundef %flush_color, i32 noundef %work_color) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %flush_color, -1
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %counter.i = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 5, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then8, !prof !9

if.then8:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2765; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  store volatile i32 1, i32* %counter.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0
  %next = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 0
  %.pn149 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %pwq.0.in150 = getelementptr %struct.list_head, %struct.list_head* %.pn149, i64 -8, i32 1
  %pwqs_node152 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in150, i64 15
  %1 = bitcast %struct.list_head** %pwqs_node152 to %struct.list_head*
  %cmp24.not153 = icmp eq %struct.list_head* %pwqs, %1
  br i1 %cmp24.not153, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end17
  %idxprom148 = zext i32 %flush_color to i64
  %nr_pwqs_to_flush59 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 5
  %cmp62 = icmp sgt i32 %work_color, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end93
  %pwqs_node157 = phi %struct.list_head** [ %pwqs_node152, %for.body.lr.ph ], [ %pwqs_node, %if.end93 ]
  %pwq.0.in155 = phi %struct.list_head** [ %pwq.0.in150, %for.body.lr.ph ], [ %pwq.0.in, %if.end93 ]
  %wait.0.off0154 = phi i1 [ false, %for.body.lr.ph ], [ %wait.1.off0, %if.end93 ]
  %pwq.0156 = bitcast %struct.list_head** %pwq.0.in155 to %struct.pool_workqueue*
  %pool26 = bitcast %struct.list_head** %pwq.0.in155 to %struct.worker_pool**
  %2 = load %struct.worker_pool*, %struct.worker_pool** %pool26, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  br i1 %cmp, label %if.then29, label %if.end61

if.then29:                                        ; preds = %for.body
  %flush_color31 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0156, i64 0, i32 3
  %3 = load i32, i32* %flush_color31, align 4
  %cmp32.not = icmp eq i32 %3, -1
  br i1 %cmp32.not, label %if.end47, label %if.then46, !prof !9

if.then46:                                        ; preds = %if.then29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2775; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !33
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then29
  %arrayidx = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0156, i64 0, i32 5, i64 %idxprom148
  %4 = load i32, i32* %arrayidx, align 4
  %tobool56.not = icmp eq i32 %4, 0
  br i1 %tobool56.not, label %if.end61, label %if.then57

if.then57:                                        ; preds = %if.end47
  store i32 %flush_color, i32* %flush_color31, align 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_pwqs_to_flush59) #22
  br label %if.end61

if.end61:                                         ; preds = %if.end47, %if.then57, %for.body
  %wait.1.off0 = phi i1 [ true, %if.then57 ], [ %wait.0.off0154, %if.end47 ], [ %wait.0.off0154, %for.body ]
  br i1 %cmp62, label %if.then64, label %if.end93

if.then64:                                        ; preds = %if.end61
  %work_color66 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in155, i64 2
  %5 = bitcast %struct.list_head** %work_color66 to i32*
  %6 = load i32, i32* %5, align 16
  %call67 = call fastcc i32 @work_next_color(i32 noundef %6) #23
  %cmp68.not = icmp eq i32 %call67, %work_color
  br i1 %cmp68.not, label %if.end83, label %if.then82, !prof !9

if.then82:                                        ; preds = %if.then64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2785; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !34
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then64
  store i32 %work_color, i32* %5, align 16
  br label %if.end93

if.end93:                                         ; preds = %if.end83, %if.end61
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %.pn = load volatile %struct.list_head*, %struct.list_head** %pwqs_node157, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %7 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %cmp24.not = icmp eq %struct.list_head* %pwqs, %7
  br i1 %cmp24.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end93, %if.end17
  %wait.0.off0.lcssa = phi i1 [ false, %if.end17 ], [ %wait.1.off0, %if.end93 ]
  br i1 %cmp, label %land.lhs.true, label %if.end113

land.lhs.true:                                    ; preds = %for.end
  %nr_pwqs_to_flush109 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 5
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_pwqs_to_flush109) #22
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then112, label %if.end113

if.then112:                                       ; preds = %land.lhs.true
  %first_flusher = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 6
  %8 = load %struct.wq_flusher*, %struct.wq_flusher** %first_flusher, align 16
  %done = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %8, i64 0, i32 2
  call void @complete(%struct.completion* noundef %done) #22
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %land.lhs.true, %for.end
  ret i1 %wait.0.off0.lcssa
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_flush_dependency(%struct.workqueue_struct* noundef %target_wq, %struct.work_struct* noundef readonly %target_work) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.work_struct* %target_work, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %target_work, i64 0, i32 2
  %0 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %func, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi void (%struct.work_struct*)* [ %0, %cond.true ], [ null, %entry ]
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %target_wq, i64 0, i32 19
  %1 = load i32, i32* %flags, align 64
  %and = and i32 %1, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %call = call fastcc %struct.worker* @current_wq_worker() #23
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags3, align 4
  %and4 = and i32 %4, 2048
  %tobool5 = icmp ne i32 %and4, 0
  %.b136 = load i1, i1* @check_flush_dependency.__already_done, align 1
  %lnot9 = xor i1 %.b136, true
  %5 = select i1 %tobool5, i1 %lnot9, i1 false
  br i1 %5, label %if.then13, label %if.end40, !prof !12

if.then13:                                        ; preds = %if.end
  store i1 true, i1* @check_flush_dependency.__already_done, align 1
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 50
  %6 = load i32, i32* %pid, align 32
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %arraydecay26 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %target_wq, i64 0, i32 16, i64 0
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), i32 noundef %6, i8* noundef %arraydecay, i8* noundef %arraydecay26, void (%struct.work_struct*)* noundef %cond) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2635; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !36
  br label %if.end40

if.end40:                                         ; preds = %if.then13, %if.end
  %tobool50.not = icmp eq %struct.worker* %call, null
  br i1 %tobool50.not, label %cleanup, label %land.end55

land.end55:                                       ; preds = %if.end40
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 3
  %7 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq, align 8
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %7, i64 0, i32 1
  %8 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %flags52 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %8, i64 0, i32 19
  %9 = load i32, i32* %flags52, align 64
  %and53 = and i32 %9, 262152
  %cmp = icmp eq i32 %and53, 8
  %.b135137 = load i1, i1* @check_flush_dependency.__already_done.32, align 1
  %lnot65 = xor i1 %.b135137, true
  %10 = select i1 %cmp, i1 %lnot65, i1 false
  br i1 %10, label %if.then75, label %cleanup, !prof !12

if.then75:                                        ; preds = %land.end55
  store i1 true, i1* @check_flush_dependency.__already_done.32, align 1
  %arraydecay93 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %8, i64 0, i32 16, i64 0
  %current_func = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 2
  %11 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %arraydecay95 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %target_wq, i64 0, i32 16, i64 0
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i64 0, i64 0), i8* noundef %arraydecay93, void (%struct.work_struct*)* noundef %11, i8* noundef %arraydecay95, void (%struct.work_struct*)* noundef %cond) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2640; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.end55, %if.then75, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drain_workqueue(%struct.workqueue_struct* noundef %wq) local_unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %nr_drainers = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 11
  %0 = load i32, i32* %nr_drainers, align 16
  %inc = add i32 %0, 1
  store i32 %inc, i32* %nr_drainers, align 16
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %1 = load i32, i32* %flags, align 64
  %or = or i32 %1, 65536
  store i32 %or, i32* %flags, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0
  %next = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 0
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  br label %reflush

reflush.loopexit:                                 ; preds = %lor.lhs.false, %do.end22
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  br label %reflush

reflush:                                          ; preds = %reflush.loopexit, %if.end
  %flush_cnt.0 = phi i32 [ 0, %if.end ], [ %inc15, %reflush.loopexit ]
  call void @flush_workqueue(%struct.workqueue_struct* noundef %wq) #23
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  br label %for.cond

for.cond:                                         ; preds = %land.rhs, %reflush
  %.pn.in = phi %struct.list_head** [ %next, %reflush ], [ %pwqs_node, %land.rhs ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %2 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %pwqs, %2
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pwq.0 = bitcast %struct.list_head** %pwq.0.in to %struct.pool_workqueue*
  %pool = bitcast %struct.list_head** %pwq.0.in to %struct.worker_pool**
  %3 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0, i64 0, i32 6
  %4 = load i32, i32* %nr_active, align 4
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %land.rhs, label %if.end14.critedge

land.rhs:                                         ; preds = %for.body
  %inactive_works = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 13
  %5 = bitcast %struct.list_head** %inactive_works to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %5) #23
  %tobool9.not = icmp eq i32 %call, 0
  %6 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock11 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %6, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock11) #23
  br i1 %tobool9.not, label %if.end14, label %for.cond

if.end14.critedge:                                ; preds = %for.body
  %pool.le = bitcast %struct.list_head** %pwq.0.in to %struct.worker_pool**
  %7 = load %struct.worker_pool*, %struct.worker_pool** %pool.le, align 256
  %lock11.c = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock11.c) #23
  br label %if.end14

if.end14:                                         ; preds = %land.rhs, %if.end14.critedge
  %inc15 = add i32 %flush_cnt.0, 1
  %cmp16 = icmp eq i32 %inc15, 10
  br i1 %cmp16, label %do.end22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %rem = urem i32 %inc15, 100
  %cmp17 = icmp eq i32 %rem, 0
  %cmp18 = icmp ult i32 %inc15, 1001
  %or.cond = and i1 %cmp18, %cmp17
  br i1 %or.cond, label %do.end22, label %reflush.loopexit

do.end22:                                         ; preds = %if.end14, %lor.lhs.false
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.drain_workqueue, i64 0, i64 0), i32 noundef %inc15) #26
  br label %reflush.loopexit

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %nr_drainers, align 16
  %dec = add i32 %8, -1
  store i32 %dec, i32* %nr_drainers, align 16
  %tobool40.not = icmp eq i32 %dec, 0
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.end
  %flags42 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %9 = load i32, i32* %flags42, align 64
  %and = and i32 %9, -65537
  store i32 %and, i32* %flags42, align 64
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.end
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @flush_work(%struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__flush_work(%struct.work_struct* noundef %work, i1 noundef false) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__flush_work(%struct.work_struct* noundef %work, i1 noundef %from_cancel) unnamed_addr #0 {
entry:
  %barr = alloca %struct.wq_barrier, align 8
  %0 = bitcast %struct.wq_barrier* %barr to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !21
  %.b63 = load i1, i1* @wq_online, align 1
  br i1 %.b63, label %if.end18, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3071; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !38
  br label %cleanup

if.end18:                                         ; preds = %entry
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 2
  %1 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %func, align 8
  %tobool20.not = icmp eq void (%struct.work_struct*)* %1, null
  br i1 %tobool20.not, label %if.then35, label %if.end47, !prof !12

if.then35:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3074; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !39
  br label %cleanup

if.end47:                                         ; preds = %if.end18
  %call = call fastcc i1 @start_flush_work(%struct.work_struct* noundef %work, %struct.wq_barrier* noundef nonnull %barr, i1 noundef %from_cancel) #23
  br i1 %call, label %if.then55, label %cleanup

if.then55:                                        ; preds = %if.end47
  %done = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 1
  call void @wait_for_completion(%struct.completion* noundef %done) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then, %if.end47, %if.then55
  %retval.0 = phi i1 [ true, %if.then55 ], [ false, %if.then ], [ false, %if.then35 ], [ false, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #24
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @cancel_work_sync(%struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__cancel_work_timer(%struct.work_struct* noundef %work, i1 noundef false) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__cancel_work_timer(%struct.work_struct* noundef %work, i1 noundef %is_dwork) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %cwait = alloca %struct.cwt_wait, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store i64 0, i64* %flags, align 8, !annotation !21
  %1 = bitcast %struct.cwt_wait* %cwait to i8*
  %wait = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 0
  %private = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 0, i32 1
  %2 = bitcast i8** %private to %struct.task_struct**
  %func = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 0, i32 2
  %entry7 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 0, i32 3
  %flags9 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 0, i32 0
  %work12 = getelementptr inbounds %struct.cwt_wait, %struct.cwt_wait* %cwait, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond19, %entry
  %call = call fastcc i32 @try_to_grab_pending(%struct.work_struct* noundef %work, i1 noundef %is_dwork, i64* noundef nonnull %flags) #23
  %cmp = icmp eq i32 %call, -2
  br i1 %cmp, label %if.then, label %do.cond19, !prof !12

if.then:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !21
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %4 = inttoptr i64 %3 to %struct.task_struct*
  store %struct.task_struct* %4, %struct.task_struct** %2, align 8
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry7) #23
  store i32 0, i32* %flags9, align 8
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @cwt_wakefn, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work12, align 8
  %call14 = call i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef nonnull @__cancel_work_timer.cancel_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #22
  %call15 = call fastcc i1 @work_is_canceling(%struct.work_struct* noundef %work) #23
  br i1 %call15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  call void @schedule() #22
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @__cancel_work_timer.cancel_waitq, %struct.wait_queue_entry* noundef nonnull %wait) #22
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #24
  br label %do.cond19

do.cond19:                                        ; preds = %do.body, %if.end
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %do.body, label %do.end29, !prof !12

do.end29:                                         ; preds = %do.cond19
  call fastcc void @mark_work_canceling(%struct.work_struct* noundef %work) #23
  %5 = load i64, i64* %flags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %5) #23
  %.b59 = load i1, i1* @wq_online, align 1
  br i1 %.b59, label %if.then42, label %if.end44

if.then42:                                        ; preds = %do.end29
  %call43 = call fastcc i1 @__flush_work(%struct.work_struct* noundef %work, i1 noundef true) #23
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %do.end29
  call fastcc void @clear_work_data(%struct.work_struct* noundef %work) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !40
  %call45 = call fastcc i32 @waitqueue_active() #23
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  %6 = bitcast %struct.work_struct* %work to i8*
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @__cancel_work_timer.cancel_waitq, i32 noundef 3, i32 noundef 1, i8* noundef %6) #22
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44
  %tobool49 = icmp ne i32 %call, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret i1 %tobool49
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @flush_delayed_work(%struct.delayed_work* noundef %dwork) local_unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #23
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 1
  %call = call i32 @del_timer_sync(%struct.timer_list* noundef %timer) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 3
  %0 = load i32, i32* %cpu, align 8
  %wq = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 2
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  call fastcc void @__queue_work(i32 noundef %0, %struct.workqueue_struct* noundef %1, %struct.work_struct* noundef %work) #23
  br label %do.body1

do.body1:                                         ; preds = %entry, %if.then
  call fastcc void @arch_local_irq_enable() #23
  %work3 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  %call4 = call i1 @flush_work(%struct.work_struct* noundef %work3) #23
  ret i1 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #23
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #24, !srcloc !41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #24, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @flush_rcu_work(%struct.rcu_work* noundef %rwork) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %rwork, i64 0, i32 0
  %0 = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %rwork, i64 0, i32 0, i32 0, i32 0
  %1 = load volatile i64, i64* %0, align 8
  %conv.i7 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @rcu_barrier() #22
  %call2 = call i1 @flush_work(%struct.work_struct* noundef %work) #23
  br label %return

if.else:                                          ; preds = %entry
  %call4 = call i1 @flush_work(%struct.work_struct* noundef %work) #23
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %call4, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @cancel_delayed_work(%struct.delayed_work* noundef %dwork) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  %call = call fastcc i1 @__cancel_work(%struct.work_struct* noundef %work) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__cancel_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store i64 0, i64* %flags, align 8, !annotation !21
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call fastcc i32 @try_to_grab_pending(%struct.work_struct* noundef %work, i1 noundef true, i64* noundef nonnull %flags) #23
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %do.body, label %do.end, !prof !12

do.end:                                           ; preds = %do.body
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end, !prof !12

if.end:                                           ; preds = %do.end
  %call12 = call fastcc i32 @get_work_pool_id(%struct.work_struct* noundef %work) #23
  call fastcc void @set_work_pool_and_clear_pending(%struct.work_struct* noundef %work, i32 noundef %call12) #23
  %1 = load i64, i64* %flags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %1) #23
  %tobool24 = icmp ne i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end
  %retval.0 = phi i1 [ %tobool24, %if.end ], [ false, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @cancel_delayed_work_sync(%struct.delayed_work* noundef %dwork) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %dwork, i64 0, i32 0
  %call = call fastcc i1 @__cancel_work_timer(%struct.work_struct* noundef %work, i1 noundef true) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @schedule_on_each_cpu(void (%struct.work_struct*)* noundef %func) local_unnamed_addr #0 {
entry:
  %call = call i8* @__alloc_percpu(i64 noundef 32, i64 noundef 8) #22
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call146 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp47 = icmp ult i32 %call146, %0
  br i1 %cmp47, label %for.body.lr.ph, label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint i8* %call to i64
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body, %for.cond.preheader
  %2 = phi i32 [ %0, %for.cond.preheader ], [ %6, %for.body ]
  %call1049 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp1150 = icmp ult i32 %call1049, %2
  br i1 %cmp1150, label %do.body13.lr.ph, label %for.end24

do.body13.lr.ph:                                  ; preds = %for.cond9.preheader
  %3 = ptrtoint i8* %call to i64
  br label %do.body13

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call148 = phi i32 [ %call146, %for.body.lr.ph ], [ %call1, %for.body ]
  %idxprom = sext i32 %call148 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %1
  %5 = inttoptr i64 %add to %struct.work_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.work_struct, %struct.work_struct* %5, i64 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry4 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %5, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry4) #23
  %func5 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %5, i64 0, i32 2
  store void (%struct.work_struct*)* %func, void (%struct.work_struct*)** %func5, align 8
  call fastcc void @schedule_work_on(i32 noundef %call148, %struct.work_struct* noundef %5) #23
  %call1 = call i32 @cpumask_next(i32 noundef %call148, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body, label %for.cond9.preheader

do.body13:                                        ; preds = %do.body13.lr.ph, %do.body13
  %call1051 = phi i32 [ %call1049, %do.body13.lr.ph ], [ %call10, %do.body13 ]
  %idxprom20 = sext i32 %call1051 to i64
  %arrayidx21 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom20
  %7 = load i64, i64* %arrayidx21, align 8
  %add22 = add i64 %7, %3
  %8 = inttoptr i64 %add22 to %struct.work_struct*
  %call23 = call i1 @flush_work(%struct.work_struct* noundef %8) #23
  %call10 = call i32 @cpumask_next(i32 noundef %call1051, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %cmp11 = icmp ult i32 %call10, %9
  br i1 %cmp11, label %do.body13, label %for.end24

for.end24:                                        ; preds = %do.body13, %for.cond9.preheader
  call void @free_percpu(i8* noundef nonnull %call) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end24
  %retval.0 = phi i32 [ 0, %for.end24 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work_on(i32 noundef %cpu, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call = call i1 @queue_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @execute_in_process_context(void (%struct.work_struct*)* noundef %fn, %struct.execute_work* noundef %ew) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or23 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 65280
  %or725 = or i32 %or23, %2
  %tobool.not = icmp eq i32 %or725, 0
  %work = getelementptr inbounds %struct.execute_work, %struct.execute_work* %ew, i64 0, i32 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void %fn(%struct.work_struct* noundef %work) #22
  br label %return

do.body:                                          ; preds = %entry
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.execute_work, %struct.execute_work* %ew, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry11 = getelementptr inbounds %struct.execute_work, %struct.execute_work* %ew, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry11) #23
  %func = getelementptr inbounds %struct.execute_work, %struct.execute_work* %ew, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* %fn, void (%struct.work_struct*)** %func, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %work) #23
  br label %return

return:                                           ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %attrs) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.workqueue_attrs* %attrs, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.workqueue_attrs* %attrs to i8*
  call void @kfree(i8* noundef nonnull %0) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.workqueue_attrs* @alloc_workqueue_attrs() local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #23
  %0 = bitcast i8* %call to %struct.workqueue_attrs*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %cpumask = getelementptr inbounds i8, i8* %call, i64 8
  %arraydecay = bitcast i8* %cpumask to %struct.cpumask*
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #23
  br label %cleanup

fail:                                             ; preds = %entry
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %0) #23
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end
  %retval.0 = phi %struct.workqueue_attrs* [ %0, %if.end ], [ null, %fail ]
  ret %struct.workqueue_attrs* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #22
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @apply_workqueue_attrs(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %call = call fastcc i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end18, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4065; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !43
  br label %cleanup

if.end18:                                         ; preds = %entry
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pwqs) #23
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %if.then20, label %if.end52

if.then20:                                        ; preds = %if.end18
  %1 = load i32, i32* %flags, align 64
  %and23 = and i32 %1, 524288
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end49, label %if.then37, !prof !9

if.then37:                                        ; preds = %if.then20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4070; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !44
  br label %cleanup

if.end49:                                         ; preds = %if.then20
  %and51 = and i32 %1, -131073
  store i32 %and51, i32* %flags, align 64
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end18
  %call53 = call fastcc %struct.apply_wqattrs_ctx* @apply_wqattrs_prepare(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) #23
  %tobool54.not = icmp eq %struct.apply_wqattrs_ctx* %call53, null
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end52
  call fastcc void @apply_wqattrs_commit(%struct.apply_wqattrs_ctx* noundef nonnull %call53) #23
  call fastcc void @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx* noundef nonnull %call53) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then, %if.end52, %if.end56
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -22, %if.then ], [ -22, %if.then37 ], [ -12, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef %fmt, i32 noundef %flags, i32 noundef %max_active, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !21
  %and = and i32 %flags, 2
  %tobool = icmp ne i32 %and, 0
  %cmp = icmp eq i32 %max_active, 1
  %or.cond = and i1 %tobool, %cmp
  %or = or i32 %flags, 131072
  %spec.select = select i1 %or.cond, i32 %or, i32 %flags
  %and1 = and i32 %spec.select, 128
  %tobool2.not = icmp eq i32 %and1, 0
  %1 = load i8, i8* @wq_power_efficient, align 4
  %tobool4.not = icmp eq i8 %1, 0
  %or.cond126 = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  %or6 = or i32 %spec.select, 2
  %flags.addr.1 = select i1 %or.cond126, i32 %spec.select, i32 %or6
  %and8 = and i32 %flags.addr.1, 2
  %tobool9.not = icmp eq i32 %and8, 0
  %tbl_size.0 = select i1 %tobool9.not, i64 320, i64 328
  %call = call fastcc i8* @kzalloc(i64 noundef %tbl_size.0) #23
  %2 = bitcast i8* %call to %struct.workqueue_struct*
  %tobool12.not = icmp eq i8* %call, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %entry
  br i1 %tobool9.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call18 = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %unbound_attrs = getelementptr inbounds i8, i8* %call, i64 152
  %3 = bitcast i8* %unbound_attrs to %struct.workqueue_attrs**
  store %struct.workqueue_attrs* %call18, %struct.workqueue_attrs** %3, align 8
  %tobool20.not = icmp eq %struct.workqueue_attrs* %call18, null
  br i1 %tobool20.not, label %err_free_wq, label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14
  call void @llvm.va_start(i8* nonnull %0)
  %name = getelementptr inbounds i8, i8* %call, i64 176
  %4 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call25 = call i32 @vsnprintf(i8* noundef %name, i64 noundef 24, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #22
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #24
  call void @llvm.va_end(i8* nonnull %0)
  %tobool27.not = icmp eq i32 %max_active, 0
  %. = select i1 %tobool27.not, i32 256, i32 %max_active
  %call30 = call fastcc i32 @wq_clamp_max_active(i32 noundef %., i32 noundef %flags.addr.1, i8* noundef %name) #23
  %flags31 = getelementptr inbounds i8, i8* %call, i64 256
  %5 = bitcast i8* %flags31 to i32*
  store i32 %flags.addr.1, i32* %5, align 64
  %saved_max_active = getelementptr inbounds i8, i8* %call, i64 148
  %6 = bitcast i8* %saved_max_active to i32*
  store i32 %call30, i32* %6, align 4
  %mutex = getelementptr inbounds i8, i8* %call, i64 32
  %7 = bitcast i8* %mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_workqueue.__key) #22
  %nr_pwqs_to_flush = getelementptr inbounds i8, i8* %call, i64 72
  %counter.i = bitcast i8* %nr_pwqs_to_flush to i32*
  store volatile i32 0, i32* %counter.i, align 4
  %pwqs = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %pwqs) #23
  %flusher_queue = getelementptr inbounds i8, i8* %call, i64 88
  %8 = bitcast i8* %flusher_queue to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #23
  %flusher_overflow = getelementptr inbounds i8, i8* %call, i64 104
  %9 = bitcast i8* %flusher_overflow to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #23
  %maydays = getelementptr inbounds i8, i8* %call, i64 120
  %10 = bitcast i8* %maydays to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %10) #23
  %list = getelementptr inbounds i8, i8* %call, i64 16
  %11 = bitcast i8* %list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %11) #23
  %call32 = call fastcc i32 @alloc_and_link_pwqs(%struct.workqueue_struct* noundef nonnull %2) #23
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end23.err_free_wq_crit_edge, label %if.end35

if.end23.err_free_wq_crit_edge:                   ; preds = %if.end23
  %unbound_attrs75.phi.trans.insert = getelementptr inbounds i8, i8* %call, i64 152
  %.phi.trans.insert = bitcast i8* %unbound_attrs75.phi.trans.insert to %struct.workqueue_attrs**
  %.pre = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %.phi.trans.insert, align 8
  br label %err_free_wq

if.end35:                                         ; preds = %if.end23
  %.b125 = load i1, i1* @wq_online, align 1
  br i1 %.b125, label %land.lhs.true37, label %if.end41

land.lhs.true37:                                  ; preds = %if.end35
  %call38 = call fastcc i32 @init_rescuer(%struct.workqueue_struct* noundef nonnull %2) #23
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %err_destroy, label %if.end41

if.end41:                                         ; preds = %land.lhs.true37, %if.end35
  %12 = load i32, i32* %5, align 64
  %and43 = and i32 %12, 64
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end49, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end41
  %call46 = call i32 @workqueue_sysfs_register(%struct.workqueue_struct* noundef nonnull %2) #23
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %err_destroy

if.end49:                                         ; preds = %land.lhs.true45, %if.end41
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  call void @mutex_lock(%struct.mutex* noundef %7) #22
  %next = bitcast i8* %call to %struct.list_head**
  %.pn127 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %pwq.0.in128 = getelementptr %struct.list_head, %struct.list_head* %.pn127, i64 -8, i32 1
  %pwqs_node129 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in128, i64 15
  %cmp60.not130 = icmp eq %struct.list_head** %pwqs_node129, %next
  br i1 %cmp60.not130, label %for.end, label %for.body

for.body:                                         ; preds = %if.end49, %for.body
  %pwqs_node132 = phi %struct.list_head** [ %pwqs_node, %for.body ], [ %pwqs_node129, %if.end49 ]
  %pwq.0.in131 = phi %struct.list_head** [ %pwq.0.in, %for.body ], [ %pwq.0.in128, %if.end49 ]
  %pwq.0 = bitcast %struct.list_head** %pwq.0.in131 to %struct.pool_workqueue*
  call fastcc void @pwq_adjust_max_active(%struct.pool_workqueue* noundef %pwq.0) #23
  %.pn = load volatile %struct.list_head*, %struct.list_head** %pwqs_node132, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %cmp60.not = icmp eq %struct.list_head** %pwqs_node, %next
  br i1 %cmp60.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end49
  call void @mutex_unlock(%struct.mutex* noundef %7) #22
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %11) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  br label %cleanup

err_free_wq:                                      ; preds = %if.end23.err_free_wq_crit_edge, %if.then17
  %13 = phi %struct.workqueue_attrs* [ %.pre, %if.end23.err_free_wq_crit_edge ], [ null, %if.then17 ]
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %13) #23
  call void @kfree(i8* noundef nonnull %call) #22
  br label %cleanup

err_destroy:                                      ; preds = %land.lhs.true45, %land.lhs.true37
  call void @destroy_workqueue(%struct.workqueue_struct* noundef nonnull %2) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %err_destroy, %err_free_wq, %for.end
  %retval.0 = phi %struct.workqueue_struct* [ null, %err_free_wq ], [ null, %err_destroy ], [ %2, %for.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  ret %struct.workqueue_struct* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wq_clamp_max_active(i32 noundef %max_active, i32 noundef %flags, i8* noundef %name) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end3, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call fastcc i32 @cpumask_weight() #23
  %mul = shl i32 %call, 2
  %0 = icmp sgt i32 %mul, 512
  %cond = select i1 %0, i32 %mul, i32 512
  br label %cond.end3

cond.end3:                                        ; preds = %entry, %cond.true
  %cond4 = phi i32 [ %cond, %cond.true ], [ 512, %entry ]
  %cmp5 = icmp slt i32 %max_active, 1
  %cmp6 = icmp slt i32 %cond4, %max_active
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %cond.end3
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.35, i64 0, i64 0), i32 noundef %max_active, i8* noundef %name, i32 noundef 1, i32 noundef %cond4) #26
  br label %if.end

if.end:                                           ; preds = %cond.end3, %do.end
  %cmp10 = icmp sgt i32 %max_active, 1
  %cond14 = select i1 %cmp10, i32 %max_active, i32 1
  %cmp16 = icmp ult i32 %cond14, %cond4
  %cond20 = select i1 %cmp16, i32 %cond14, i32 %cond4
  ret i32 %cond20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_and_link_pwqs(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 16
  %and2 = and i32 %0, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %call = call i8* @__alloc_percpu(i64 noundef 256, i64 noundef 256) #22
  %cpu_pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 20
  %1 = bitcast %struct.pool_workqueue** %cpu_pwqs to i8**
  store i8* %call, i8** %1, align 8
  %tobool5.not = icmp eq i8* %call, null
  %2 = bitcast i8* %call to %struct.pool_workqueue*
  br i1 %tobool5.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %call7107 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp108 = icmp ult i32 %call7107, %3
  br i1 %cmp108, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and.lobit = lshr exact i32 %and, 4
  %4 = zext i32 %and.lobit to i64
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %5 = phi %struct.pool_workqueue* [ %2, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %call7109 = phi i32 [ %call7107, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %6 = ptrtoint %struct.pool_workqueue* %5 to i64
  %idxprom = sext i32 %call7109 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %7 = load i64, i64* %arrayidx, align 8
  %add = add i64 %7, %6
  %8 = inttoptr i64 %add to %struct.pool_workqueue*
  %add19 = add i64 %7, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %9 = inttoptr i64 %add19 to [2 x %struct.worker_pool]*
  %arrayidx22 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %9, i64 0, i64 %4
  call fastcc void @init_pwq(%struct.pool_workqueue* noundef %8, %struct.workqueue_struct* noundef %wq, %struct.worker_pool* noundef %arrayidx22) #23
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  call fastcc void @link_pwq(%struct.pool_workqueue* noundef %8) #23
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %call7 = call i32 @cpumask_next(i32 noundef %call7109, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.pool_workqueue*, %struct.pool_workqueue** %cpu_pwqs, align 8
  br label %for.body

if.end24:                                         ; preds = %entry
  %and26 = and i32 %0, 131072
  %tobool27.not = icmp eq i32 %and26, 0
  %and.lobit105 = lshr exact i32 %and, 4
  %11 = zext i32 %and.lobit105 to i64
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  %arrayidx31 = getelementptr [2 x %struct.workqueue_attrs*], [2 x %struct.workqueue_attrs*]* @ordered_wq_attrs, i64 0, i64 %11
  %12 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %arrayidx31, align 8
  %call32 = call i32 @apply_workqueue_attrs(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %12) #23
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.then28
  %next = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %next, align 64
  %dfl_pwq = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 14
  %14 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 32
  %pwqs_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %14, i64 0, i32 9
  %cmp34.not = icmp eq %struct.list_head* %13, %pwqs_node
  br i1 %cmp34.not, label %lor.rhs, label %do.end50

lor.rhs:                                          ; preds = %land.rhs
  %prev = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 1
  %15 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp38.not = icmp eq %struct.list_head* %15, %13
  br i1 %cmp38.not, label %cleanup, label %do.end50, !prof !9

do.end50:                                         ; preds = %land.rhs, %lor.rhs
  %arraydecay51 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0), i8* noundef %arraydecay51) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4235; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !45
  br label %cleanup

if.else:                                          ; preds = %if.end24
  %arrayidx68 = getelementptr [2 x %struct.workqueue_attrs*], [2 x %struct.workqueue_attrs*]* @unbound_std_wq_attrs, i64 0, i64 %11
  %16 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %arrayidx68, align 8
  %call69 = call i32 @apply_workqueue_attrs(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %16) #23
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %if.else, %if.then28, %do.end50, %lor.rhs, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call69, %if.else ], [ %call32, %if.then28 ], [ 0, %do.end50 ], [ 0, %lor.rhs ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_rescuer(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.worker* @alloc_worker() #23
  %tobool1.not = icmp eq %struct.worker* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %rescue_wq = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 14
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %rescue_wq, align 8
  %1 = bitcast %struct.worker* %call to i8*
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  %call4 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @rescuer_thread, i8* noundef nonnull %1, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay) #22
  %task = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 6
  store %struct.task_struct* %call4, %struct.task_struct** %task, align 8
  %2 = bitcast %struct.task_struct* %call4 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %2) #23
  br i1 %call6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  %call9 = call fastcc i64 @PTR_ERR(i8* noundef %2) #23
  %conv = trunc i64 %call9 to i32
  call void @kfree(i8* noundef nonnull %1) #22
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %rescuer11 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 10
  store %struct.worker* %call, %struct.worker** %rescuer11, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call void @kthread_bind_mask(%struct.task_struct* noundef %3, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call14 = call i32 @wake_up_process(%struct.task_struct* noundef %4) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10, %if.then7
  %retval.0 = phi i32 [ %conv, %if.then7 ], [ 0, %if.end10 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @workqueue_sysfs_register(%struct.workqueue_struct* noundef %wq) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 5725; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !46
  br label %cleanup52

if.end17:                                         ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 480) #23
  %wq_dev18 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 15
  %1 = bitcast %struct.wq_device** %wq_dev18 to i8**
  store i8* %call, i8** %1, align 8
  %tobool19.not = icmp eq i8* %call, null
  br i1 %tobool19.not, label %cleanup52, label %if.end21

if.end21:                                         ; preds = %if.end17
  %wq22 = bitcast i8* %call to %struct.workqueue_struct**
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq22, align 8
  %dev = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %dev to %struct.device*
  %bus = getelementptr inbounds i8, i8* %call, i64 104
  %3 = bitcast i8* %bus to %struct.bus_type**
  store %struct.bus_type* @wq_subsys, %struct.bus_type** %3, align 8
  %release = getelementptr inbounds i8, i8* %call, i64 448
  %4 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @wq_device_release, void (%struct.device*)** %4, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  %call25 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay) #22
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %2, i32 noundef 1) #23
  %call28 = call i32 @device_register(%struct.device* noundef %2) #22
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end21
  call void @put_device(%struct.device* noundef %2) #22
  store %struct.wq_device* null, %struct.wq_device** %wq_dev18, align 8
  br label %cleanup52

if.end33:                                         ; preds = %if.end21
  %5 = load i32, i32* %flags, align 64
  %and35 = and i32 %5, 2
  %tobool36.not = icmp eq i32 %and35, 0
  %6 = load i8*, i8** getelementptr inbounds ([5 x %struct.device_attribute], [5 x %struct.device_attribute]* @wq_sysfs_unbound_attrs, i64 0, i64 0, i32 0, i32 0), align 8
  %tobool40.not82 = icmp eq i8* %6, null
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool40.not82
  br i1 %or.cond, label %if.end48, label %for.body

for.cond:                                         ; preds = %for.body
  %name39 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %incdec.ptr, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %name39, align 8
  %tobool40.not = icmp eq i8* %7, null
  br i1 %tobool40.not, label %if.end48, label %for.body

for.body:                                         ; preds = %if.end33, %for.cond
  %attr.083 = phi %struct.device_attribute* [ %incdec.ptr, %for.cond ], [ getelementptr inbounds ([5 x %struct.device_attribute], [5 x %struct.device_attribute]* @wq_sysfs_unbound_attrs, i64 0, i64 0), %if.end33 ]
  %call42 = call i32 @device_create_file(%struct.device* noundef %2, %struct.device_attribute* noundef %attr.083) #22
  %tobool43.not = icmp eq i32 %call42, 0
  %incdec.ptr = getelementptr %struct.device_attribute, %struct.device_attribute* %attr.083, i64 1
  br i1 %tobool43.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @device_unregister(%struct.device* noundef %2) #22
  store %struct.wq_device* null, %struct.wq_device** %wq_dev18, align 8
  br label %cleanup52

if.end48:                                         ; preds = %for.cond, %if.end33
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef %2, i32 noundef 0) #23
  %kobj = bitcast i8* %dev to %struct.kobject*
  %call51 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #22
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup, %if.then, %if.end17, %if.end48, %if.then30
  %retval.1 = phi i32 [ %call28, %if.then30 ], [ 0, %if.end48 ], [ %call42, %cleanup ], [ -22, %if.then ], [ -12, %if.end17 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pwq_adjust_max_active(%struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  %wq1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq1, align 8
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 19
  %1 = load i32, i32* %flags, align 64
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body4

land.lhs.true:                                    ; preds = %entry
  %max_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 7
  %2 = load i32, i32* %max_active, align 32
  %saved_max_active = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 12
  %3 = load i32, i32* %saved_max_active, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %cleanup, label %do.body4

do.body4:                                         ; preds = %entry, %land.lhs.true
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 0
  %4 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %4, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #23
  %saved_max_active11 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 12
  %5 = load i32, i32* %saved_max_active11, align 4
  %max_active12 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 7
  store i32 %5, i32* %max_active12, align 32
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 6
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8
  %call1352 = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool14.not53 = icmp eq i32 %call1352, 0
  br i1 %tobool14.not53, label %land.rhs.preheader, label %do.body24

land.rhs.preheader:                               ; preds = %do.body4
  %6 = load i32, i32* %nr_active, align 4
  %7 = load i32, i32* %max_active12, align 32
  %cmp1659 = icmp slt i32 %6, %7
  br i1 %cmp1659, label %while.body, label %do.body24

land.rhs:                                         ; preds = %while.body
  %8 = load i32, i32* %nr_active, align 4
  %9 = load i32, i32* %max_active12, align 32
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs.preheader, %land.rhs
  call fastcc void @pwq_activate_first_inactive(%struct.pool_workqueue* noundef %pwq) #23
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.rhs, label %if.then19

while.end:                                        ; preds = %land.rhs
  br i1 %cmp1659, label %if.then19, label %do.body24

if.then19:                                        ; preds = %while.body, %while.end
  %10 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  call fastcc void @wake_up_worker(%struct.worker_pool* noundef %10) #23
  br label %do.body24

do.body24:                                        ; preds = %land.rhs.preheader, %do.body4, %while.end, %if.then19
  %11 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock31 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %11, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock31, i64 noundef %call) #23
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %do.body24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new) unnamed_addr #0 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @workqueues, i64 0, i32 1), align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @workqueues) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @destroy_workqueue(%struct.workqueue_struct* noundef %wq) local_unnamed_addr #0 {
entry:
  call fastcc void @workqueue_sysfs_unregister(%struct.workqueue_struct* noundef %wq) #23
  call void @drain_workqueue(%struct.workqueue_struct* noundef %wq) #23
  %rescuer = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 10
  %0 = load %struct.worker*, %struct.worker** %rescuer, align 8
  %tobool.not = icmp eq %struct.worker* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  store %struct.worker* null, %struct.worker** %rescuer, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  %task = getelementptr inbounds %struct.worker, %struct.worker* %0, i64 0, i32 6
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call = call i32 @kthread_stop(%struct.task_struct* noundef %1) #22
  %2 = bitcast %struct.worker* %0 to i8*
  call void @kfree(i8* noundef nonnull %2) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0
  %next = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 0
  %.pn123 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %pwq.0.in124 = getelementptr %struct.list_head, %struct.list_head* %.pn123, i64 -8, i32 1
  %pwqs_node126 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in124, i64 15
  %3 = bitcast %struct.list_head** %pwqs_node126 to %struct.list_head*
  %cmp.not127 = icmp eq %struct.list_head* %pwqs, %3
  br i1 %cmp.not127, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end37
  %pwqs_node130 = phi %struct.list_head** [ %pwqs_node, %if.end37 ], [ %pwqs_node126, %if.end ]
  %pwq.0.in128 = phi %struct.list_head** [ %pwq.0.in, %if.end37 ], [ %pwq.0.in124, %if.end ]
  %pwq.0129 = bitcast %struct.list_head** %pwq.0.in128 to %struct.pool_workqueue*
  %pool = bitcast %struct.list_head** %pwq.0.in128 to %struct.worker_pool**
  %4 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %4, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %call9 = call fastcc i1 @pwq_busy(%struct.pool_workqueue* noundef %pwq.0129) #23
  br i1 %call9, label %if.then17, label %if.end37, !prof !12

if.then17:                                        ; preds = %for.body
  %pwq.0129.le = bitcast %struct.list_head** %pwq.0.in128 to %struct.pool_workqueue*
  %pool.le = bitcast %struct.list_head** %pwq.0.in128 to %struct.worker_pool**
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4443; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !47
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.destroy_workqueue, i64 0, i64 0), i8* noundef %arraydecay) #26
  call fastcc void @show_pwq(%struct.pool_workqueue* noundef %pwq.0129.le) #23
  %5 = load %struct.worker_pool*, %struct.worker_pool** %pool.le, align 256
  %lock35 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %5, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock35) #23
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  call void @show_workqueue_state() #23
  br label %cleanup

if.end37:                                         ; preds = %for.body
  %6 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock39 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %6, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock39) #23
  %.pn = load volatile %struct.list_head*, %struct.list_head** %pwqs_node130, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %7 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %pwqs, %7
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end37, %if.end
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %list = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 1
  call fastcc void @list_del_rcu(%struct.list_head* noundef %list) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %8 = load i32, i32* %flags, align 64
  %and = and i32 %8, 2
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.then54, label %for.body58

if.then54:                                        ; preds = %for.end
  %rcu = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 17
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @rcu_free_wq) #22
  br label %cleanup

for.body58:                                       ; preds = %for.end
  %arrayidx = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 21, i64 0
  %9 = load volatile %struct.pool_workqueue*, %struct.pool_workqueue** %arrayidx, align 8
  store volatile %struct.pool_workqueue* null, %struct.pool_workqueue** %arrayidx, align 8
  call fastcc void @put_pwq_unlocked(%struct.pool_workqueue* noundef %9) #23
  %dfl_pwq = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 14
  %10 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 32
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %dfl_pwq, align 32
  call fastcc void @put_pwq_unlocked(%struct.pool_workqueue* noundef %10) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %for.body58, %if.then17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @workqueue_sysfs_unregister(%struct.workqueue_struct* nocapture noundef %wq) unnamed_addr #0 {
entry:
  %wq_dev1 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 15
  %0 = load %struct.wq_device*, %struct.wq_device** %wq_dev1, align 8
  %tobool.not = icmp eq %struct.wq_device* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.wq_device* null, %struct.wq_device** %wq_dev1, align 8
  %dev = getelementptr inbounds %struct.wq_device, %struct.wq_device* %0, i64 0, i32 1
  call void @device_unregister(%struct.device* noundef %dev) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @pwq_busy(%struct.pool_workqueue* noundef %pwq) unnamed_addr #7 {
entry:
  %arrayidx = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond, label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 1
  %1 = load i32, i32* %arrayidx.1, align 4
  %tobool.not.1 = icmp eq i32 %1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 2
  %2 = load i32, i32* %arrayidx.2, align 4
  %tobool.not.2 = icmp eq i32 %2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 3
  %3 = load i32, i32* %arrayidx.3, align 4
  %tobool.not.3 = icmp eq i32 %3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 4
  %4 = load i32, i32* %arrayidx.4, align 4
  %tobool.not.4 = icmp eq i32 %4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 5
  %5 = load i32, i32* %arrayidx.5, align 4
  %tobool.not.5 = icmp eq i32 %5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 6
  %6 = load i32, i32* %arrayidx.6, align 4
  %tobool.not.6 = icmp eq i32 %6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 7
  %7 = load i32, i32* %arrayidx.7, align 4
  %tobool.not.7 = icmp eq i32 %7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 8
  %8 = load i32, i32* %arrayidx.8, align 4
  %tobool.not.8 = icmp eq i32 %8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 9
  %9 = load i32, i32* %arrayidx.9, align 4
  %tobool.not.9 = icmp eq i32 %9, 0
  br i1 %tobool.not.9, label %for.cond.9, label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 10
  %10 = load i32, i32* %arrayidx.10, align 4
  %tobool.not.10 = icmp eq i32 %10, 0
  br i1 %tobool.not.10, label %for.cond.10, label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 11
  %11 = load i32, i32* %arrayidx.11, align 4
  %tobool.not.11 = icmp eq i32 %11, 0
  br i1 %tobool.not.11, label %for.cond.11, label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 12
  %12 = load i32, i32* %arrayidx.12, align 4
  %tobool.not.12 = icmp eq i32 %12, 0
  br i1 %tobool.not.12, label %for.cond.12, label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 13
  %13 = load i32, i32* %arrayidx.13, align 4
  %tobool.not.13 = icmp eq i32 %13, 0
  br i1 %tobool.not.13, label %for.cond.13, label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 14
  %14 = load i32, i32* %arrayidx.14, align 4
  %tobool.not.14 = icmp eq i32 %14, 0
  br i1 %tobool.not.14, label %for.cond.14, label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 15
  %15 = load i32, i32* %arrayidx.15, align 4
  %tobool.not.15 = icmp eq i32 %15, 0
  br i1 %tobool.not.15, label %for.cond.15, label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  %16 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %dfl_pwq = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %16, i64 0, i32 14
  %17 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 32
  %cmp1.not = icmp eq %struct.pool_workqueue* %17, %pwq
  br i1 %cmp1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.15
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 4
  %18 = load i32, i32* %refcnt, align 8
  %cmp2 = icmp sgt i32 %18, 1
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %for.cond.15
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 6
  %19 = load i32, i32* %nr_active, align 4
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool6.not = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %for.cond.7, %for.cond.8, %for.cond.9, %for.cond.10, %for.cond.11, %for.cond.12, %for.cond.13, %for.cond.14, %lor.lhs.false, %if.end4, %land.lhs.true
  %retval.0 = phi i1 [ true, %land.lhs.true ], [ true, %if.end4 ], [ %tobool6.not, %lor.lhs.false ], [ true, %for.cond.14 ], [ true, %for.cond.13 ], [ true, %for.cond.12 ], [ true, %for.cond.11 ], [ true, %for.cond.10 ], [ true, %for.cond.9 ], [ true, %for.cond.8 ], [ true, %for.cond.7 ], [ true, %for.cond.6 ], [ true, %for.cond.5 ], [ true, %for.cond.4 ], [ true, %for.cond.3 ], [ true, %for.cond.2 ], [ true, %for.cond.1 ], [ true, %for.cond ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_pwq(%struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 256
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 3
  %1 = load i32, i32* %id, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 noundef %1) #26
  call fastcc void @pr_cont_pool_info(%struct.worker_pool* noundef %0) #23
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 6
  %2 = load i32, i32* %nr_active, align 4
  %max_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 7
  %3 = load i32, i32* %max_active, align 32
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 4
  %4 = load i32, i32* %refcnt, align 8
  %mayday_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 10
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %mayday_node) #23
  %tobool.not = icmp eq i32 %call6, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %cond) #26
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc35
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc35 ]
  %first = getelementptr %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 12, i64 %indvars.iv, i32 0
  %5 = bitcast %struct.hlist_node** %first to %struct.worker**
  %worker.1351 = load %struct.worker*, %struct.worker** %5, align 8
  %tobool18.not352 = icmp eq %struct.worker* %worker.1351, null
  br i1 %tobool18.not352, label %for.inc35, label %for.body19

for.body19:                                       ; preds = %for.body, %for.inc
  %worker.1353 = phi %struct.worker* [ %worker.1, %for.inc ], [ %worker.1351, %for.body ]
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %worker.1353, i64 0, i32 3
  %6 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq, align 8
  %cmp20 = icmp eq %struct.pool_workqueue* %6, %pwq
  br i1 %cmp20, label %if.then38, label %for.inc

for.inc:                                          ; preds = %for.body19
  %7 = bitcast %struct.worker* %worker.1353 to %struct.worker**
  %worker.1 = load %struct.worker*, %struct.worker** %7, align 8
  %tobool18.not = icmp eq %struct.worker* %worker.1, null
  br i1 %tobool18.not, label %for.inc35, label %for.body19

for.inc35:                                        ; preds = %for.inc, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp8 = icmp ult i64 %indvars.iv, 63
  br i1 %cmp8, label %for.body, label %if.end138

if.then38:                                        ; preds = %for.body19
  %call43 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0)) #26
  br label %for.body52

for.body52:                                       ; preds = %if.then38, %for.inc130
  %indvars.iv387 = phi i64 [ 0, %if.then38 ], [ %indvars.iv.next388, %for.inc130 ]
  %comma.0.off0368 = phi i1 [ false, %if.then38 ], [ %comma.1.off0.lcssa, %for.inc130 ]
  %first57 = getelementptr %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 12, i64 %indvars.iv387, i32 0
  %8 = bitcast %struct.hlist_node** %first57 to %struct.worker**
  %worker.3362 = load %struct.worker*, %struct.worker** %8, align 8
  %tobool71.not363 = icmp eq %struct.worker* %worker.3362, null
  br i1 %tobool71.not363, label %for.inc130, label %for.body72

for.body72:                                       ; preds = %for.body52, %for.inc113
  %worker.3365 = phi %struct.worker* [ %worker.3, %for.inc113 ], [ %worker.3362, %for.body52 ]
  %comma.1.off0364 = phi i1 [ %comma.2.off0, %for.inc113 ], [ %comma.0.off0368, %for.body52 ]
  %current_pwq73 = getelementptr inbounds %struct.worker, %struct.worker* %worker.3365, i64 0, i32 3
  %9 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq73, align 8
  %cmp74.not = icmp eq %struct.pool_workqueue* %9, %pwq
  br i1 %cmp74.not, label %do.end80, label %for.inc113

do.end80:                                         ; preds = %for.body72
  %cond84 = select i1 %comma.1.off0364, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker.3365, i64 0, i32 6
  %10 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call85 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %10) #23
  %rescue_wq = getelementptr inbounds %struct.worker, %struct.worker* %worker.3365, i64 0, i32 14
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_wq, align 8
  %tobool86.not = icmp eq %struct.workqueue_struct* %11, null
  %cond87 = select i1 %tobool86.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0)
  %current_func = getelementptr inbounds %struct.worker, %struct.worker* %worker.3365, i64 0, i32 2
  %12 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %call88 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* noundef %cond84, i32 noundef %call85, i8* noundef %cond87, void (%struct.work_struct*)* noundef %12) #26
  %scheduled = getelementptr inbounds %struct.worker, %struct.worker* %worker.3365, i64 0, i32 5
  %13 = bitcast %struct.list_head* %scheduled to i8**
  %.pn345359 = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn345359 to %struct.list_head*
  %cmp99.not360 = icmp eq %struct.list_head* %scheduled, %14
  br i1 %cmp99.not360, label %for.inc113, label %for.body102

for.body102:                                      ; preds = %do.end80, %for.body102
  %.pn345361 = phi i8* [ %.pn345, %for.body102 ], [ %.pn345359, %do.end80 ]
  %work.0.in = getelementptr i8, i8* %.pn345361, i64 -8
  %work.0 = bitcast i8* %work.0.in to %struct.work_struct*
  call fastcc void @pr_cont_work(i1 noundef false, %struct.work_struct* noundef %work.0) #23
  %15 = bitcast i8* %.pn345361 to i8**
  %.pn345 = load i8*, i8** %15, align 8
  %16 = bitcast i8* %.pn345 to %struct.list_head*
  %cmp99.not = icmp eq %struct.list_head* %scheduled, %16
  br i1 %cmp99.not, label %for.inc113, label %for.body102

for.inc113:                                       ; preds = %for.body102, %do.end80, %for.body72
  %comma.2.off0 = phi i1 [ %comma.1.off0364, %for.body72 ], [ true, %do.end80 ], [ true, %for.body102 ]
  %17 = bitcast %struct.worker* %worker.3365 to %struct.worker**
  %worker.3 = load %struct.worker*, %struct.worker** %17, align 8
  %tobool71.not = icmp eq %struct.worker* %worker.3, null
  br i1 %tobool71.not, label %for.inc130, label %for.body72

for.inc130:                                       ; preds = %for.inc113, %for.body52
  %comma.1.off0.lcssa = phi i1 [ %comma.0.off0368, %for.body52 ], [ %comma.2.off0, %for.inc113 ]
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next388, 64
  br i1 %exitcond.not, label %do.end135, label %for.body52

do.end135:                                        ; preds = %for.inc130
  %call137 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26
  br label %if.end138

if.end138:                                        ; preds = %for.inc35, %do.end135
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 6
  %18 = bitcast %struct.list_head* %worklist to i8**
  %.pn370 = load i8*, i8** %18, align 8
  %19 = bitcast i8* %.pn370 to %struct.list_head*
  %cmp149.not371 = icmp eq %struct.list_head* %worklist, %19
  br i1 %cmp149.not371, label %if.end214, label %for.body152

for.body152:                                      ; preds = %if.end138, %for.inc158
  %.pn372 = phi i8* [ %.pn, %for.inc158 ], [ %.pn370, %if.end138 ]
  %work.1.in = getelementptr i8, i8* %.pn372, i64 -8
  %work.1 = bitcast i8* %work.1.in to %struct.work_struct*
  %call153 = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work.1) #23
  %cmp154 = icmp eq %struct.pool_workqueue* %call153, %pwq
  br i1 %cmp154, label %if.then169, label %for.inc158

for.inc158:                                       ; preds = %for.body152
  %20 = bitcast i8* %.pn372 to i8**
  %.pn = load i8*, i8** %20, align 8
  %21 = bitcast i8* %.pn to %struct.list_head*
  %cmp149.not = icmp eq %struct.list_head* %worklist, %21
  br i1 %cmp149.not, label %if.end214, label %for.body152

if.then169:                                       ; preds = %for.body152
  %call175 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0)) #26
  %.pn341373 = load i8*, i8** %18, align 8
  %22 = bitcast i8* %.pn341373 to %struct.list_head*
  %cmp187.not376 = icmp eq %struct.list_head* %worklist, %22
  br i1 %cmp187.not376, label %do.end211, label %for.body190

for.body190:                                      ; preds = %if.then169, %for.inc199
  %.pn341378 = phi i8* [ %.pn341, %for.inc199 ], [ %.pn341373, %if.then169 ]
  %comma170.0.off0377 = phi i1 [ %comma170.1.off0, %for.inc199 ], [ false, %if.then169 ]
  %work.2.in379 = getelementptr i8, i8* %.pn341378, i64 -8
  %work.2380 = bitcast i8* %work.2.in379 to %struct.work_struct*
  %call191 = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work.2380) #23
  %cmp192.not = icmp eq %struct.pool_workqueue* %call191, %pwq
  br i1 %cmp192.not, label %if.end195, label %for.inc199

if.end195:                                        ; preds = %for.body190
  call fastcc void @pr_cont_work(i1 noundef %comma170.0.off0377, %struct.work_struct* noundef %work.2380) #23
  %23 = bitcast i8* %work.2.in379 to i64*
  %24 = load i64, i64* %23, align 8
  %and = and i64 %24, 8
  %tobool197.not = icmp eq i64 %and, 0
  br label %for.inc199

for.inc199:                                       ; preds = %for.body190, %if.end195
  %comma170.1.off0 = phi i1 [ %comma170.0.off0377, %for.body190 ], [ %tobool197.not, %if.end195 ]
  %25 = bitcast i8* %.pn341378 to i8**
  %.pn341 = load i8*, i8** %25, align 8
  %26 = bitcast i8* %.pn341 to %struct.list_head*
  %cmp187.not = icmp eq %struct.list_head* %worklist, %26
  br i1 %cmp187.not, label %do.end211, label %for.body190

do.end211:                                        ; preds = %for.inc199, %if.then169
  %call213 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26
  br label %if.end214

if.end214:                                        ; preds = %for.inc158, %if.end138, %do.end211
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8
  %call215 = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.then217, label %if.end260

if.then217:                                       ; preds = %if.end214
  %call223 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0)) #26
  %27 = bitcast %struct.list_head* %inactive_works to i8**
  %.pn338381 = load i8*, i8** %27, align 8
  %28 = bitcast i8* %.pn338381 to %struct.list_head*
  %cmp235.not383 = icmp eq %struct.list_head* %inactive_works, %28
  br i1 %cmp235.not383, label %do.end257, label %for.body238

for.body238:                                      ; preds = %if.then217, %for.body238
  %.pn338385 = phi i8* [ %.pn338, %for.body238 ], [ %.pn338381, %if.then217 ]
  %comma218.0.off0384 = phi i1 [ %tobool242.not, %for.body238 ], [ false, %if.then217 ]
  %work.3.in386 = getelementptr i8, i8* %.pn338385, i64 -8
  %work.3 = bitcast i8* %work.3.in386 to %struct.work_struct*
  call fastcc void @pr_cont_work(i1 noundef %comma218.0.off0384, %struct.work_struct* noundef %work.3) #23
  %29 = bitcast i8* %work.3.in386 to i64*
  %30 = load i64, i64* %29, align 8
  %and241 = and i64 %30, 8
  %tobool242.not = icmp eq i64 %and241, 0
  %31 = bitcast i8* %.pn338385 to i8**
  %.pn338 = load i8*, i8** %31, align 8
  %32 = bitcast i8* %.pn338 to %struct.list_head*
  %cmp235.not = icmp eq %struct.list_head* %inactive_works, %32
  br i1 %cmp235.not, label %do.end257, label %for.body238

do.end257:                                        ; preds = %for.body238, %if.then217
  %call259 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26
  br label %if.end260

if.end260:                                        ; preds = %do.end257, %if.end214
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_workqueue_state() local_unnamed_addr #0 {
entry:
  %pi = alloca i32, align 4
  %0 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  call fastcc void @__rcu_read_lock() #22
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0)) #26
  %.pn264 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @workqueues, i64 0, i32 0), align 8
  %cmp.not266 = icmp eq %struct.list_head* %.pn264, @workqueues
  br i1 %cmp.not266, label %for.cond117.preheader, label %for.body

for.cond117.preheader:                            ; preds = %cleanup, %entry
  store i32 0, i32* %pi, align 4
  %call118274 = call i8* @idr_get_next(%struct.idr* noundef nonnull @worker_pool_idr, i32* noundef nonnull %pi) #22
  %cmp119.not275 = icmp eq i8* %call118274, null
  br i1 %cmp119.not275, label %for.end205, label %for.body121

for.body:                                         ; preds = %entry, %cleanup
  %.pn267 = phi %struct.list_head* [ %.pn, %cleanup ], [ %.pn264, %entry ]
  %wq.0.in268 = getelementptr %struct.list_head, %struct.list_head* %.pn267, i64 -1
  %next = getelementptr %struct.list_head, %struct.list_head* %wq.0.in268, i64 0, i32 0
  br label %for.cond19

for.cond19:                                       ; preds = %lor.lhs.false, %for.body
  %.pn254.in = phi %struct.list_head** [ %next, %for.body ], [ %pwqs_node, %lor.lhs.false ]
  %.pn254 = load volatile %struct.list_head*, %struct.list_head** %.pn254.in, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn254, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %1 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %cmp21.not = icmp eq %struct.list_head* %wq.0.in268, %1
  br i1 %cmp21.not, label %cleanup, label %for.body22

for.body22:                                       ; preds = %for.cond19
  %pwq.0 = bitcast %struct.list_head** %pwq.0.in to %struct.pool_workqueue*
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0, i64 0, i32 6
  %2 = load i32, i32* %nr_active, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.end42

lor.lhs.false:                                    ; preds = %for.body22
  %inactive_works = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 13
  %3 = bitcast %struct.list_head** %inactive_works to %struct.list_head*
  %call23 = call fastcc i32 @list_empty(%struct.list_head* noundef %3) #23
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end42, label %for.cond19

do.end42:                                         ; preds = %lor.lhs.false, %for.body22
  %arraydecay = getelementptr %struct.list_head, %struct.list_head* %.pn267, i64 10
  %flags44 = getelementptr %struct.list_head, %struct.list_head* %.pn267, i64 15
  %4 = bitcast %struct.list_head* %flags44 to i32*
  %5 = load i32, i32* %4, align 64
  %call45 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct.list_head* noundef %arraydecay, i32 noundef %5) #26
  %.pn253256 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %pwq.1.in257 = getelementptr %struct.list_head, %struct.list_head* %.pn253256, i64 -8, i32 1
  %pwqs_node59259 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.1.in257, i64 15
  %6 = bitcast %struct.list_head** %pwqs_node59259 to %struct.list_head*
  %cmp61.not260 = icmp eq %struct.list_head* %wq.0.in268, %6
  br i1 %cmp61.not260, label %cleanup, label %do.body63

do.body63:                                        ; preds = %do.end42, %do.body78
  %pwqs_node59263 = phi %struct.list_head** [ %pwqs_node59, %do.body78 ], [ %pwqs_node59259, %do.end42 ]
  %pwq.1.in261 = phi %struct.list_head** [ %pwq.1.in, %do.body78 ], [ %pwq.1.in257, %do.end42 ]
  %pwq.1262 = bitcast %struct.list_head** %pwq.1.in261 to %struct.pool_workqueue*
  %pool66 = bitcast %struct.list_head** %pwq.1.in261 to %struct.worker_pool**
  %7 = load %struct.worker_pool*, %struct.worker_pool** %pool66, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i64 0, i32 0
  %call67 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #23
  %nr_active70 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.1262, i64 0, i32 6
  %8 = load i32, i32* %nr_active70, align 4
  %tobool71.not = icmp eq i32 %8, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.then76

lor.lhs.false72:                                  ; preds = %do.body63
  %inactive_works73 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.1.in261, i64 13
  %9 = bitcast %struct.list_head** %inactive_works73 to %struct.list_head*
  %call74 = call fastcc i32 @list_empty(%struct.list_head* noundef %9) #23
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %do.body78

if.then76:                                        ; preds = %lor.lhs.false72, %do.body63
  call void @__printk_safe_enter() #22
  call fastcc void @show_pwq(%struct.pool_workqueue* noundef %pwq.1262) #23
  call void @__printk_safe_exit() #22
  br label %do.body78

do.body78:                                        ; preds = %lor.lhs.false72, %if.then76
  %10 = load %struct.worker_pool*, %struct.worker_pool** %pool66, align 256
  %lock85 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %10, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock85, i64 noundef %call67) #23
  %.pn253 = load volatile %struct.list_head*, %struct.list_head** %pwqs_node59263, align 8
  %pwq.1.in = getelementptr %struct.list_head, %struct.list_head* %.pn253, i64 -8, i32 1
  %pwqs_node59 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.1.in, i64 15
  %11 = bitcast %struct.list_head** %pwqs_node59 to %struct.list_head*
  %cmp61.not = icmp eq %struct.list_head* %wq.0.in268, %11
  br i1 %cmp61.not, label %cleanup, label %do.body63

cleanup:                                          ; preds = %for.cond19, %do.body78, %do.end42
  %next110 = getelementptr inbounds %struct.list_head, %struct.list_head* %.pn267, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %next110, align 8
  %cmp.not = icmp eq %struct.list_head* %.pn, @workqueues
  br i1 %cmp.not, label %for.cond117.preheader, label %for.body

for.body121:                                      ; preds = %for.cond117.preheader, %do.body195
  %call118276 = phi i8* [ %call118, %do.body195 ], [ %call118274, %for.cond117.preheader ]
  %lock128 = bitcast i8* %call118276 to %struct.raw_spinlock*
  %call129 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull %lock128) #23
  %nr_workers = getelementptr inbounds i8, i8* %call118276, i64 48
  %12 = bitcast i8* %nr_workers to i32*
  %13 = load i32, i32* %12, align 16
  %nr_idle = getelementptr inbounds i8, i8* %call118276, i64 52
  %14 = bitcast i8* %nr_idle to i32*
  %15 = load i32, i32* %14, align 4
  %cmp132 = icmp eq i32 %13, %15
  br i1 %cmp132, label %do.body195, label %if.end135

if.end135:                                        ; preds = %for.body121
  %16 = bitcast i8* %call118276 to %struct.worker_pool*
  call void @__printk_safe_enter() #22
  %id = getelementptr inbounds i8, i8* %call118276, i64 12
  %17 = bitcast i8* %id to i32*
  %18 = load i32, i32* %17, align 4
  %call140 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 noundef %18) #26
  call fastcc void @pr_cont_pool_info(%struct.worker_pool* noundef nonnull %16) #23
  %19 = load volatile i64, i64* @jiffies, align 64
  %watchdog_ts = getelementptr inbounds i8, i8* %call118276, i64 24
  %20 = bitcast i8* %watchdog_ts to i64*
  %21 = load i64, i64* %20, align 8
  %sub = sub i64 %19, %21
  %call145 = call i32 @jiffies_to_msecs(i64 noundef %sub) #22
  %div = udiv i32 %call145, 1000
  %22 = load i32, i32* %12, align 16
  %call147 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef %div, i32 noundef %22) #26
  %manager = getelementptr inbounds i8, i8* %call118276, i64 664
  %23 = bitcast i8* %manager to %struct.worker**
  %24 = load %struct.worker*, %struct.worker** %23, align 8
  %tobool148.not = icmp eq %struct.worker* %24, null
  br i1 %tobool148.not, label %if.end157, label %do.end152

do.end152:                                        ; preds = %if.end135
  %task = getelementptr inbounds %struct.worker, %struct.worker* %24, i64 0, i32 6
  %25 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call155 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %25) #23
  %call156 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call155) #26
  br label %if.end157

if.end157:                                        ; preds = %do.end152, %if.end135
  %idle_list = getelementptr inbounds i8, i8* %call118276, i64 56
  %26 = bitcast i8* %idle_list to %struct.list_head*
  %27 = bitcast i8* %idle_list to %struct.worker**
  %worker.0269 = load %struct.worker*, %struct.worker** %27, align 8
  %entry166270 = getelementptr inbounds %struct.worker, %struct.worker* %worker.0269, i64 0, i32 0, i32 0
  %cmp168.not271 = icmp eq %struct.list_head* %entry166270, %26
  br i1 %cmp168.not271, label %do.end192, label %do.end173.preheader

do.end173.preheader:                              ; preds = %if.end157
  %task177.peel = getelementptr inbounds %struct.worker, %struct.worker* %worker.0269, i64 0, i32 6
  %28 = load %struct.task_struct*, %struct.task_struct** %task177.peel, align 8
  %call178.peel = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %28) #23
  %call179.peel = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call178.peel) #26
  %29 = bitcast %struct.worker* %worker.0269 to %struct.worker**
  %worker.0.peel = load %struct.worker*, %struct.worker** %29, align 8
  %entry166.peel = getelementptr inbounds %struct.worker, %struct.worker* %worker.0.peel, i64 0, i32 0, i32 0
  %cmp168.not.peel = icmp eq %struct.list_head* %entry166.peel, %26
  br i1 %cmp168.not.peel, label %do.end192, label %do.end173

do.end173:                                        ; preds = %do.end173.preheader, %do.end173
  %worker.0273 = phi %struct.worker* [ %worker.0, %do.end173 ], [ %worker.0.peel, %do.end173.preheader ]
  %task177 = getelementptr inbounds %struct.worker, %struct.worker* %worker.0273, i64 0, i32 6
  %30 = load %struct.task_struct*, %struct.task_struct** %task177, align 8
  %call178 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %30) #23
  %call179 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call178) #26
  %31 = bitcast %struct.worker* %worker.0273 to %struct.worker**
  %worker.0 = load %struct.worker*, %struct.worker** %31, align 8
  %entry166 = getelementptr inbounds %struct.worker, %struct.worker* %worker.0, i64 0, i32 0, i32 0
  %cmp168.not = icmp eq %struct.list_head* %entry166, %26
  br i1 %cmp168.not, label %do.end192, label %do.end173, !llvm.loop !48

do.end192:                                        ; preds = %do.end173, %do.end173.preheader, %if.end157
  %call194 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26
  call void @__printk_safe_exit() #22
  br label %do.body195

do.body195:                                       ; preds = %do.end192, %for.body121
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull %lock128, i64 noundef %call129) #23
  %32 = load i32, i32* %pi, align 4
  %add = add i32 %32, 1
  store i32 %add, i32* %pi, align 4
  %call118 = call i8* @idr_get_next(%struct.idr* noundef nonnull @worker_pool_idr, i32* noundef nonnull %pi) #22
  %cmp119.not = icmp eq i8* %call118, null
  br i1 %cmp119.not, label %for.end205, label %for.body121

for.end205:                                       ; preds = %do.body195, %for.cond117.preheader
  call fastcc void @rcu_read_unlock() #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_free_wq(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -13, i32 1
  %flags = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 32
  %0 = bitcast void (%struct.callback_head*)** %flags to i32*
  %1 = load i32, i32* %0, align 64
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cpu_pwqs = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 33
  %2 = bitcast void (%struct.callback_head*)** %cpu_pwqs to i8**
  %3 = load i8*, i8** %2, align 8
  call void @free_percpu(i8* noundef %3) #22
  br label %if.end

if.else:                                          ; preds = %entry
  %unbound_attrs = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 19
  %4 = bitcast void (%struct.callback_head*)** %unbound_attrs to %struct.workqueue_attrs**
  %5 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %4, align 8
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %5) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  call void @kfree(i8* noundef %6) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_pwq_unlocked(%struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pool_workqueue* %pwq, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @put_pwq(%struct.pool_workqueue* noundef nonnull %pwq) #23
  %1 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %lock2 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %1, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock2) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @workqueue_set_max_active(%struct.workqueue_struct* noundef %wq, i32 noundef %max_active) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4509; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !50
  br label %cleanup

if.end17:                                         ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 16, i64 0
  %call = call fastcc i32 @wq_clamp_max_active(i32 noundef %max_active, i32 noundef %0, i8* noundef %arraydecay) #23
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %1 = load i32, i32* %flags, align 64
  %and20 = and i32 %1, -131073
  store i32 %and20, i32* %flags, align 64
  %saved_max_active = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 12
  store i32 %call, i32* %saved_max_active, align 4
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0
  %next = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 0, i32 0
  %.pn57 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %pwq.0.in58 = getelementptr %struct.list_head, %struct.list_head* %.pn57, i64 -8, i32 1
  %pwqs_node59 = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in58, i64 15
  %2 = bitcast %struct.list_head** %pwqs_node59 to %struct.list_head*
  %cmp.not60 = icmp eq %struct.list_head* %pwqs, %2
  br i1 %cmp.not60, label %for.end, label %for.body

for.body:                                         ; preds = %if.end17, %for.body
  %pwqs_node62 = phi %struct.list_head** [ %pwqs_node, %for.body ], [ %pwqs_node59, %if.end17 ]
  %pwq.0.in61 = phi %struct.list_head** [ %pwq.0.in, %for.body ], [ %pwq.0.in58, %if.end17 ]
  %pwq.0 = bitcast %struct.list_head** %pwq.0.in61 to %struct.pool_workqueue*
  call fastcc void @pwq_adjust_max_active(%struct.pool_workqueue* noundef %pwq.0) #23
  %.pn = load volatile %struct.list_head*, %struct.list_head** %pwqs_node62, align 8
  %pwq.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -8, i32 1
  %pwqs_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %pwq.0.in, i64 15
  %3 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %pwqs, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end17
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.work_struct* @current_work() local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker* @current_wq_worker() #23
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %current_work = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 1
  %0 = load %struct.work_struct*, %struct.work_struct** %current_work, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.work_struct* [ %0, %cond.true ], [ null, %entry ]
  ret %struct.work_struct* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker* @current_wq_worker() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or16 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 256
  %or818 = or i32 %or16, %2
  %tobool.not = icmp eq i32 %or818, 0
  br i1 %tobool.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4
  %and10 = and i32 %5, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call13 = call i8* @kthread_data(%struct.task_struct* noundef %4) #22
  %6 = bitcast i8* %call13 to %struct.worker*
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.worker* [ %6, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.worker* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @current_is_workqueue_rescuer() local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker* @current_wq_worker() #23
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %rescue_wq = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 14
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_wq, align 8
  %tobool1 = icmp ne %struct.workqueue_struct* %0, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @workqueue_congested(i32 noundef %cpu, %struct.workqueue_struct* noundef %wq) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #22
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %cmp = icmp eq i32 %cpu, 256
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  %cpu.addr.0 = phi i32 [ %1, %do.body ], [ %cpu, %entry ]
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 19
  %2 = load i32, i32* %flags, align 64
  %and = and i32 %2, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3, label %if.else

do.body3:                                         ; preds = %if.end
  %cpu_pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 20
  %3 = load %struct.pool_workqueue*, %struct.pool_workqueue** %cpu_pwqs, align 8
  %4 = ptrtoint %struct.pool_workqueue* %3 to i64
  %idxprom = sext i32 %cpu.addr.0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add10 = add i64 %5, %4
  %6 = inttoptr i64 %add10 to %struct.pool_workqueue*
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call11 = call fastcc %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* noundef %wq) #23
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.body3
  %pwq.0 = phi %struct.pool_workqueue* [ %call11, %if.else ], [ %6, %do.body3 ]
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0, i64 0, i32 8
  %call13 = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool14.not = icmp eq i32 %call13, 0
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !52
  call fastcc void @rcu_read_unlock() #23
  ret i1 %tobool14.not
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #28, !srcloc !53
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* noundef %wq) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 21, i64 0
  %0 = load volatile %struct.pool_workqueue*, %struct.pool_workqueue** %arrayidx, align 8
  ret %struct.pool_workqueue* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @work_busy(%struct.work_struct* noundef %work) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = and i32 %2, 1
  call fastcc void @__rcu_read_lock() #22
  %call1 = call fastcc %struct.worker_pool* @get_work_pool(%struct.work_struct* noundef %work) #23
  %tobool2.not = icmp eq %struct.worker_pool* %call1, null
  br i1 %tobool2.not, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %call1, i64 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #23
  %call5 = call fastcc %struct.worker* @find_worker_executing_work(%struct.worker_pool* noundef nonnull %call1, %struct.work_struct* noundef %work) #23
  %tobool6.not = icmp eq %struct.worker* %call5, null
  %or8 = or i32 %3, 2
  %spec.select30 = select i1 %tobool6.not, i32 %3, i32 %or8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call4) #23
  br label %if.end19

if.end19:                                         ; preds = %do.body, %entry
  %ret.2 = phi i32 [ %spec.select30, %do.body ], [ %3, %entry ]
  call fastcc void @rcu_read_unlock() #23
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker_pool* @get_work_pool(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i64 %0, -256
  %1 = inttoptr i64 %and2 to %struct.pool_workqueue*
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %1, i64 0, i32 0
  %2 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %0, 5
  %conv = trunc i64 %shr to i32
  %cmp = icmp eq i32 %conv, 2147483647
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %sext = shl i64 %shr, 32
  %conv6 = ashr exact i64 %sext, 32
  %call7 = call i8* @idr_find(%struct.idr* noundef nonnull @worker_pool_idr, i64 noundef %conv6) #22
  %3 = bitcast i8* %call7 to %struct.worker_pool*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi %struct.worker_pool* [ %2, %if.then ], [ %3, %if.end5 ], [ null, %if.end ]
  ret %struct.worker_pool* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !54
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #23
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.worker* @find_worker_executing_work(%struct.worker_pool* nocapture noundef readonly %pool, %struct.work_struct* noundef %work) unnamed_addr #12 {
entry:
  %0 = ptrtoint %struct.work_struct* %work to i64
  %mul.i = mul i64 %0, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 58
  %first = getelementptr %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 12, i64 %shr.i, i32 0
  %1 = bitcast %struct.hlist_node** %first to %struct.worker**
  %worker.032 = load %struct.worker*, %struct.worker** %1, align 8
  %tobool2.not33 = icmp eq %struct.worker* %worker.032, null
  br i1 %tobool2.not33, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %worker.034 = phi %struct.worker* [ %worker.032, %for.body.lr.ph ], [ %worker.0, %for.inc ]
  %current_work = getelementptr inbounds %struct.worker, %struct.worker* %worker.034, i64 0, i32 1
  %2 = load %struct.work_struct*, %struct.work_struct** %current_work, align 8
  %cmp = icmp eq %struct.work_struct* %2, %work
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %current_func = getelementptr inbounds %struct.worker, %struct.worker* %worker.034, i64 0, i32 2
  %3 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %4 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %func, align 8
  %cmp3 = icmp eq void (%struct.work_struct*)* %3, %4
  br i1 %cmp3, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %5 = bitcast %struct.worker* %worker.034 to %struct.worker**
  %worker.0 = load %struct.worker*, %struct.worker** %5, align 8
  %tobool2.not = icmp eq %struct.worker* %worker.0, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %worker.0.lcssa = phi %struct.worker* [ null, %entry ], [ null, %for.inc ], [ %worker.034, %land.lhs.true ]
  ret %struct.worker* %worker.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_worker_desc(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %call = call fastcc %struct.worker* @current_wq_worker() #23
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !21
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.va_start(i8* nonnull %0)
  %arraydecay = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 13, i64 0
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call2 = call i32 @vsnprintf(i8* noundef %arraydecay, i64 noundef 24, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #22
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #24
  call void @llvm.va_end(i8* nonnull %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @print_worker_info(i8* noundef %log_lvl, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %fn = alloca void (%struct.work_struct*)**, align 8
  %name = alloca [24 x i8], align 4
  %desc = alloca [24 x i8], align 4
  %pwq = alloca %struct.pool_workqueue*, align 8
  %wq = alloca %struct.workqueue_struct*, align 8
  %0 = bitcast void (%struct.work_struct*)*** %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store void (%struct.work_struct*)** null, void (%struct.work_struct*)*** %fn, align 8
  %1 = getelementptr inbounds [24 x i8], [24 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %2 = getelementptr inbounds [24 x i8], [24 x i8]* %desc, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %3 = bitcast %struct.pool_workqueue** %pwq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #24
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %pwq, align 8
  %4 = bitcast %struct.workqueue_struct** %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #24
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %wq, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @kthread_probe_data(%struct.task_struct* noundef %task) #22
  %current_func = getelementptr inbounds i8, i8* %call, i64 24
  %call1 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %0, i8* noundef %current_func, i64 noundef 8) #22
  %current_pwq = getelementptr inbounds i8, i8* %call, i64 32
  %call2 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %3, i8* noundef %current_pwq, i64 noundef 8) #22
  %6 = load %struct.pool_workqueue*, %struct.pool_workqueue** %pwq, align 8
  %wq3 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %6, i64 0, i32 1
  %7 = bitcast %struct.workqueue_struct** %wq3 to i8*
  %call4 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %4, i8* noundef %7, i64 noundef 8) #22
  %8 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %arraydecay6 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %8, i64 0, i32 16, i64 0
  %call7 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %1, i8* noundef %arraydecay6, i64 noundef 23) #22
  %desc9 = getelementptr inbounds i8, i8* %call, i64 116
  %call11 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %2, i8* noundef %desc9, i64 noundef 23) #22
  %9 = load void (%struct.work_struct*)**, void (%struct.work_struct*)*** %fn, align 8
  %tobool12 = icmp ne void (%struct.work_struct*)** %9, null
  %10 = load i8, i8* %1, align 4
  %tobool13 = icmp ne i8 %10, 0
  %or.cond = select i1 %tobool12, i1 true, i1 %tobool13
  %11 = load i8, i8* %2, align 4
  %tobool17 = icmp ne i8 %11, 0
  %or.cond44 = select i1 %or.cond, i1 true, i1 %tobool17
  br i1 %or.cond44, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %log_lvl, i8* noundef nonnull %1, void (%struct.work_struct*)** noundef %9) #26
  %call23 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull %2) #22
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end35, label %do.end28

do.end28:                                         ; preds = %do.end
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %2) #26
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.end28
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #26
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kthread_probe_data(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_get_next(%struct.idr* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pr_cont_pool_info(%struct.worker_pool* nocapture noundef readonly %pool) unnamed_addr #0 {
entry:
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  %0 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %0, i64 0, i32 1, i64 0
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 256, %struct.cpumask* noundef %arraydecay) #26
  %node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 2
  %1 = load i32, i32* %node, align 8
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %do.end7, label %do.end2

do.end2:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i32 noundef %1) #26
  br label %do.end7

do.end7:                                          ; preds = %do.end2, %entry
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %2 = load i32, i32* %flags, align 16
  %3 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %3, i64 0, i32 0
  %4 = load i32, i32* %nice, align 8
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 noundef %2, i32 noundef %4) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #13 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wq_worker_comm(i8* noundef %buf, i64 noundef %size, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 81, i64 0
  %call = call i64 @strscpy(i8* noundef %buf, i8* noundef %arraydecay, i64 noundef %size) #22
  %0 = and i64 %call, 2147483648
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end28, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @kthread_data(%struct.task_struct* noundef %task) #22
  %pool4 = getelementptr inbounds i8, i8* %call3, i64 72
  %2 = bitcast i8* %pool4 to %struct.worker_pool**
  %3 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %tobool5.not = icmp eq %struct.worker_pool* %3, null
  br i1 %tobool5.not, label %if.end28, label %if.then6

if.then6:                                         ; preds = %if.then2
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %desc = getelementptr inbounds i8, i8* %call3, i64 116
  %4 = load i8, i8* %desc, align 4
  %cmp8.not = icmp eq i8 %4, 0
  br i1 %cmp8.not, label %if.end25, label %if.then10

if.then10:                                        ; preds = %if.then6
  %current_work = getelementptr inbounds i8, i8* %call3, i64 16
  %5 = bitcast i8* %current_work to %struct.work_struct**
  %6 = load %struct.work_struct*, %struct.work_struct** %5, align 8
  %tobool11.not = icmp eq %struct.work_struct* %6, null
  %sext = shl i64 %call, 32
  %idx.ext17 = ashr exact i64 %sext, 32
  %add.ptr18 = getelementptr i8, i8* %buf, i64 %idx.ext17
  %sub20 = sub i64 %size, %idx.ext17
  %. = select i1 %tobool11.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %call16 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr18, i64 noundef %sub20, i8* noundef %., i8* noundef %desc) #22
  br label %if.end25

if.end25:                                         ; preds = %if.then10, %if.then6
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  br label %if.end28

if.end28:                                         ; preds = %if.then2, %if.end25, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strscpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @workqueue_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %1 = inttoptr i64 %add to [2 x %struct.worker_pool]*
  %arrayidx2 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %1, i64 0, i64 0
  %arrayidx1327 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %1, i64 0, i64 2
  %cmp28 = icmp ult %struct.worker_pool* %arrayidx2, %arrayidx1327
  br i1 %cmp28, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i64 [ %4, %for.inc ], [ %0, %entry ]
  %pool.029 = phi %struct.worker_pool* [ %incdec.ptr, %for.inc ], [ %arrayidx2, %entry ]
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.029, i64 0, i32 7
  %3 = load i32, i32* %nr_workers, align 16
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call = call fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef %pool.029) #23
  %tobool14.not = icmp eq %struct.worker* %call, null
  br i1 %tobool14.not, label %cleanup, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  %.pre = load i64, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body
  %4 = phi i64 [ %.pre, %if.end.for.inc_crit_edge ], [ %2, %for.body ]
  %incdec.ptr = getelementptr %struct.worker_pool, %struct.worker_pool* %pool.029, i64 1
  %add12 = add i64 %4, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %5 = inttoptr i64 %add12 to [2 x %struct.worker_pool]*
  %arrayidx13 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %5, i64 0, i64 2
  %cmp = icmp ult %struct.worker_pool* %incdec.ptr, %arrayidx13
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %id_buf = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %id_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !21
  %worker_ida = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 16
  %call = call fastcc i32 @ida_alloc(%struct.ida* noundef %worker_ida) #23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 2
  %call1 = call fastcc %struct.worker* @alloc_worker() #23
  %tobool.not = icmp eq %struct.worker* %call1, null
  br i1 %tobool.not, label %fail, label %if.end3

if.end3:                                          ; preds = %if.end
  %id4 = getelementptr inbounds %struct.worker, %struct.worker* %call1, i64 0, i32 11
  store i32 %call, i32* %id4, align 4
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 1
  %1 = load i32, i32* %cpu, align 4
  %cmp5 = icmp sgt i32 %1, -1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  %2 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %2, i64 0, i32 0
  %3 = load i32, i32* %nice, align 8
  %cmp8 = icmp slt i32 %3, 0
  %cond = select i1 %cmp8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i32 noundef %1, i32 noundef %call, i8* noundef %cond) #22
  br label %if.end13

if.else:                                          ; preds = %if.end3
  %id11 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 3
  %4 = load i32, i32* %id11, align 4
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 noundef %4, i32 noundef %call) #22
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %5 = bitcast %struct.worker* %call1 to i8*
  %6 = load i32, i32* %node, align 8
  %call16 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @worker_thread, i8* noundef nonnull %5, i32 noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* noundef nonnull %0) #22
  %task = getelementptr inbounds %struct.worker, %struct.worker* %call1, i64 0, i32 6
  store %struct.task_struct* %call16, %struct.task_struct** %task, align 8
  %7 = bitcast %struct.task_struct* %call16 to i8*
  %call18 = call fastcc i1 @IS_ERR(i8* noundef %7) #23
  br i1 %call18, label %fail, label %if.end20

if.end20:                                         ; preds = %if.end13
  %attrs22 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  %8 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs22, align 8
  %nice23 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %8, i64 0, i32 0
  %9 = load i32, i32* %nice23, align 8
  %conv = sext i32 %9 to i64
  call void @set_user_nice(%struct.task_struct* noundef %call16, i64 noundef %conv) #22
  %10 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %11 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs22, align 8
  %arraydecay26 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %11, i64 0, i32 1, i64 0
  call void @kthread_bind_mask(%struct.task_struct* noundef %10, %struct.cpumask* noundef %arraydecay26) #22
  call fastcc void @worker_attach_to_pool(%struct.worker* noundef nonnull %call1, %struct.worker_pool* noundef %pool) #23
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %pool27 = getelementptr inbounds %struct.worker, %struct.worker* %call1, i64 0, i32 7
  %12 = load %struct.worker_pool*, %struct.worker_pool** %pool27, align 8
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %12, i64 0, i32 7
  %13 = load i32, i32* %nr_workers, align 16
  %inc = add i32 %13, 1
  store i32 %inc, i32* %nr_workers, align 16
  call fastcc void @worker_enter_idle(%struct.worker* noundef nonnull %call1) #23
  %14 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call29 = call i32 @wake_up_process(%struct.task_struct* noundef %14) #22
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  br label %cleanup

fail:                                             ; preds = %if.end, %if.end13
  %.pre-phi = bitcast %struct.worker* %call1 to i8*
  call void @ida_free(%struct.ida* noundef %worker_ida, i32 noundef %call) #22
  call void @kfree(i8* noundef %.pre-phi) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %fail, %if.end20
  %retval.0 = phi %struct.worker* [ null, %fail ], [ %call1, %if.end20 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret %struct.worker* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @workqueue_online_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %pi = alloca i32, align 4
  %0 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  store i32 0, i32* %pi, align 4
  %call31 = call i8* @idr_get_next(%struct.idr* noundef nonnull @worker_pool_idr, i32* noundef nonnull %pi) #22
  %cmp.not32 = icmp eq i8* %call31, null
  br i1 %cmp.not32, label %for.cond7.preheader, label %for.body

for.body:                                         ; preds = %entry, %if.end6
  %call33 = phi i8* [ %call, %if.end6 ], [ %call31, %entry ]
  %1 = bitcast i8* %call33 to %struct.worker_pool*
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %cpu1 = getelementptr inbounds i8, i8* %call33, i64 4
  %2 = bitcast i8* %cpu1 to i32*
  %3 = load i32, i32* %2, align 4
  %cmp2 = icmp eq i32 %3, %cpu
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call fastcc void @rebind_workers(%struct.worker_pool* noundef nonnull %1) #23
  br label %if.end6

if.else:                                          ; preds = %for.body
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  call fastcc void @restore_unbound_workers_cpumask(%struct.worker_pool* noundef nonnull %1, i32 noundef %cpu) #23
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %if.then
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %4 = load i32, i32* %pi, align 4
  %add = add i32 %4, 1
  store i32 %add, i32* %pi, align 4
  %call = call i8* @idr_get_next(%struct.idr* noundef nonnull @worker_pool_idr, i32* noundef nonnull %pi) #22
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %for.cond7.preheader, label %for.body

for.cond7.preheader:                              ; preds = %if.end6, %entry
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.cond7
  %.in = phi %struct.list_head** [ %next, %for.cond7 ], [ getelementptr inbounds (%struct.list_head, %struct.list_head* @workqueues, i64 0, i32 0), %for.cond7.preheader ]
  %5 = load %struct.list_head*, %struct.list_head** %.in, align 8
  %cmp8.not = icmp eq %struct.list_head* %5, @workqueues
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0
  br i1 %cmp8.not, label %for.end18, label %for.cond7

for.end18:                                        ; preds = %for.cond7
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rebind_workers(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 14
  %0 = bitcast %struct.list_head* %workers to i8**
  %.pn133 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn133 to %struct.list_head*
  %cmp.not134 = icmp eq %struct.list_head* %workers, %1
  br i1 %cmp.not134, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 1
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %.pn135 = phi i8* [ %.pn133, %for.body.lr.ph ], [ %.pn, %if.end ]
  %task = getelementptr i8, i8* %.pn135, i64 -16
  %2 = bitcast i8* %task to %struct.task_struct**
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = load i32, i32* %cpu, align 4
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %3, i32 noundef %4) #22
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %6, i64 0, i32 1, i64 0
  %call = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %5, %struct.cpumask* noundef %arraydecay) #22
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 5031; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = bitcast i8* %.pn135 to i8**
  %.pn = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %workers, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %9 = load i32, i32* %flags, align 16
  %and = and i32 %9, -5
  store i32 %and, i32* %flags, align 16
  %.pn132136 = load i8*, i8** %0, align 8
  %10 = bitcast i8* %.pn132136 to %struct.list_head*
  %cmp41.not137 = icmp eq %struct.list_head* %workers, %10
  br i1 %cmp41.not137, label %for.end100, label %for.body45

for.body45:                                       ; preds = %for.end, %if.end71
  %.pn132138 = phi i8* [ %.pn132, %if.end71 ], [ %.pn132136, %for.end ]
  %flags46 = getelementptr i8, i8* %.pn132138, i64 24
  %11 = bitcast i8* %flags46 to i32*
  %12 = load i32, i32* %11, align 8
  %and47 = and i32 %12, 4
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %for.body45
  %task50 = getelementptr i8, i8* %.pn132138, i64 -16
  %13 = bitcast i8* %task50 to %struct.task_struct**
  %14 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %call51 = call i32 @wake_up_process(%struct.task_struct* noundef %14) #22
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %for.body45
  %and54 = and i32 %12, 128
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then70, label %if.end71, !prof !12

if.then70:                                        ; preds = %if.end52
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 5067; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !57
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end52
  %or = and i32 %12, -385
  %and80 = or i32 %or, 256
  store volatile i32 %and80, i32* %11, align 8
  %15 = bitcast i8* %.pn132138 to i8**
  %.pn132 = load i8*, i8** %15, align 8
  %16 = bitcast i8* %.pn132 to %struct.list_head*
  %cmp41.not = icmp eq %struct.list_head* %workers, %16
  br i1 %cmp41.not, label %for.end100, label %for.body45

for.end100:                                       ; preds = %if.end71, %for.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_unbound_workers_cpumask(%struct.worker_pool* noundef readonly %pool, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  %0 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %0, i64 0, i32 1, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay3 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %1, i64 0, i32 1, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef nonnull @restore_unbound_workers_cpumask.cpumask, %struct.cpumask* noundef %arraydecay3, %struct.cpumask* noundef nonnull @__cpu_online_mask) #23
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 14
  %2 = bitcast %struct.list_head* %workers to i8**
  %.pn47 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn47 to %struct.list_head*
  %cmp.not48 = icmp eq %struct.list_head* %workers, %3
  br i1 %cmp.not48, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %if.end20
  %.pn49 = phi i8* [ %.pn, %if.end20 ], [ %.pn47, %if.end ]
  %task = getelementptr i8, i8* %.pn49, i64 -16
  %4 = bitcast i8* %task to %struct.task_struct**
  %5 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %call9 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %5, %struct.cpumask* noundef nonnull @restore_unbound_workers_cpumask.cpumask) #22
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then19, label %if.end20, !prof !12

if.then19:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 5101; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !58
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.body
  %6 = bitcast i8* %.pn49 to i8**
  %.pn = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %workers, %7
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end20, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @workqueue_offline_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cmp.not = icmp eq i32 %1, %cpu
  br i1 %cmp.not, label %if.end18, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 5149; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !59
  br label %cleanup

if.end18:                                         ; preds = %entry
  call fastcc void @unbind_workers(i32 noundef %cpu) #23
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end18
  %.in = phi %struct.list_head** [ getelementptr inbounds (%struct.list_head, %struct.list_head* @workqueues, i64 0, i32 0), %if.end18 ], [ %next, %for.cond ]
  %2 = load %struct.list_head*, %struct.list_head** %.in, align 8
  %cmp23.not = icmp eq %struct.list_head* %2, @workqueues
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i64 0, i32 0
  br i1 %cmp23.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unbind_workers(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %1 = inttoptr i64 %add to [2 x %struct.worker_pool]*
  %arrayidx2 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %1, i64 0, i64 0
  %arrayidx13117 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %1, i64 0, i64 2
  %cmp118 = icmp ult %struct.worker_pool* %arrayidx2, %arrayidx13117
  br i1 %cmp118, label %for.body, label %for.end77

for.body:                                         ; preds = %entry, %for.end73
  %pool.0119 = phi %struct.worker_pool* [ %incdec.ptr, %for.end73 ], [ %arrayidx2, %entry ]
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0119, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0119, i64 0, i32 14
  %2 = bitcast %struct.list_head* %workers to i8**
  %.pn110 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn110 to %struct.list_head*
  %cmp20.not111 = icmp eq %struct.list_head* %workers, %3
  br i1 %cmp20.not111, label %for.end, label %for.body21

for.body21:                                       ; preds = %for.body, %for.body21
  %.pn112 = phi i8* [ %.pn, %for.body21 ], [ %.pn110, %for.body ]
  %flags = getelementptr i8, i8* %.pn112, i64 24
  %4 = bitcast i8* %flags to i32*
  %5 = load i32, i32* %4, align 8
  %or = or i32 %5, 128
  store i32 %or, i32* %4, align 8
  %6 = bitcast i8* %.pn112 to i8**
  %.pn = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp20.not = icmp eq %struct.list_head* %workers, %7
  br i1 %cmp20.not, label %for.end, label %for.body21

for.end:                                          ; preds = %for.body21, %for.body
  %flags30 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0119, i64 0, i32 4
  %8 = load i32, i32* %flags30, align 16
  %or31 = or i32 %8, 4
  store i32 %or31, i32* %flags30, align 16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %.pn109113 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %.pn109113 to %struct.list_head*
  %cmp44.not114 = icmp eq %struct.list_head* %workers, %9
  br i1 %cmp44.not114, label %for.end73, label %for.body46

for.body46:                                       ; preds = %for.end, %if.end
  %.pn109115 = phi i8* [ %.pn109, %if.end ], [ %.pn109113, %for.end ]
  %task = getelementptr i8, i8* %.pn109115, i64 -16
  %10 = bitcast i8* %task to %struct.task_struct**
  %11 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %11, i32 noundef -1) #22
  %12 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %call = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %12, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp48 = icmp slt i32 %call, 0
  br i1 %cmp48, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %for.body46
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 4975; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body46
  %13 = bitcast i8* %.pn109115 to i8**
  %.pn109 = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn109 to %struct.list_head*
  %cmp44.not = icmp eq %struct.list_head* %workers, %14
  br i1 %cmp44.not, label %for.end73, label %for.body46

for.end73:                                        ; preds = %if.end, %for.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  call void @schedule() #22
  %counter.i = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0119, i64 0, i32 21, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @wake_up_worker(%struct.worker_pool* noundef %pool.0119) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %incdec.ptr = getelementptr %struct.worker_pool, %struct.worker_pool* %pool.0119, i64 1
  %15 = load i64, i64* %arrayidx, align 8
  %add12 = add i64 %15, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %16 = inttoptr i64 %add12 to [2 x %struct.worker_pool]*
  %arrayidx13 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %16, i64 0, i64 2
  %cmp = icmp ult %struct.worker_pool* %incdec.ptr, %arrayidx13
  br i1 %cmp, label %for.body, label %for.end77

for.end77:                                        ; preds = %for.end73, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @work_on_cpu(i32 noundef %cpu, i64 (i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %wfc = alloca %struct.work_for_cpu, align 8
  %0 = bitcast %struct.work_for_cpu* %wfc to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #24
  %work = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 0
  %fn1 = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 1
  %1 = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 0, i32 1
  %2 = bitcast %struct.list_head* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i64 (i8*)* %fn, i64 (i8*)** %fn1, align 8
  %arg2 = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 2
  store i8* %arg, i8** %arg2, align 8
  %ret = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 3
  store i64 0, i64* %ret, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry6 = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry6) #23
  %func = getelementptr inbounds %struct.work_for_cpu, %struct.work_for_cpu* %wfc, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* @work_for_cpu_fn, void (%struct.work_struct*)** %func, align 8
  call fastcc void @schedule_work_on(i32 noundef %cpu, %struct.work_struct* noundef nonnull %work) #23
  %call10 = call i1 @flush_work(%struct.work_struct* noundef nonnull %work) #23
  %3 = load i64, i64* %ret, align 8
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #24
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @work_for_cpu_fn(%struct.work_struct* nocapture noundef %work) #0 {
entry:
  %fn = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1
  %0 = bitcast %struct.work_struct* %fn to i64 (i8*)**
  %1 = load i64 (i8*)*, i64 (i8*)** %0, align 8
  %arg = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1
  %2 = bitcast %struct.list_head* %arg to i8**
  %3 = load i8*, i8** %2, align 8
  %call = call i64 %1(i8* noundef %3) #22
  %ret = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1, i32 1, i32 1
  %4 = bitcast %struct.list_head** %ret to i64*
  store i64 %call, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @work_on_cpu_safe(i32 noundef %cpu, i64 (i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #23
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @work_on_cpu(i32 noundef %cpu, i64 (i8*)* noundef %fn, i8* noundef %arg) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call1, %if.then ], [ -19, %entry ]
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #23
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @workqueue_set_unbound_cpumask(%struct.cpumask* noundef %cpumask) local_unnamed_addr #0 {
entry:
  %saved_cpumask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %saved_cpumask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !21
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %saved_cpumask) #23
  call fastcc void @cpumask_and(%struct.cpumask* noundef %cpumask, %struct.cpumask* noundef %cpumask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #23
  %call2 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %cpumask) #23
  br i1 %call2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %entry
  call fastcc void @apply_wqattrs_lock() #23
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %saved_cpumask, i64 0, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0)) #23
  call fastcc void @cpumask_copy(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0), %struct.cpumask* noundef %cpumask) #23
  %call4 = call fastcc i32 @workqueue_apply_unbound_cpumask() #23
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  call fastcc void @cpumask_copy(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0), %struct.cpumask* noundef nonnull %arraydecay) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  call fastcc void @apply_wqattrs_unlock() #23
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %ret.0 = phi i32 [ -22, %entry ], [ %call4, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @apply_wqattrs_lock() unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @workqueue_apply_unbound_cpumask() unnamed_addr #0 {
entry:
  %ctxs = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %ctxs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ctxs, i64 0, i32 0
  store %struct.list_head* %ctxs, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %ctxs, i64 0, i32 1
  store %struct.list_head* %ctxs, %struct.list_head** %prev, align 8
  %.pn77 = load i8*, i8** bitcast (%struct.list_head* @workqueues to i8**), align 8
  %cmp.not80 = icmp eq i8* %.pn77, bitcast (%struct.list_head* @workqueues to i8*)
  br i1 %cmp.not80, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn81 = phi i8* [ %.pn, %for.inc ], [ %.pn77, %entry ]
  %flags = getelementptr i8, i8* %.pn81, i64 240
  %1 = bitcast i8* %flags to i32*
  %2 = load i32, i32* %1, align 64
  %3 = and i32 %2, 131074
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %if.end8, label %for.inc

if.end8:                                          ; preds = %for.body
  %wq.083.in = getelementptr i8, i8* %.pn81, i64 -16
  %wq.083 = bitcast i8* %wq.083.in to %struct.workqueue_struct*
  %unbound_attrs = getelementptr i8, i8* %.pn81, i64 136
  %5 = bitcast i8* %unbound_attrs to %struct.workqueue_attrs**
  %6 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %5, align 8
  %call = call fastcc %struct.apply_wqattrs_ctx* @apply_wqattrs_prepare(%struct.workqueue_struct* noundef %wq.083, %struct.workqueue_attrs* noundef %6) #23
  %tobool9.not = icmp eq %struct.apply_wqattrs_ctx* %call, null
  br i1 %tobool9.not, label %for.end.loopexit, label %if.end11

if.end11:                                         ; preds = %if.end8
  %list12 = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %call, i64 0, i32 2
  call fastcc void @list_add_tail(%struct.list_head* noundef %list12, %struct.list_head* noundef nonnull %ctxs) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end11
  %7 = bitcast i8* %.pn81 to i8**
  %.pn = load i8*, i8** %7, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @workqueues to i8*)
  br i1 %cmp.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end8, %for.inc
  %cmp.not.lcssa.ph = phi i1 [ true, %for.inc ], [ false, %if.end8 ]
  %ret.0.ph = phi i32 [ 0, %for.inc ], [ -12, %if.end8 ]
  %.phi.trans.insert = bitcast %struct.list_head* %ctxs to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %for.end

for.end:                                          ; preds = %entry, %for.end.loopexit
  %8 = phi i8* [ %.pre, %for.end.loopexit ], [ %0, %entry ]
  %cmp.not.lcssa = phi i1 [ %cmp.not.lcssa.ph, %for.end.loopexit ], [ true, %entry ]
  %ret.0 = phi i32 [ %ret.0.ph, %for.end.loopexit ], [ 0, %entry ]
  %9 = bitcast i8* %8 to %struct.list_head*
  %cmp38.not92 = icmp eq %struct.list_head* %ctxs, %9
  br i1 %cmp38.not92, label %for.end53, label %for.body40

for.body40:                                       ; preds = %for.end, %if.end43
  %.pn7594.in.in = phi i8* [ %.pn7594, %if.end43 ], [ %8, %for.end ]
  %ctx.093.in = getelementptr i8, i8* %.pn7594.in.in, i64 -16
  %ctx.093 = bitcast i8* %ctx.093.in to %struct.apply_wqattrs_ctx*
  %.pn7594.in = bitcast i8* %.pn7594.in.in to i8**
  %.pn7594 = load i8*, i8** %.pn7594.in, align 8
  br i1 %cmp.not.lcssa, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body40
  call fastcc void @apply_wqattrs_commit(%struct.apply_wqattrs_ctx* noundef %ctx.093) #23
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.body40
  call fastcc void @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx* noundef %ctx.093) #23
  %10 = bitcast i8* %.pn7594 to %struct.list_head*
  %cmp38.not = icmp eq %struct.list_head* %ctxs, %10
  br i1 %cmp38.not, label %for.end53, label %for.body40

for.end53:                                        ; preds = %if.end43, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @apply_wqattrs_unlock() unnamed_addr #0 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @wq_sysfs_init() #14 section ".init.text" {
entry:
  %call = call i32 @subsys_virtual_register(%struct.bus_type* noundef nonnull @wq_subsys, %struct.attribute_group** noundef null) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.bus_type, %struct.bus_type* @wq_subsys, i64 0, i32 2), align 8
  %call1 = call i32 @device_create_file(%struct.device* noundef %0, %struct.device_attribute* noundef nonnull @wq_sysfs_cpumask_attr) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wq_device_release(%struct.device* noundef %dev) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 36
  %0 = bitcast i32* %add.ptr to i8*
  call void @kfree(i8* noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @dev_set_uevent_suppress(%struct.device* nocapture noundef %dev, i32 noundef %val) unnamed_addr #15 {
entry:
  %uevent_suppress = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %0 = trunc i32 %val to i8
  %bf.load = load i8, i8* %uevent_suppress, align 4
  %bf.value = shl i8 %0, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %uevent_suppress, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @workqueue_init_early() local_unnamed_addr #14 section ".init.text" {
entry:
  call fastcc void @cpumask_copy(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0), %struct.cpumask* noundef nonnull @__cpu_possible_mask) #23
  %call13 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 noundef 256, i32 noundef 256, i32 noundef 262144, void (i8*)* noundef null) #22
  store %struct.kmem_cache* %call13, %struct.kmem_cache** @pwq_cache, align 8
  %call14231 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp232 = icmp ult i32 %call14231, %0
  br i1 %cmp232, label %for.body, label %for.body85.preheader

for.body85.preheader:                             ; preds = %for.cond.loopexit, %entry
  br label %for.body85

for.cond.loopexit.loopexit:                       ; preds = %do.end80
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.loopexit

for.cond.loopexit:                                ; preds = %for.cond.loopexit.loopexit, %for.body
  %1 = phi i32 [ %.pre, %for.cond.loopexit.loopexit ], [ %2, %for.body ]
  %call14 = call i32 @cpumask_next(i32 noundef %call14233, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %cmp = icmp ult i32 %call14, %1
  br i1 %cmp, label %for.body, label %for.body85.preheader

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %2 = phi i32 [ %1, %for.cond.loopexit ], [ %0, %entry ]
  %call14233 = phi i32 [ %call14, %for.cond.loopexit ], [ %call14231, %entry ]
  %idxprom = sext i32 %call14233 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %4 = inttoptr i64 %add to [2 x %struct.worker_pool]*
  %arrayidx20 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %4, i64 0, i64 0
  %arrayidx32227 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %4, i64 0, i64 2
  %cmp33228 = icmp ult %struct.worker_pool* %arrayidx20, %arrayidx32227
  br i1 %cmp33228, label %do.body36, label %for.cond.loopexit

do.body36:                                        ; preds = %for.body, %do.end80
  %i.0230 = phi i32 [ %inc, %do.end80 ], [ 0, %for.body ]
  %pool.0229 = phi %struct.worker_pool* [ %incdec.ptr, %do.end80 ], [ %arrayidx20, %for.body ]
  %call37 = call fastcc i32 @init_worker_pool(%struct.worker_pool* noundef %pool.0229) #23
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end55, label %do.body47, !prof !9

do.body47:                                        ; preds = %do.body36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6009; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !61
  unreachable

do.end55:                                         ; preds = %do.body36
  %cpu56 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0229, i64 0, i32 1
  store i32 %call14233, i32* %cpu56, align 4
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0229, i64 0, i32 17
  %5 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %5, i64 0, i32 1, i64 0
  %call57 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %call14233) #23
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull %call57) #23
  %idxprom58 = sext i32 %i.0230 to i64
  %arrayidx59 = getelementptr [2 x i32], [2 x i32]* @__const.workqueue_init_early.std_nice, i64 0, i64 %idxprom58
  %6 = load i32, i32* %arrayidx59, align 4
  %7 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %7, i64 0, i32 0
  store i32 %6, i32* %nice, align 8
  %node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0229, i64 0, i32 2
  store i32 0, i32* %node, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %call62 = call fastcc i32 @worker_pool_assign_id(%struct.worker_pool* noundef %pool.0229) #23
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.end80, label %do.body72, !prof !9

do.body72:                                        ; preds = %do.end55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6017; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !62
  unreachable

do.end80:                                         ; preds = %do.end55
  %inc = add i32 %i.0230, 1
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %incdec.ptr = getelementptr %struct.worker_pool, %struct.worker_pool* %pool.0229, i64 1
  %8 = load i64, i64* %arrayidx, align 8
  %add31 = add i64 %8, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %9 = inttoptr i64 %add31 to [2 x %struct.worker_pool]*
  %arrayidx32 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %9, i64 0, i64 2
  %cmp33 = icmp ult %struct.worker_pool* %incdec.ptr, %arrayidx32
  br i1 %cmp33, label %do.body36, label %for.cond.loopexit.loopexit

for.body85:                                       ; preds = %for.body85.preheader, %do.end135
  %cmp83 = phi i1 [ false, %do.end135 ], [ true, %for.body85.preheader ]
  %indvars.iv = phi i64 [ 1, %do.end135 ], [ 0, %for.body85.preheader ]
  %call88 = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %tobool89.not = icmp eq %struct.workqueue_attrs* %call88, null
  br i1 %tobool89.not, label %do.body100, label %do.end108, !prof !12

do.body100:                                       ; preds = %for.body85
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6026; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !63
  unreachable

do.end108:                                        ; preds = %for.body85
  %arrayidx110 = getelementptr [2 x i32], [2 x i32]* @__const.workqueue_init_early.std_nice, i64 0, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx110, align 4
  %nice111 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call88, i64 0, i32 0
  store i32 %10, i32* %nice111, align 8
  %arrayidx113 = getelementptr [2 x %struct.workqueue_attrs*], [2 x %struct.workqueue_attrs*]* @unbound_std_wq_attrs, i64 0, i64 %indvars.iv
  store %struct.workqueue_attrs* %call88, %struct.workqueue_attrs** %arrayidx113, align 8
  %call115 = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %tobool116.not = icmp eq %struct.workqueue_attrs* %call115, null
  br i1 %tobool116.not, label %do.body127, label %do.end135, !prof !12

do.body127:                                       ; preds = %do.end108
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6035; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !64
  unreachable

do.end135:                                        ; preds = %do.end108
  %nice138 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call115, i64 0, i32 0
  store i32 %10, i32* %nice138, align 8
  %no_numa = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call115, i64 0, i32 2
  store i8 1, i8* %no_numa, align 8
  %arrayidx140 = getelementptr [2 x %struct.workqueue_attrs*], [2 x %struct.workqueue_attrs*]* @ordered_wq_attrs, i64 0, i64 %indvars.iv
  store %struct.workqueue_attrs* %call115, %struct.workqueue_attrs** %arrayidx140, align 8
  br i1 %cmp83, label %for.body85, label %for.end143

for.end143:                                       ; preds = %do.end135
  %call144 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #23
  store %struct.workqueue_struct* %call144, %struct.workqueue_struct** @system_wq, align 8
  %call145 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 noundef 16, i32 noundef 0) #23
  store %struct.workqueue_struct* %call145, %struct.workqueue_struct** @system_highpri_wq, align 8
  %call146 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #23
  store %struct.workqueue_struct* %call146, %struct.workqueue_struct** @system_long_wq, align 8
  %call147 = call fastcc i32 @cpumask_weight() #23
  %mul = shl i32 %call147, 2
  %11 = icmp sgt i32 %mul, 512
  %cond = select i1 %11, i32 %mul, i32 512
  %call151 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 2, i32 noundef %cond) #23
  store %struct.workqueue_struct* %call151, %struct.workqueue_struct** @system_unbound_wq, align 8
  %call152 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 noundef 4, i32 noundef 0) #23
  store %struct.workqueue_struct* %call152, %struct.workqueue_struct** @system_freezable_wq, align 8
  %call153 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 noundef 128, i32 noundef 0) #23
  store %struct.workqueue_struct* %call153, %struct.workqueue_struct** @system_power_efficient_wq, align 8
  %call154 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 noundef 132, i32 noundef 0) #23
  store %struct.workqueue_struct* %call154, %struct.workqueue_struct** @system_freezable_power_efficient_wq, align 8
  %12 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %tobool156 = icmp eq %struct.workqueue_struct* %12, null
  %13 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_highpri_wq, align 8
  %tobool157 = icmp eq %struct.workqueue_struct* %13, null
  %or.cond = select i1 %tobool156, i1 true, i1 %tobool157
  %14 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_long_wq, align 8
  %tobool159 = icmp eq %struct.workqueue_struct* %14, null
  %or.cond186 = select i1 %or.cond, i1 true, i1 %tobool159
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %tobool161 = icmp eq %struct.workqueue_struct* %15, null
  %or.cond187 = select i1 %or.cond186, i1 true, i1 %tobool161
  %16 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_freezable_wq, align 8
  %tobool163 = icmp eq %struct.workqueue_struct* %16, null
  %or.cond188 = select i1 %or.cond187, i1 true, i1 %tobool163
  %17 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_power_efficient_wq, align 8
  %tobool165 = icmp eq %struct.workqueue_struct* %17, null
  %or.cond189 = select i1 %or.cond188, i1 true, i1 %tobool165
  %tobool166.not = icmp eq %struct.workqueue_struct* %call154, null
  %18 = select i1 %or.cond189, i1 true, i1 %tobool166.not
  br i1 %18, label %do.body177, label %do.end185, !prof !12

do.body177:                                       ; preds = %for.end143
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6056; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !65
  unreachable

do.end185:                                        ; preds = %for.end143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_worker_pool(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 64
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 3
  store i32 -1, i32* %id, align 4
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 1
  store i32 -1, i32* %cpu, align 4
  %node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 2
  store i32 -1, i32* %node, align 8
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %0 = load i32, i32* %flags, align 16
  %or = or i32 %0, 4
  store i32 %or, i32* %flags, align 16
  %1 = load volatile i64, i64* @jiffies, align 64
  %watchdog_ts = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 5
  store i64 %1, i64* %watchdog_ts, align 8
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %worklist) #23
  %idle_list = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %idle_list) #23
  %arraydecay = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 12, i64 0
  call fastcc void @__hash_init(%struct.hlist_head* noundef %arraydecay) #23
  %idle_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 10
  call void @init_timer_key(%struct.timer_list* noundef %idle_timer, void (%struct.timer_list*)* noundef nonnull @idle_worker_timeout, i32 noundef 524288, i8* noundef null, %struct.lock_class_key* noundef null) #22
  %mayday_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 11
  call void @init_timer_key(%struct.timer_list* noundef %mayday_timer, void (%struct.timer_list*)* noundef nonnull @pool_mayday_timeout, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #22
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %workers) #23
  %worker_ida = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 16
  call fastcc void @ida_init(%struct.ida* noundef %worker_ida) #23
  %hash_node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 18
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %hash_node) #23
  %refcnt = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 19
  store i32 1, i32* %refcnt, align 32
  %call = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  store %struct.workqueue_attrs* %call, %struct.workqueue_attrs** %attrs, align 8
  %tobool.not = icmp eq %struct.workqueue_attrs* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #6 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @worker_pool_assign_id(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.worker_pool* %pool to i8*
  %call = call i32 @idr_alloc(%struct.idr* noundef nonnull @worker_pool_idr, i8* noundef %0, i32 noundef 0, i32 noundef 2147483647, i32 noundef 3264) #22
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 3
  store i32 %call, i32* %id, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #22
  ret i32 %call4.i
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @workqueue_init() local_unnamed_addr #14 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call244 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %cmp245 = icmp ult i32 %call244, %0
  br i1 %cmp245, label %do.body, label %for.cond22.preheader

for.cond.loopexit:                                ; preds = %for.body16, %do.body
  %call = call i32 @cpumask_next(i32 noundef %call246, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond.loopexit, %entry
  %.pn247 = load i8*, i8** bitcast (%struct.list_head* @workqueues to i8**), align 8
  %cmp23.not248 = icmp eq i8* %.pn247, bitcast (%struct.list_head* @workqueues to i8*)
  br i1 %cmp23.not248, label %for.end68, label %for.body24

do.body:                                          ; preds = %entry, %for.cond.loopexit
  %call246 = phi i32 [ %call, %for.cond.loopexit ], [ %call244, %entry ]
  %idxprom = sext i32 %call246 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %2 = inttoptr i64 %add to [2 x %struct.worker_pool]*
  %arrayidx2 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %2, i64 0, i64 0
  %arrayidx14241 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %2, i64 0, i64 2
  %cmp15242 = icmp ult %struct.worker_pool* %arrayidx2, %arrayidx14241
  br i1 %cmp15242, label %for.body16, label %for.cond.loopexit

for.body16:                                       ; preds = %do.body, %for.body16
  %pool.0243 = phi %struct.worker_pool* [ %incdec.ptr, %for.body16 ], [ %arrayidx2, %do.body ]
  %node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0243, i64 0, i32 2
  store i32 0, i32* %node, align 8
  %incdec.ptr = getelementptr %struct.worker_pool, %struct.worker_pool* %pool.0243, i64 1
  %3 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %3, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %4 = inttoptr i64 %add13 to [2 x %struct.worker_pool]*
  %arrayidx14 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %4, i64 0, i64 2
  %cmp15 = icmp ult %struct.worker_pool* %incdec.ptr, %arrayidx14
  br i1 %cmp15, label %for.body16, label %for.cond.loopexit

for.body24:                                       ; preds = %for.cond22.preheader, %if.end
  %.pn249 = phi i8* [ %.pn, %if.end ], [ %.pn247, %for.cond22.preheader ]
  %wq.0.in = getelementptr i8, i8* %.pn249, i64 -16
  %wq.0 = bitcast i8* %wq.0.in to %struct.workqueue_struct*
  %call32 = call fastcc i64 @__kern_my_cpu_offset() #23
  %call34 = call fastcc i32 @init_rescuer(%struct.workqueue_struct* noundef %wq.0) #23
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.end, label %do.end46, !prof !9

do.end46:                                         ; preds = %for.body24
  %name = getelementptr i8, i8* %.pn249, i64 160
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i64 0, i64 0), i8* noundef %name) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6097; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %do.end46, %for.body24
  %5 = bitcast i8* %.pn249 to i8**
  %.pn = load i8*, i8** %5, align 8
  %cmp23.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @workqueues to i8*)
  br i1 %cmp23.not, label %for.end68, label %for.body24

for.end68:                                        ; preds = %if.end, %for.cond22.preheader
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %call70255 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp71256 = icmp ult i32 %call70255, %6
  br i1 %cmp71256, label %do.body74, label %for.body132.preheader

for.body132.preheader:                            ; preds = %for.cond69.loopexit, %for.end68
  br label %for.body132

for.cond69.loopexit.loopexit:                     ; preds = %for.cond85
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond69.loopexit

for.cond69.loopexit:                              ; preds = %for.cond69.loopexit.loopexit, %do.body74
  %7 = phi i32 [ %.pre, %for.cond69.loopexit.loopexit ], [ %8, %do.body74 ]
  %call70 = call i32 @cpumask_next(i32 noundef %call70257, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp71 = icmp ult i32 %call70, %7
  br i1 %cmp71, label %do.body74, label %for.body132.preheader

do.body74:                                        ; preds = %for.end68, %for.cond69.loopexit
  %8 = phi i32 [ %7, %for.cond69.loopexit ], [ %6, %for.end68 ]
  %call70257 = phi i32 [ %call70, %for.cond69.loopexit ], [ %call70255, %for.end68 ]
  %idxprom81 = sext i32 %call70257 to i64
  %arrayidx82 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom81
  %9 = load i64, i64* %arrayidx82, align 8
  %add83 = add i64 %9, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %10 = inttoptr i64 %add83 to [2 x %struct.worker_pool]*
  %arrayidx84 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %10, i64 0, i64 0
  %arrayidx96252 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %10, i64 0, i64 2
  %cmp97253 = icmp ult %struct.worker_pool* %arrayidx84, %arrayidx96252
  br i1 %cmp97253, label %for.body99, label %for.cond69.loopexit

for.cond85:                                       ; preds = %for.body99
  %11 = load i64, i64* %arrayidx82, align 8
  %add95 = add i64 %11, ptrtoint ([2 x %struct.worker_pool]* @cpu_worker_pools to i64)
  %12 = inttoptr i64 %add95 to [2 x %struct.worker_pool]*
  %arrayidx96 = getelementptr [2 x %struct.worker_pool], [2 x %struct.worker_pool]* %12, i64 0, i64 2
  %cmp97 = icmp ult %struct.worker_pool* %incdec.ptr123, %arrayidx96
  br i1 %cmp97, label %for.body99, label %for.cond69.loopexit.loopexit

for.body99:                                       ; preds = %do.body74, %for.cond85
  %pool.1254 = phi %struct.worker_pool* [ %incdec.ptr123, %for.cond85 ], [ %arrayidx84, %do.body74 ]
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.1254, i64 0, i32 4
  %13 = load i32, i32* %flags, align 16
  %and = and i32 %13, -5
  store i32 %and, i32* %flags, align 16
  %call101 = call fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef %pool.1254) #23
  %tobool102.not = icmp eq %struct.worker* %call101, null
  %incdec.ptr123 = getelementptr %struct.worker_pool, %struct.worker_pool* %pool.1254, i64 1
  br i1 %tobool102.not, label %do.body113, label %for.cond85, !prof !12

do.body113:                                       ; preds = %for.body99
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6106; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !67
  unreachable

for.body132:                                      ; preds = %for.body132.preheader, %for.inc184
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc184 ], [ 0, %for.body132.preheader ]
  %first = getelementptr [64 x %struct.hlist_head], [64 x %struct.hlist_head]* @unbound_pool_hash, i64 0, i64 %indvars.iv, i32 0
  %14 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool136.not = icmp eq %struct.hlist_node* %14, null
  %add.ptr142236 = getelementptr %struct.hlist_node, %struct.hlist_node* %14, i64 -45
  %tobool144.not258262 = icmp eq %struct.hlist_node* %add.ptr142236, null
  %tobool144.not258 = or i1 %tobool136.not, %tobool144.not258262
  br i1 %tobool144.not258, label %for.inc184, label %do.body146.preheader

do.body146.preheader:                             ; preds = %for.body132
  %15 = bitcast %struct.hlist_node* %add.ptr142236 to %struct.worker_pool*
  br label %do.body146

do.body146:                                       ; preds = %do.body146.preheader, %for.inc168
  %pool.3259 = phi %struct.worker_pool* [ %spec.select239, %for.inc168 ], [ %15, %do.body146.preheader ]
  %call147 = call fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef nonnull %pool.3259) #23
  %tobool148.not = icmp eq %struct.worker* %call147, null
  br i1 %tobool148.not, label %do.body159, label %for.inc168, !prof !12

do.body159:                                       ; preds = %do.body146
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 6111; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !68
  unreachable

for.inc168:                                       ; preds = %do.body146
  %next170 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.3259, i64 0, i32 18, i32 0
  %16 = load %struct.hlist_node*, %struct.hlist_node** %next170, align 16
  %tobool172.not = icmp eq %struct.hlist_node* %16, null
  %add.ptr179235 = getelementptr %struct.hlist_node, %struct.hlist_node* %16, i64 -45
  %17 = bitcast %struct.hlist_node* %add.ptr179235 to %struct.worker_pool*
  %spec.select239 = select i1 %tobool172.not, %struct.worker_pool* null, %struct.worker_pool* %17
  %tobool144.not = icmp eq %struct.worker_pool* %spec.select239, null
  br i1 %tobool144.not, label %for.inc184, label %do.body146

for.inc184:                                       ; preds = %for.inc168, %for.body132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end185, label %for.body132

for.end185:                                       ; preds = %for.inc184
  store i1 true, i1* @wq_online, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !69
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #22
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #22
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #24, !srcloc !70
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !71
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #24, !srcloc !72
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #24, !srcloc !73
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #24, !srcloc !74
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #24, !srcloc !75
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_chained_work(%struct.workqueue_struct* noundef readnone %wq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker* @current_wq_worker() #23
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 3
  %0 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq, align 8
  %wq1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %0, i64 0, i32 1
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq1, align 8
  %cmp = icmp eq %struct.workqueue_struct* %1, %wq
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wq_select_unbound_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %0 = load i8, i8* @wq_debug_force_rr_cpu, align 4, !range !76
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !9

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0)) #23
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end10, label %cleanup

if.else:                                          ; preds = %entry
  %.b84 = load i1, i1* @wq_select_unbound_cpu.printed_dbg_warning, align 1
  br i1 %.b84, label %if.end10, label %do.end

do.end:                                           ; preds = %if.else
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.27, i64 0, i64 0)) #26
  store i1 true, i1* @wq_select_unbound_cpu.printed_dbg_warning, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %do.end, %if.then
  %call11 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0)) #23
  br i1 %call11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %call25 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call25, ptrtoint (i32* @wq_rr_cpu_last to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call27 = call i32 @cpumask_next_and(i32 noundef %2, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0), %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp.not = icmp ult i32 %call27, %3
  br i1 %cmp.not, label %if.end49, label %if.then36, !prof !9

if.then36:                                        ; preds = %if.end13
  %call37 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0), %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp38.not = icmp ult i32 %call37, %3
  br i1 %cmp38.not, label %if.end49, label %cleanup, !prof !9

if.end49:                                         ; preds = %if.then36, %if.end13
  %new_cpu.0 = phi i32 [ %call37, %if.then36 ], [ %call27, %if.end13 ]
  store i32 %new_cpu.0, i32* %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end10, %if.then, %if.end49
  %retval.0 = phi i32 [ %new_cpu.0, %if.end49 ], [ %cpu, %if.then ], [ %cpu, %if.end10 ], [ %cpu, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !77
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !78
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #24, !srcloc !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @work_color_to_flags(i32 noundef %color) unnamed_addr #6 {
entry:
  %shl = shl i32 %color, 4
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_work(%struct.pool_workqueue* noundef %pwq, %struct.work_struct* noundef %work, %struct.list_head* noundef %head, i32 noundef %extra_flags) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 256
  %conv = zext i32 %extra_flags to i64
  call fastcc void @set_work_pwq(%struct.work_struct* noundef %work, %struct.pool_workqueue* noundef %pwq, i64 noundef %conv) #23
  %entry2 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %entry2, %struct.list_head* noundef %head) #23
  call fastcc void @get_pwq(%struct.pool_workqueue* noundef %pwq) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !80
  %call = call fastcc i1 @__need_more_worker(%struct.worker_pool* noundef %0) #23
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @wake_up_worker(%struct.worker_pool* noundef %0) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #3 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_work_pwq(%struct.work_struct* noundef %work, %struct.pool_workqueue* noundef %pwq, i64 noundef %extra_flags) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pool_workqueue* %pwq to i64
  %or = or i64 %extra_flags, 5
  call fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef %0, i64 noundef %or) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_pwq(%struct.pool_workqueue* nocapture noundef %pwq) unnamed_addr #0 {
entry:
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 4
  %0 = load i32, i32* %refcnt, align 8
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1108; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !81
  %.pre = load i32, i32* %refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %inc = add i32 %1, 1
  store i32 %inc, i32* %refcnt, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__need_more_worker(%struct.worker_pool* noundef %pool) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 21, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_up_worker(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker* @first_idle_worker(%struct.worker_pool* noundef %pool) #23
  %tobool.not = icmp eq %struct.worker* %call, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  %task = getelementptr inbounds %struct.worker, %struct.worker* %call, i64 0, i32 6
  %0 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call3 = call i32 @wake_up_process(%struct.task_struct* noundef %0) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef %data, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %0, align 8
  %conv.i25 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i25, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 633; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %or = or i64 %flags, %data
  store volatile i64 %or, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) unnamed_addr #3 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %entry1) #23
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer_on(%struct.timer_list* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(%struct.timer_list* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef readnone %work) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.delayed_work*
  ret %struct.delayed_work* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(%struct.timer_list* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 4
  %tobool.not = icmp eq i64 %and, 0
  %and2 = and i64 %0, -256
  %1 = inttoptr i64 %and2 to %struct.pool_workqueue*
  %retval.0 = select i1 %tobool.not, %struct.pool_workqueue* null, %struct.pool_workqueue* %1
  ret %struct.pool_workqueue* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pwq_activate_inactive_work(%struct.work_struct* noundef %work) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) #23
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 6
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %watchdog_ts = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 5
  store i64 %1, i64* %watchdog_ts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %worklist4 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %3, i64 0, i32 6
  call fastcc void @move_linked_works(%struct.work_struct* noundef %work, %struct.list_head* noundef %worklist4, %struct.work_struct** noundef null) #23
  %4 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %and.i = and i64 %5, -3
  store i64 %and.i, i64* %4, align 8
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call, i64 0, i32 6
  %6 = load i32, i32* %nr_active, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %nr_active, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pwq_dec_nr_in_flight(%struct.pool_workqueue* noundef %pwq, i64 noundef %work_data) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @get_work_color(i64 noundef %work_data) #23
  %and = and i64 %work_data, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %nr_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 6
  %0 = load i32, i32* %nr_active, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %nr_active, align 4
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %inactive_works) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %1 = load i32, i32* %nr_active, align 4
  %max_active = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 7
  %2 = load i32, i32* %max_active, align 32
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  call fastcc void @pwq_activate_first_inactive(%struct.pool_workqueue* noundef %pwq) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %if.then3, %entry
  %3 = zext i32 %call to i64
  %arrayidx = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  %dec8 = add i32 %4, -1
  store i32 %dec8, i32* %arrayidx, align 4
  %flush_color = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 3
  %5 = load i32, i32* %flush_color, align 4
  %cmp9.not = icmp eq i32 %5, %call
  br i1 %cmp9.not, label %if.end13, label %out_put, !prof !12

if.end13:                                         ; preds = %if.end7
  %tobool17.not = icmp eq i32 %dec8, 0
  br i1 %tobool17.not, label %if.end19, label %out_put

if.end19:                                         ; preds = %if.end13
  store i32 -1, i32* %flush_color, align 4
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %nr_pwqs_to_flush = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %6, i64 0, i32 5
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_pwqs_to_flush) #22
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then22, label %out_put

if.then22:                                        ; preds = %if.end19
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %first_flusher = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %7, i64 0, i32 6
  %8 = load %struct.wq_flusher*, %struct.wq_flusher** %first_flusher, align 16
  %done = getelementptr inbounds %struct.wq_flusher, %struct.wq_flusher* %8, i64 0, i32 2
  call void @complete(%struct.completion* noundef %done) #22
  br label %out_put

out_put:                                          ; preds = %if.end19, %if.then22, %if.end13, %if.end7
  call fastcc void @put_pwq(%struct.pool_workqueue* noundef %pwq) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_work_pool_and_keep_pending(%struct.work_struct* noundef %work, i32 noundef %pool_id) unnamed_addr #0 {
entry:
  %conv = sext i32 %pool_id to i64
  %shl = shl nsw i64 %conv, 5
  call fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef %shl, i64 noundef 1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @work_is_canceling(%struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = and i64 %0, 20
  %2 = icmp eq i64 %1, 16
  ret i1 %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @move_linked_works(%struct.work_struct* noundef %work, %struct.list_head* noundef %head, %struct.work_struct** noundef writeonly %nextp) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %.pn24 = load i8*, i8** %0, align 8
  %n.0.in25 = getelementptr i8, i8* %.pn24, i64 -8
  %entry227 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1
  %cmp.not28 = icmp eq %struct.list_head* %entry227, null
  br i1 %cmp.not28, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %entry233 = phi %struct.list_head* [ %4, %for.inc ], [ %entry227, %entry ]
  %n.0.in31 = phi i8* [ %n.0.in, %for.inc ], [ %n.0.in25, %entry ]
  %.pn30 = phi i8* [ %.pn, %for.inc ], [ %.pn24, %entry ]
  %work.addr.029 = phi %struct.work_struct* [ %n.032, %for.inc ], [ %work, %entry ]
  call fastcc void @list_move_tail(%struct.list_head* noundef nonnull %entry233, %struct.list_head* noundef %head) #23
  %1 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work.addr.029, i64 0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 8
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %n.032 = bitcast i8* %n.0.in31 to %struct.work_struct*
  %3 = bitcast i8* %.pn30 to i8**
  %.pn = load i8*, i8** %3, align 8
  %n.0.in = getelementptr i8, i8* %.pn, i64 -8
  %entry2 = getelementptr inbounds i8, i8* %n.0.in31, i64 8
  %4 = bitcast i8* %entry2 to %struct.list_head*
  %cmp.not = icmp eq i8* %entry2, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %n.0.in.lcssa = phi i8* [ %n.0.in25, %entry ], [ %n.0.in31, %for.body ], [ %n.0.in, %for.inc ]
  %tobool12.not = icmp eq %struct.work_struct** %nextp, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.end
  %5 = bitcast %struct.work_struct** %nextp to i8**
  store i8* %n.0.in.lcssa, i8** %5, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #23
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_work_color(i64 noundef %work_data) unnamed_addr #6 {
entry:
  %0 = trunc i64 %work_data to i32
  %1 = lshr i32 %0, 4
  %conv = and i32 %1, 15
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pwq_activate_first_inactive(%struct.pool_workqueue* nocapture noundef readonly %pwq) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.work_struct*
  call fastcc void @pwq_activate_inactive_work(%struct.work_struct* noundef %2) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_pwq(%struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 4
  %0 = load i32, i32* %refcnt, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %refcnt, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 19
  %2 = load i32, i32* %flags, align 64
  %and = and i32 %2, 2
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then18, label %if.end29, !prof !12

if.then18:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1124; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !83
  br label %return

if.end29:                                         ; preds = %if.end
  %unbound_release_work = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 11
  call fastcc void @schedule_work(%struct.work_struct* noundef %unbound_release_work) #23
  br label %return

return:                                           ; preds = %if.then18, %entry, %if.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #15 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @start_flush_work(%struct.work_struct* noundef %work, %struct.wq_barrier* noundef %barr, i1 noundef %from_cancel) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #22
  %call = call fastcc %struct.worker_pool* @get_work_pool(%struct.work_struct* noundef %work) #23
  %tobool.not = icmp eq %struct.worker_pool* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %call, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %call4 = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) #23
  %tobool5.not = icmp eq %struct.pool_workqueue* %call4, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %pool7 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call4, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool7, align 256
  %cmp.not = icmp eq %struct.worker_pool* %0, %call
  br i1 %cmp.not, label %if.end16, label %cleanup.sink.split, !prof !9

if.else:                                          ; preds = %if.end
  %call12 = call fastcc %struct.worker* @find_worker_executing_work(%struct.worker_pool* noundef nonnull %call, %struct.work_struct* noundef %work) #23
  %tobool13.not = icmp eq %struct.worker* %call12, null
  br i1 %tobool13.not, label %cleanup.sink.split, label %if.end15

if.end15:                                         ; preds = %if.else
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %call12, i64 0, i32 3
  %1 = load %struct.pool_workqueue*, %struct.pool_workqueue** %current_pwq, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %if.end15
  %worker.0 = phi %struct.worker* [ null, %if.then6 ], [ %call12, %if.end15 ]
  %pwq.0 = phi %struct.pool_workqueue* [ %call4, %if.then6 ], [ %1, %if.end15 ]
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq.0, i64 0, i32 1
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  call fastcc void @check_flush_dependency(%struct.workqueue_struct* noundef %2, %struct.work_struct* noundef %work) #23
  call fastcc void @insert_wq_barrier(%struct.pool_workqueue* noundef %pwq.0, %struct.wq_barrier* noundef %barr, %struct.work_struct* noundef %work, %struct.worker* noundef %worker.0) #23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.else, %if.end16
  %retval.0.ph = phi i1 [ true, %if.end16 ], [ false, %if.else ], [ false, %if.then6 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call fastcc void @rcu_read_unlock() #23
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @insert_wq_barrier(%struct.pool_workqueue* noundef %pwq, %struct.wq_barrier* noundef %barr, %struct.work_struct* nocapture noundef %target, %struct.worker* noundef readonly %worker) unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry3 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry3) #23
  %func = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 0, i32 2
  store void (%struct.work_struct*)* @wq_barrier_func, void (%struct.work_struct*)** %func, align 8
  %0 = load i64, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %or.i = or i64 %0, 1
  store i64 %or.i, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %done = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 1
  call fastcc void @init_completion(%struct.completion* noundef %done) #23
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %task = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 2
  store %struct.task_struct* %2, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.worker* %worker, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 5, i32 0
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8
  %current_color = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 4
  %4 = load i32, i32* %current_color, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %target, i64 0, i32 0, i32 0
  %next9 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %target, i64 0, i32 1, i32 0
  %6 = load %struct.list_head*, %struct.list_head** %next9, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 8
  %conv11 = or i32 %9, 2
  %call12 = call fastcc i32 @get_work_color(i64 noundef %7) #23
  %or.i39 = or i64 %7, 8
  store i64 %or.i39, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %head.0 = phi %struct.list_head* [ %3, %if.then ], [ %6, %if.else ]
  %work_color.0 = phi i32 [ %4, %if.then ], [ %call12, %if.else ]
  %work_flags.0 = phi i32 [ 2, %if.then ], [ %conv11, %if.else ]
  %work = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %barr, i64 0, i32 0
  %idxprom = zext i32 %work_color.0 to i64
  %arrayidx = getelementptr %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 5, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %arrayidx, align 4
  %call13 = call fastcc i32 @work_color_to_flags(i32 noundef %work_color.0) #23
  %or14 = or i32 %call13, %work_flags.0
  call fastcc void @insert_work(%struct.pool_workqueue* noundef %pwq, %struct.work_struct* noundef %work, %struct.list_head* noundef %head.0, i32 noundef %or14) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wq_barrier_func(%struct.work_struct* noundef %work) #0 {
entry:
  %done = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 1
  %0 = bitcast %struct.work_struct* %done to %struct.completion*
  call void @complete(%struct.completion* noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cwt_wakefn(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #0 {
entry:
  %work = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 1
  %0 = bitcast %struct.wait_queue_entry* %work to %struct.work_struct**
  %1 = load %struct.work_struct*, %struct.work_struct** %0, align 8
  %2 = bitcast i8* %key to %struct.work_struct*
  %cmp.not = icmp eq %struct.work_struct* %1, %2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prepare_to_wait_exclusive(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_work_canceling(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @get_work_pool_id(%struct.work_struct* noundef %work) #23
  %conv = sext i32 %call to i64
  %shl = shl nsw i64 %conv, 5
  %or = or i64 %shl, 16
  call fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef %or, i64 noundef 1) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_work_data(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !84
  call fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef 68719476704, i64 noundef 0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active() unnamed_addr #3 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef getelementptr inbounds (%struct.wait_queue_head, %struct.wait_queue_head* @__cancel_work_timer.cancel_waitq, i64 0, i32 1)) #23
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @get_work_pool_id(%struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %0, 4
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i64 %0, -256
  %1 = inttoptr i64 %and2 to %struct.pool_workqueue*
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %1, i64 0, i32 0
  %2 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 3
  %3 = load i32, i32* %id, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %0, 5
  %conv = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_work_pool_and_clear_pending(%struct.work_struct* noundef %work, i32 noundef %pool_id) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !85
  %conv = sext i32 %pool_id to i64
  %shl = shl nsw i64 %conv, 5
  call fastcc void @set_work_data(%struct.work_struct* noundef %work, i64 noundef %shl, i64 noundef 0) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !86
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.apply_wqattrs_ctx* @apply_wqattrs_prepare(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ab_c_size() #23
  %call1 = call fastcc i8* @kzalloc(i64 noundef %call) #23
  %0 = bitcast i8* %call1 to %struct.apply_wqattrs_ctx*
  %call2 = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %call3 = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %tobool = icmp ne i8* %call1, null
  %tobool4 = icmp ne %struct.workqueue_attrs* %call2, null
  %or.cond = select i1 %tobool, i1 %tobool4, i1 false
  %tobool6 = icmp ne %struct.workqueue_attrs* %call3, null
  %or.cond52 = select i1 %or.cond, i1 %tobool6, i1 false
  br i1 %or.cond52, label %if.end, label %out_free

if.end:                                           ; preds = %entry
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef nonnull %call2, %struct.workqueue_attrs* noundef %attrs) #23
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call2, i64 0, i32 1, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0)) #23
  %call12 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %arraydecay) #23
  br i1 %call12, label %if.then15, label %if.end18, !prof !12

if.then15:                                        ; preds = %if.end
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0)) #23
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef nonnull %call3, %struct.workqueue_attrs* noundef nonnull %call2) #23
  %call19 = call fastcc %struct.pool_workqueue* @alloc_unbound_pwq(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef nonnull %call2) #23
  %dfl_pwq = getelementptr inbounds i8, i8* %call1, i64 32
  %1 = bitcast i8* %dfl_pwq to %struct.pool_workqueue**
  store %struct.pool_workqueue* %call19, %struct.pool_workqueue** %1, align 8
  %tobool21.not = icmp eq %struct.pool_workqueue* %call19, null
  br i1 %tobool21.not, label %out_free, label %for.body

for.body:                                         ; preds = %if.end18
  %arraydecay26 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call3, i64 0, i32 1, i64 0
  call fastcc void @wq_calc_node_cpumask(%struct.workqueue_attrs* noundef nonnull %call2, %struct.cpumask* noundef %arraydecay26) #23
  %2 = load %struct.pool_workqueue*, %struct.pool_workqueue** %1, align 8
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %2, i64 0, i32 4
  %3 = load i32, i32* %refcnt, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %refcnt, align 8
  %4 = load %struct.pool_workqueue*, %struct.pool_workqueue** %1, align 8
  %pwq_tbl38 = getelementptr inbounds i8, i8* %call1, i64 40
  %arrayidx40 = bitcast i8* %pwq_tbl38 to %struct.pool_workqueue**
  store %struct.pool_workqueue* %4, %struct.pool_workqueue** %arrayidx40, align 8
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef nonnull %call2, %struct.workqueue_attrs* noundef %attrs) #23
  call fastcc void @cpumask_and(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #23
  %attrs47 = getelementptr inbounds i8, i8* %call1, i64 8
  %5 = bitcast i8* %attrs47 to %struct.workqueue_attrs**
  store %struct.workqueue_attrs* %call2, %struct.workqueue_attrs** %5, align 8
  %wq48 = bitcast i8* %call1 to %struct.workqueue_struct**
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq48, align 8
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef nonnull %call3) #23
  br label %cleanup

out_free:                                         ; preds = %if.end18, %entry
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %call3) #23
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %call2) #23
  call fastcc void @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx* noundef %0) #23
  br label %cleanup

cleanup:                                          ; preds = %out_free, %for.body
  %retval.0 = phi %struct.apply_wqattrs_ctx* [ null, %out_free ], [ %0, %for.body ]
  ret %struct.apply_wqattrs_ctx* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @apply_wqattrs_commit(%struct.apply_wqattrs_ctx* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %wq = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 0
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %unbound_attrs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 13
  %2 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %unbound_attrs, align 8
  %attrs = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 1
  %3 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef %2, %struct.workqueue_attrs* noundef %3) #23
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %arrayidx = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 4, i64 0
  %5 = load %struct.pool_workqueue*, %struct.pool_workqueue** %arrayidx, align 8
  %call = call fastcc %struct.pool_workqueue* @numa_pwq_tbl_install(%struct.workqueue_struct* noundef %4, %struct.pool_workqueue* noundef %5) #23
  store %struct.pool_workqueue* %call, %struct.pool_workqueue** %arrayidx, align 8
  %dfl_pwq = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 3
  %6 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 8
  call fastcc void @link_pwq(%struct.pool_workqueue* noundef %6) #23
  %7 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %dfl_pwq7 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %7, i64 0, i32 14
  %8 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq7, align 32
  %9 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 8
  store %struct.pool_workqueue* %9, %struct.pool_workqueue** %dfl_pwq7, align 32
  store %struct.pool_workqueue* %8, %struct.pool_workqueue** %dfl_pwq, align 8
  %10 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %mutex13 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %10, i64 0, i32 2
  call void @mutex_unlock(%struct.mutex* noundef %mutex13) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @apply_wqattrs_cleanup(%struct.apply_wqattrs_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.apply_wqattrs_ctx* %ctx, null
  br i1 %tobool.not, label %if.end, label %for.body

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 4, i64 0
  %0 = load %struct.pool_workqueue*, %struct.pool_workqueue** %arrayidx, align 8
  call fastcc void @put_pwq_unlocked(%struct.pool_workqueue* noundef %0) #23
  %dfl_pwq = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 3
  %1 = load %struct.pool_workqueue*, %struct.pool_workqueue** %dfl_pwq, align 8
  call fastcc void @put_pwq_unlocked(%struct.pool_workqueue* noundef %1) #23
  %attrs = getelementptr inbounds %struct.apply_wqattrs_ctx, %struct.apply_wqattrs_ctx* %ctx, i64 0, i32 1
  %2 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %2) #23
  %3 = bitcast %struct.apply_wqattrs_ctx* %ctx to i8*
  call void @kfree(i8* noundef nonnull %3) #22
  br label %if.end

if.end:                                           ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size() unnamed_addr #6 {
entry:
  ret i64 48
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef %to, %struct.workqueue_attrs* noundef %from) unnamed_addr #0 {
entry:
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %from, i64 0, i32 0
  %0 = load i32, i32* %nice, align 8
  %nice1 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %to, i64 0, i32 0
  store i32 %0, i32* %nice1, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %to, i64 0, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %from, i64 0, i32 1, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %arraydecay3) #23
  %no_numa = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %from, i64 0, i32 2
  %1 = load i8, i8* %no_numa, align 8, !range !76
  %no_numa4 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %to, i64 0, i32 2
  store i8 %1, i8* %no_numa4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pool_workqueue* @alloc_unbound_pwq(%struct.workqueue_struct* noundef %wq, %struct.workqueue_attrs* noundef %attrs) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.worker_pool* @get_unbound_pool(%struct.workqueue_attrs* noundef %attrs) #23
  %tobool.not = icmp eq %struct.worker_pool* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @pwq_cache, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #22
  %1 = bitcast i8* %call.i to %struct.pool_workqueue*
  %tobool2.not = icmp eq i8* %call.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call fastcc void @put_unbound_pool(%struct.worker_pool* noundef nonnull %call) #23
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @init_pwq(%struct.pool_workqueue* noundef nonnull %1, %struct.workqueue_struct* noundef %wq, %struct.worker_pool* noundef nonnull %call) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.pool_workqueue* [ %1, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret %struct.pool_workqueue* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wq_calc_node_cpumask(%struct.workqueue_attrs* noundef %attrs, %struct.cpumask* noundef %cpumask) unnamed_addr #0 {
entry:
  %arraydecay37 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %attrs, i64 0, i32 1, i64 0
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %cpumask, %struct.cpumask* noundef %arraydecay37) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker_pool* @get_unbound_pool(%struct.workqueue_attrs* noundef %attrs) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @wqattrs_hash(%struct.workqueue_attrs* noundef %attrs) #23
  %call1 = call fastcc i32 @hash_32_generic(i32 noundef %call) #23
  %idxprom = zext i32 %call1 to i64
  %first = getelementptr [64 x %struct.hlist_head], [64 x %struct.hlist_head]* @unbound_pool_hash, i64 0, i64 %idxprom, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr103 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -45
  %tobool6.not107110 = icmp eq %struct.hlist_node* %add.ptr103, null
  %tobool6.not107 = or i1 %tobool.not, %tobool6.not107110
  br i1 %tobool6.not107, label %if.end35, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node* %add.ptr103 to %struct.worker_pool*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %pool.0108 = phi %struct.worker_pool* [ %spec.select105, %for.inc ], [ %1, %for.body.preheader ]
  %attrs7 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0108, i64 0, i32 17
  %2 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs7, align 8
  %call8 = call fastcc i1 @wqattrs_equal(%struct.workqueue_attrs* noundef %2, %struct.workqueue_attrs* noundef %attrs) #23
  br i1 %call8, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0108, i64 0, i32 19
  %3 = load i32, i32* %refcnt, align 32
  %inc = add i32 %3, 1
  store i32 %inc, i32* %refcnt, align 32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool.0108, i64 0, i32 18, i32 0
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 16
  %tobool11.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr18102 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -45
  %5 = bitcast %struct.hlist_node* %add.ptr18102 to %struct.worker_pool*
  %spec.select105 = select i1 %tobool11.not, %struct.worker_pool* null, %struct.worker_pool* %5
  %tobool6.not = icmp eq %struct.worker_pool* %spec.select105, null
  br i1 %tobool6.not, label %if.end35, label %for.body

if.end35:                                         ; preds = %for.inc, %entry
  %call36 = call fastcc i8* @kzalloc_node(i64 noundef 832) #23
  %6 = bitcast i8* %call36 to %struct.worker_pool*
  %tobool37.not = icmp eq i8* %call36, null
  br i1 %tobool37.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end35
  %call38 = call fastcc i32 @init_worker_pool(%struct.worker_pool* noundef nonnull %6) #23
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then62, label %do.end44

do.end44:                                         ; preds = %lor.lhs.false
  %attrs45 = getelementptr inbounds i8, i8* %call36, i64 712
  %7 = bitcast i8* %attrs45 to %struct.workqueue_attrs**
  %8 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %7, align 8
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef %8, %struct.workqueue_attrs* noundef %attrs) #23
  %node46 = getelementptr inbounds i8, i8* %call36, i64 8
  %9 = bitcast i8* %node46 to i32*
  store i32 -1, i32* %9, align 8
  %10 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %7, align 8
  %no_numa = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %10, i64 0, i32 2
  store i8 0, i8* %no_numa, align 8
  %call48 = call fastcc i32 @worker_pool_assign_id(%struct.worker_pool* noundef nonnull %6) #23
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then62, label %if.end51

if.end51:                                         ; preds = %do.end44
  %.b101 = load i1, i1* @wq_online, align 1
  br i1 %.b101, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end51
  %call53 = call fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef nonnull %6) #23
  %tobool54.not = icmp eq %struct.worker* %call53, null
  br i1 %tobool54.not, label %if.then62, label %if.end56

if.end56:                                         ; preds = %land.lhs.true, %if.end51
  %hash_node57 = getelementptr inbounds i8, i8* %call36, i64 720
  %11 = bitcast i8* %hash_node57 to %struct.hlist_node*
  %arrayidx60 = getelementptr [64 x %struct.hlist_head], [64 x %struct.hlist_head]* @unbound_pool_hash, i64 0, i64 %idxprom
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %11, %struct.hlist_head* noundef %arrayidx60) #23
  br label %cleanup

if.then62:                                        ; preds = %lor.lhs.false, %do.end44, %land.lhs.true
  call fastcc void @put_unbound_pool(%struct.worker_pool* noundef nonnull %6) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end35, %if.end56, %if.then
  %retval.0 = phi %struct.worker_pool* [ %pool.0108, %if.then ], [ %6, %if.end56 ], [ null, %if.end35 ], [ null, %if.then62 ]
  ret %struct.worker_pool* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_unbound_pool(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %detach_completion = alloca %struct.completion, align 8
  %0 = bitcast %struct.completion* %detach_completion to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %detach_completion, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %1 = bitcast %struct.completion* %detach_completion to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %detach_completion, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %refcnt = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 19
  %2 = load i32, i32* %refcnt, align 32
  %dec = add i32 %2, -1
  store i32 %dec, i32* %refcnt, align 32
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 1
  %3 = load i32, i32* %cpu, align 4
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then13, label %lor.lhs.false, !prof !12

if.then13:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3578; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !87
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 6
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist) #23
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then39, label %if.end51, !prof !12

if.then39:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3579; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !88
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 3
  %4 = load i32, i32* %id, align 4
  %cmp52 = icmp sgt i32 %4, -1
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end51
  %conv56155 = zext i32 %4 to i64
  %call57 = call i8* @idr_remove(%struct.idr* noundef nonnull @worker_pool_idr, i64 noundef %conv56155) #22
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end51
  %hash_node = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 18
  call fastcc void @hash_del(%struct.hlist_node* noundef %hash_node) #23
  call fastcc void @prepare_to_rcuwait() #23
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !89
  %call78156 = call fastcc i1 @wq_manager_inactive(%struct.worker_pool* noundef %pool) #23
  br i1 %call78156, label %for.end, label %if.end80

if.end80:                                         ; preds = %if.end58, %if.end80
  call void @schedule() #22
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !89
  %call78 = call fastcc i1 @wq_manager_inactive(%struct.worker_pool* noundef %pool) #23
  br i1 %call78, label %for.end, label %if.end80

for.end:                                          ; preds = %if.end80, %if.end58
  call fastcc void @finish_rcuwait() #23
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %7 = load i32, i32* %flags, align 16
  %or = or i32 %7, 1
  store i32 %or, i32* %flags, align 16
  %call87157 = call fastcc %struct.worker* @first_idle_worker(%struct.worker_pool* noundef %pool) #23
  %tobool88.not158 = icmp eq %struct.worker* %call87157, null
  br i1 %tobool88.not158, label %while.end, label %while.body

while.body:                                       ; preds = %for.end, %while.body
  %call87159 = phi %struct.worker* [ %call87, %while.body ], [ %call87157, %for.end ]
  call fastcc void @destroy_worker(%struct.worker* noundef nonnull %call87159) #23
  %call87 = call fastcc %struct.worker* @first_idle_worker(%struct.worker_pool* noundef %pool) #23
  %tobool88.not = icmp eq %struct.worker* %call87, null
  br i1 %tobool88.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %for.end
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 7
  %8 = load i32, i32* %nr_workers, align 16
  %tobool90.not = icmp eq i32 %8, 0
  br i1 %tobool90.not, label %lor.rhs, label %if.then104

lor.rhs:                                          ; preds = %while.end
  %nr_idle = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 8
  %9 = load i32, i32* %nr_idle, align 4
  %tobool91.not = icmp eq i32 %9, 0
  br i1 %tobool91.not, label %if.end105, label %if.then104, !prof !9

if.then104:                                       ; preds = %while.end, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3600; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !90
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %lor.rhs
  %lock114 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock114) #23
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 14
  %call115 = call fastcc i32 @list_empty(%struct.list_head* noundef %workers) #23
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end105
  %detach_completion118 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 15
  store %struct.completion* %detach_completion, %struct.completion** %detach_completion118, align 16
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end105
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %detach_completion120 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 15
  %10 = load %struct.completion*, %struct.completion** %detach_completion120, align 16
  %tobool121.not = icmp eq %struct.completion* %10, null
  br i1 %tobool121.not, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.end119
  call void @wait_for_completion(%struct.completion* noundef nonnull %10) #22
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end119
  %idle_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 10
  %call125 = call i32 @del_timer_sync(%struct.timer_list* noundef %idle_timer) #22
  %mayday_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 11
  %call126 = call i32 @del_timer_sync(%struct.timer_list* noundef %mayday_timer) #22
  %rcu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 22
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @rcu_free_pool) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then13, %entry, %if.end124
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_pwq(%struct.pool_workqueue* noundef %pwq, %struct.workqueue_struct* noundef %wq, %struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %0 = ptrtoint %struct.pool_workqueue* %pwq to i64
  %and = and i64 %0, 255
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3800; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !91
  unreachable

do.end6:                                          ; preds = %entry
  %1 = bitcast %struct.pool_workqueue* %pwq to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 256) #22
  %pool7 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 0
  store %struct.worker_pool* %pool, %struct.worker_pool** %pool7, align 256
  %wq8 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq8, align 8
  %flush_color = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 3
  store i32 -1, i32* %flush_color, align 4
  %refcnt = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 4
  store i32 1, i32* %refcnt, align 8
  %inactive_works = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %inactive_works) #23
  %pwqs_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 9
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %pwqs_node) #23
  %mayday_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %mayday_node) #23
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 11, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry12 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 11, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry12) #23
  %func = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 11, i32 2
  store void (%struct.work_struct*)* @pwq_unbound_release_workfn, void (%struct.work_struct*)** %func, align 8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @wqattrs_hash(%struct.workqueue_attrs* nocapture noundef readonly %attrs) unnamed_addr #16 {
entry:
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %attrs, i64 0, i32 0
  %0 = load i32, i32* %nice, align 8
  %call = call fastcc i32 @jhash_1word(i32 noundef %0) #23
  %arraydecay1 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %attrs, i64 0, i32 1, i64 0, i32 0, i64 0
  %1 = bitcast i64* %arraydecay1 to i8*
  %call2 = call fastcc i32 @jhash(i8* noundef %1, i32 noundef %call) #23
  ret i32 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_32_generic(i32 noundef %val) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__hash_32_generic(i32 noundef %val) #23
  %shr = lshr i32 %call, 26
  ret i32 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wqattrs_equal(%struct.workqueue_attrs* noundef %a, %struct.workqueue_attrs* noundef %b) unnamed_addr #0 {
entry:
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %a, i64 0, i32 0
  %0 = load i32, i32* %nice, align 8
  %nice1 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %b, i64 0, i32 0
  %1 = load i32, i32* %nice1, align 8
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %a, i64 0, i32 1, i64 0
  %arraydecay3 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %b, i64 0, i32 1, i64 0
  %call = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %arraydecay3) #23
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %call, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #0 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #22
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #7 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @jhash_1word(i32 noundef %a) unnamed_addr #17 {
entry:
  %call = call fastcc i32 @__jhash_nwords(i32 noundef %a) #23
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @jhash(i8* nocapture noundef readonly %key, i32 noundef %initval) unnamed_addr #16 {
sw.epilog:
  %add1 = add i32 %initval, -559038705
  %scevgep = getelementptr i8, i8* %key, i64 12
  %call = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %key) #23
  %add2 = add i32 %call, %add1
  %add.ptr = getelementptr i8, i8* %key, i64 4
  %call3 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr) #23
  %add4 = add i32 %call3, %add1
  %add.ptr5 = getelementptr i8, i8* %key, i64 8
  %call6 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr5) #23
  %add7 = add i32 %call6, %add1
  %sub = sub i32 %add2, %add7
  %call8 = call fastcc i32 @rol32(i32 noundef %add7, i32 noundef 4) #23
  %xor = xor i32 %sub, %call8
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %call11 = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 6) #23
  %xor12 = xor i32 %sub10, %call11
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %call15 = call fastcc i32 @rol32(i32 noundef %xor12, i32 noundef 8) #23
  %xor16 = xor i32 %sub14, %call15
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %call19 = call fastcc i32 @rol32(i32 noundef %xor16, i32 noundef 16) #23
  %xor20 = xor i32 %sub18, %call19
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %call23 = call fastcc i32 @rol32(i32 noundef %xor20, i32 noundef 19) #23
  %xor24 = xor i32 %sub22, %call23
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %call27 = call fastcc i32 @rol32(i32 noundef %xor24, i32 noundef 4) #23
  %xor28 = xor i32 %sub26, %call27
  %add29 = add i32 %xor24, %add25
  %call.1 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %scevgep) #23
  %add2.1 = add i32 %call.1, %add25
  %add.ptr.1 = getelementptr i8, i8* %key, i64 16
  %call3.1 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr.1) #23
  %add4.1 = add i32 %call3.1, %add29
  %add.ptr5.1 = getelementptr i8, i8* %key, i64 20
  %call6.1 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr5.1) #23
  %add7.1 = add i32 %call6.1, %xor28
  %sub.1 = sub i32 %add2.1, %add7.1
  %call8.1 = call fastcc i32 @rol32(i32 noundef %add7.1, i32 noundef 4) #23
  %xor.1 = xor i32 %sub.1, %call8.1
  %add9.1 = add i32 %add7.1, %add4.1
  %sub10.1 = sub i32 %add4.1, %xor.1
  %call11.1 = call fastcc i32 @rol32(i32 noundef %xor.1, i32 noundef 6) #23
  %xor12.1 = xor i32 %sub10.1, %call11.1
  %add13.1 = add i32 %xor.1, %add9.1
  %sub14.1 = sub i32 %add9.1, %xor12.1
  %call15.1 = call fastcc i32 @rol32(i32 noundef %xor12.1, i32 noundef 8) #23
  %xor16.1 = xor i32 %sub14.1, %call15.1
  %add17.1 = add i32 %xor12.1, %add13.1
  %sub18.1 = sub i32 %add13.1, %xor16.1
  %call19.1 = call fastcc i32 @rol32(i32 noundef %xor16.1, i32 noundef 16) #23
  %xor20.1 = xor i32 %sub18.1, %call19.1
  %add21.1 = add i32 %xor16.1, %add17.1
  %sub22.1 = sub i32 %add17.1, %xor20.1
  %call23.1 = call fastcc i32 @rol32(i32 noundef %xor20.1, i32 noundef 19) #23
  %xor24.1 = xor i32 %sub22.1, %call23.1
  %add25.1 = add i32 %xor20.1, %add21.1
  %sub26.1 = sub i32 %add21.1, %xor24.1
  %call27.1 = call fastcc i32 @rol32(i32 noundef %xor24.1, i32 noundef 4) #23
  %xor28.1 = xor i32 %sub26.1, %call27.1
  %add29.1 = add i32 %xor24.1, %add25.1
  %scevgep6 = getelementptr i8, i8* %key, i64 24
  %arrayidx48 = getelementptr i8, i8* %key, i64 31
  %0 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %0 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %add29.1
  %arrayidx53 = getelementptr i8, i8* %key, i64 30
  %1 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %1 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %add51, %shl55
  %arrayidx58 = getelementptr i8, i8* %key, i64 29
  %2 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %2 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %add56, %shl60
  %arrayidx63 = getelementptr i8, i8* %key, i64 28
  %3 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %3 to i32
  %add65 = add i32 %add61, %conv64
  %arrayidx67 = getelementptr i8, i8* %key, i64 27
  %4 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %4 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %add25.1
  %arrayidx72 = getelementptr i8, i8* %key, i64 26
  %5 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %5 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %add70, %shl74
  %arrayidx77 = getelementptr i8, i8* %key, i64 25
  %6 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %6 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %add75, %shl79
  %7 = load i8, i8* %scevgep6, align 1
  %conv83 = zext i8 %7 to i32
  %add84 = add i32 %add80, %conv83
  %xor85 = xor i32 %xor28.1, %add65
  %call86 = call fastcc i32 @rol32(i32 noundef %add65, i32 noundef 14) #23
  %sub87 = sub i32 %xor85, %call86
  %xor88 = xor i32 %add84, %sub87
  %call89 = call fastcc i32 @rol32(i32 noundef %sub87, i32 noundef 11) #23
  %sub90 = sub i32 %xor88, %call89
  %xor91 = xor i32 %sub90, %add65
  %call92 = call fastcc i32 @rol32(i32 noundef %sub90, i32 noundef 25) #23
  %sub93 = sub i32 %xor91, %call92
  %xor94 = xor i32 %sub93, %sub87
  %call95 = call fastcc i32 @rol32(i32 noundef %sub93, i32 noundef 16) #23
  %sub96 = sub i32 %xor94, %call95
  %xor97 = xor i32 %sub96, %sub90
  %call98 = call fastcc i32 @rol32(i32 noundef %sub96, i32 noundef 4) #23
  %sub99 = sub i32 %xor97, %call98
  %xor100 = xor i32 %sub99, %sub93
  %call101 = call fastcc i32 @rol32(i32 noundef %sub99, i32 noundef 14) #23
  %sub102 = sub i32 %xor100, %call101
  %xor103 = xor i32 %sub102, %sub96
  %call104 = call fastcc i32 @rol32(i32 noundef %sub102, i32 noundef 24) #23
  %sub105 = sub i32 %xor103, %call104
  ret i32 %sub105
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__jhash_nwords(i32 noundef %a) unnamed_addr #17 {
entry:
  %add = add i32 %a, -559038733
  %call = call fastcc i32 @rol32(i32 noundef -559038733, i32 noundef 14) #23
  %sub = sub i32 0, %call
  %xor3 = xor i32 %add, %sub
  %call4 = call fastcc i32 @rol32(i32 noundef %sub, i32 noundef 11) #23
  %sub5 = sub i32 %xor3, %call4
  %xor6 = xor i32 %sub5, -559038733
  %call7 = call fastcc i32 @rol32(i32 noundef %sub5, i32 noundef 25) #23
  %sub8 = sub i32 %xor6, %call7
  %xor9 = xor i32 %sub8, %sub
  %call10 = call fastcc i32 @rol32(i32 noundef %sub8, i32 noundef 16) #23
  %sub11 = sub i32 %xor9, %call10
  %xor12 = xor i32 %sub11, %sub5
  %call13 = call fastcc i32 @rol32(i32 noundef %sub11, i32 noundef 4) #23
  %sub14 = sub i32 %xor12, %call13
  %xor15 = xor i32 %sub14, %sub8
  %call16 = call fastcc i32 @rol32(i32 noundef %sub14, i32 noundef 14) #23
  %sub17 = sub i32 %xor15, %call16
  %xor18 = xor i32 %sub17, %sub11
  %call19 = call fastcc i32 @rol32(i32 noundef %sub17, i32 noundef 24) #23
  %sub20 = sub i32 %xor18, %call19
  ret i32 %sub20
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rol32(i32 noundef %word, i32 noundef %shift) unnamed_addr #17 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 %shift)
  ret i32 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__get_unaligned_cpu32(i8* nocapture noundef readonly %p) unnamed_addr #13 {
entry:
  %x = bitcast i8* %p to i32*
  %0 = load i32, i32* %x, align 1
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__hash_32_generic(i32 noundef %val) unnamed_addr #6 {
entry:
  %mul = mul i32 %val, 1640531527
  ret i32 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_equal(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_equal(i64* noundef %arraydecay, i64* noundef %arraydecay2) #23
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_equal(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %src1 to i8*
  %1 = bitcast i64* %src2 to i8*
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 32) #22
  %tobool9.not = icmp eq i32 %call, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  ret i32 %lnot.ext11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_remove(%struct.idr* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hash_del(%struct.hlist_node* nocapture noundef %node) unnamed_addr #7 {
entry:
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prepare_to_rcuwait() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) getelementptr inbounds (%struct.rcuwait, %struct.rcuwait* @manager_wait, i64 0, i32 0), i64 %0) #24, !srcloc !92
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wq_manager_inactive(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %0 = load i32, i32* %flags, align 16
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_rcuwait() unnamed_addr #0 {
entry:
  store volatile %struct.task_struct* null, %struct.task_struct** getelementptr inbounds (%struct.rcuwait, %struct.rcuwait* @manager_wait, i64 0, i32 0), align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_worker(%struct.worker* noundef %worker) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %current_work = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 1
  %1 = load %struct.work_struct*, %struct.work_struct** %current_work, align 8
  %tobool.not = icmp eq %struct.work_struct* %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2000; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !93
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %scheduled = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 5
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %scheduled) #23
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.then33, label %lor.lhs.false44, !prof !12

if.then33:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2001; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !94
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 4
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then61, label %if.end73, !prof !12

if.then61:                                        ; preds = %lor.lhs.false44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2002; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !95
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false44
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 7
  %3 = load i32, i32* %nr_workers, align 16
  %dec = add i32 %3, -1
  store i32 %dec, i32* %nr_workers, align 16
  %nr_idle = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 8
  %4 = load i32, i32* %nr_idle, align 4
  %dec74 = add i32 %4, -1
  store i32 %dec74, i32* %nr_idle, align 4
  %entry75 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %entry75) #23
  %5 = load i32, i32* %flags, align 8
  %or = or i32 %5, 2
  store i32 %or, i32* %flags, align 8
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %6 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call77 = call i32 @wake_up_process(%struct.task_struct* noundef %6) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.then33, %if.then, %if.end73
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_free_pool(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -49, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  %worker_ida = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 87
  %1 = bitcast void (%struct.callback_head*)** %worker_ida to %struct.ida*
  call void @ida_destroy(%struct.ida* noundef %1) #22
  %attrs = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 89
  %2 = bitcast void (%struct.callback_head*)** %attrs to %struct.workqueue_attrs**
  %3 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %3) #23
  call void @kfree(i8* noundef %0) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #23
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #13 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #7 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #18 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(%struct.ida* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pwq_unbound_release_workfn(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -5, i32 1
  %wq1 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -5, i32 1, i32 1
  %0 = bitcast %struct.list_head** %wq1 to %struct.workqueue_struct**
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %0, align 8
  %pool2 = bitcast %struct.list_head* %add.ptr to %struct.worker_pool**
  %2 = load %struct.worker_pool*, %struct.worker_pool** %pool2, align 256
  %pwqs_node = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 7, i32 1
  %3 = bitcast %struct.list_head** %pwqs_node to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %3) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end32.critedge

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 19
  %4 = load i32, i32* %flags, align 64
  %and = and i32 %4, 2
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then12, label %if.end23, !prof !12

if.then12:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 3716; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !96
  br label %cleanup

if.end23:                                         ; preds = %if.then
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  call fastcc void @list_del_rcu(%struct.list_head* noundef %3) #23
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 0
  %call25 = call fastcc i32 @list_empty(%struct.list_head* noundef %pwqs) #23
  %tobool26.not = icmp eq i32 %call25, 0
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  call fastcc void @put_unbound_pool(%struct.worker_pool* noundef %2) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %rcu = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 11, i32 1
  %5 = bitcast %struct.list_head** %rcu to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %5, void (%struct.callback_head*)* noundef nonnull @rcu_free_pwq) #22
  br i1 %tobool26.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.end23
  %rcu31 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 17
  call void @call_rcu(%struct.callback_head* noundef %rcu31, void (%struct.callback_head*)* noundef nonnull @rcu_free_wq) #22
  br label %cleanup

if.end32.critedge:                                ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  call fastcc void @put_unbound_pool(%struct.worker_pool* noundef %2) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %rcu.c = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 11, i32 1
  %6 = bitcast %struct.list_head** %rcu.c to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %6, void (%struct.callback_head*)* noundef nonnull @rcu_free_pwq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end23, %if.then30, %if.end32.critedge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_free_pwq(%struct.callback_head* noundef %rcu) #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @pwq_cache, align 8
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -12, i32 1
  %1 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pool_workqueue* @numa_pwq_tbl_install(%struct.workqueue_struct* noundef %wq, %struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  call fastcc void @link_pwq(%struct.pool_workqueue* noundef %pwq) #23
  %arrayidx = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 21, i64 0
  %0 = load volatile %struct.pool_workqueue*, %struct.pool_workqueue** %arrayidx, align 8
  %1 = ptrtoint %struct.pool_workqueue* %pwq to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.pool_workqueue** elementtype(%struct.pool_workqueue*) %arrayidx, i64 %1) #24, !srcloc !97
  ret %struct.pool_workqueue* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @link_pwq(%struct.pool_workqueue* noundef %pwq) unnamed_addr #0 {
entry:
  %wq1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 1
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq1, align 8
  %pwqs_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 9
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pwqs_node) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %work_color = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 3
  %1 = load i32, i32* %work_color, align 64
  %work_color2 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %pwq, i64 0, i32 2
  store i32 %1, i32* %work_color2, align 16
  call fastcc void @pwq_adjust_max_active(%struct.pool_workqueue* noundef %pwq) #23
  %pwqs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 0
  call fastcc void @list_add_rcu(%struct.list_head* noundef %pwqs_node, %struct.list_head* noundef %pwqs) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #24, !srcloc !98
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.worker* @alloc_worker() unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc_node(i64 noundef 160) #23
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %entry1 = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %entry1) #23
  %scheduled = getelementptr inbounds i8, i8* %call, i64 48
  %0 = bitcast i8* %scheduled to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %0) #23
  %node2 = getelementptr inbounds i8, i8* %call, i64 80
  %1 = bitcast i8* %node2 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %1) #23
  %flags = getelementptr inbounds i8, i8* %call, i64 104
  %2 = bitcast i8* %flags to i32*
  store i32 8, i32* %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i8* %call to %struct.worker*
  ret %struct.worker* %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @rescuer_thread(i8* noundef %__rescuer) #0 {
entry:
  %n = alloca %struct.work_struct*, align 8
  %0 = bitcast i8* %__rescuer to %struct.worker*
  %rescue_wq = getelementptr inbounds i8, i8* %__rescuer, i64 144
  %1 = bitcast i8* %rescue_wq to %struct.workqueue_struct**
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** %1, align 8
  %scheduled1 = getelementptr inbounds i8, i8* %__rescuer, i64 48
  %3 = bitcast i8* %scheduled1 to %struct.list_head*
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %5 = inttoptr i64 %4 to %struct.task_struct*
  call void @set_user_nice(%struct.task_struct* noundef %5, i64 noundef -20) #22
  call fastcc void @set_pf_worker(i1 noundef true) #23
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 1
  %maydays = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %2, i64 0, i32 9
  %6 = bitcast %struct.list_head* %maydays to i8**
  %7 = bitcast %struct.work_struct** %n to i8*
  %8 = bitcast %struct.work_struct** %n to i8**
  %rescuer104 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %2, i64 0, i32 10
  %flags = getelementptr inbounds i8, i8* %__rescuer, i64 104
  %9 = bitcast i8* %flags to i32*
  br label %repeat

repeat:                                           ; preds = %if.end157, %entry
  store volatile i32 1026, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !99
  %call18 = call i1 @kthread_should_stop() #22
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  %call19214 = call fastcc i32 @list_empty(%struct.list_head* noundef %maydays) #23
  %tobool.not215 = icmp eq i32 %call19214, 0
  br i1 %tobool.not215, label %while.body, label %while.end

while.body:                                       ; preds = %repeat, %if.end118
  %10 = load i8*, i8** %6, align 8
  %add.ptr = getelementptr i8, i8* %10, i64 -136
  %11 = bitcast i8* %add.ptr to %struct.pool_workqueue*
  %pool24 = bitcast i8* %add.ptr to %struct.worker_pool**
  %12 = load %struct.worker_pool*, %struct.worker_pool** %pool24, align 256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #24
  store %struct.work_struct* null, %struct.work_struct** %n, align 8, !annotation !21
  store volatile i32 0, i32* %__state, align 16
  %13 = bitcast i8* %10 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %13) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  call fastcc void @worker_attach_to_pool(%struct.worker* noundef %0, %struct.worker_pool* noundef %12) #23
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %12, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %call42 = call fastcc i32 @list_empty(%struct.list_head* noundef %3) #23
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2540; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %12, i64 0, i32 6
  %14 = bitcast %struct.list_head* %worklist to i8**
  %15 = load i8*, i8** %14, align 32
  %16 = bitcast i8* %15 to i8**
  %.pn208 = load i8*, i8** %16, align 8
  %storemerge209 = getelementptr i8, i8* %.pn208, i64 -8
  store i8* %storemerge209, i8** %8, align 8
  %17 = bitcast i8* %15 to %struct.list_head*
  %cmp.not211 = icmp eq %struct.list_head* %worklist, %17
  br i1 %cmp.not211, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr67 = getelementptr i8, i8* %15, i64 -8
  %18 = bitcast i8* %add.ptr67 to %struct.work_struct*
  %call81.peel = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %18) #23
  %cmp82.peel = icmp eq %struct.pool_workqueue* %call81.peel, %11
  br i1 %cmp82.peel, label %if.end87.peel, label %if.end88.peel

if.end87.peel:                                    ; preds = %for.body.lr.ph
  %watchdog_ts = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %12, i64 0, i32 5
  %19 = load volatile i64, i64* @jiffies, align 64
  store i64 %19, i64* %watchdog_ts, align 8
  call fastcc void @move_linked_works(%struct.work_struct* noundef %18, %struct.list_head* noundef %3, %struct.work_struct** noundef nonnull %n) #23
  br label %if.end88.peel

if.end88.peel:                                    ; preds = %if.end87.peel, %for.body.lr.ph
  %20 = load %struct.work_struct*, %struct.work_struct** %n, align 8
  %next91.peel = getelementptr inbounds %struct.work_struct, %struct.work_struct* %20, i64 0, i32 1, i32 0
  %21 = bitcast %struct.list_head** %next91.peel to i8**
  %.pn.peel = load i8*, i8** %21, align 8
  %storemerge.peel = getelementptr i8, i8* %.pn.peel, i64 -8
  store i8* %storemerge.peel, i8** %8, align 8
  %entry76.peel = getelementptr inbounds %struct.work_struct, %struct.work_struct* %20, i64 0, i32 1
  %cmp.not.peel = icmp eq %struct.list_head* %entry76.peel, %worklist
  br i1 %cmp.not.peel, label %for.end, label %for.body

for.body:                                         ; preds = %if.end88.peel, %if.end88
  %work.0213 = phi %struct.work_struct* [ %22, %if.end88 ], [ %20, %if.end88.peel ]
  %call81 = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work.0213) #23
  %cmp82 = icmp eq %struct.pool_workqueue* %call81, %11
  br i1 %cmp82, label %if.end87, label %if.end88

if.end87:                                         ; preds = %for.body
  call fastcc void @move_linked_works(%struct.work_struct* noundef %work.0213, %struct.list_head* noundef %3, %struct.work_struct** noundef nonnull %n) #23
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %for.body
  %22 = load %struct.work_struct*, %struct.work_struct** %n, align 8
  %next91 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %22, i64 0, i32 1, i32 0
  %23 = bitcast %struct.list_head** %next91 to i8**
  %.pn = load i8*, i8** %23, align 8
  %storemerge = getelementptr i8, i8* %.pn, i64 -8
  store i8* %storemerge, i8** %8, align 8
  %entry76 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %22, i64 0, i32 1
  %cmp.not = icmp eq %struct.list_head* %entry76, %worklist
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !101

for.end:                                          ; preds = %if.end88, %if.end88.peel, %if.end
  %call97 = call fastcc i32 @list_empty(%struct.list_head* noundef %3) #23
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end115

if.then99:                                        ; preds = %for.end
  call fastcc void @process_scheduled_works(%struct.worker* noundef %0) #23
  %nr_active = getelementptr i8, i8* %10, i64 -44
  %24 = bitcast i8* %nr_active to i32*
  %25 = load i32, i32* %24, align 4
  %tobool100.not = icmp eq i32 %25, 0
  br i1 %tobool100.not, label %if.end115, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then99
  %call101 = call fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %12) #23
  br i1 %call101, label %if.then103, label %if.end115

if.then103:                                       ; preds = %land.lhs.true
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  %26 = load %struct.worker*, %struct.worker** %rescuer104, align 8
  %tobool105.not = icmp eq %struct.worker* %26, null
  br i1 %tobool105.not, label %if.end113, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.then103
  %call108 = call fastcc i32 @list_empty(%struct.list_head* noundef %13) #23
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end113, label %if.then110

if.then110:                                       ; preds = %land.lhs.true106
  call fastcc void @get_pwq(%struct.pool_workqueue* noundef %11) #23
  call fastcc void @list_add_tail(%struct.list_head* noundef %13, %struct.list_head* noundef %maydays) #23
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %land.lhs.true106, %if.then103
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  br label %if.end115

if.end115:                                        ; preds = %if.then99, %land.lhs.true, %if.end113, %for.end
  call fastcc void @put_pwq(%struct.pool_workqueue* noundef %11) #23
  %call116 = call fastcc i1 @need_more_worker(%struct.worker_pool* noundef %12) #23
  br i1 %call116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end115
  call fastcc void @wake_up_worker(%struct.worker_pool* noundef %12) #23
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end115
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @worker_detach_from_pool(%struct.worker* noundef %0) #23
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #24
  %call19 = call fastcc i32 @list_empty(%struct.list_head* noundef %maydays) #23
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end118, %repeat
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  br i1 %call18, label %do.body130, label %if.end139

do.body130:                                       ; preds = %while.end
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @set_pf_worker(i1 noundef false) #23
  ret i32 0

if.end139:                                        ; preds = %while.end
  %27 = load i32, i32* %9, align 8
  %and = and i32 %27, 456
  %tobool141.not = icmp eq i32 %and, 0
  br i1 %tobool141.not, label %if.then156, label %if.end157, !prof !12

if.then156:                                       ; preds = %if.end139
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2606; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !102
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end139
  call void @schedule() #22
  br label %repeat
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind_mask(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pf_worker(i1 noundef %val) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, -33
  %masksel = select i1 %val, i32 32, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, i32* %flags, align 4
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_attach_to_pool(%struct.worker* noundef %worker, %struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %0 = load i32, i32* %flags, align 16
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %1 = load i32, i32* %flags1, align 8
  %or = or i32 %1, 128
  store i32 %or, i32* %flags1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 1
  %3 = load i32, i32* %cpu, align 4
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %2, i32 noundef %3) #22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rescue_wq = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 14
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** %rescue_wq, align 8
  %tobool2.not = icmp eq %struct.workqueue_struct* %4, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %task4 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %5 = load %struct.task_struct*, %struct.task_struct** %task4, align 8
  %attrs = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 17
  %6 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %attrs, align 8
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %6, i64 0, i32 1, i64 0
  %call = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %5, %struct.cpumask* noundef %arraydecay) #22
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %node = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 8
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 14
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef %workers) #23
  %pool6 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  store %struct.worker_pool* %pool, %struct.worker_pool** %pool6, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_scheduled_works(%struct.worker* noundef %worker) unnamed_addr #0 {
entry:
  %scheduled = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 5
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %scheduled) #23
  %tobool.not7 = icmp eq i32 %call6, 0
  br i1 %tobool.not7, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %scheduled to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.work_struct*
  call fastcc void @process_one_work(%struct.worker* noundef %worker, %struct.work_struct* noundef %2) #23
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %scheduled) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %pool) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @need_more_worker(%struct.worker_pool* noundef %pool) #23
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @may_start_working(%struct.worker_pool* noundef %pool) #23
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @need_more_worker(%struct.worker_pool* noundef %pool) unnamed_addr #3 {
entry:
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 6
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @__need_more_worker(%struct.worker_pool* noundef %pool) #23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_detach_from_pool(%struct.worker* nocapture noundef %worker) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %1, i32 noundef -1) #22
  %node = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 8
  call fastcc void @list_del(%struct.list_head* noundef %node) #23
  store %struct.worker_pool* null, %struct.worker_pool** %pool1, align 8
  %workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 14
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %workers) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %detach_completion3 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 15
  %2 = load %struct.completion*, %struct.completion** %detach_completion3, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %detach_completion.0 = phi %struct.completion* [ %2, %if.then ], [ null, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_attach_mutex) #22
  %flags = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, -385
  store i32 %and, i32* %flags, align 8
  %tobool4.not = icmp eq %struct.completion* %detach_completion.0, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @complete(%struct.completion* noundef nonnull %detach_completion.0) #22
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_one_work(%struct.worker* noundef %worker, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) #23
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %wq = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call, i64 0, i32 1
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %1, i64 0, i32 19
  %2 = load i32, i32* %flags, align 64
  %and = and i32 %2, 32
  %tobool.not = icmp eq i32 %and, 0
  %flags2 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 4
  %3 = load i32, i32* %flags2, align 16
  %and3 = and i32 %3, 4
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call6, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %cpu = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 1
  %6 = load i32, i32* %cpu, align 4
  %cmp.not = icmp eq i32 %5, %6
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2212; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %do.body
  %call22 = call fastcc %struct.worker* @find_worker_executing_work(%struct.worker_pool* noundef %0, %struct.work_struct* noundef %work) #23
  %tobool23.not = icmp eq %struct.worker* %call22, null
  br i1 %tobool23.not, label %if.end32, label %if.then31, !prof !9

if.then31:                                        ; preds = %if.end
  %scheduled = getelementptr inbounds %struct.worker, %struct.worker* %call22, i64 0, i32 5
  call fastcc void @move_linked_works(%struct.work_struct* noundef %work, %struct.list_head* noundef %scheduled, %struct.work_struct** noundef null) #23
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %hentry = bitcast %struct.worker* %worker to %struct.hlist_node*
  %7 = ptrtoint %struct.work_struct* %work to i64
  %mul.i = mul i64 %7, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 58
  %arrayidx = getelementptr %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 12, i64 %shr.i
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %hentry, %struct.hlist_head* noundef %arrayidx) #23
  %current_work = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 1
  store %struct.work_struct* %work, %struct.work_struct** %current_work, align 8
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 2
  %8 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %func, align 8
  %current_func = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 2
  store void (%struct.work_struct*)* %8, void (%struct.work_struct*)** %current_func, align 8
  %current_pwq = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 3
  store %struct.pool_workqueue* %call, %struct.pool_workqueue** %current_pwq, align 8
  %9 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %call34 = call fastcc i32 @get_work_color(i64 noundef %10) #23
  %current_color = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 4
  store i32 %call34, i32* %current_color, align 8
  %arraydecay = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 13, i64 0
  %11 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  %arraydecay36 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %11, i64 0, i32 16, i64 0
  %call37 = call i64 @strscpy(i8* noundef %arraydecay, i8* noundef %arraydecay36, i64 noundef 24) #22
  %entry38 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %entry38) #23
  br i1 %tobool.not, label %if.end48, label %if.then47, !prof !9

if.then47:                                        ; preds = %if.end32
  call fastcc void @worker_set_flags(%struct.worker* noundef %worker, i32 noundef 64) #23
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end32
  %call49 = call fastcc i1 @need_more_worker(%struct.worker_pool* noundef %0) #23
  br i1 %call49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end48
  call fastcc void @wake_up_worker(%struct.worker_pool* noundef %0) #23
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 3
  %12 = load i32, i32* %id, align 4
  call fastcc void @set_work_pool_and_clear_pending(%struct.work_struct* noundef %work, i32 noundef %12) #23
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %13 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  call void %13(%struct.work_struct* noundef %work) #22
  %call66 = call fastcc i32 @preempt_count() #23
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end89, label %do.end79, !prof !9

do.end79:                                         ; preds = %if.end51
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %arraydecay82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i64 0, i32 81, i64 0
  %call83 = call fastcc i32 @preempt_count() #23
  %call85 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %15) #23
  %16 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %call87 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.37, i64 0, i64 0), i8* noundef %arraydecay82, i32 noundef %call83, i32 noundef %call85, void (%struct.work_struct*)* noundef %16) #26
  call void @dump_stack() #26
  br label %if.end89

if.end89:                                         ; preds = %do.end79, %if.end51
  call fastcc void @_cond_resched() #23
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  br i1 %tobool.not, label %if.end102, label %if.then101, !prof !9

if.then101:                                       ; preds = %if.end89
  call fastcc void @worker_clr_flags(%struct.worker* noundef %worker, i32 noundef 64) #23
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end89
  %17 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %current_func, align 8
  %last_func = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 15
  store void (%struct.work_struct*)* %17, void (%struct.work_struct*)** %last_func, align 8
  call fastcc void @hash_del(%struct.hlist_node* noundef %hentry) #23
  store %struct.work_struct* null, %struct.work_struct** %current_work, align 8
  store void (%struct.work_struct*)* null, void (%struct.work_struct*)** %current_func, align 8
  store %struct.pool_workqueue* null, %struct.pool_workqueue** %current_pwq, align 8
  store i32 2147483647, i32* %current_color, align 8
  call fastcc void @pwq_dec_nr_in_flight(%struct.pool_workqueue* noundef %call, i64 noundef %10) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_set_flags(%struct.worker* nocapture noundef %worker, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %1, %3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 970; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and = and i32 %flags, 456
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags16 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %4 = load i32, i32* %flags16, align 8
  %and17 = and i32 %4, 456
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  %nr_running = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 21
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #22
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true, %if.end
  %flags21 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %5 = load i32, i32* %flags21, align 8
  %or = or i32 %5, %flags
  store i32 %or, i32* %flags21, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_clr_flags(%struct.worker* nocapture noundef %worker, i32 noundef %flags) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %flags2 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %1 = load i32, i32* %flags2, align 8
  %task = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 6
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %2, %4
  br i1 %cmp.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 996; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !105
  %.pre = load i32, i32* %flags2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = phi i32 [ %.pre, %if.then ], [ %1, %entry ]
  %neg = xor i32 %flags, -1
  %and = and i32 %5, %neg
  store i32 %and, i32* %flags2, align 8
  %and17 = and i32 %flags, 456
  %tobool18.not = icmp ne i32 %and17, 0
  %and19 = and i32 %1, 456
  %tobool20.not = icmp ne i32 %and19, 0
  %or.cond = select i1 %tobool18.not, i1 %tobool20.not, i1 false
  %and23 = and i32 %and, 456
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond37 = select i1 %or.cond, i1 %tobool24.not, i1 false
  br i1 %or.cond37, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end
  %nr_running = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 21
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_running) #22
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @may_start_working(%struct.worker_pool* nocapture noundef readonly %pool) unnamed_addr #13 {
entry:
  %nr_idle = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 8
  %0 = load i32, i32* %nr_idle, align 4
  %tobool = icmp ne i32 %0, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !107
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #19

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !108
  call void @rcu_read_unlock_strict() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_find(%struct.idr* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #22
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #22
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pr_cont_work(i1 noundef %comma, %struct.work_struct* nocapture noundef readonly %work) unnamed_addr #0 {
entry:
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 0, i32 2
  %0 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %func, align 8
  %cmp = icmp eq void (%struct.work_struct*)* %0, @wq_barrier_func
  %cond = select i1 %comma, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  br i1 %cmp, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %task = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2
  %1 = bitcast %struct.work_struct* %task to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %call = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %2) #23
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* noundef %cond, i32 noundef %call) #26
  br label %if.end

do.end8:                                          ; preds = %entry
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* noundef %cond, void (%struct.work_struct*)* noundef %0) #26
  br label %if.end

if.end:                                           ; preds = %do.end8, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ida_alloc(%struct.ida* noundef %ida) unnamed_addr #0 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef %ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @worker_thread(i8* noundef %__worker) #0 {
entry:
  %0 = bitcast i8* %__worker to %struct.worker*
  %pool1 = getelementptr inbounds i8, i8* %__worker, i64 72
  %1 = bitcast i8* %pool1 to %struct.worker_pool**
  %2 = load %struct.worker_pool*, %struct.worker_pool** %1, align 8
  call fastcc void @set_pf_worker(i1 noundef true) #23
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %flags = getelementptr inbounds i8, i8* %__worker, i64 104
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 8
  %and159 = and i32 %4, 2
  %tobool.not160 = icmp eq i32 %and159, 0
  br i1 %tobool.not160, label %if.end29.lr.ph, label %if.then, !prof !9

if.end29.lr.ph:                                   ; preds = %entry
  %scheduled = getelementptr inbounds i8, i8* %__worker, i64 48
  %5 = bitcast i8* %scheduled to %struct.list_head*
  %next = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 6, i32 0
  %6 = bitcast %struct.list_head** %next to i8**
  %watchdog_ts = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 5
  br label %if.end29

if.then:                                          ; preds = %sleep, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %entry5 = bitcast i8* %__worker to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry5) #23
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then21, label %if.end, !prof !12

if.then21:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2399; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !109
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then
  call fastcc void @set_pf_worker(i1 noundef false) #23
  %task = getelementptr inbounds i8, i8* %__worker, i64 64
  %7 = bitcast i8* %task to %struct.task_struct**
  %8 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  call fastcc void @set_task_comm(%struct.task_struct* noundef %8) #23
  %worker_ida = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %2, i64 0, i32 16
  %id = getelementptr inbounds i8, i8* %__worker, i64 108
  %9 = bitcast i8* %id to i32*
  %10 = load i32, i32* %9, align 4
  call void @ida_free(%struct.ida* noundef %worker_ida, i32 noundef %10) #22
  call fastcc void @worker_detach_from_pool(%struct.worker* noundef %0) #23
  call void @kfree(i8* noundef %__worker) #22
  ret i32 0

if.end29:                                         ; preds = %if.end29.lr.ph, %sleep
  call fastcc void @worker_leave_idle(%struct.worker* noundef %0) #23
  br label %recheck

recheck:                                          ; preds = %land.lhs.true, %if.end29
  %call30 = call fastcc i1 @need_more_worker(%struct.worker_pool* noundef %2) #23
  br i1 %call30, label %if.end32, label %sleep

if.end32:                                         ; preds = %recheck
  %call33 = call fastcc i1 @may_start_working(%struct.worker_pool* noundef %2) #23
  br i1 %call33, label %if.end46, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %if.end32
  %call43 = call fastcc i1 @manage_workers(%struct.worker* noundef %0) #23
  br i1 %call43, label %recheck, label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %if.end32
  %call48 = call fastcc i32 @list_empty(%struct.list_head* noundef %5) #23
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then64, label %if.end65, !prof !12

if.then64:                                        ; preds = %if.end46
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 2424; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !110
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end46
  call fastcc void @worker_clr_flags(%struct.worker* noundef %0, i32 noundef 264) #23
  br label %do.body

do.body:                                          ; preds = %if.end103, %if.end65
  %11 = load i8*, i8** %6, align 32
  %add.ptr = getelementptr i8, i8* %11, i64 -8
  %12 = bitcast i8* %add.ptr to %struct.work_struct*
  %13 = load volatile i64, i64* @jiffies, align 64
  store i64 %13, i64* %watchdog_ts, align 8
  %14 = bitcast i8* %add.ptr to i64*
  %15 = load i64, i64* %14, align 8
  %and76 = and i64 %15, 8
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %if.then87, label %if.else, !prof !9

if.then87:                                        ; preds = %do.body
  call fastcc void @process_one_work(%struct.worker* noundef %0, %struct.work_struct* noundef %12) #23
  %call89 = call fastcc i32 @list_empty(%struct.list_head* noundef %5) #23
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end103.sink.split, label %if.end103, !prof !12

if.else:                                          ; preds = %do.body
  call fastcc void @move_linked_works(%struct.work_struct* noundef %12, %struct.list_head* noundef %5, %struct.work_struct** noundef null) #23
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.then87, %if.else
  call fastcc void @process_scheduled_works(%struct.worker* noundef %0) #23
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %if.then87
  %call105 = call fastcc i1 @keep_working(%struct.worker_pool* noundef %2) #23
  br i1 %call105, label %do.body, label %do.end106

do.end106:                                        ; preds = %if.end103
  call fastcc void @worker_set_flags(%struct.worker* noundef %0, i32 noundef 8) #23
  br label %sleep

sleep:                                            ; preds = %recheck, %do.end106
  call fastcc void @worker_enter_idle(%struct.worker* noundef %0) #23
  %16 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !35
  %17 = inttoptr i64 %16 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i64 0, i32 1
  store volatile i32 1026, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  call void @schedule() #22
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %18 = load i32, i32* %3, align 8
  %and = and i32 %18, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end29, label %if.then, !prof !9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_enter_idle(%struct.worker* noundef %worker) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %flags = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1797; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !111
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %entry18 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry18) #23
  %tobool19.not = icmp eq i32 %call, 0
  br i1 %tobool19.not, label %land.rhs, label %if.end47

land.rhs:                                         ; preds = %lor.lhs.false
  %next = bitcast %struct.worker* %worker to %struct.hlist_node**
  %2 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool20.not = icmp eq %struct.hlist_node* %2, null
  br i1 %tobool20.not, label %lor.rhs, label %if.then35

lor.rhs:                                          ; preds = %land.rhs
  %pprev = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 0, i32 0, i32 1
  %3 = bitcast %struct.list_head** %pprev to %struct.hlist_node***
  %4 = load %struct.hlist_node**, %struct.hlist_node*** %3, align 8
  %tobool22.not = icmp eq %struct.hlist_node** %4, null
  br i1 %tobool22.not, label %if.end47, label %if.then35, !prof !9

if.then35:                                        ; preds = %land.rhs, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1799; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !112
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false, %lor.rhs
  %5 = load i32, i32* %flags, align 8
  %or = or i32 %5, 4
  store i32 %or, i32* %flags, align 8
  %nr_idle = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 8
  %6 = load i32, i32* %nr_idle, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %nr_idle, align 4
  %7 = load volatile i64, i64* @jiffies, align 64
  %last_active = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 9
  store i64 %7, i64* %last_active, align 8
  %idle_list = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 9
  call fastcc void @list_add(%struct.list_head* noundef %entry18, %struct.list_head* noundef %idle_list) #23
  %call50 = call fastcc i1 @too_many_workers(%struct.worker_pool* noundef %0) #23
  br i1 %call50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end47
  %idle_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 10
  %call52 = call fastcc i32 @timer_pending(%struct.timer_list* noundef %idle_timer) #23
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end57

if.then54:                                        ; preds = %land.lhs.true
  %8 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %8, 75000
  %call56 = call i32 @mod_timer(%struct.timer_list* noundef %idle_timer, i64 noundef %add) #22
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %land.lhs.true, %if.end47
  %flags59 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 4
  %9 = load i32, i32* %flags59, align 16
  %and60 = and i32 %9, 4
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %cleanup

land.lhs.true62:                                  ; preds = %if.end57
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 7
  %10 = load i32, i32* %nr_workers, align 16
  %11 = load i32, i32* %nr_idle, align 4
  %cmp = icmp eq i32 %10, %11
  br i1 %cmp, label %land.rhs65, label %cleanup

land.rhs65:                                       ; preds = %land.lhs.true62
  %counter.i = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 21, i32 0
  %12 = load volatile i32, i32* %counter.i, align 4
  %tobool67.not = icmp eq i32 %12, 0
  br i1 %tobool67.not, label %cleanup, label %if.then81, !prof !9

if.then81:                                        ; preds = %land.rhs65
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1821; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !113
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then, %land.rhs65, %if.then81, %land.lhs.true62, %if.end57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_comm(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  call void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i1 noundef false) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @worker_leave_idle(%struct.worker* noundef %worker) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 10
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/workqueue.c\22; .popsection; .long 14472b - 14470b; .short 1837; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !114
  br label %cleanup

if.end19:                                         ; preds = %entry
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %1 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  call fastcc void @worker_clr_flags(%struct.worker* noundef %worker, i32 noundef 4) #23
  %nr_idle = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %1, i64 0, i32 8
  %2 = load i32, i32* %nr_idle, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %nr_idle, align 4
  %entry20 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %entry20) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @manage_workers(%struct.worker* noundef %worker) unnamed_addr #0 {
entry:
  %pool1 = getelementptr inbounds %struct.worker, %struct.worker* %worker, i64 0, i32 7
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool1, align 8
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 4
  %1 = load i32, i32* %flags, align 16
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %1, 1
  store i32 %or, i32* %flags, align 16
  %manager = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 13
  store %struct.worker* %worker, %struct.worker** %manager, align 8
  call fastcc void @maybe_create_worker(%struct.worker_pool* noundef %0) #23
  store %struct.worker* null, %struct.worker** %manager, align 8
  %2 = load i32, i32* %flags, align 16
  %and5 = and i32 %2, -2
  store i32 %and5, i32* %flags, align 16
  %call = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef nonnull @manager_wait) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @keep_working(%struct.worker_pool* noundef %pool) unnamed_addr #3 {
entry:
  %worklist = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 6
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %worklist) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %counter.i = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 21, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(%struct.task_struct* noundef, i8* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @maybe_create_worker(%struct.worker_pool* noundef %pool) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 0
  %mayday_timer = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 11
  br label %restart

restart:                                          ; preds = %while.end, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %0 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %0, 2
  %call = call i32 @mod_timer(%struct.timer_list* noundef %mayday_timer, i64 noundef %add) #22
  br label %while.body

while.body:                                       ; preds = %if.end, %restart
  %call1 = call fastcc %struct.worker* @create_worker(%struct.worker_pool* noundef %pool) #23
  %tobool.not = icmp eq %struct.worker* %call1, null
  br i1 %tobool.not, label %lor.lhs.false, label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %call2 = call fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %pool) #23
  br i1 %call2, label %if.end, label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i64 @schedule_timeout_interruptible(i64 noundef 250) #22
  %call4 = call fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %pool) #23
  br i1 %call4, label %while.body, label %while.end

while.end:                                        ; preds = %if.end, %while.body, %lor.lhs.false
  %call8 = call i32 @del_timer_sync(%struct.timer_list* noundef %mayday_timer) #22
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %call10 = call fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %pool) #23
  br i1 %call10, label %restart, label %if.end12

if.end12:                                         ; preds = %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_interruptible(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @too_many_workers(%struct.worker_pool* nocapture noundef readonly %pool) unnamed_addr #13 {
entry:
  %flags = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 4
  %0 = load i32, i32* %flags, align 16
  %and = and i32 %0, 1
  %nr_idle1 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 8
  %1 = load i32, i32* %nr_idle1, align 4
  %add = add i32 %1, %and
  %cmp = icmp sgt i32 %add, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %nr_workers = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %pool, i64 0, i32 7
  %2 = load i32, i32* %nr_workers, align 16
  %sub = sub i32 %2, %add
  %sub4 = shl i32 %add, 2
  %mul = add i32 %sub4, -8
  %cmp5 = icmp sge i32 %mul, %sub
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #23
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #22
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_virtual_register(%struct.bus_type* noundef, %struct.attribute_group** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_unbound_cpumask_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 noundef %0, i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @wq_unbound_cpumask, i64 0, i64 0, i32 0, i64 0)) #22
  call void @mutex_unlock(%struct.mutex* noundef nonnull @wq_pool_mutex) #22
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_unbound_cpumask_store(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %cpumask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %cpumask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !21
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull %cpumask) #23
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %cpumask, i64 0, i64 0
  %call1 = call fastcc i32 @cpumask_parse(i8* noundef %buf, %struct.cpumask* noundef nonnull %arraydecay) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %entry
  %call4 = call i32 @workqueue_set_unbound_cpumask(%struct.cpumask* noundef nonnull %arraydecay) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %entry
  %ret.0 = phi i32 [ %call1, %entry ], [ %call4, %if.then2 ]
  %tobool7.not = icmp eq i32 %ret.0, 0
  %conv = sext i32 %ret.0 to i64
  %cond = select i1 %tobool7.not, i64 %count, i64 %conv
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_parse(i8* noundef %buf, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %call = call i32 @bitmap_parse(i8* noundef %buf, i32 noundef -1, i64* noundef %arraydecay, i32 noundef 256) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(i8* noundef, i32 noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @per_cpu_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %flags = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 19
  %0 = load i32, i32* %flags, align 64
  %and = lshr i32 %0, 1
  %and.lobit = and i32 %and, 1
  %1 = xor i32 %and.lobit, 1
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i32 noundef %1) #22
  %conv2 = sext i32 %call1 to i64
  ret i64 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* nocapture noundef readonly %dev) unnamed_addr #13 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 36
  %wq = bitcast i32* %add.ptr to %struct.workqueue_struct**
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8
  ret %struct.workqueue_struct* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @max_active_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %saved_max_active = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 12
  %0 = load i32, i32* %saved_max_active, align 4
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i32 noundef %0) #22
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @max_active_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %val = alloca i32, align 4
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %val, align 4, !annotation !21
  %call1 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %buf, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %val) #22
  %cmp = icmp ne i32 %call1, 1
  %1 = load i32, i32* %val, align 4
  %cmp2 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @workqueue_set_max_active(%struct.workqueue_struct* noundef %call, i32 noundef %1) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %count, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_pool_ids_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  call fastcc void @__rcu_read_lock() #22
  %call1 = call fastcc %struct.pool_workqueue* @unbound_pwq_by_node(%struct.workqueue_struct* noundef %call) #23
  %pool = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call1, i64 0, i32 0
  %0 = load %struct.worker_pool*, %struct.worker_pool** %pool, align 256
  %id = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %0, i64 0, i32 3
  %1 = load i32, i32* %id, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef %1) #22
  %idx.ext3 = sext i32 %call2 to i64
  %add.ptr4 = getelementptr i8, i8* %buf, i64 %idx.ext3
  %sub6 = sub nsw i64 4096, %idx.ext3
  %call7 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %add.ptr4, i64 noundef %sub6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #22
  %add8 = add i32 %call7, %call2
  call fastcc void @rcu_read_unlock() #23
  %conv9 = sext i32 %add8 to i64
  ret i64 %conv9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_nice_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %unbound_attrs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 13
  %0 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %unbound_attrs, align 8
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %0, i64 0, i32 0
  %1 = load i32, i32* %nice, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i32 noundef %1) #22
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_nice_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  call fastcc void @apply_wqattrs_lock() #23
  %call1 = call fastcc %struct.workqueue_attrs* @wq_sysfs_prep_attrs(%struct.workqueue_struct* noundef %call) #23
  %tobool.not = icmp eq %struct.workqueue_attrs* %call1, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %nice = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call1, i64 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %buf, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i32* noundef %nice) #22
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %land.lhs.true, label %out_unlock

land.lhs.true:                                    ; preds = %if.end
  %0 = load i32, i32* %nice, align 8
  %1 = add i32 %0, 20
  %2 = icmp ult i32 %1, 40
  br i1 %2, label %if.then8, label %out_unlock

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call fastcc i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* noundef %call, %struct.workqueue_attrs* noundef nonnull %call1) #23
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %land.lhs.true, %if.then8, %entry
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ -12, %entry ], [ -22, %land.lhs.true ], [ -22, %if.end ]
  call fastcc void @apply_wqattrs_unlock() #23
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %call1) #23
  %tobool11.not = icmp eq i32 %ret.0, 0
  %conv = sext i32 %ret.0 to i64
  %spec.select = select i1 %tobool11.not, i64 %count, i64 %conv
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_cpumask_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %unbound_attrs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 13
  %1 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %unbound_attrs, align 8
  %arraydecay1 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %1, i64 0, i32 1, i64 0, i32 0, i64 0
  %call2 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 noundef %0, i64* noundef %arraydecay1) #22
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_cpumask_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  call fastcc void @apply_wqattrs_lock() #23
  %call1 = call fastcc %struct.workqueue_attrs* @wq_sysfs_prep_attrs(%struct.workqueue_struct* noundef %call) #23
  %tobool.not = icmp eq %struct.workqueue_attrs* %call1, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call1, i64 0, i32 1, i64 0
  %call2 = call fastcc i32 @cpumask_parse(i8* noundef %buf, %struct.cpumask* noundef %arraydecay) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %out_unlock

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* noundef %call, %struct.workqueue_attrs* noundef nonnull %call1) #23
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.then4, %entry
  %ret.0 = phi i32 [ %call2, %if.end ], [ %call5, %if.then4 ], [ -12, %entry ]
  call fastcc void @apply_wqattrs_unlock() #23
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %call1) #23
  %tobool7.not = icmp eq i32 %ret.0, 0
  %conv = sext i32 %ret.0 to i64
  %spec.select = select i1 %tobool7.not, i64 %count, i64 %conv
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_numa_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %mutex = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %mutex) #22
  %unbound_attrs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %call, i64 0, i32 13
  %0 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %unbound_attrs, align 8
  %no_numa = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %0, i64 0, i32 2
  %1 = load i8, i8* %no_numa, align 8, !range !76
  %2 = xor i8 %1, 1
  %3 = zext i8 %2 to i32
  %call1 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i32 noundef %3) #22
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #22
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @wq_numa_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %v = alloca i32, align 4
  %call = call fastcc %struct.workqueue_struct* @dev_to_wq(%struct.device* noundef %dev) #23
  %0 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #24
  store i32 0, i32* %v, align 4, !annotation !21
  call fastcc void @apply_wqattrs_lock() #23
  %call1 = call fastcc %struct.workqueue_attrs* @wq_sysfs_prep_attrs(%struct.workqueue_struct* noundef %call) #23
  %tobool.not = icmp eq %struct.workqueue_attrs* %call1, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %buf, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %v) #22
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then3, label %out_unlock

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* %v, align 4
  %tobool4.not = icmp eq i32 %1, 0
  %no_numa = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %call1, i64 0, i32 2
  %frombool = zext i1 %tobool4.not to i8
  store i8 %frombool, i8* %no_numa, align 8
  %call5 = call fastcc i32 @apply_workqueue_attrs_locked(%struct.workqueue_struct* noundef %call, %struct.workqueue_attrs* noundef nonnull %call1) #23
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.then3, %entry
  %ret.0 = phi i32 [ %call5, %if.then3 ], [ -22, %if.end ], [ -12, %entry ]
  call fastcc void @apply_wqattrs_unlock() #23
  call void @free_workqueue_attrs(%struct.workqueue_attrs* noundef %call1) #23
  %tobool7.not = icmp eq i32 %ret.0, 0
  %conv = sext i32 %ret.0 to i64
  %spec.select = select i1 %tobool7.not, i64 %count, i64 %conv
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #24
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.workqueue_attrs* @wq_sysfs_prep_attrs(%struct.workqueue_struct* nocapture noundef readonly %wq) unnamed_addr #0 {
entry:
  %call = call %struct.workqueue_attrs* @alloc_workqueue_attrs() #23
  %tobool.not = icmp eq %struct.workqueue_attrs* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %unbound_attrs = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %wq, i64 0, i32 13
  %0 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %unbound_attrs, align 8
  call fastcc void @copy_workqueue_attrs(%struct.workqueue_attrs* noundef nonnull %call, %struct.workqueue_attrs* noundef %0) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.workqueue_attrs* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define internal fastcc void @__hash_init(%struct.hlist_head* nocapture noundef writeonly %ht) unnamed_addr #20 {
entry:
  %first = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %first.1 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 1, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.1, align 8
  %first.2 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 2, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.2, align 8
  %first.3 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 3, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.3, align 8
  %first.4 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 4, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.4, align 8
  %first.5 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 5, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.5, align 8
  %first.6 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 6, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.6, align 8
  %first.7 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 7, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.7, align 8
  %first.8 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 8, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.8, align 8
  %first.9 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 9, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.9, align 8
  %first.10 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 10, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.10, align 8
  %first.11 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 11, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.11, align 8
  %first.12 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 12, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.12, align 8
  %first.13 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 13, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.13, align 8
  %first.14 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 14, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.14, align 8
  %first.15 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 15, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.15, align 8
  %first.16 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 16, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.16, align 8
  %first.17 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 17, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.17, align 8
  %first.18 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 18, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.18, align 8
  %first.19 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 19, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.19, align 8
  %first.20 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 20, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.20, align 8
  %first.21 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 21, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.21, align 8
  %first.22 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 22, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.22, align 8
  %first.23 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 23, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.23, align 8
  %first.24 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 24, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.24, align 8
  %first.25 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 25, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.25, align 8
  %first.26 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 26, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.26, align 8
  %first.27 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 27, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.27, align 8
  %first.28 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 28, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.28, align 8
  %first.29 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 29, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.29, align 8
  %first.30 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 30, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.30, align 8
  %first.31 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 31, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.31, align 8
  %first.32 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 32, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.32, align 8
  %first.33 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 33, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.33, align 8
  %first.34 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 34, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.34, align 8
  %first.35 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 35, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.35, align 8
  %first.36 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 36, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.36, align 8
  %first.37 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 37, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.37, align 8
  %first.38 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 38, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.38, align 8
  %first.39 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 39, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.39, align 8
  %first.40 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 40, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.40, align 8
  %first.41 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 41, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.41, align 8
  %first.42 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 42, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.42, align 8
  %first.43 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 43, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.43, align 8
  %first.44 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 44, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.44, align 8
  %first.45 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 45, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.45, align 8
  %first.46 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 46, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.46, align 8
  %first.47 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 47, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.47, align 8
  %first.48 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 48, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.48, align 8
  %first.49 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 49, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.49, align 8
  %first.50 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 50, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.50, align 8
  %first.51 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 51, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.51, align 8
  %first.52 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 52, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.52, align 8
  %first.53 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 53, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.53, align 8
  %first.54 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 54, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.54, align 8
  %first.55 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 55, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.55, align 8
  %first.56 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 56, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.56, align 8
  %first.57 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 57, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.57, align 8
  %first.58 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 58, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.58, align 8
  %first.59 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 59, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.59, align 8
  %first.60 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 60, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.60, align 8
  %first.61 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 61, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.61, align 8
  %first.62 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 62, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.62, align 8
  %first.63 = getelementptr %struct.hlist_head, %struct.hlist_head* %ht, i64 63, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first.63, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @idle_worker_timeout(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -2, i32 0, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.worker_pool*
  %lock = bitcast %struct.hlist_node*** %add.ptr to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  %call23 = call fastcc i1 @too_many_workers(%struct.worker_pool* noundef %0) #23
  br i1 %call23, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 8
  %1 = bitcast %struct.hlist_node*** %prev to %struct.worker**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %2 = load %struct.worker*, %struct.worker** %1, align 8
  %last_active = getelementptr inbounds %struct.worker, %struct.worker* %2, i64 0, i32 9
  %3 = load i64, i64* %last_active, align 8
  %add = add i64 %3, 75000
  %4 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %4, %add
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  %idle_timer = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 9
  %5 = bitcast %struct.hlist_node*** %idle_timer to %struct.timer_list*
  %call7 = call i32 @mod_timer(%struct.timer_list* noundef %5, i64 noundef %add) #22
  br label %while.end

cleanup:                                          ; preds = %while.body
  call fastcc void @destroy_worker(%struct.worker* noundef %2) #23
  %call = call fastcc i1 @too_many_workers(%struct.worker_pool* noundef %0) #23
  br i1 %call, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pool_mayday_timeout(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -3, i32 0, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.worker_pool*
  %lock = bitcast %struct.hlist_node*** %add.ptr to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #23
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  %call = call fastcc i1 @need_to_create_worker(%struct.worker_pool* noundef %0) #23
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %worklist = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 4
  %1 = bitcast %struct.hlist_node*** %worklist to i8**
  %2 = bitcast %struct.hlist_node*** %worklist to i8*
  %.pn31 = load i8*, i8** %1, align 8
  %cmp.not32 = icmp eq i8* %.pn31, %2
  br i1 %cmp.not32, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %.pn33 = phi i8* [ %.pn, %for.body ], [ %.pn31, %if.then ]
  %work.0.in = getelementptr i8, i8* %.pn33, i64 -8
  %work.0 = bitcast i8* %work.0.in to %struct.work_struct*
  call fastcc void @send_mayday(%struct.work_struct* noundef %work.0) #23
  %3 = bitcast i8* %.pn33 to i8**
  %.pn = load i8*, i8** %3, align 8
  %cmp.not = icmp eq i8* %.pn, %2
  br i1 %cmp.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %if.then, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @wq_mayday_lock) #23
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #23
  %mayday_timer = getelementptr inbounds %struct.hlist_node**, %struct.hlist_node*** %add.ptr, i64 14
  %4 = bitcast %struct.hlist_node*** %mayday_timer to %struct.timer_list*
  %5 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %5, 25
  %call18 = call i32 @mod_timer(%struct.timer_list* noundef %4, i64 noundef %add) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ida_init(%struct.ida* nocapture noundef writeonly %ida) unnamed_addr #18 {
entry:
  %xa = getelementptr inbounds %struct.ida, %struct.ida* %ida, i64 0, i32 0
  call fastcc void @xa_init_flags(%struct.xarray* noundef %xa) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @send_mayday(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pool_workqueue* @get_work_pwq(%struct.work_struct* noundef %work) #23
  %wq1 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call, i64 0, i32 1
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq1, align 8
  %rescuer = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 10
  %1 = load %struct.worker*, %struct.worker** %rescuer, align 8
  %tobool.not = icmp eq %struct.worker* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mayday_node = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %call, i64 0, i32 10
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %mayday_node) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @get_pwq(%struct.pool_workqueue* noundef %call) #23
  %maydays = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %0, i64 0, i32 9
  call fastcc void @list_add_tail(%struct.list_head* noundef %mayday_node, %struct.list_head* noundef %maydays) #23
  %2 = load %struct.worker*, %struct.worker** %rescuer, align 8
  %task = getelementptr inbounds %struct.worker, %struct.worker* %2, i64 0, i32 6
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call7 = call i32 @wake_up_process(%struct.task_struct* noundef %3) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #18 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 33554437, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(%struct.idr* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree nounwind readonly }
attributes #20 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nobuiltin nounwind "no-builtins" }
attributes #23 = { nobuiltin "no-builtins" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #28 = { nounwind readonly }

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
!8 = !{i64 2149839297}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149864150}
!11 = !{i64 2154520001}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154525206}
!14 = !{i64 2154530941}
!15 = !{i64 2149095565, i64 2149095612, i64 2149095618, i64 2149095655, i64 2149095673, i64 2149096984, i64 2149097032, i64 2149097080, i64 2149097143, i64 2149097192, i64 2149095751, i64 2149095776, i64 2149095802, i64 2149095808, i64 2149096650, i64 2149096690, i64 2149096708, i64 2149096740, i64 2149096768, i64 2149096822, i64 2149096842, i64 2149096939, i64 2149095831, i64 2149095845, i64 2149095851, i64 2149095901, i64 2149095947, i64 2149095980}
!16 = !{i64 2154534700}
!17 = !{i64 2154539203}
!18 = !{i64 2154540979}
!19 = !{i64 2154542663}
!20 = !{i64 2154544352}
!21 = !{!"auto-init"}
!22 = !{i64 2154678809}
!23 = !{i64 2154680833}
!24 = !{i64 2154682540}
!25 = !{i64 2154684259}
!26 = !{i64 2154690682}
!27 = !{i64 2154692389}
!28 = !{i64 2154701592}
!29 = !{i64 2154708354}
!30 = !{i64 2154710051}
!31 = !{i64 2154715812}
!32 = !{i64 2154631169}
!33 = !{i64 2154675211}
!34 = !{i64 2154676921}
!35 = !{i64 1236152}
!36 = !{i64 2154623588}
!37 = !{i64 2154626778}
!38 = !{i64 2154757328}
!39 = !{i64 2154758920}
!40 = !{i64 2154762888}
!41 = !{i64 2149083849, i64 2149083896, i64 2149083902, i64 2149083939, i64 2149083957, i64 2149085298, i64 2149085346, i64 2149085394, i64 2149085457, i64 2149085506, i64 2149084035, i64 2149084060, i64 2149084086, i64 2149084092, i64 2149084964, i64 2149085004, i64 2149085022, i64 2149085054, i64 2149085082, i64 2149085136, i64 2149085156, i64 2149085253, i64 2149084115, i64 2149084129, i64 2149084135, i64 2149084185, i64 2149084231, i64 2149084264}
!42 = !{i64 2149074393, i64 2149074440, i64 2149074446, i64 2149074483, i64 2149074501, i64 2149075841, i64 2149075889, i64 2149075937, i64 2149076000, i64 2149076049, i64 2149074579, i64 2149074604, i64 2149074630, i64 2149074636, i64 2149075507, i64 2149075547, i64 2149075565, i64 2149075597, i64 2149075625, i64 2149075679, i64 2149075699, i64 2149075796, i64 2149074659, i64 2149074673, i64 2149074679, i64 2149074729, i64 2149074775, i64 2149074808}
!43 = !{i64 2154833435}
!44 = !{i64 2154835052}
!45 = !{i64 2154844079}
!46 = !{i64 2155245866}
!47 = !{i64 2154942176}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{i64 2154950433}
!51 = !{i64 2154989204}
!52 = !{i64 2154990762}
!53 = !{i64 2149232129, i64 2149232176, i64 2149232182, i64 2149232219, i64 2149232237, i64 2149233164, i64 2149233212, i64 2149233260, i64 2149233323, i64 2149233372, i64 2149232315, i64 2149232340, i64 2149232366, i64 2149232372, i64 2149232409, i64 2149232415, i64 2149232465, i64 2149232511, i64 2149232544}
!54 = !{i64 2149835004}
!55 = !{i64 2149860847}
!56 = !{i64 2155180677}
!57 = !{i64 2155187970}
!58 = !{i64 2155197270}
!59 = !{i64 2155207215}
!60 = !{i64 2155169158}
!61 = !{i64 2155265909}
!62 = !{i64 2155267348}
!63 = !{i64 2155268757}
!64 = !{i64 2155270166}
!65 = !{i64 2155274832}
!66 = !{i64 2155284761}
!67 = !{i64 2155288272}
!68 = !{i64 2155295256}
!69 = !{i64 2147891662, i64 2147892178, i64 2147892208, i64 2147892235, i64 2147892269, i64 2147892299}
!70 = !{i64 2147987524, i64 2147987557, i64 2147987610, i64 2147987669, i64 2147987703, i64 2147987758, i64 2147987787, i64 2147987807}
!71 = !{i64 2147902235, i64 2147902883, i64 2147902913, i64 2147902945, i64 2147902979, i64 2147903015, i64 2147903040}
!72 = !{i64 2149804134}
!73 = !{i64 2149089552, i64 2149089599, i64 2149089605, i64 2149089642, i64 2149089660, i64 2149090971, i64 2149091019, i64 2149091067, i64 2149091130, i64 2149091179, i64 2149089738, i64 2149089763, i64 2149089789, i64 2149089795, i64 2149090637, i64 2149090677, i64 2149090695, i64 2149090727, i64 2149090755, i64 2149090809, i64 2149090829, i64 2149090926, i64 2149089818, i64 2149089832, i64 2149089838, i64 2149089888, i64 2149089934, i64 2149089967}
!74 = !{i64 2149091731, i64 2149091778, i64 2149091784, i64 2149091821, i64 2149091839, i64 2149092782, i64 2149092830, i64 2149092878, i64 2149092941, i64 2149092990, i64 2149091917, i64 2149091942, i64 2149091968, i64 2149091974, i64 2149092011, i64 2149092017, i64 2149092067, i64 2149092113, i64 2149092146}
!75 = !{i64 2147961588, i64 2147962240, i64 2147962270, i64 2147962301, i64 2147962333, i64 2147962368, i64 2147962393}
!76 = !{i8 0, i8 2}
!77 = !{i64 2149850005}
!78 = !{i64 2149857286}
!79 = !{i64 1977319}
!80 = !{i64 2154508426}
!81 = !{i64 2154502509}
!82 = !{i64 2154469079}
!83 = !{i64 2154504289}
!84 = !{i64 2154469574}
!85 = !{i64 2154469435}
!86 = !{i64 2154469504}
!87 = !{i64 2154775878}
!88 = !{i64 2154777487}
!89 = !{i64 2154780826}
!90 = !{i64 2154782180}
!91 = !{i64 2154817230}
!92 = !{i64 2152873149}
!93 = !{i64 2154556974}
!94 = !{i64 2154558586}
!95 = !{i64 2154564258}
!96 = !{i64 2154815172}
!97 = !{i64 2154827171}
!98 = !{i64 2149627444}
!99 = !{i64 2154602337}
!100 = !{i64 2154608780}
!101 = distinct !{!101, !49}
!102 = !{i64 2154620594}
!103 = !{i64 2154579531}
!104 = !{i64 2154474044}
!105 = !{i64 2154475915}
!106 = !{i64 2147901383, i64 2147901899, i64 2147901929, i64 2147901956, i64 2147901990, i64 2147902020}
!107 = !{i64 2149605516}
!108 = !{i64 2149605733}
!109 = !{i64 2154592527}
!110 = !{i64 2154594274}
!111 = !{i64 2154549536}
!112 = !{i64 2154551280}
!113 = !{i64 2154553064}
!114 = !{i64 2154554758}
