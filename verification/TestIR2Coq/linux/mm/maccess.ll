; ModuleID = 'mm/maccess.c'
source_filename = "mm/maccess.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.5, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
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
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.22 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.22 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.38 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i1 @copy_from_kernel_nofault_allowed(i8* noundef %unsafe_src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_from_kernel_nofault(i8* nocapture noundef writeonly %dst, i8* noundef %src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call i1 @copy_from_kernel_nofault_allowed(i8* noundef %src, i64 noundef %size) #2
  br i1 %call, label %if.end, label %cleanup117

if.end:                                           ; preds = %entry
  call fastcc void @pagefault_disable() #2
  %cmp = icmp ugt i64 %size, 7
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end, %do.end10
  %size.addr.0 = phi i64 [ %sub, %do.end10 ], [ %size, %if.end ]
  %src.addr.0 = phi i8* [ %add.ptr11, %do.end10 ], [ %src, %if.end ]
  %dst.addr.0 = phi i8* [ %add.ptr, %do.end10 ], [ %dst, %if.end ]
  %0 = bitcast i8* %src.addr.0 to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %0, i32 -14, i32 0) #3, !srcloc !7
  %asmresult = extractvalue { i32, i64 } %1, 0
  %asmresult3 = extractvalue { i32, i64 } %1, 1
  %2 = bitcast i8* %dst.addr.0 to i64*
  store i64 %asmresult3, i64* %2, align 8
  %tobool4.not = icmp eq i32 %asmresult, 0
  br i1 %tobool4.not, label %do.end10, label %Efault

do.end10:                                         ; preds = %do.body
  %add.ptr = getelementptr i8, i8* %dst.addr.0, i64 8
  %add.ptr11 = getelementptr i8, i8* %src.addr.0, i64 8
  %sub = add i64 %size.addr.0, -8
  %cmp.old = icmp ugt i64 %sub, 7
  br i1 %cmp.old, label %do.body, label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end
  %size.addr.1 = phi i64 [ %size, %if.end ], [ %sub, %do.end10 ]
  %src.addr.1 = phi i8* [ %src, %if.end ], [ %add.ptr11, %do.end10 ]
  %dst.addr.1 = phi i8* [ %dst, %if.end ], [ %add.ptr, %do.end10 ]
  %cmp17 = icmp ugt i64 %size.addr.1, 3
  br i1 %cmp17, label %do.body20, label %if.end48

do.body20:                                        ; preds = %if.end12
  %3 = bitcast i8* %src.addr.1 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #3, !srcloc !8
  %asmresult24 = extractvalue { i32, i64 } %4, 0
  %asmresult25 = extractvalue { i32, i64 } %4, 1
  %conv26 = trunc i64 %asmresult25 to i32
  %5 = bitcast i8* %dst.addr.1 to i32*
  store i32 %conv26, i32* %5, align 4
  %tobool29.not = icmp eq i32 %asmresult24, 0
  br i1 %tobool29.not, label %do.end43, label %Efault

do.end43:                                         ; preds = %do.body20
  %add.ptr44 = getelementptr i8, i8* %dst.addr.1, i64 4
  %add.ptr45 = getelementptr i8, i8* %src.addr.1, i64 4
  %sub46 = add nsw i64 %size.addr.1, -4
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %if.end12
  %size.addr.3 = phi i64 [ %sub46, %do.end43 ], [ %size.addr.1, %if.end12 ]
  %src.addr.3 = phi i8* [ %add.ptr45, %do.end43 ], [ %src.addr.1, %if.end12 ]
  %dst.addr.3 = phi i8* [ %add.ptr44, %do.end43 ], [ %dst.addr.1, %if.end12 ]
  %cmp53 = icmp ugt i64 %size.addr.3, 1
  br i1 %cmp53, label %do.body56, label %if.end84

do.body56:                                        ; preds = %if.end48
  %6 = bitcast i8* %src.addr.3 to i16*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %6, i32 -14, i32 0) #3, !srcloc !9
  %asmresult60 = extractvalue { i32, i64 } %7, 0
  %asmresult61 = extractvalue { i32, i64 } %7, 1
  %conv62 = trunc i64 %asmresult61 to i16
  %8 = bitcast i8* %dst.addr.3 to i16*
  store i16 %conv62, i16* %8, align 2
  %tobool65.not = icmp eq i32 %asmresult60, 0
  br i1 %tobool65.not, label %do.end79, label %Efault

do.end79:                                         ; preds = %do.body56
  %add.ptr80 = getelementptr i8, i8* %dst.addr.3, i64 2
  %add.ptr81 = getelementptr i8, i8* %src.addr.3, i64 2
  %sub82 = add nsw i64 %size.addr.3, -2
  br label %if.end84

if.end84:                                         ; preds = %do.end79, %if.end48
  %size.addr.5 = phi i64 [ %sub82, %do.end79 ], [ %size.addr.3, %if.end48 ]
  %src.addr.5 = phi i8* [ %add.ptr81, %do.end79 ], [ %src.addr.3, %if.end48 ]
  %dst.addr.5 = phi i8* [ %add.ptr80, %do.end79 ], [ %dst.addr.3, %if.end48 ]
  %cmp86.not170 = icmp eq i64 %size.addr.5, 0
  br i1 %cmp86.not170, label %cleanup117.sink.split, label %do.body89

do.body89:                                        ; preds = %if.end84
  %9 = call { i32, i64 } asm sideeffect "1:\09ldrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %src.addr.5, i32 -14, i32 0) #3, !srcloc !10
  %asmresult93 = extractvalue { i32, i64 } %9, 0
  %asmresult94 = extractvalue { i32, i64 } %9, 1
  %conv95 = trunc i64 %asmresult94 to i8
  store i8 %conv95, i8* %dst.addr.5, align 1
  %tobool98.not = icmp eq i32 %asmresult93, 0
  br i1 %tobool98.not, label %cleanup117.sink.split, label %Efault

Efault:                                           ; preds = %do.body, %do.body89, %do.body56, %do.body20
  br label %cleanup117.sink.split

cleanup117.sink.split:                            ; preds = %if.end84, %do.body89, %Efault
  %retval.0.ph = phi i64 [ -14, %Efault ], [ 0, %do.body89 ], [ 0, %if.end84 ]
  call fastcc void @pagefault_enable() #2
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup117.sink.split, %entry
  %retval.0 = phi i64 [ -34, %entry ], [ %retval.0.ph, %cleanup117.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_to_kernel_nofault(i8* noundef %dst, i8* nocapture noundef readonly %src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  call fastcc void @pagefault_disable() #2
  %cmp = icmp ugt i64 %size, 7
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry, %do.end7
  %size.addr.0 = phi i64 [ %sub, %do.end7 ], [ %size, %entry ]
  %src.addr.0 = phi i8* [ %add.ptr8, %do.end7 ], [ %src, %entry ]
  %dst.addr.0 = phi i8* [ %add.ptr, %do.end7 ], [ %dst, %entry ]
  %0 = bitcast i8* %src.addr.0 to i64*
  %1 = load i64, i64* %0, align 8
  %2 = bitcast i8* %dst.addr.0 to i64*
  %3 = call i32 asm sideeffect "1:\09str\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %1, i64* %2, i32 -14, i32 0) #3, !srcloc !14
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %do.end7, label %Efault

do.end7:                                          ; preds = %do.body
  %add.ptr = getelementptr i8, i8* %dst.addr.0, i64 8
  %add.ptr8 = getelementptr i8, i8* %src.addr.0, i64 8
  %sub = add i64 %size.addr.0, -8
  %cmp.old = icmp ugt i64 %sub, 7
  br i1 %cmp.old, label %do.body, label %if.end9

if.end9:                                          ; preds = %do.end7, %entry
  %size.addr.1 = phi i64 [ %size, %entry ], [ %sub, %do.end7 ]
  %src.addr.1 = phi i8* [ %src, %entry ], [ %add.ptr8, %do.end7 ]
  %dst.addr.1 = phi i8* [ %dst, %entry ], [ %add.ptr, %do.end7 ]
  %cmp14 = icmp ugt i64 %size.addr.1, 3
  br i1 %cmp14, label %do.body17, label %if.end42

do.body17:                                        ; preds = %if.end9
  %4 = bitcast i8* %src.addr.1 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = bitcast i8* %dst.addr.1 to i32*
  %7 = call i32 asm sideeffect "1:\09str\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %5, i32* %6, i32 -14, i32 0) #3, !srcloc !15
  %tobool23.not = icmp eq i32 %7, 0
  br i1 %tobool23.not, label %do.end37, label %Efault

do.end37:                                         ; preds = %do.body17
  %add.ptr38 = getelementptr i8, i8* %dst.addr.1, i64 4
  %add.ptr39 = getelementptr i8, i8* %src.addr.1, i64 4
  %sub40 = add nsw i64 %size.addr.1, -4
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %if.end9
  %size.addr.3 = phi i64 [ %sub40, %do.end37 ], [ %size.addr.1, %if.end9 ]
  %src.addr.3 = phi i8* [ %add.ptr39, %do.end37 ], [ %src.addr.1, %if.end9 ]
  %dst.addr.3 = phi i8* [ %add.ptr38, %do.end37 ], [ %dst.addr.1, %if.end9 ]
  %cmp47 = icmp ugt i64 %size.addr.3, 1
  br i1 %cmp47, label %do.body50, label %if.end75

do.body50:                                        ; preds = %if.end42
  %8 = bitcast i8* %src.addr.3 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = bitcast i8* %dst.addr.3 to i16*
  %11 = call i32 asm sideeffect "1:\09strh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %9, i16* %10, i32 -14, i32 0) #3, !srcloc !16
  %tobool56.not = icmp eq i32 %11, 0
  br i1 %tobool56.not, label %do.end70, label %Efault

do.end70:                                         ; preds = %do.body50
  %add.ptr71 = getelementptr i8, i8* %dst.addr.3, i64 2
  %add.ptr72 = getelementptr i8, i8* %src.addr.3, i64 2
  %sub73 = add nsw i64 %size.addr.3, -2
  br label %if.end75

if.end75:                                         ; preds = %do.end70, %if.end42
  %size.addr.5 = phi i64 [ %sub73, %do.end70 ], [ %size.addr.3, %if.end42 ]
  %src.addr.5 = phi i8* [ %add.ptr72, %do.end70 ], [ %src.addr.3, %if.end42 ]
  %dst.addr.5 = phi i8* [ %add.ptr71, %do.end70 ], [ %dst.addr.3, %if.end42 ]
  %cmp77.not155 = icmp eq i64 %size.addr.5, 0
  br i1 %cmp77.not155, label %cleanup105, label %do.body80

do.body80:                                        ; preds = %if.end75
  %12 = load i8, i8* %src.addr.5, align 1
  %13 = call i32 asm sideeffect "1:\09strb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %12, i8* %dst.addr.5, i32 -14, i32 0) #3, !srcloc !17
  %tobool86.not = icmp eq i32 %13, 0
  br i1 %tobool86.not, label %cleanup105, label %Efault

Efault:                                           ; preds = %do.body, %do.body80, %do.body50, %do.body17
  br label %cleanup105

cleanup105:                                       ; preds = %if.end75, %do.body80, %Efault
  %retval.0 = phi i64 [ -14, %Efault ], [ 0, %do.body80 ], [ 0, %if.end75 ]
  call fastcc void @pagefault_enable() #2
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strncpy_from_kernel_nofault(i8* nocapture noundef %dst, i8* noundef %unsafe_addr, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %count, 1
  br i1 %cmp, label %cleanup32, label %if.end, !prof !18

if.end:                                           ; preds = %entry
  %call = call i1 @copy_from_kernel_nofault_allowed(i8* noundef %unsafe_addr, i64 noundef %count) #2
  br i1 %call, label %if.end3, label %cleanup32

if.end3:                                          ; preds = %if.end
  call fastcc void @pagefault_disable() #2
  %sub.ptr.rhs.cast = ptrtoint i8* %unsafe_addr to i64
  br label %do.body

do.body:                                          ; preds = %do.end19, %if.end3
  %src.0 = phi i8* [ %unsafe_addr, %if.end3 ], [ %incdec.ptr20, %do.end19 ]
  %dst.addr.0 = phi i8* [ %dst, %if.end3 ], [ %incdec.ptr, %do.end19 ]
  %0 = call { i32, i64 } asm sideeffect "1:\09ldrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %src.0, i32 -14, i32 0) #3, !srcloc !19
  %asmresult = extractvalue { i32, i64 } %0, 0
  %asmresult6 = extractvalue { i32, i64 } %0, 1
  %conv7 = trunc i64 %asmresult6 to i8
  store i8 %conv7, i8* %dst.addr.0, align 1
  %tobool8.not = icmp eq i32 %asmresult, 0
  br i1 %tobool8.not, label %do.end19, label %Efault

do.end19:                                         ; preds = %do.body
  %incdec.ptr20 = getelementptr i8, i8* %src.0, i64 1
  %tobool23.not = icmp ne i8 %conv7, 0
  %incdec.ptr = getelementptr i8, i8* %dst.addr.0, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp24 = icmp slt i64 %sub.ptr.sub, %count
  %or.cond = select i1 %tobool23.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %do.body, label %do.end26

do.end26:                                         ; preds = %do.end19
  call fastcc void @pagefault_enable() #2
  br label %cleanup32.sink.split

Efault:                                           ; preds = %do.body
  call fastcc void @pagefault_enable() #2
  %arrayidx31 = getelementptr i8, i8* %dst.addr.0, i64 -1
  br label %cleanup32.sink.split

cleanup32.sink.split:                             ; preds = %do.end26, %Efault
  %arrayidx31.sink = phi i8* [ %arrayidx31, %Efault ], [ %dst.addr.0, %do.end26 ]
  %retval.0.ph = phi i64 [ -14, %Efault ], [ %sub.ptr.sub, %do.end26 ]
  store i8 0, i8* %arrayidx31.sink, align 1
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.sink.split, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ -34, %if.end ], [ %retval.0.ph, %cleanup32.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_from_user_nofault(i8* noundef %dst, i8* noundef %src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__range_ok(i8* noundef %src, i64 noundef %size) #2
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pagefault_disable() #2
  %call1.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %src) #5
  %call2.i = call i64 @__arch_copy_from_user(i8* noundef %dst, i8* noundef %call1.i, i64 noundef %size) #5
  call fastcc void @pagefault_enable() #2
  %phi.cmp = icmp eq i64 %call2.i, 0
  %spec.select = select i1 %phi.cmp, i64 0, i64 -14
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %entry
  %0 = phi i64 [ -14, %entry ], [ %spec.select, %if.end ]
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #3, !srcloc !20
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @copy_to_user_nofault(i8* noundef %dst, i8* noundef %src, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__range_ok(i8* noundef %dst, i64 noundef %size) #2
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @pagefault_disable() #2
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %dst) #5
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %src, i64 noundef %size) #5
  call fastcc void @pagefault_enable() #2
  %phi.cmp = icmp eq i64 %call3.i, 0
  %spec.select = select i1 %phi.cmp, i64 0, i64 -14
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %entry
  %0 = phi i64 [ -14, %entry ], [ %spec.select, %if.end ]
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strncpy_from_user_nofault(i8* noundef %dst, i8* noundef %unsafe_addr, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %count, 1
  br i1 %cmp, label %cleanup, label %if.end, !prof !18

if.end:                                           ; preds = %entry
  call fastcc void @pagefault_disable() #2
  %call = call i64 @strncpy_from_user(i8* noundef %dst, i8* noundef %unsafe_addr, i64 noundef %count) #5
  call fastcc void @pagefault_enable() #2
  %cmp2.not = icmp slt i64 %call, %count
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %sub = add nsw i64 %count, -1
  %arrayidx = getelementptr i8, i8* %dst, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp5 = icmp sgt i64 %call, 0
  %inc = zext i1 %cmp5 to i64
  %spec.select = add nsw i64 %call, %inc
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %count, %if.then4 ], [ %spec.select, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @strnlen_user_nofault(i8* noundef %unsafe_addr, i64 noundef %count) local_unnamed_addr #0 {
entry:
  call fastcc void @pagefault_disable() #2
  %call = call i64 @strnlen_user(i8* noundef %unsafe_addr, i64 noundef %count) #5
  call fastcc void @pagefault_enable() #2
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  ret i64 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen_user(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #3, !srcloc !21
  call void asm sideeffect "hint #20", "~{memory}"() #3, !srcloc !22
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2152563683, i64 2152563720, i64 2152563737, i64 2152563772, i64 2152563794, i64 2152563820, i64 2152563843, i64 2152563861, i64 2152564028, i64 2152564069, i64 2152564091, i64 2152564137}
!8 = !{i64 2152567157, i64 2152567194, i64 2152567211, i64 2152567246, i64 2152567268, i64 2152567294, i64 2152567317, i64 2152567335, i64 2152567502, i64 2152567543, i64 2152567565, i64 2152567611}
!9 = !{i64 2152570627, i64 2152570664, i64 2152570681, i64 2152570716, i64 2152570738, i64 2152570764, i64 2152570787, i64 2152570805, i64 2152570976, i64 2152571017, i64 2152571039, i64 2152571085}
!10 = !{i64 2152574083, i64 2152574120, i64 2152574137, i64 2152574172, i64 2152574194, i64 2152574220, i64 2152574243, i64 2152574261, i64 2152574431, i64 2152574472, i64 2152574494, i64 2152574540}
!11 = !{i64 1358319}
!12 = !{i64 2152114519}
!13 = !{i64 2152114726}
!14 = !{i64 2152580129, i64 2152580167, i64 2152580184, i64 2152580218, i64 2152580240, i64 2152580266, i64 2152580284, i64 2152580450, i64 2152580491, i64 2152580513, i64 2152580559}
!15 = !{i64 2152583489, i64 2152583527, i64 2152583544, i64 2152583578, i64 2152583600, i64 2152583626, i64 2152583644, i64 2152583810, i64 2152583851, i64 2152583873, i64 2152583919}
!16 = !{i64 2152586845, i64 2152586883, i64 2152586900, i64 2152586934, i64 2152586956, i64 2152586982, i64 2152587000, i64 2152587170, i64 2152587211, i64 2152587233, i64 2152587279}
!17 = !{i64 2152590187, i64 2152590225, i64 2152590242, i64 2152590276, i64 2152590298, i64 2152590324, i64 2152590342, i64 2152590511, i64 2152590552, i64 2152590574, i64 2152590620}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2152593869, i64 2152593906, i64 2152593923, i64 2152593958, i64 2152593980, i64 2152594006, i64 2152594029, i64 2152594047, i64 2152594217, i64 2152594258, i64 2152594280, i64 2152594326}
!20 = !{i64 4589785, i64 4589868, i64 4590092, i64 4590312, i64 4590335}
!21 = !{i64 4594487, i64 4594511}
!22 = !{i64 2152109326}
