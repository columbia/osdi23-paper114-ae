; ModuleID = 'arch/arm64/kernel/smp.c'
source_filename = "arch/arm64/kernel/smp.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.secondary_data = type { %struct.task_struct*, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.66, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.5, %union.anon.45, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
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
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.23 }
%union.anon.23 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.29 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.29 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.45 = type { %struct.atomic_t }
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.51, %union.anon.52, i32 }
%struct.request_queue = type opaque
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.65, i32, [12 x i8] }
%union.anon.65 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.67, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.67 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, void (%struct.irq_desc*)*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.76 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
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
%struct.attribute = type { i8*, i16 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.msi_msg = type { %union.anon.73, %union.anon.74, %union.anon.75 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %union.anon.78, %struct.anon.79, %union.anon.80 }
%union.anon.78 = type { i32 }
%struct.anon.79 = type { i16, i16, i32 }
%union.anon.80 = type { i8* }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
%struct.proc_dir_entry = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.72, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.72 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.cpu_operations = type { i8*, i32 (i32)*, i32 (i32)*, i32 (i32)*, void ()* }
%struct.anon = type { i32, i32 }

@secondary_data = dso_local global %struct.secondary_data zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"\013CPU%u: failed to boot: %d\0A\00", align 1
@cpu_running = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.completion* @cpu_running to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.completion* @cpu_running to i8*), i64 16) to %struct.list_head*) } } }, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\012CPU%u: failed to come online\0A\00", align 1
@__early_cpu_boot_status = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"\013CPU%u: failed in unknown state : 0x%lx\0A\00", align 1
@cpus_stuck_in_kernel = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"\012CPU%u: may not have shut down cleanly\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\012CPU%u: is stuck in kernel\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\012CPU%u: does not support 52-bit VAs\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\012CPU%u: does not support %luK granule\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"CPU%u detected unsupported configuration\0A\00", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@cpu_number = dso_local global i32 0, section ".data..percpu..read_mostly", align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"\016CPU%u: Booted secondary processor 0x%010lx [0x%08x]\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\012CPU%d: will not boot\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\016SMP: Total of %d processors activated.\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_count = internal unnamed_addr global i32 1, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [68 x i8] c"\014Number of cores (%d) exceeds configured maximum of %u - clipping\0A\00", align 1
@bootcpu_valid = internal unnamed_addr global i1 false, section ".init.data", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\013missing boot CPU MPIDR, not enabling secondaries\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"%*s%u:%s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"IPI\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"%10u \00", align 1
@ipi_desc = internal unnamed_addr global [7 x %struct.irq_desc*] zeroinitializer, section ".data..read_mostly", align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@ipi_types = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0)], align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"%*s: %10lu\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Err\00", align 1
@irq_err_count = dso_local local_unnamed_addr global i64 0, align 8
@nr_ipi = internal unnamed_addr global i32 7, section ".data..read_mostly", align 4
@ipi_irq_base = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [32 x i8] c"\012SMP: stopping secondary CPUs\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"\014SMP: failed to stop secondary CPUs %*pbl\0A\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.24 = private unnamed_addr constant [34 x i8] c"\016CPU: All CPU(s) started at EL2\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"CPU: CPUs started in inconsistent modes\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"\016CPU: All CPU(s) started at EL1\0A\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global [2 x i32], align 4
@.str.27 = private unnamed_addr constant [48 x i8] c"\013%pOF: duplicate cpu reg properties in the DT\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"\013%pOF: duplicate boot cpu reg property in DT\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"\013%pOF: missing reg property\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"\013%pOF: invalid reg property\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"Rescheduling interrupts\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Function call interrupts\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"CPU stop interrupts\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"CPU stop (for crash dump) interrupts\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Timer broadcast interrupts\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"IRQ work interrupts\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"CPU wake-up interrupts\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@.str.39 = private unnamed_addr constant [35 x i8] c"\012CPU%u: Unknown IPI message 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cpu_up(i32 noundef %cpu, %struct.task_struct* noundef %idle) local_unnamed_addr #0 {
entry:
  store %struct.task_struct* %idle, %struct.task_struct** getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 0), align 8
  call fastcc void @update_cpu_boot_status(i32 noundef -1) #20
  %call = call fastcc i32 @boot_secondary(i32 noundef %cpu) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %cpu, i32 noundef %call) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i64 @wait_for_completion_timeout(%struct.completion* noundef nonnull @cpu_running, i64 noundef 1250) #22
  %call4 = call fastcc i1 @cpu_online(i32 noundef %cpu) #20
  br i1 %call4, label %cleanup, label %do.end9

do.end9:                                          ; preds = %if.end
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %cpu) #21
  store %struct.task_struct* null, %struct.task_struct** getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 0), align 8
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 1), align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %do.end19, label %if.end21

do.end19:                                         ; preds = %do.end9
  %1 = load volatile i64, i64* @__early_cpu_boot_status, align 8
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %do.end9
  %status.0 = phi i64 [ %1, %do.end19 ], [ %0, %do.end9 ]
  %trunc = trunc i64 %status.0 to i8
  switch i8 %trunc, label %do.end24 [
    i8 1, label %sw.bb
    i8 2, label %do.end44
    i8 3, label %sw.bb66
  ]

do.end24:                                         ; preds = %if.end21
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 noundef %cpu, i64 noundef %status.0) #21
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 noundef %cpu) #21
  br label %do.end44

do.end44:                                         ; preds = %sw.bb, %if.end21
  %call46 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 noundef %cpu) #21
  %and47 = and i64 %status.0, 256
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %do.end44
  %call54 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 noundef %cpu) #21
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %do.end44
  %and56 = and i64 %status.0, 512
  %tobool57.not = icmp eq i64 %and56, 0
  br i1 %tobool57.not, label %sw.epilog, label %do.end61

do.end61:                                         ; preds = %if.end55
  %call63 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 noundef %cpu, i64 noundef 4) #21
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end21
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %cpu) #23
  unreachable

sw.epilog:                                        ; preds = %if.end55, %do.end61, %do.end24
  %storemerge.in = load i32, i32* @cpus_stuck_in_kernel, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, i32* @cpus_stuck_in_kernel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -5, %sw.epilog ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_cpu_boot_status(i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = sext i32 %val to i64
  store volatile i64 %conv, i64* getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 1), align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @boot_secondary(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call %struct.cpu_operations* @get_cpu_ops(i32 noundef %cpu) #22
  %cpu_boot = getelementptr inbounds %struct.cpu_operations, %struct.cpu_operations* %call, i64 0, i32 3
  %0 = load i32 (i32)*, i32 (i32)** %cpu_boot, align 8
  %tobool.not = icmp eq i32 (i32)* %0, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 %0(i32 noundef %cpu) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -95, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_for_completion_timeout(%struct.completion* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #20
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @secondary_start_kernel() local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call fastcc void @mmgrab() #20
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 36
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %active_mm, align 16
  call fastcc void @cpu_uninstall_idmap() #20
  call void @rcu_cpu_starting(i32 noundef %1) #22
  call void @check_local_cpu_capabilities() #22
  %call8 = call %struct.cpu_operations* @get_cpu_ops(i32 noundef %1) #22
  %cpu_postboot = getelementptr inbounds %struct.cpu_operations, %struct.cpu_operations* %call8, i64 0, i32 4
  %4 = load void ()*, void ()** %cpu_postboot, align 8
  %tobool.not = icmp eq void ()* %4, null
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %entry
  call void %4() #22
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %entry
  %call = call fastcc i64 @read_cpuid_mpidr() #26
  %and = and i64 %call, 1095233437695
  call void @cpuinfo_store_cpu() #22
  call void @notify_cpu_starting(i32 noundef %1) #22
  call fastcc void @ipi_setup() #20
  call void @store_cpu_topology(i32 noundef %1) #22
  %call16 = call fastcc i32 @read_cpuid_id() #26
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 noundef %1, i64 noundef %and, i32 noundef %call16) #21
  call fastcc void @update_cpu_boot_status(i32 noundef 0) #20
  call void @set_cpu_online(i32 noundef %1, i1 noundef true) #22
  call void @complete(%struct.completion* noundef nonnull @cpu_running) #22
  call fastcc void @local_daif_restore() #20
  call void @cpu_startup_entry(i32 noundef 150) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @read_cpuid_mpidr() unnamed_addr #6 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !10
  ret i64 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #27, !srcloc !11
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_add() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_uninstall_idmap() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %2 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  call fastcc void @cpu_set_reserved_ttbr0() #20
  call fastcc void @local_flush_tlb_all() #20
  %3 = load i64, i64* @vabits_actual, align 8
  %sub = sub i64 64, %3
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %sub) #20
  %cmp.not = icmp eq %struct.mm_struct* %2, @init_mm
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %4, %struct.mm_struct* noundef %2) #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cpu_starting(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_local_cpu_capabilities() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cpu_operations* @get_cpu_ops(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuinfo_store_cpu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_cpu_starting(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ipi_setup() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @ipi_irq_base, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !prof !12

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* @nr_ipi, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @enable_percpu_irq(i32 noundef %0, i32 noundef 0) #22
  %2 = load i32, i32* @nr_ipi, align 4
  %cmp3 = icmp sgt i32 %2, 1
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %cleanup

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 962; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc4 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load i32, i32* @ipi_irq_base, align 4
  %add = add i32 %.pre, %inc4
  call void @enable_percpu_irq(i32 noundef %add, i32 noundef 0) #22
  %inc = add nuw nsw i32 %inc4, 1
  %3 = load i32, i32* @nr_ipi, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %cleanup

cleanup:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @store_cpu_topology(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_id() unnamed_addr #6 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !14
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpu_online(i32 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_restore() unnamed_addr #0 {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 0) #24, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @cpu_die_early() local_unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 noundef %1) #21
  call fastcc void @set_cpu_present(i32 noundef %1, i1 noundef false) #20
  call void @rcu_report_dead(i32 noundef %1) #22
  call fastcc void @update_cpu_boot_status(i32 noundef 2) #20
  call fastcc void @cpu_park_loop() #20
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_present(i32 noundef %cpu, i1 noundef %present) unnamed_addr #0 {
entry:
  br i1 %present, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_present_mask) #20
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_present_mask) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_report_dead(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_park_loop() unnamed_addr #8 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void asm sideeffect "wfe", "~{memory}"() #24, !srcloc !16
  call void asm sideeffect "wfi", "~{memory}"() #24, !srcloc !17
  br label %for.cond
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_cpus_done(i32 noundef %max_cpus) local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc i32 @num_online_cpus() #20
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call) #21
  call void @setup_cpu_features() #21
  call fastcc void @hyp_mode_check() #28
  call void @apply_alternatives_all() #21
  call void @mark_linear_text_alias_ro() #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_cpu_features() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @hyp_mode_check() unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc i1 @is_hyp_mode_available() #20
  br i1 %call, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #21
  br label %if.end30

if.else:                                          ; preds = %entry
  %call2 = call fastcc i1 @is_hyp_mode_mismatched() #20
  br i1 %call2, label %do.end9, label %do.end26

do.end9:                                          ; preds = %if.else
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 427; .short (1 << 0)|((1 << 3) | ((2) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !18
  br label %if.end30

do.end26:                                         ; preds = %if.else
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0)) #21
  br label %if.end30

if.end30:                                         ; preds = %do.end9, %do.end26, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @apply_alternatives_all() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_linear_text_alias_ro() local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  call fastcc void @set_my_cpu_offset(i64 noundef %2) #20
  call void @cpuinfo_store_boot_cpu() #21
  call void @apply_boot_alternatives() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_my_cpu_offset(i64 noundef %off) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr tpidr_el1, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09msr tpidr_el2, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %off) #24, !srcloc !19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cpuinfo_store_boot_cpu() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @apply_boot_alternatives() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_init_cpus() local_unnamed_addr #9 section ".init.text" {
entry:
  call fastcc void @of_parse_and_init_cpus() #28
  %0 = load i32, i32* @cpu_count, align 4
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %.b23 = load i1, i1* @bootcpu_valid, align 1
  br i1 %.b23, label %for.cond.preheader, label %do.end4

for.cond.preheader:                               ; preds = %if.end
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp824 = icmp ugt i32 %2, 1
  br i1 %cmp824, label %for.body, label %cleanup

do.end4:                                          ; preds = %if.end
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0)) #21
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.025 = phi i32 [ %inc, %for.inc ], [ 1, %for.cond.preheader ]
  %call9 = call i64 @cpu_logical_map(i32 noundef %i.025) #22
  %cmp10.not = icmp eq i64 %call9, -1
  br i1 %cmp10.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %for.body
  %call12 = call fastcc i32 @smp_cpu_setup(i32 noundef %i.025) #28
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %if.then11
  call fastcc void @set_cpu_logical_map(i32 noundef %i.025, i64 noundef -1) #20
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then14, %if.then11
  %inc = add nuw i32 %i.025, 1
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %inc, %3
  br i1 %cmp8, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %do.end4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @of_parse_and_init_cpus() unnamed_addr #9 section ".init.text" {
entry:
  %call = call %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef null) #22
  %cmp.not37 = icmp eq %struct.device_node* %call, null
  br i1 %cmp.not37, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %dn.038 = phi %struct.device_node* [ %call24, %cleanup ], [ %call, %entry ]
  %call1 = call fastcc i64 @of_get_cpu_mpidr(%struct.device_node* noundef nonnull %dn.038) #28
  %cmp2 = icmp eq i64 %call1, -1
  br i1 %cmp2, label %next, label %if.end

if.end:                                           ; preds = %for.body
  %0 = load i32, i32* @cpu_count, align 4
  %call3 = call fastcc i1 @is_mpidr_duplicate(i32 noundef %0, i64 noundef %call1) #28
  br i1 %call3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0), %struct.device_node* noundef nonnull %dn.038) #21
  br label %next

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @cpu_logical_map(i32 noundef 0) #22
  %cmp8 = icmp eq i64 %call1, %call7
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end6
  %.b36 = load i1, i1* @bootcpu_valid, align 1
  br i1 %.b36, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.then9
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), %struct.device_node* noundef nonnull %dn.038) #21
  br label %next

if.end16:                                         ; preds = %if.then9
  store i1 true, i1* @bootcpu_valid, align 1
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %1 = load i32, i32* @cpu_count, align 4
  %cmp19 = icmp ugt i32 %1, 255
  br i1 %cmp19, label %next, label %if.end21

if.end21:                                         ; preds = %if.end18
  call fastcc void @set_cpu_logical_map(i32 noundef %1, i64 noundef %call1) #20
  br label %next

next:                                             ; preds = %if.end18, %for.body, %if.end21, %do.end13, %do.end
  %2 = load i32, i32* @cpu_count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* @cpu_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %next, %if.end16
  %call24 = call %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef nonnull %dn.038) #22
  %cmp.not = icmp eq %struct.device_node* %call24, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpu_logical_map(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @smp_cpu_setup(i32 noundef %cpu) unnamed_addr #9 section ".init.text" {
entry:
  %call = call i32 @init_cpu_ops(i32 noundef %cpu) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.cpu_operations* @get_cpu_ops(i32 noundef %cpu) #22
  %cpu_init = getelementptr inbounds %struct.cpu_operations, %struct.cpu_operations* %call1, i64 0, i32 1
  %0 = load i32 (i32)*, i32 (i32)** %cpu_init, align 8
  %call2 = call i32 %0(i32 noundef %cpu) #22
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  call fastcc void @set_cpu_possible(i32 noundef %cpu) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %entry ], [ -19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_cpu_logical_map(i32 noundef %cpu, i64 noundef %hwid) unnamed_addr #10 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__cpu_logical_map, i64 0, i64 %idxprom
  store i64 %hwid, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_prepare_cpus(i32 noundef %max_cpus) local_unnamed_addr #9 section ".init.text" {
entry:
  call void @init_cpu_topology() #22
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call void @store_cpu_topology(i32 noundef %1) #22
  %cmp = icmp eq i32 %max_cpus, 0
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call255 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp356 = icmp ult i32 %call255, %2
  br i1 %cmp356, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %call257 = phi i32 [ %call2, %for.cond.backedge ], [ %call255, %for.cond.preheader ]
  %idxprom = zext i32 %call257 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add11 = add i64 %3, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add11 to i32*
  store i32 %call257, i32* %4, align 4
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #20
  %add20 = add i64 %call19, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add20 to i32*
  %6 = load i32, i32* %5, align 4
  %cmp21 = icmp eq i32 %call257, %6
  br i1 %cmp21, label %for.cond.backedge, label %if.end23

if.end23:                                         ; preds = %for.body
  %call24 = call %struct.cpu_operations* @get_cpu_ops(i32 noundef %call257) #22
  %tobool.not = icmp eq %struct.cpu_operations* %call24, null
  br i1 %tobool.not, label %for.cond.backedge, label %if.end26

if.end26:                                         ; preds = %if.end23
  %cpu_prepare = getelementptr inbounds %struct.cpu_operations, %struct.cpu_operations* %call24, i64 0, i32 2
  %7 = load i32 (i32)*, i32 (i32)** %cpu_prepare, align 8
  %call27 = call i32 %7(i32 noundef %call257) #22
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.cond.backedge

if.end30:                                         ; preds = %if.end26
  call fastcc void @set_cpu_present(i32 noundef %call257, i1 noundef true) #20
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end30, %for.body, %if.end23, %if.end26
  %call2 = call i32 @cpumask_next(i32 noundef %call257, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %8
  br i1 %cmp3, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.cond.backedge, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_topology() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @arch_show_interrupts(%struct.seq_file* noundef %p, i32 noundef %prec) local_unnamed_addr #0 {
entry:
  %sub = add i32 %prec, -1
  %cmp1 = icmp sgt i32 %prec, 3
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  br label %for.body

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.end ]
  %0 = trunc i64 %indvars.iv to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 noundef %sub, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef %0, i8* noundef %cond) #22
  %call22 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #29
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp323 = icmp ult i32 %call22, %1
  br i1 %cmp323, label %for.body4.lr.ph, label %for.end

for.body4.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr [7 x %struct.irq_desc*], [7 x %struct.irq_desc*]* @ipi_desc, i64 0, i64 %indvars.iv
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %call24 = phi i32 [ %call22, %for.body4.lr.ph ], [ %call, %for.body4 ]
  %2 = load %struct.irq_desc*, %struct.irq_desc** %arrayidx, align 8
  %call5 = call fastcc i32 @irq_desc_kstat_cpu(%struct.irq_desc* noundef %2, i32 noundef %call24) #20
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call5) #22
  %call = call i32 @cpumask_next(i32 noundef %call24, %struct.cpumask* noundef nonnull @__cpu_online_mask) #29
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.end:                                          ; preds = %for.body4, %for.body
  %arrayidx7 = getelementptr [7 x i8*], [7 x i8*]* @ipi_types, i64 0, i64 %indvars.iv
  %4 = load i8*, i8** %arrayidx7, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* noundef %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.end8, label %for.body

for.end8:                                         ; preds = %for.end
  %5 = load i64, i64* @irq_err_count, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %p, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef %prec, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 noundef %5) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irq_desc_kstat_cpu(%struct.irq_desc* nocapture noundef readonly %desc, i32 noundef %cpu) unnamed_addr #12 {
entry:
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %desc, i64 0, i32 2
  %0 = load i32*, i32** %kstat_irqs, align 8
  %tobool.not = icmp eq i32* %0, null
  br i1 %tobool.not, label %cond.end, label %do.body

do.body:                                          ; preds = %entry
  %1 = ptrtoint i32* %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %do.body
  %cond = phi i32 [ %4, %do.body ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arch_send_call_function_ipi_mask(%struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  call fastcc void @smp_cross_call(%struct.cpumask* noundef %mask, i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @smp_cross_call(%struct.cpumask* noundef %target, i32 noundef %ipinr) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %ipinr to i64
  %arrayidx2 = getelementptr [7 x %struct.irq_desc*], [7 x %struct.irq_desc*]* @ipi_desc, i64 0, i64 %idxprom
  %0 = load %struct.irq_desc*, %struct.irq_desc** %arrayidx2, align 8
  %call = call i32 @__ipi_send_mask(%struct.irq_desc* noundef %0, %struct.cpumask* noundef %target) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arch_send_call_function_single_ipi(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #20
  call fastcc void @smp_cross_call(%struct.cpumask* noundef nonnull %call, i32 noundef 1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #13 {
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
define dso_local void @arch_irq_work_raise() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %1) #20
  call fastcc void @smp_cross_call(%struct.cpumask* noundef nonnull %call2, i32 noundef 5) #20
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @panic_smp_self_stop() local_unnamed_addr #8 {
entry:
  call fastcc void @local_cpu_stop() #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @local_cpu_stop() unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call void @set_cpu_online(i32 noundef %1, i1 noundef false) #22
  call fastcc void @local_daif_mask() #20
  call fastcc void @cpu_park_loop() #20
  unreachable
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @set_smp_ipi_range(i32 noundef %ipi_base, i32 noundef %n) local_unnamed_addr #9 section ".init.text" {
entry:
  %cmp = icmp slt i32 %n, 7
  br i1 %cmp, label %if.end, label %if.end.thread, !prof !12

if.end.thread:                                    ; preds = %entry
  store i32 7, i32* @nr_ipi, align 4
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 986; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !20
  store i32 %n, i32* @nr_ipi, align 4
  %cmp1771 = icmp sgt i32 %n, 0
  br i1 %cmp1771, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end.thread, %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end34
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end34 ], [ 0, %for.body.preheader ]
  %0 = trunc i64 %indvars.iv to i32
  %add = add i32 %0, %ipi_base
  %call = call fastcc i32 @request_percpu_irq(i32 noundef %add) #20
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end34, label %if.then33, !prof !21

if.then33:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/smp.c\22; .popsection; .long 14472b - 14470b; .short 994; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !22
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.body
  %call44 = call %struct.irq_desc* @irq_to_desc(i32 noundef %add) #22
  %arrayidx = getelementptr [7 x %struct.irq_desc*], [7 x %struct.irq_desc*]* @ipi_desc, i64 0, i64 %indvars.iv
  store %struct.irq_desc* %call44, %struct.irq_desc** %arrayidx, align 8
  call fastcc void @irq_set_status_flags(i32 noundef %add) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, i32* @nr_ipi, align 4
  %2 = sext i32 %1 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp17, label %for.body, label %for.end

for.end:                                          ; preds = %if.end34, %if.end
  store i32 %ipi_base, i32* @ipi_irq_base, align 4
  %call48 = call fastcc i64 @__kern_my_cpu_offset() #20
  call fastcc void @ipi_setup() #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @request_percpu_irq(i32 noundef %irq) unnamed_addr #0 {
entry:
  %call = call i32 @__request_percpu_irq(i32 noundef %irq, i32 (i32, i8*)* noundef nonnull @ipi_handler, i64 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef bitcast (i32* @cpu_number to i8*)) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ipi_handler(i32 noundef %irq, i8* nocapture noundef readnone %data) #0 {
entry:
  %0 = load i32, i32* @ipi_irq_base, align 4
  %sub = sub i32 %irq, %0
  call fastcc void @do_handle_IPI(i32 noundef %sub) #20
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #0 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 1048576) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @smp_send_reschedule(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #20
  call fastcc void @smp_cross_call(%struct.cpumask* noundef nonnull %call, i32 noundef 0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tick_broadcast(%struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  call fastcc void @smp_cross_call(%struct.cpumask* noundef %mask, i32 noundef 4) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @smp_send_stop() local_unnamed_addr #0 {
entry:
  %mask = alloca %struct.cpumask, align 8
  %call = call fastcc i32 @num_other_online_cpus() #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.cpumask* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !23
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %mask) #20
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef nonnull %mask) #20
  %3 = load i32, i32* @system_state, align 4
  %cmp = icmp ult i32 %3, 3
  br i1 %cmp, label %do.end6, label %if.end

do.end6:                                          ; preds = %if.then
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0)) #21
  br label %if.end

if.end:                                           ; preds = %do.end6, %if.then
  call fastcc void @smp_cross_call(%struct.cpumask* noundef nonnull %mask, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #24
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %call1026 = call fastcc i32 @num_other_online_cpus() #20
  %tobool11.not27 = icmp eq i32 %call1026, 0
  br i1 %tobool11.not27, label %while.end, label %while.body

while.body:                                       ; preds = %if.end9, %while.body
  %timeout.028 = phi i64 [ %dec, %while.body ], [ 1000000, %if.end9 ]
  %dec = add nsw i64 %timeout.028, -1
  call void @__const_udelay(i64 noundef 4295) #22
  %call10 = call fastcc i32 @num_other_online_cpus() #20
  %tobool11.not = icmp eq i32 %call10, 0
  %tobool12.not = icmp eq i64 %dec, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end9
  %call13 = call fastcc i32 @num_other_online_cpus() #20
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %while.end
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 noundef %4, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0)) #21
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %while.end
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @num_other_online_cpus() unnamed_addr #14 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i1 @cpu_online(i32 noundef %1) #20
  %conv.neg = sext i1 %call2 to i32
  %call3 = call fastcc i32 @num_online_cpus() #20
  %sub = add i32 %call3, %conv.neg
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @setup_profiling_timer(i32 noundef %multiplier) local_unnamed_addr #13 {
entry:
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @cpus_are_stuck_in_kernel() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpumask_weight() #20
  %cmp = icmp ugt i32 %call, 1
  %0 = load i32, i32* @cpus_stuck_in_kernel, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = select i1 %tobool, i1 true, i1 %cmp
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #22
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #4 {
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

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 11, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 11, i32 0)) #24, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #24, !srcloc !25
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb nshst", "~{memory}"() #24, !srcloc !27
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #24, !srcloc !28
  call void asm sideeffect "dsb nsh", "~{memory}"() #24, !srcloc !29
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpu_set_tcr_t0sz(i64 noundef %t0sz) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, tcr_el1", "=r"() #24, !srcloc !31
  %and = and i64 %0, 63
  %cmp = icmp eq i64 %and, %t0sz
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i64 %0, -64
  %or = or i64 %and1, %t0sz
  call void asm sideeffect "msr tcr_el1, ${0:x}", "rZ"(i64 %or) #24, !srcloc !32
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %pgd, %struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pgd_t* %pgd, getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0)
  br i1 %cmp, label %do.body2, label %do.end5, !prof !12

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/mmu_context.h\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !34
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #20
  %0 = bitcast %struct.pgd_t* %pgd to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #20
  call void @cpu_do_switch_mm(i64 noundef %call, %struct.mm_struct* noundef %mm) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_do_switch_mm(i64 noundef, %struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #12 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #24, !srcloc !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_available() unnamed_addr #12 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %cmp = icmp eq i32 %0, 3602
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp1 = icmp eq i32 %1, 3602
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_hyp_mode_mismatched() unnamed_addr #12 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 0), align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @__boot_cpu_mode, i64 0, i64 1), align 4
  %cmp = icmp ne i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device_node* @of_get_next_cpu_node(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @of_get_cpu_mpidr(%struct.device_node* noundef %dn) unnamed_addr #9 section ".init.text" {
entry:
  %call = call i8* @of_get_property(%struct.device_node* noundef %dn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32* noundef null) #22
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to i32*
  %call2 = call i32 @of_n_addr_cells(%struct.device_node* noundef %dn) #22
  %call3 = call fastcc i64 @of_read_number(i32* noundef nonnull %0, i32 noundef %call2) #20
  %and = and i64 %call3, -1095233437696
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), %entry ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), %if.end ]
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef %.sink, %struct.device_node* noundef %dn) #21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i64 [ %call3, %if.end ], [ -1, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @is_mpidr_duplicate(i32 noundef %cpu, i64 noundef %hwid) unnamed_addr #9 section ".init.text" {
entry:
  %cmp7 = icmp ugt i32 %cpu, 1
  br i1 %cmp7, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %cpu, -2
  %umin = call i32 @llvm.umin.i32(i32 %0, i32 254)
  %1 = add nuw nsw i32 %umin, 1
  %call10 = call i64 @cpu_logical_map(i32 noundef 1) #22
  %cmp211 = icmp eq i64 %call10, %hwid
  br i1 %cmp211, label %cleanup, label %for.cond

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %inc13 = phi i32 [ %inc, %for.body ], [ 2, %for.body.preheader ]
  %i.0812 = phi i32 [ %inc13, %for.body ], [ 1, %for.body.preheader ]
  %exitcond.not = icmp eq i32 %i.0812, %1
  br i1 %exitcond.not, label %cleanup.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call i64 @cpu_logical_map(i32 noundef %inc13) #22
  %cmp2 = icmp eq i64 %call, %hwid
  %inc = add nuw nsw i32 %inc13, 1
  br i1 %cmp2, label %cleanup.loopexit, label %for.cond

cleanup.loopexit:                                 ; preds = %for.body, %for.cond
  %cmp.le = icmp ult i32 %inc13, %cpu
  %cmp1.le = icmp ult i32 %i.0812, 255
  %2 = and i1 %cmp.le, %cmp1.le
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader, %entry
  %.lcssa = phi i1 [ false, %entry ], [ true, %for.body.preheader ], [ %2, %cleanup.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @of_read_number(i32* nocapture noundef readonly %cell, i32 noundef %size) unnamed_addr #17 {
entry:
  %tobool.not19 = icmp eq i32 %size, 0
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %dec22.in = phi i32 [ %dec22, %for.body ], [ %size, %entry ]
  %r.021 = phi i64 [ %or9, %for.body ], [ 0, %entry ]
  %cell.addr.020 = phi i32* [ %incdec.ptr, %for.body ], [ %cell, %entry ]
  %dec22 = add i32 %dec22.in, -1
  %shl = shl i64 %r.021, 32
  %0 = load i32, i32* %cell.addr.020, align 4
  %call = call fastcc i32 @__fswab32(i32 noundef %0) #26
  %conv = zext i32 %call to i64
  %or9 = or i64 %shl, %conv
  %incdec.ptr = getelementptr i32, i32* %cell.addr.020, i64 1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i64 [ 0, %entry ], [ %or9, %for.body ]
  ret i64 %r.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(%struct.device_node* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #6 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_cpu_ops(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_possible(i32 noundef %cpu) unnamed_addr #0 {
entry:
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_mask() unnamed_addr #0 {
entry:
  call void asm sideeffect "msr\09daifset, #0xf\09\09// local_daif_mask\0A", "~{memory}"() #24, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipi_send_mask(%struct.irq_desc* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, i32 (i32, i8*)* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_handle_IPI(i32 noundef %ipinr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #20
  switch i32 %ipinr, label %do.end10 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %if.end17
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2) #22
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end17, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call fastcc void @set_preempt_need_resched() #22
  br label %if.end17

sw.bb2:                                           ; preds = %entry
  call void @generic_smp_call_function_single_interrupt() #22
  br label %if.end17

sw.bb3:                                           ; preds = %entry
  call fastcc void @local_cpu_stop() #20
  unreachable

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 @tick_receive_broadcast() #22
  br label %if.end17

sw.bb7:                                           ; preds = %entry
  call void @irq_work_run() #22
  br label %if.end17

do.end10:                                         ; preds = %entry
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0), i32 noundef %4, i32 noundef %ipinr) #21
  br label %if.end17

if.end17:                                         ; preds = %sw.bb2, %sw.bb5, %sw.bb7, %do.end10, %entry, %sw.bb, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_receive_broadcast() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc void @set_preempt_need_resched() unnamed_addr #18 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %preempt = bitcast %union.anon* %2 to %struct.anon*
  %need_resched = getelementptr inbounds %struct.anon, %struct.anon* %preempt, i64 0, i32 1
  store i32 0, i32* %need_resched, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef bitcast (%struct.cpumask* @__cpu_online_mask to i8*), i64 noundef 32) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #24, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { noinline nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin nounwind "no-builtins" }
attributes #23 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #27 = { nounwind readonly }
attributes #28 = { cold nobuiltin "no-builtins" }
attributes #29 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2149132440}
!9 = !{i64 1295617}
!10 = !{i64 2148644805, i64 2148644907, i64 2148644947, i64 2148644965, i64 2148644707, i64 2148644995, i64 2148645023, i64 2148644523, i64 2148645356}
!11 = !{i64 2149052673, i64 2149052720, i64 2149052726, i64 2149052763, i64 2149052781, i64 2149053708, i64 2149053756, i64 2149053804, i64 2149053867, i64 2149053916, i64 2149052859, i64 2149052884, i64 2149052910, i64 2149052916, i64 2149052953, i64 2149052959, i64 2149053009, i64 2149053055, i64 2149053088}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2156087533}
!14 = !{i64 2148643324, i64 2148643426, i64 2148643466, i64 2148643484, i64 2148643226, i64 2148643514, i64 2148643542, i64 2148643042, i64 2148643875}
!15 = !{i64 2154955877}
!16 = !{i64 2149130133}
!17 = !{i64 2149130168}
!18 = !{i64 2156070274}
!19 = !{i64 2149050675, i64 2149050722, i64 2149050728, i64 2149050765, i64 2149050783, i64 2149051710, i64 2149051758, i64 2149051806, i64 2149051869, i64 2149051918, i64 2149050861, i64 2149050886, i64 2149050912, i64 2149050918, i64 2149050955, i64 2149050961, i64 2149051011, i64 2149051057, i64 2149051090}
!20 = !{i64 2156089347}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2156092218}
!23 = !{!"auto-init"}
!24 = !{i64 2147845064, i64 2147845580, i64 2147845610, i64 2147845637, i64 2147845671, i64 2147845701}
!25 = !{i64 2155884982}
!26 = !{i64 2155885128}
!27 = !{i64 2153149092}
!28 = !{i64 2153149509, i64 2153149257, i64 2153149857, i64 2153149903, i64 2153149909, i64 2153155358, i64 2153149946, i64 2153149964, i64 2153155425, i64 2153155473, i64 2153155521, i64 2153155584, i64 2153155633, i64 2153150042, i64 2153150067, i64 2153150093, i64 2153150099, i64 2153155379, i64 2153150136, i64 2153150142, i64 2153150192, i64 2153150238, i64 2153150271}
!29 = !{i64 2153155697}
!30 = !{i64 2153155744}
!31 = !{i64 2155891067}
!32 = !{i64 2155891463}
!33 = !{i64 2155891602}
!34 = !{i64 2155890502}
!35 = !{i64 2147914144, i64 2147914655, i64 2147914685, i64 2147914711, i64 2147914743, i64 2147914772}
!36 = !{i64 7457383}
!37 = !{i64 2147924714, i64 2147925235, i64 2147925265, i64 2147925291, i64 2147925323, i64 2147925352}
