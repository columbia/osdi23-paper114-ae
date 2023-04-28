; ModuleID = 'kernel/softirq.c'
source_filename = "kernel/softirq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_softirq__356_973_spawn_ksoftirqdearly:\09\09\09"
module asm ".long\09spawn_ksoftirqd - .\09"
module asm ".previous\09\09\09\09\09"

%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.softirq_action = type { void (%struct.softirq_action*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.62, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.5, %union.anon.41, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
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
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.21 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.25 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.23, %struct.qspinlock }
%union.anon.23 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.25 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.41 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.27 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.27 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.61, i32, [12 x i8] }
%union.anon.61 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.63, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.63 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.tasklet_head = type { %struct.tasklet_struct*, %struct.tasklet_struct** }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.68, i64 }
%union.anon.68 = type { void (i64)* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.smp_hotplug_thread = type { %struct.task_struct**, %struct.list_head, i32 (i32)*, void (i32)*, void (i32)*, void (i32)*, void (i32, i1)*, void (i32)*, void (i32)*, i8, i8* }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { i8*, i32, i64 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@.str = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NET_TX\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"NET_RX\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"IRQ_POLL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"TASKLET\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"SCHED\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HRTIMER\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"RCU\00", align 1
@softirq_to_name = dso_local local_unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)], align 8
@irq_stat = dso_local global %struct.irq_cpustat_t zeroinitializer, section ".data..percpu..shared_aligned", align 64
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@softirq_vec = internal global [10 x %struct.softirq_action] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [85 x i8] c"\013softirq: huh, entered softirq %u %s %p with preempt_count %08x, exited with %08x?\0A\00", align 1
@ksoftirqd = dso_local global %struct.task_struct* null, section ".data..percpu", align 8
@tasklet_vec = internal global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 8
@tasklet_hi_vec = internal global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 8
@.str.14 = private unnamed_addr constant [51 x i8] c"\015softirq: Attempt to kill tasklet from interrupt\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__UNIQUE_ID___addressable_spawn_ksoftirqd357 = internal global i8* bitcast (i32 ()* @spawn_ksoftirqd to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@force_irqthreads_key = external dso_local global %struct.static_key_false, align 4
@tasklet_clear_sched.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"tasklet SCHED state not set: %s %pS\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"softirq:dead\00", align 1
@softirq_threads = internal global %struct.smp_hotplug_thread { %struct.task_struct** @ksoftirqd, %struct.list_head zeroinitializer, i32 (i32)* @ksoftirqd_should_run, void (i32)* @run_ksoftirqd, void (i32)* null, void (i32)* null, void (i32, i1)* null, void (i32)* null, void (i32)* null, i8 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0) }, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"ksoftirqd/%u\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_spawn_ksoftirqd357 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @_local_bh_enable() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 983040
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/softirq.c\22; .popsection; .long 14472b - 14470b; .short 355; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__local_bh_enable(i32 noundef 512) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__local_bh_enable(i32 noundef %cnt) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #15
  %call3 = call fastcc i32 @preempt_count() #15
  call fastcc void @__preempt_count_sub(i32 noundef %cnt) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__local_bh_enable_ip(i64 noundef %ip, i32 noundef %cnt) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 983040
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/softirq.c\22; .popsection; .long 14472b - 14470b; .short 362; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i32 @preempt_count() #15
  %sub = add i32 %cnt, -1
  call fastcc void @__preempt_count_sub(i32 noundef %sub) #15
  %call22 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call22, 15728640
  %call25 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call25, 983040
  %or68 = or i32 %2, %1
  %call28 = call fastcc i32 @preempt_count() #15
  %3 = and i32 %call28, 65280
  %or3170 = or i32 %or68, %3
  %tobool32.not = icmp eq i32 %or3170, 0
  br i1 %tobool32.not, label %land.rhs, label %if.end54

land.rhs:                                         ; preds = %if.end
  %call43 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call43, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %tobool45.not = icmp eq i32 %5, 0
  br i1 %tobool45.not, label %if.end54, label %if.then53, !prof !8

if.then53:                                        ; preds = %land.rhs
  call void @do_softirq() #15
  br label %if.end54

if.end54:                                         ; preds = %if.end, %if.then53, %land.rhs
  call fastcc void @__preempt_count_sub(i32 noundef 1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_sub(i32 noundef %val) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %sub = sub i32 %3, %val
  store volatile i32 %sub, i32* %count, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !12
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_softirq() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call1, 983040
  %or55 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call4, 65280
  %or757 = or i32 %or55, %2
  %tobool.not = icmp eq i32 %or757, 0
  br i1 %tobool.not, label %do.body8, label %cleanup

do.body8:                                         ; preds = %entry
  %call10 = call fastcc i64 @arch_local_irq_save() #15
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call24, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %tobool26.not = icmp eq i32 %4, 0
  br i1 %tobool26.not, label %do.body32, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body8
  %conv27 = zext i32 %4 to i64
  %call28 = call fastcc i1 @ksoftirqd_running(i64 noundef %conv27) #15
  br i1 %call28, label %do.body32, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  call fastcc void @do_softirq_own_stack() #15
  br label %do.body32

do.body32:                                        ; preds = %if.then29, %land.lhs.true, %do.body8
  call fastcc void @arch_local_irq_restore(i64 noundef %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #15
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ksoftirqd_running(i64 noundef %pending) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.task_struct** @ksoftirqd to i64)
  %0 = inttoptr i64 %add to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  %and = and i64 %pending, 65
  %tobool.not = icmp ne i64 %and, 0
  %tobool9.not = icmp eq %struct.task_struct* %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %cleanup, label %do.end12

do.end12:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  %2 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %do.end12
  %call14 = call i1 @__kthread_should_park(%struct.task_struct* noundef nonnull %1) #19
  %lnot = xor i1 %call14, true
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %land.rhs, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %do.end12 ], [ %lnot, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_softirq_own_stack() unnamed_addr #0 {
entry:
  call void @__do_softirq() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__do_softirq() local_unnamed_addr #0 section ".softirqentry.text" {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %add.neg = xor i64 %0, -1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, -2049
  store i32 %and, i32* %flags, align 4
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add12 = add i64 %call11, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %4 = inttoptr i64 %add12 to i32*
  %5 = load i32, i32* %4, align 4
  call fastcc void @softirq_handle_begin() #15
  %6 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  br label %restart

restart:                                          ; preds = %land.lhs.true, %entry
  %pending.0 = phi i32 [ %5, %entry ], [ %17, %land.lhs.true ]
  %max_restart.0 = phi i32 [ 10, %entry ], [ %dec, %land.lhs.true ]
  %call29 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add30 = add i64 %call29, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %7 = inttoptr i64 %add30 to i32*
  store i32 0, i32* %7, align 4
  call fastcc void @arch_local_irq_enable() #15
  %iszero145 = icmp eq i32 %pending.0, 0
  br i1 %iszero145, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %restart
  %8 = call i32 @llvm.cttz.i32(i32 %pending.0, i1 true), !range !14
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %ffs149.in = phi i32 [ %13, %if.end ], [ %8, %while.body.preheader ]
  %h.0148 = phi %struct.softirq_action* [ %incdec.ptr, %if.end ], [ getelementptr inbounds ([10 x %struct.softirq_action], [10 x %struct.softirq_action]* @softirq_vec, i64 0, i64 0), %while.body.preheader ]
  %pending.1147 = phi i32 [ %shr, %if.end ], [ %pending.0, %while.body.preheader ]
  %ffs149 = add nuw nsw i32 %ffs149.in, 1
  %idx.ext150 = zext i32 %ffs149.in to i64
  %add.ptr = getelementptr %struct.softirq_action, %struct.softirq_action* %h.0148, i64 %idx.ext150
  %sub.ptr.lhs.cast = ptrtoint %struct.softirq_action* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([10 x %struct.softirq_action]* @softirq_vec to i64)
  %9 = lshr exact i64 %sub.ptr.sub, 3
  %conv38 = trunc i64 %9 to i32
  %call39 = call fastcc i32 @preempt_count() #15
  call fastcc void @kstat_incr_softirqs_this_cpu(i32 noundef %conv38) #15
  %action = getelementptr inbounds %struct.softirq_action, %struct.softirq_action* %add.ptr, i64 0, i32 0
  %10 = load void (%struct.softirq_action*)*, void (%struct.softirq_action*)** %action, align 8
  call void %10(%struct.softirq_action* noundef %add.ptr) #19
  %call40 = call fastcc i32 @preempt_count() #15
  %cmp.not = icmp eq i32 %call39, %call40
  br i1 %cmp.not, label %if.end, label %do.end47, !prof !8

do.end47:                                         ; preds = %while.body
  %idxprom = and i64 %9, 4294967295
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @softirq_to_name, i64 0, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = load void (%struct.softirq_action*)*, void (%struct.softirq_action*)** %action, align 8
  %call50 = call fastcc i32 @preempt_count() #15
  %call51 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv38, i8* noundef %11, void (%struct.softirq_action*)* noundef %12, i32 noundef %call39, i32 noundef %call50) #20
  %conv52 = sext i32 %call39 to i64
  call fastcc void @preempt_count_set(i64 noundef %conv52) #15
  br label %if.end

if.end:                                           ; preds = %do.end47, %while.body
  %incdec.ptr = getelementptr %struct.softirq_action, %struct.softirq_action* %add.ptr, i64 1
  %shr = lshr i32 %pending.1147, %ffs149
  %13 = call i32 @llvm.cttz.i32(i32 %shr, i1 true), !range !14
  %iszero = icmp eq i32 %shr, 0
  br i1 %iszero, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %restart
  %call67 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add68 = add i64 %call67, ptrtoint (%struct.task_struct** @ksoftirqd to i64)
  %14 = inttoptr i64 %add68 to %struct.task_struct**
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %cmp71 = icmp eq %struct.task_struct* %15, %2
  br i1 %cmp71, label %if.then73, label %do.body75

if.then73:                                        ; preds = %while.end
  call void @rcu_softirq_qs() #19
  br label %do.body75

do.body75:                                        ; preds = %while.end, %if.then73
  call fastcc void @arch_local_irq_disable() #15
  %call92 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add93 = add i64 %call92, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %16 = inttoptr i64 %add93 to i32*
  %17 = load i32, i32* %16, align 4
  %tobool95.not = icmp eq i32 %17, 0
  br i1 %tobool95.not, label %if.end105, label %if.then96

if.then96:                                        ; preds = %do.body75
  %18 = load volatile i64, i64* @jiffies, align 64
  %sub97 = add i64 %18, %add.neg
  %cmp98 = icmp slt i64 %sub97, 0
  br i1 %cmp98, label %land.lhs.true, label %if.end104

land.lhs.true:                                    ; preds = %if.then96
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %6) #19
  %tobool.i = icmp ne i32 %call1.i, 0
  %dec = add nsw i32 %max_restart.0, -1
  %tobool102.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %tobool102.not
  br i1 %or.cond, label %if.end104, label %restart

if.end104:                                        ; preds = %land.lhs.true, %if.then96
  call fastcc void @wakeup_softirqd() #15
  br label %if.end105

if.end105:                                        ; preds = %do.body75, %if.end104
  %conv = zext i32 %3 to i64
  call fastcc void @softirq_handle_end() #15
  call fastcc void @current_restore_flags(i64 noundef %conv) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @softirq_handle_begin() unnamed_addr #0 {
entry:
  call fastcc void @__preempt_count_add(i32 noundef 256) #19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @kstat_incr_softirqs_this_cpu(i32 noundef %irq) unnamed_addr #4 {
entry:
  %idxprom = zext i32 %irq to i64
  %arrayidx = getelementptr %struct.kernel_stat, %struct.kernel_stat* @kstat, i64 0, i32 1, i64 %idxprom
  %0 = ptrtoint i32* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %add7 = add i32 %2, 1
  store i32 %add7, i32* %1, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_count_set(i64 noundef %pc) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pc to i32
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  store volatile i32 %conv, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_softirq_qs() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !17

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wakeup_softirqd() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.task_struct** @ksoftirqd to i64)
  %0 = inttoptr i64 %add to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  %tobool.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call9 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %1) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @softirq_handle_end() unnamed_addr #0 {
entry:
  call fastcc void @__local_bh_enable(i32 noundef 256) #15
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call1, 983040
  %or27 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call4, 65280
  %or729 = or i32 %or27, %2
  %tobool.not = icmp eq i32 %or729, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/softirq.c\22; .popsection; .long 14472b - 14470b; .short 402; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @current_restore_flags(i64 noundef %orig_flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %3 = and i32 %2, -2049
  %4 = trunc i64 %orig_flags to i32
  %5 = and i32 %4, 2048
  %conv7 = or i32 %3, %5
  store i32 %conv7, i32* %flags1, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_enter_rcu() local_unnamed_addr #0 {
entry:
  call fastcc void @__preempt_count_add(i32 noundef 65536) #15
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags.i, align 4
  %and.i = and i32 %2, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = call fastcc i32 @preempt_count() #15
  %call5 = call fastcc i32 @preempt_count() #15
  %call8 = call fastcc i32 @preempt_count() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add(i32 noundef %val) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, %val
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_enter() local_unnamed_addr #0 {
entry:
  call void @rcu_irq_enter() #19
  call void @irq_enter_rcu() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_exit_rcu() local_unnamed_addr #0 {
entry:
  call fastcc void @__irq_exit_rcu() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__irq_exit_rcu() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  call fastcc void @__preempt_count_sub(i32 noundef 65536) #15
  %call1 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call1, 15728640
  %call2 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call2, 983040
  %or27 = or i32 %2, %1
  %call5 = call fastcc i32 @preempt_count() #15
  %3 = and i32 %call5, 65280
  %or829 = or i32 %or27, %3
  %tobool.not = icmp eq i32 %or829, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call18 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call18, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %tobool20.not = icmp eq i32 %5, 0
  br i1 %tobool20.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @invoke_softirq() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_exit() local_unnamed_addr #0 {
entry:
  call fastcc void @__irq_exit_rcu() #15
  call void @rcu_irq_exit() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @raise_softirq_irqoff(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  call void @__raise_softirq_irqoff(i32 noundef %nr) #15
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call1, 983040
  %or12 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call4, 65280
  %or714 = or i32 %or12, %2
  %tobool.not = icmp eq i32 %or714, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  call fastcc void @wakeup_softirqd() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local void @__raise_softirq_irqoff(i32 noundef %nr) local_unnamed_addr #4 {
entry:
  %sh_prom = zext i32 %nr to i64
  %shl = shl nuw i64 1, %sh_prom
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = trunc i64 %shl to i32
  %conv9 = or i32 %1, %2
  store i32 %conv9, i32* %0, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @raise_softirq(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void @raise_softirq_irqoff(i32 noundef %nr) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @open_softirq(i32 noundef %nr, void (%struct.softirq_action*)* noundef %action) local_unnamed_addr #7 {
entry:
  %idxprom = sext i32 %nr to i64
  %action1 = getelementptr [10 x %struct.softirq_action], [10 x %struct.softirq_action]* @softirq_vec, i64 0, i64 %idxprom, i32 0
  store void (%struct.softirq_action*)* %action, void (%struct.softirq_action*)** %action1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__tasklet_schedule(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  call fastcc void @__tasklet_schedule_common(%struct.tasklet_struct* noundef %t, %struct.tasklet_head* noundef nonnull @tasklet_vec, i32 noundef 6) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tasklet_schedule_common(%struct.tasklet_struct* noundef %t, %struct.tasklet_head* noundef %headp, i32 noundef %softirq_nr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  %0 = ptrtoint %struct.tasklet_head* %headp to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call9, %0
  %1 = inttoptr i64 %add to %struct.tasklet_head*
  %next = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 0
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %next, align 8
  %tail = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %1, i64 0, i32 1
  %2 = load %struct.tasklet_struct**, %struct.tasklet_struct*** %tail, align 8
  store %struct.tasklet_struct* %t, %struct.tasklet_struct** %2, align 8
  store %struct.tasklet_struct** %next, %struct.tasklet_struct*** %tail, align 8
  call void @raise_softirq_irqoff(i32 noundef %softirq_nr) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__tasklet_hi_schedule(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  call fastcc void @__tasklet_schedule_common(%struct.tasklet_struct* noundef %t, %struct.tasklet_head* noundef nonnull @tasklet_hi_vec, i32 noundef 0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @tasklet_setup(%struct.tasklet_struct* noundef %t, void (%struct.tasklet_struct*)* noundef %callback) local_unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 0
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %next, align 8
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  store i64 0, i64* %state, align 8
  %counter.i = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 2, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %0 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 4
  %callback1 = bitcast %union.anon.68* %0 to void (%struct.tasklet_struct*)**
  store void (%struct.tasklet_struct*)* %callback, void (%struct.tasklet_struct*)** %callback1, align 8
  %use_callback = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 3
  store i8 1, i8* %use_callback, align 4
  %data = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 5
  store i64 0, i64* %data, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @tasklet_init(%struct.tasklet_struct* noundef %t, void (i64)* noundef %func, i64 noundef %data) local_unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 0
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %next, align 8
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  store i64 0, i64* %state, align 8
  %counter.i = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 2, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %func1 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 4, i32 0
  store void (i64)* %func, void (i64)** %func1, align 8
  %use_callback = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 3
  store i8 0, i8* %use_callback, align 4
  %data2 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 5
  store i64 %data, i64* %data2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tasklet_unlock_spin_wait(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 2
  %tobool.not1 = icmp eq i64 %1, 0
  br i1 %tobool.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #15
  %2 = load volatile i64, i64* %state, align 8
  %3 = and i64 %2, 2
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tasklet_kill(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %call = call fastcc i32 @preempt_count() #15
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #15
  %1 = and i32 %call1, 983040
  %or45 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #15
  %2 = and i32 %call4, 65280
  %or747 = or i32 %or45, %2
  %tobool.not = icmp eq i32 %or747, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  %call956 = call fastcc i1 @test_and_set_bit(i64 noundef 0, i64* noundef %state) #15
  br i1 %call956, label %do.end14.lr.ph, label %while.end

do.end14.lr.ph:                                   ; preds = %if.end
  %3 = bitcast i64* %state to i8*
  %4 = bitcast %struct.wait_bit_queue_entry* %__wbq_entry to i8*
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %__wbq_entry, i64 0, i32 1
  br label %do.end14

do.end14:                                         ; preds = %do.end14.lr.ph, %do.end31
  %5 = load volatile i64, i64* %state, align 8
  %conv.i51 = and i64 %5, 1
  %tobool17.not = icmp eq i64 %conv.i51, 0
  br i1 %tobool17.not, label %do.end31, label %if.end19

if.end19:                                         ; preds = %do.end14
  %call21 = call %struct.wait_queue_head* @__var_waitqueue(i8* noundef %3) #19
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !annotation !21
  call void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef nonnull %__wbq_entry, i8* noundef %3, i32 noundef 0) #19
  %call2353 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call21, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %6 = load volatile i64, i64* %state, align 8
  %conv.i485254 = and i64 %6, 1
  %tobool26.not55 = icmp eq i64 %conv.i485254, 0
  br i1 %tobool26.not55, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end19, %cleanup
  call void @schedule() #19
  %call23 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call21, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %7 = load volatile i64, i64* %state, align 8
  %conv.i4852 = and i64 %7, 1
  %tobool26.not = icmp eq i64 %conv.i4852, 0
  br i1 %tobool26.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end19
  call void @finish_wait(%struct.wait_queue_head* noundef %call21, %struct.wait_queue_entry* noundef %wq_entry) #19
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #16
  br label %do.end31

do.end31:                                         ; preds = %do.end14, %for.end
  %call9 = call fastcc i1 @test_and_set_bit(i64 noundef 0, i64* noundef %state) #15
  br i1 %call9, label %do.end14, label %while.end

while.end:                                        ; preds = %do.end31, %if.end
  call void @tasklet_unlock_wait(%struct.tasklet_struct* noundef %t) #15
  %call32 = call fastcc i1 @tasklet_clear_sched(%struct.tasklet_struct* noundef %t) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #19
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @__var_waitqueue(i8* noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tasklet_unlock_wait(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  %0 = load volatile i64, i64* %state, align 8
  %1 = and i64 %0, 2
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.end14, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %state to i8*
  %call5 = call %struct.wait_queue_head* @__var_waitqueue(i8* noundef %2) #19
  %3 = bitcast %struct.wait_bit_queue_entry* %__wbq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false), !annotation !21
  call void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef nonnull %__wbq_entry, i8* noundef %2, i32 noundef 0) #19
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %__wbq_entry, i64 0, i32 1
  %call726 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call5, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %4 = load volatile i64, i64* %state, align 8
  %5 = and i64 %4, 2
  %tobool10.not27 = icmp eq i64 %5, 0
  br i1 %tobool10.not27, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #19
  %call7 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call5, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #19
  %6 = load volatile i64, i64* %state, align 8
  %7 = and i64 %6, 2
  %tobool10.not = icmp eq i64 %7, 0
  br i1 %tobool10.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef %call5, %struct.wait_queue_entry* noundef %wq_entry) #19
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #16
  br label %do.end14

do.end14:                                         ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @tasklet_clear_sched(%struct.tasklet_struct* noundef %t) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %state) #15
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %state to i8*
  call void @wake_up_var(i8* noundef %0) #19
  br label %return

if.end:                                           ; preds = %entry
  %.b53 = load i1, i1* @tasklet_clear_sched.__already_done, align 1
  br i1 %.b53, label %return, label %if.then6, !prof !8

if.then6:                                         ; preds = %if.end
  store i1 true, i1* @tasklet_clear_sched.__already_done, align 1
  %use_callback = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 3
  %1 = load i8, i8* %use_callback, align 4, !range !22
  %tobool17.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool17.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)
  %2 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 4
  %3 = bitcast %union.anon.68* %2 to i8**
  %func = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 4, i32 0
  %4 = bitcast void (i64)** %func to i8**
  %cond22.in = select i1 %tobool17.not, i8** %4, i8** %3
  %cond22 = load i8*, i8** %cond22.in, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond22) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/softirq.c\22; .popsection; .long 14472b - 14470b; .short 757; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !23
  br label %return

return:                                           ; preds = %if.end, %if.then6, %if.then
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tasklet_unlock(%struct.tasklet_struct* noundef %t) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  call fastcc void @clear_bit(i64* noundef %state) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %0 = bitcast i64* %state to i8*
  call void @wake_up_var(i8* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(i8* noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noinline nounwind null_pointer_is_valid optsize
define dso_local void @softirq_init() local_unnamed_addr #10 section ".init.text" {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call48 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %cmp49 = icmp ult i32 %call48, %0
  br i1 %cmp49, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call50 = phi i32 [ %call, %do.body ], [ %call48, %entry ]
  %idxprom = sext i32 %call50 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.tasklet_head* @tasklet_vec to i64)
  %2 = inttoptr i64 %add to %struct.tasklet_head*
  %head = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %2, i64 0, i32 0
  %tail = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %2, i64 0, i32 1
  store %struct.tasklet_struct** %head, %struct.tasklet_struct*** %tail, align 8
  %3 = load i64, i64* %arrayidx, align 8
  %add21 = add i64 %3, ptrtoint (%struct.tasklet_head* @tasklet_hi_vec to i64)
  %4 = inttoptr i64 %add21 to %struct.tasklet_head*
  %head22 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %4, i64 0, i32 0
  %tail33 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %4, i64 0, i32 1
  store %struct.tasklet_struct** %head22, %struct.tasklet_struct*** %tail33, align 8
  %call = call i32 @cpumask_next(i32 noundef %call50, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  call void @open_softirq(i32 noundef 6, void (%struct.softirq_action*)* noundef nonnull @tasklet_action) #15
  call void @open_softirq(i32 noundef 0, void (%struct.softirq_action*)* noundef nonnull @tasklet_hi_action) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tasklet_action(%struct.softirq_action* nocapture noundef readnone %a) #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.tasklet_head* @tasklet_vec to i64)
  %0 = inttoptr i64 %add to %struct.tasklet_head*
  call fastcc void @tasklet_action_common(%struct.tasklet_head* noundef %0, i32 noundef 6) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tasklet_hi_action(%struct.softirq_action* nocapture noundef readnone %a) #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.tasklet_head* @tasklet_hi_vec to i64)
  %0 = inttoptr i64 %add to %struct.tasklet_head*
  call fastcc void @tasklet_action_common(%struct.tasklet_head* noundef %0, i32 noundef 0) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @spawn_ksoftirqd() #12 section ".init.text" {
entry:
  call fastcc void @cpuhp_setup_state_nocalls() #15
  %call1 = call i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef nonnull @softirq_threads) #19
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end7, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/softirq.c\22; .popsection; .long 14472b - 14470b; .short 969; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !26
  unreachable

do.end7:                                          ; preds = %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local i32 @early_irq_init() local_unnamed_addr #12 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #12 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local i32 @arch_early_irq_init() local_unnamed_addr #12 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_dynirq_lower_bound(i32 noundef %from) local_unnamed_addr #0 {
entry:
  ret i32 %from
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !27
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !28
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__kthread_should_park(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #14 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #14 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invoke_softirq() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  %call9 = call fastcc i1 @ksoftirqd_running(i64 noundef %conv) #15
  br i1 %call9, label %if.end35, label %if.end

if.end:                                           ; preds = %entry
  %call11 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @force_irqthreads_key, i64 0, i32 0)) #15
  %cmp = icmp sgt i32 %call11, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then34, !prof !17

lor.lhs.false:                                    ; preds = %if.end
  %call30 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add31 = add i64 %call30, ptrtoint (%struct.task_struct** @ksoftirqd to i64)
  %2 = inttoptr i64 %add31 to %struct.task_struct**
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %tobool33.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool33.not, label %if.then34, label %if.else

if.then34:                                        ; preds = %lor.lhs.false, %if.end
  call fastcc void @do_softirq_own_stack() #15
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false
  call fastcc void @wakeup_softirqd() #15
  br label %if.end35

if.end35:                                         ; preds = %entry, %if.else, %if.then34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !29
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #19
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !30
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #16, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tasklet_action_common(%struct.tasklet_head* noundef %tl_head, i32 noundef %softirq_nr) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  %head = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %tl_head, i64 0, i32 0
  %0 = load %struct.tasklet_struct*, %struct.tasklet_struct** %head, align 8
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %head, align 8
  %tail = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %tl_head, i64 0, i32 1
  store %struct.tasklet_struct** %head, %struct.tasklet_struct*** %tail, align 8
  call fastcc void @arch_local_irq_enable() #15
  %tobool.not1 = icmp eq %struct.tasklet_struct* %0, null
  br i1 %tobool.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %list.02 = phi %struct.tasklet_struct* [ %1, %cleanup ], [ %0, %entry ]
  %next = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 0
  %1 = load %struct.tasklet_struct*, %struct.tasklet_struct** %next, align 8
  %call = call fastcc i32 @tasklet_trylock(%struct.tasklet_struct* noundef nonnull %list.02) #15
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body17, label %if.then

if.then:                                          ; preds = %while.body
  %counter.i = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 2, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  %call10 = call fastcc i1 @tasklet_clear_sched(%struct.tasklet_struct* noundef nonnull %list.02) #15
  br i1 %call10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then9
  %use_callback = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 3
  %3 = load i8, i8* %use_callback, align 4, !range !22
  %tobool12.not = icmp eq i8 %3, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  %4 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 4
  %callback = bitcast %union.anon.68* %4 to void (%struct.tasklet_struct*)**
  %5 = load void (%struct.tasklet_struct*)*, void (%struct.tasklet_struct*)** %callback, align 8
  call void %5(%struct.tasklet_struct* noundef nonnull %list.02) #19
  br label %if.end14

if.else:                                          ; preds = %if.then11
  %func = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 4, i32 0
  %6 = load void (i64)*, void (i64)** %func, align 8
  %data = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %list.02, i64 0, i32 5
  %7 = load i64, i64* %data, align 8
  call void %6(i64 noundef %7) #19
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else, %if.then9
  call void @tasklet_unlock(%struct.tasklet_struct* noundef nonnull %list.02) #15
  br label %cleanup

if.end15:                                         ; preds = %if.then
  call void @tasklet_unlock(%struct.tasklet_struct* noundef nonnull %list.02) #15
  br label %do.body17

do.body17:                                        ; preds = %while.body, %if.end15
  call fastcc void @arch_local_irq_disable() #15
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %next, align 8
  %8 = load %struct.tasklet_struct**, %struct.tasklet_struct*** %tail, align 8
  store %struct.tasklet_struct* %list.02, %struct.tasklet_struct** %8, align 8
  store %struct.tasklet_struct** %next, %struct.tasklet_struct*** %tail, align 8
  call void @__raise_softirq_irqoff(i32 noundef %softirq_nr) #15
  call fastcc void @arch_local_irq_enable() #15
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.end14
  %tobool.not = icmp eq %struct.tasklet_struct* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tasklet_trylock(%struct.tasklet_struct* noundef %t) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %t, i64 0, i32 1
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 1, i64* noundef %state) #15
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_setup_state_nocalls() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef null, i32 (i32)* noundef null, i1 noundef false) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal i32 @ksoftirqd_should_run(i32 noundef %cpu) #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @run_ksoftirqd(i32 noundef %cpu) #0 {
entry:
  call fastcc void @ksoftirqd_run_begin() #15
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.irq_cpustat_t* @irq_stat to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__do_softirq() #15
  call fastcc void @ksoftirqd_run_end() #15
  call fastcc void @_cond_resched() #15
  br label %return

if.end:                                           ; preds = %entry
  call fastcc void @ksoftirqd_run_end() #15
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ksoftirqd_run_begin() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ksoftirqd_run_end() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_enable() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { cold nofree noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i64 2154067817}
!10 = !{i64 1290767}
!11 = !{i64 2154073949}
!12 = !{i64 2148853072, i64 2148853119, i64 2148853125, i64 2148853162, i64 2148853180, i64 2148854107, i64 2148854155, i64 2148854203, i64 2148854266, i64 2148854315, i64 2148853258, i64 2148853283, i64 2148853309, i64 2148853315, i64 2148853352, i64 2148853358, i64 2148853408, i64 2148853454, i64 2148853487}
!13 = !{i64 2149339180, i64 2149339227, i64 2149339233, i64 2149339270, i64 2149339288, i64 2149340599, i64 2149340647, i64 2149340695, i64 2149340758, i64 2149340807, i64 2149339366, i64 2149339391, i64 2149339417, i64 2149339423, i64 2149340265, i64 2149340305, i64 2149340323, i64 2149340355, i64 2149340383, i64 2149340437, i64 2149340457, i64 2149340554, i64 2149339446, i64 2149339460, i64 2149339466, i64 2149339516, i64 2149339562, i64 2149339595}
!14 = !{i32 0, i32 33}
!15 = !{i64 2149342955}
!16 = !{i64 2149318008, i64 2149318055, i64 2149318061, i64 2149318098, i64 2149318116, i64 2149319456, i64 2149319504, i64 2149319552, i64 2149319615, i64 2149319664, i64 2149318194, i64 2149318219, i64 2149318245, i64 2149318251, i64 2149319122, i64 2149319162, i64 2149319180, i64 2149319212, i64 2149319240, i64 2149319294, i64 2149319314, i64 2149319411, i64 2149318274, i64 2149318288, i64 2149318294, i64 2149318344, i64 2149318390, i64 2149318423}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2149327464, i64 2149327511, i64 2149327517, i64 2149327554, i64 2149327572, i64 2149328913, i64 2149328961, i64 2149329009, i64 2149329072, i64 2149329121, i64 2149327650, i64 2149327675, i64 2149327701, i64 2149327707, i64 2149328579, i64 2149328619, i64 2149328637, i64 2149328669, i64 2149328697, i64 2149328751, i64 2149328771, i64 2149328868, i64 2149327730, i64 2149327744, i64 2149327750, i64 2149327800, i64 2149327846, i64 2149327879}
!19 = !{i64 2154088077}
!20 = !{i64 1870646}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154148015}
!24 = !{i64 2154153957}
!25 = !{i64 2154154049}
!26 = !{i64 2154171326}
!27 = !{i64 2149333167, i64 2149333214, i64 2149333220, i64 2149333257, i64 2149333275, i64 2149334586, i64 2149334634, i64 2149334682, i64 2149334745, i64 2149334794, i64 2149333353, i64 2149333378, i64 2149333404, i64 2149333410, i64 2149334252, i64 2149334292, i64 2149334310, i64 2149334342, i64 2149334370, i64 2149334424, i64 2149334444, i64 2149334541, i64 2149333433, i64 2149333447, i64 2149333453, i64 2149333503, i64 2149333549, i64 2149333582}
!28 = !{i64 2149335346, i64 2149335393, i64 2149335399, i64 2149335436, i64 2149335454, i64 2149336397, i64 2149336445, i64 2149336493, i64 2149336556, i64 2149336605, i64 2149335532, i64 2149335557, i64 2149335583, i64 2149335589, i64 2149335626, i64 2149335632, i64 2149335682, i64 2149335728, i64 2149335761}
!29 = !{i64 2147866054, i64 2147866706, i64 2147866736, i64 2147866767, i64 2147866799, i64 2147866834, i64 2147866859}
!30 = !{i64 2147876631, i64 2147877293, i64 2147877323, i64 2147877354, i64 2147877386, i64 2147877421, i64 2147877446}
!31 = !{i64 2147875778, i64 2147876299, i64 2147876329, i64 2147876355, i64 2147876387, i64 2147876416}
