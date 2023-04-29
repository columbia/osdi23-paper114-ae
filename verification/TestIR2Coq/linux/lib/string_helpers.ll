; ModuleID = 'lib/string_helpers.c'
source_filename = "lib/string_helpers.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
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

@string_get_size.units_10 = internal constant [9 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ZB\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"YB\00", align 1
@string_get_size.units_2 = internal constant [9 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)], align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"TiB\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"PiB\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"EiB\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ZiB\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"YiB\00", align 1
@string_get_size.units_str = internal unnamed_addr constant [2 x i8**] [i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @string_get_size.units_10, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @string_get_size.units_2, i32 0, i32 0)], align 8
@string_get_size.divisor = internal unnamed_addr constant [2 x i32] [i32 1000, i32 1024], align 4
@string_get_size.rounding = internal unnamed_addr constant [3 x i32] [i32 500, i32 50, i32 5], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c".%03u\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"UNK\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%u%s %s\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__const.kstrdup_quotable.esc = private unnamed_addr constant [10 x i8] c"\0C\0A\0D\09\0B\07\1B\\\22\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"<no_memory>\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"<too_long>\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@switch.table.unescape_space = private unnamed_addr constant [9 x i8] c"\0C\0A\0A\0A\0A\0A\0D\09\0B", align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @string_get_size(i64 noundef %size, i64 noundef %blk_size, i32 noundef %units, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %tmp = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %tmp to [8 x i8]*, !annotation !7
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %tmp, align 8, !annotation !7
  %cmp = icmp eq i64 %blk_size, 0
  %cmp1149 = icmp eq i64 %size, 0
  %cmp1 = or i1 %cmp, %cmp1149
  br i1 %cmp1, label %entry.if.else_crit_edge, label %while.cond.preheader

entry.if.else_crit_edge:                          ; preds = %entry
  %.pre151 = zext i32 %units to i64
  br label %if.else

while.cond.preheader:                             ; preds = %entry
  %tobool.not134 = icmp ult i64 %blk_size, 4294967296
  br i1 %tobool.not134, label %while.cond8.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %idxprom = zext i32 %units to i64
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* @string_get_size.divisor, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx4, align 4
  %conv = zext i32 %1 to i64
  br label %while.body

while.cond8.preheader:                            ; preds = %while.body, %while.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.body ]
  %blk_size.addr.0.lcssa = phi i64 [ %blk_size, %while.cond.preheader ], [ %div, %while.body ]
  %tobool10.not138 = icmp ult i64 %size, 4294967296
  %idxprom25.phi.trans.insert = zext i32 %units to i64
  %arrayidx26.phi.trans.insert = getelementptr [2 x i32], [2 x i32]* @string_get_size.divisor, i64 0, i64 %idxprom25.phi.trans.insert
  %.pre = load i32, i32* %arrayidx26.phi.trans.insert, align 4
  %.pre150 = zext i32 %.pre to i64
  br i1 %tobool10.not138, label %while.end23, label %while.body11

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %blk_size.addr.0136 = phi i64 [ %blk_size, %while.body.lr.ph ], [ %div, %while.body ]
  %i.0135 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body ]
  %div = udiv i64 %blk_size.addr.0136, %conv
  %inc = add i32 %i.0135, 1
  %tobool.not = icmp ult i64 %div, 4294967296
  br i1 %tobool.not, label %while.cond8.preheader, label %while.body

while.body11:                                     ; preds = %while.cond8.preheader, %while.body11
  %size.addr.1140 = phi i64 [ %div20, %while.body11 ], [ %size, %while.cond8.preheader ]
  %i.1139 = phi i32 [ %inc22, %while.body11 ], [ %i.0.lcssa, %while.cond8.preheader ]
  %div20 = udiv i64 %size.addr.1140, %.pre150
  %inc22 = add i32 %i.1139, 1
  %tobool10.not = icmp ult i64 %div20, 4294967296
  br i1 %tobool10.not, label %while.end23, label %while.body11

while.end23:                                      ; preds = %while.body11, %while.cond8.preheader
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %while.cond8.preheader ], [ %inc22, %while.body11 ]
  %size.addr.1.lcssa = phi i64 [ %size, %while.cond8.preheader ], [ %div20, %while.body11 ]
  %mul = mul i64 %size.addr.1.lcssa, %blk_size.addr.0.lcssa
  %cmp28.not143 = icmp ult i64 %mul, %.pre150
  br i1 %cmp28.not143, label %while.end42, label %while.body30

while.body30:                                     ; preds = %while.end23, %while.body30
  %size.addr.2145 = phi i64 [ %div39, %while.body30 ], [ %mul, %while.end23 ]
  %i.2144 = phi i32 [ %inc41, %while.body30 ], [ %i.1.lcssa, %while.end23 ]
  %size.addr.2145.frozen = freeze i64 %size.addr.2145
  %.pre150.frozen = freeze i64 %.pre150
  %div39 = udiv i64 %size.addr.2145.frozen, %.pre150.frozen
  %inc41 = add i32 %i.2144, 1
  %cmp28.not = icmp ult i64 %div39, %.pre150
  br i1 %cmp28.not, label %while.cond24.while.end42_crit_edge, label %while.body30

while.cond24.while.end42_crit_edge:               ; preds = %while.body30
  %2 = mul i64 %div39, %.pre150.frozen
  %rem36.le.decomposed = sub i64 %size.addr.2145.frozen, %2
  %conv37.le = trunc i64 %rem36.le.decomposed to i32
  br label %while.end42

while.end42:                                      ; preds = %while.cond24.while.end42_crit_edge, %while.end23
  %remainder.0.lcssa = phi i32 [ %conv37.le, %while.cond24.while.end42_crit_edge ], [ 0, %while.end23 ]
  %i.2.lcssa = phi i32 [ %inc41, %while.cond24.while.end42_crit_edge ], [ %i.1.lcssa, %while.end23 ]
  %size.addr.2.lcssa = phi i64 [ %div39, %while.cond24.while.end42_crit_edge ], [ %mul, %while.end23 ]
  %conv43 = trunc i64 %size.addr.2.lcssa to i32
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %while.end42
  %sf_cap.0 = phi i32 [ %conv43, %while.end42 ], [ %mul44, %for.cond ]
  %j.0 = phi i32 [ 0, %while.end42 ], [ %inc48, %for.cond ]
  %mul44 = mul i32 %sf_cap.0, 10
  %cmp45 = icmp ult i32 %mul44, 1000
  %inc48 = add i32 %j.0, 1
  br i1 %cmp45, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %cmp49 = icmp eq i32 %units, 1
  %mul52 = mul i32 %remainder.0.lcssa, 1000
  %shr53 = lshr i32 %mul52, 10
  %remainder.1 = select i1 %cmp49, i32 %shr53, i32 %remainder.0.lcssa
  %idxprom55 = sext i32 %j.0 to i64
  %arrayidx56 = getelementptr [3 x i32], [3 x i32]* @string_get_size.rounding, i64 0, i64 %idxprom55
  %3 = load i32, i32* %arrayidx56, align 4
  %add = add i32 %3, %remainder.1
  %cmp57 = icmp ugt i32 %add, 999
  %add60 = zext i1 %cmp57 to i64
  %size.addr.3 = add i64 %size.addr.2.lcssa, %add60
  %tobool62.not = icmp eq i32 %j.0, 0
  br i1 %tobool62.not, label %out, label %if.then63

if.then63:                                        ; preds = %for.end
  %sub = add i32 %add, -1000
  %remainder.2 = select i1 %cmp57, i32 %sub, i32 %add
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 noundef %remainder.2) #10
  %idxprom65 = sext i32 %inc48 to i64
  %arrayidx66 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 %idxprom65
  store i8 0, i8* %arrayidx66, align 1
  br label %out

out:                                              ; preds = %for.end, %if.then63
  %cmp69 = icmp ugt i32 %i.2.lcssa, 8
  br i1 %cmp69, label %if.end76, label %if.else

if.else:                                          ; preds = %entry.if.else_crit_edge, %out
  %idxprom72.pre-phi = phi i64 [ %.pre151, %entry.if.else_crit_edge ], [ %idxprom25.phi.trans.insert, %out ]
  %size.addr.4131 = phi i64 [ 0, %entry.if.else_crit_edge ], [ %size.addr.3, %out ]
  %i.3130 = phi i32 [ 0, %entry.if.else_crit_edge ], [ %i.2.lcssa, %out ]
  %conv68133 = zext i32 %i.3130 to i64
  %arrayidx73 = getelementptr [2 x i8**], [2 x i8**]* @string_get_size.units_str, i64 0, i64 %idxprom72.pre-phi
  %4 = load i8**, i8*** %arrayidx73, align 8
  %arrayidx75 = getelementptr i8*, i8** %4, i64 %conv68133
  %5 = load i8*, i8** %arrayidx75, align 8
  br label %if.end76

if.end76:                                         ; preds = %out, %if.else
  %size.addr.4132 = phi i64 [ %size.addr.4131, %if.else ], [ %size.addr.3, %out ]
  %unit.0 = phi i8* [ %5, %if.else ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), %out ]
  %conv77 = sext i32 %len to i64
  %conv78 = trunc i64 %size.addr.4132 to i32
  %call80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %buf, i64 noundef %conv77, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv78, i64* noundef nonnull %tmp, i8* noundef %unit.0) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @string_unescape(i8* noundef %src, i8* noundef %dst, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %src.addr = alloca i8*, align 8
  %out = alloca i8*, align 8
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* %dst, i8** %out, align 8
  %1 = load i8, i8* %src, align 1
  %tobool.not52 = icmp eq i8 %1, 0
  br i1 %tobool.not52, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %conv12 = zext i32 %flags to i64
  %and = and i64 %conv12, 1
  %tobool13.not = icmp eq i64 %and, 0
  %and18 = and i64 %conv12, 2
  %tobool19.not = icmp eq i64 %and18, 0
  %and26 = and i64 %conv12, 4
  %tobool27.not = icmp eq i64 %and26, 0
  %and34 = and i64 %conv12, 8
  %tobool35.not = icmp eq i64 %and34, 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond.backedge
  %2 = phi i8 [ %1, %land.rhs.lr.ph ], [ %10, %while.cond.backedge ]
  %3 = phi i8* [ %src, %land.rhs.lr.ph ], [ %9, %while.cond.backedge ]
  %size.addr.053 = phi i64 [ %size, %land.rhs.lr.ph ], [ %size.addr.0.be, %while.cond.backedge ]
  %dec = add i64 %size.addr.053, -1
  %tobool1.not = icmp eq i64 %dec, 0
  br i1 %tobool1.not, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %land.rhs
  %cmp = icmp eq i8 %2, 92
  br i1 %cmp, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %while.body
  %arrayidx4 = getelementptr i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx4, align 1
  %cmp6 = icmp ne i8 %4, 0
  %cmp9 = icmp ugt i64 %dec, 1
  %or.cond = select i1 %cmp6, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then, label %if.end42

if.then:                                          ; preds = %land.lhs.true
  store i8* %arrayidx4, i8** %src.addr, align 8
  %dec11 = add i64 %size.addr.053, -2
  br i1 %tobool13.not, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then
  %call = call fastcc i1 @unescape_space(i8** noundef nonnull %src.addr, i8** noundef nonnull %out) #11
  br i1 %call, label %while.cond.backedge, label %if.end

if.end:                                           ; preds = %land.lhs.true14, %if.then
  br i1 %tobool19.not, label %if.end24, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end
  %call21 = call fastcc i1 @unescape_octal(i8** noundef nonnull %src.addr, i8** noundef nonnull %out) #11
  br i1 %call21, label %while.cond.backedge, label %if.end24

if.end24:                                         ; preds = %land.lhs.true20, %if.end
  br i1 %tobool27.not, label %if.end32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end24
  %call29 = call fastcc i1 @unescape_hex(i8** noundef nonnull %src.addr, i8** noundef nonnull %out) #11
  br i1 %call29, label %while.cond.backedge, label %if.end32

if.end32:                                         ; preds = %land.lhs.true28, %if.end24
  br i1 %tobool35.not, label %if.end40, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end32
  %call37 = call fastcc i1 @unescape_special(i8** noundef nonnull %src.addr, i8** noundef nonnull %out) #11
  br i1 %call37, label %while.cond.backedge, label %if.end40

if.end40:                                         ; preds = %land.lhs.true36, %if.end32
  %5 = load i8*, i8** %out, align 8
  %incdec.ptr41 = getelementptr i8, i8* %5, i64 1
  store i8* %incdec.ptr41, i8** %out, align 8
  store i8 92, i8* %5, align 1
  %.pre = load i8*, i8** %src.addr, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %land.lhs.true, %while.body
  %6 = phi i8* [ %.pre, %if.end40 ], [ %3, %land.lhs.true ], [ %3, %while.body ]
  %size.addr.1 = phi i64 [ %dec11, %if.end40 ], [ %dec, %land.lhs.true ], [ %dec, %while.body ]
  %incdec.ptr43 = getelementptr i8, i8* %6, i64 1
  store i8* %incdec.ptr43, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %8 = load i8*, i8** %out, align 8
  %incdec.ptr44 = getelementptr i8, i8* %8, i64 1
  store i8* %incdec.ptr44, i8** %out, align 8
  store i8 %7, i8* %8, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end42, %land.lhs.true14, %land.lhs.true20, %land.lhs.true28, %land.lhs.true36
  %size.addr.0.be = phi i64 [ %dec11, %land.lhs.true14 ], [ %dec11, %land.lhs.true20 ], [ %dec11, %land.lhs.true28 ], [ %dec11, %land.lhs.true36 ], [ %size.addr.1, %if.end42 ]
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.end.loopexit, label %land.rhs

while.end.loopexit:                               ; preds = %while.cond.backedge, %land.rhs
  %.pre54 = load i8*, i8** %out, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %11 = phi i8* [ %.pre54, %while.end.loopexit ], [ %dst, %entry ]
  store i8 0, i8* %11, align 1
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %dst to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv45 = trunc i64 %sub.ptr.sub to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %conv45
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @unescape_space(i8** nocapture noundef %src, i8** nocapture noundef %dst) unnamed_addr #3 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %1 = load i8*, i8** %src, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %3 = add nsw i32 %conv, -102
  %4 = call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31)
  %5 = icmp ult i32 %4, 9
  br i1 %5, label %switch.hole_check, label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 465, %switch.maskindex
  %6 = and i16 %switch.shifted, 1
  %switch.lobit.not = icmp eq i16 %6, 0
  br i1 %switch.lobit.not, label %cleanup, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %7 = sext i32 %4 to i64
  %switch.gep = getelementptr inbounds [9 x i8], [9 x i8]* @switch.table.unescape_space, i64 0, i64 %7
  %switch.load = load i8, i8* %switch.gep, align 1
  store i8 %switch.load, i8* %0, align 1
  %8 = load i8*, i8** %dst, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %dst, align 8
  %9 = load i8*, i8** %src, align 8
  %add.ptr5 = getelementptr i8, i8* %9, i64 1
  store i8* %add.ptr5, i8** %src, align 8
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check, %entry, %switch.lookup
  %retval.0 = phi i1 [ true, %switch.lookup ], [ false, %entry ], [ false, %switch.hole_check ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i1 @unescape_octal(i8** nocapture noundef %src, i8** nocapture noundef %dst) unnamed_addr #4 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %1 = load i8*, i8** %src, align 8
  %2 = load i8, i8* %1, align 1
  %call = call fastcc i32 @isodigit(i8 noundef %2) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = and i8 %2, 7
  %q.032 = getelementptr i8, i8* %1, i64 1
  %4 = load i8, i8* %q.032, align 1
  %call5 = call fastcc i32 @isodigit(i8 noundef %4) #11
  %tobool.not.not = icmp eq i32 %call5, 0
  br i1 %tobool.not.not, label %while.end, label %while.body

while.body:                                       ; preds = %if.end
  %shl = shl nuw nsw i8 %3, 3
  %5 = and i8 %4, 7
  %add31 = or i8 %5, %shl
  %q.0 = getelementptr i8, i8* %1, i64 2
  %cmp3 = icmp ult i8 %add31, 32
  br i1 %cmp3, label %land.lhs.true.1, label %while.end

land.lhs.true.1:                                  ; preds = %while.body
  %6 = load i8, i8* %q.0, align 1
  %call5.1 = call fastcc i32 @isodigit(i8 noundef %6) #11
  %tobool.not.1.not = icmp eq i32 %call5.1, 0
  br i1 %tobool.not.1.not, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %land.lhs.true.1
  %shl.1 = shl nuw i8 %add31, 3
  %7 = and i8 %6, 7
  %add31.1 = or i8 %7, %shl.1
  %q.0.1 = getelementptr i8, i8* %1, i64 3
  br label %while.end

while.end:                                        ; preds = %while.body.1, %land.lhs.true.1, %while.body, %if.end
  %num.0.lcssa = phi i8 [ %add31, %while.body ], [ %3, %if.end ], [ %add31, %land.lhs.true.1 ], [ %add31.1, %while.body.1 ]
  %q.0.lcssa = phi i8* [ %q.0, %while.body ], [ %q.032, %if.end ], [ %q.0, %land.lhs.true.1 ], [ %q.0.1, %while.body.1 ]
  store i8 %num.0.lcssa, i8* %0, align 1
  %8 = load i8*, i8** %dst, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %dst, align 8
  store i8* %q.0.lcssa, i8** %src, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %9 = xor i1 %cmp, true
  ret i1 %9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @unescape_hex(i8** nocapture noundef %src, i8** nocapture noundef %dst) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %1 = load i8*, i8** %src, align 8
  %2 = load i8, i8* %1, align 1
  %cmp.not = icmp eq i8 %2, 120
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, i8* %1, i64 1
  %incdec.ptr2 = getelementptr i8, i8* %1, i64 2
  %3 = load i8, i8* %incdec.ptr, align 1
  %call = call i32 @hex_to_bin(i8 noundef %3) #10
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %4 = load i8, i8* %incdec.ptr2, align 1
  %call8 = call i32 @hex_to_bin(i8 noundef %4) #10
  %cmp9 = icmp sgt i32 %call8, -1
  %incdec.ptr12 = getelementptr i8, i8* %1, i64 3
  %conv13 = shl i32 %call, 4
  %or = or i32 %call8, %conv13
  %q.0 = select i1 %cmp9, i8* %incdec.ptr12, i8* %incdec.ptr2
  %num.0.in = select i1 %cmp9, i32 %or, i32 %call
  %num.0 = trunc i32 %num.0.in to i8
  store i8 %num.0, i8* %0, align 1
  %5 = load i8*, i8** %dst, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 1
  store i8* %add.ptr, i8** %dst, align 8
  store i8* %q.0, i8** %src, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i1 [ true, %if.end7 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @unescape_special(i8** nocapture noundef %src, i8** nocapture noundef %dst) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %1 = load i8*, i8** %src, align 8
  %2 = load i8, i8* %1, align 1
  switch i8 %2, label %cleanup [
    i8 34, label %sw.epilog
    i8 92, label %sw.bb1
    i8 97, label %sw.bb2
    i8 101, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1
  %.sink = phi i8 [ 27, %sw.bb3 ], [ 7, %sw.bb2 ], [ 92, %sw.bb1 ], [ %2, %entry ]
  store i8 %.sink, i8* %0, align 1
  %3 = load i8*, i8** %dst, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 1
  store i8* %add.ptr, i8** %dst, align 8
  %4 = load i8*, i8** %src, align 8
  %add.ptr4 = getelementptr i8, i8* %4, i64 1
  store i8* %add.ptr4, i8** %src, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @string_escape_mem(i8* nocapture noundef readonly %src, i64 noundef %isz, i8* noundef %dst, i64 noundef %osz, i32 noundef %flags, i8* noundef %only) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* %dst, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %dst, i64 %osz
  %tobool.not = icmp eq i8* %only, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %only, align 1
  %tobool1 = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %conv2 = zext i32 %flags to i64
  %and = and i64 %conv2, 256
  %tobool3.not = icmp eq i64 %and, 0
  %tobool5.not192 = icmp eq i64 %isz, 0
  br i1 %tobool5.not192, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %land.end
  %tobool3.not.not = xor i1 %tobool3.not, true
  %.not = xor i1 %2, true
  %and38 = and i64 %conv2, 128
  %tobool39.not = icmp eq i64 %and38, 0
  %and60 = and i64 %conv2, 16
  %tobool61.not = icmp eq i64 %and60, 0
  %and78 = and i64 %conv2, 64
  %tobool79.not = icmp eq i64 %and78, 0
  %and86 = and i64 %conv2, 1
  %tobool87.not = icmp eq i64 %and86, 0
  %and94 = and i64 %conv2, 2
  %tobool95.not = icmp eq i64 %and94, 0
  %and102 = and i64 %conv2, 4
  %tobool103.not = icmp eq i64 %and102, 0
  %and110 = and i64 %conv2, 8
  %tobool111.not = icmp eq i64 %and110, 0
  %and118 = and i64 %conv2, 32
  %tobool119.not = icmp eq i64 %and118, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %dec194.in = phi i64 [ %isz, %while.body.lr.ph ], [ %dec194, %cleanup ]
  %src.addr.0193 = phi i8* [ %src, %while.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %dec194 = add i64 %dec194.in, -1
  %incdec.ptr = getelementptr i8, i8* %src.addr.0193, i64 1
  %3 = load i8, i8* %src.addr.0193, align 1
  br i1 %2, label %land.end11, label %if.end

land.end11:                                       ; preds = %while.body
  %conv9 = zext i8 %3 to i32
  %call = call i8* @strchr(i8* noundef %only, i32 noundef %conv9) #10
  %tobool10 = icmp ne i8* %call, null
  %brmerge = select i1 %tobool3.not.not, i1 true, i1 %tobool10
  %brmerge178 = select i1 %brmerge, i1 true, i1 %.not
  br i1 %brmerge178, label %if.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.end11
  call fastcc void @escape_passthrough(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end:                                           ; preds = %while.body, %land.end11
  %4 = phi i1 [ %tobool10, %land.end11 ], [ false, %while.body ]
  br i1 %tobool3.not, label %land.lhs.true27, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end
  %tobool25.not = xor i1 %4, true
  %cmp = icmp sgt i8 %3, -1
  %or.cond = select i1 %tobool25.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true30, label %if.end44

land.lhs.true27:                                  ; preds = %if.end
  %cmp.old = icmp sgt i8 %3, -1
  br i1 %cmp.old, label %land.lhs.true30, label %if.end44.thread

if.end44.thread:                                  ; preds = %land.lhs.true27
  %.not180187 = xor i1 %4, true
  br label %land.lhs.true50

land.lhs.true30:                                  ; preds = %land.lhs.true24, %land.lhs.true27
  %5 = zext i8 %3 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %7 = and i8 %6, -105
  %cmp34.not = icmp eq i8 %7, 0
  %or.cond179 = or i1 %tobool39.not, %cmp34.not
  br i1 %or.cond179, label %land.lhs.true30.if.end44_crit_edge, label %land.lhs.true40

land.lhs.true30.if.end44_crit_edge:               ; preds = %land.lhs.true30
  %.pre197 = xor i1 %4, true
  br label %if.end44

land.lhs.true40:                                  ; preds = %land.lhs.true30
  call fastcc void @escape_passthrough(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true30.if.end44_crit_edge, %land.lhs.true24
  %.not180.pre-phi = phi i1 [ %.pre197, %land.lhs.true30.if.end44_crit_edge ], [ %tobool25.not, %land.lhs.true24 ]
  %brmerge181 = select i1 %tobool3.not, i1 true, i1 %.not180.pre-phi
  br i1 %brmerge181, label %land.lhs.true50, label %if.end66

land.lhs.true50:                                  ; preds = %if.end44.thread, %if.end44
  %.not180190 = phi i1 [ %.not180187, %if.end44.thread ], [ %.not180.pre-phi, %if.end44 ]
  %8 = zext i8 %3 to i64
  %arrayidx53 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %8
  %9 = load i8, i8* %arrayidx53, align 1
  %10 = and i8 %9, -105
  %cmp56.not = icmp eq i8 %10, 0
  %or.cond182 = or i1 %tobool61.not, %cmp56.not
  br i1 %or.cond182, label %if.end66, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true50
  call fastcc void @escape_passthrough(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end66:                                         ; preds = %if.end44, %land.lhs.true50
  %.not180189 = phi i1 [ false, %if.end44 ], [ %.not180190, %land.lhs.true50 ]
  %cmp74.old = icmp slt i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true72, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %if.end66
  %not..not180189 = xor i1 %.not180189, true
  %or.cond133 = select i1 %not..not180189, i1 true, i1 %cmp74.old
  %brmerge195 = or i1 %or.cond133, %tobool79.not
  br i1 %brmerge195, label %if.end84, label %land.lhs.true80

land.lhs.true72:                                  ; preds = %if.end66
  %brmerge196 = or i1 %cmp74.old, %tobool79.not
  br i1 %brmerge196, label %if.end84, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true72, %land.lhs.true69
  call fastcc void @escape_passthrough(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true72, %land.lhs.true69
  br i1 %tobool87.not, label %if.end92, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %if.end84
  %call89 = call fastcc i1 @escape_space(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br i1 %call89, label %cleanup, label %if.end92

if.end92:                                         ; preds = %land.lhs.true88, %if.end84
  br i1 %tobool95.not, label %if.end100, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.end92
  %call97 = call fastcc i1 @escape_special(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br i1 %call97, label %cleanup, label %if.end100

if.end100:                                        ; preds = %land.lhs.true96, %if.end92
  br i1 %tobool103.not, label %if.end108, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.end100
  %call105 = call fastcc i1 @escape_null(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br i1 %call105, label %cleanup, label %if.end108

if.end108:                                        ; preds = %land.lhs.true104, %if.end100
  br i1 %tobool111.not, label %if.end116, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end108
  call fastcc void @escape_octal(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end116:                                        ; preds = %if.end108
  br i1 %tobool119.not, label %if.end124, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end116
  call fastcc void @escape_hex(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

if.end124:                                        ; preds = %if.end116
  call fastcc void @escape_passthrough(i8 noundef %3, i8** noundef nonnull %p, i8* noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true104, %land.lhs.true96, %land.lhs.true88, %if.end124, %land.lhs.true120, %land.lhs.true112, %land.lhs.true80, %land.lhs.true62, %land.lhs.true40, %land.lhs.true19
  %tobool5.not = icmp eq i64 %dec194, 0
  br i1 %tobool5.not, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %cleanup
  %.pre = load i8*, i8** %p, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.end
  %11 = phi i8* [ %.pre, %while.end.loopexit ], [ %dst, %land.end ]
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %dst to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv127 = trunc i64 %sub.ptr.sub to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %conv127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @escape_passthrough(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 %c, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %dst, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @escape_space(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %switch.tableidx = add i8 %c, -9
  %1 = icmp ult i8 %switch.tableidx, 5
  br i1 %1, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.cast = zext i8 %switch.tableidx to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 491345309300, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %switch.lookup
  store i8 92, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %switch.lookup
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %cmp6 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i8 %switch.masked, i8* %incdec.ptr, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %incdec.ptr10 = getelementptr i8, i8* %0, i64 2
  store i8* %incdec.ptr10, i8** %dst, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @escape_special(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  switch i8 %c, label %cleanup [
    i8 92, label %sw.epilog
    i8 7, label %sw.bb1
    i8 27, label %sw.bb2
    i8 34, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1
  %to.0 = phi i8 [ 34, %sw.bb3 ], [ 101, %sw.bb2 ], [ 97, %sw.bb1 ], [ %c, %entry ]
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i8 92, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %cmp5 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8 %to.0, i8* %incdec.ptr, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %incdec.ptr9 = getelementptr i8, i8* %0, i64 2
  store i8* %incdec.ptr9, i8** %dst, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @escape_null(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %tobool.not = icmp eq i8 %c, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i8 92, i8* %0, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %cmp3 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store i8 48, i8* %incdec.ptr, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %incdec.ptr6 = getelementptr i8, i8* %0, i64 2
  store i8* %incdec.ptr6, i8** %dst, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @escape_octal(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 92, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %cmp1 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = lshr i8 %c, 6
  %2 = or i8 %1, 48
  store i8 %2, i8* %incdec.ptr, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %incdec.ptr5 = getelementptr i8, i8* %0, i64 2
  %cmp6 = icmp ult i8* %incdec.ptr5, %end
  br i1 %cmp6, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end4
  %3 = lshr i8 %c, 3
  %4 = and i8 %3, 7
  %5 = or i8 %4, 48
  store i8 %5, i8* %incdec.ptr5, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end4
  %incdec.ptr15 = getelementptr i8, i8* %0, i64 3
  %cmp16 = icmp ult i8* %incdec.ptr15, %end
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end14
  %6 = and i8 %c, 7
  %7 = or i8 %6, 48
  store i8 %7, i8* %incdec.ptr15, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end14
  %incdec.ptr25 = getelementptr i8, i8* %0, i64 4
  store i8* %incdec.ptr25, i8** %dst, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @escape_hex(i8 noundef %c, i8** nocapture noundef %dst, i8* noundef readnone %end) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** %dst, align 8
  %cmp = icmp ult i8* %0, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 92, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  %cmp1 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 120, i8* %incdec.ptr, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %incdec.ptr4 = getelementptr i8, i8* %0, i64 2
  %cmp5 = icmp ult i8* %incdec.ptr4, %end
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %1 = lshr i8 %c, 4
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %incdec.ptr4, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %incdec.ptr8 = getelementptr i8, i8* %0, i64 3
  %cmp9 = icmp ult i8* %incdec.ptr8, %end
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end7
  %4 = and i8 %c, 15
  %5 = zext i8 %4 to i64
  %arrayidx15 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx15, align 1
  store i8 %6, i8* %incdec.ptr8, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7
  %incdec.ptr17 = getelementptr i8, i8* %0, i64 4
  store i8* %incdec.ptr17, i8** %dst, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kstrdup_quotable(i8* noundef %src, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %esc = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %esc, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8* noundef align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.kstrdup_quotable.esc, i64 0, i64 0), i64 10, i1 false)
  %tobool.not = icmp eq i8* %src, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strlen(i8* noundef nonnull %src) #10
  %call1 = call i32 @string_escape_mem(i8* noundef nonnull %src, i64 noundef %call, i8* noundef null, i64 noundef 0, i32 noundef 32, i8* noundef nonnull %0) #11
  %conv = sext i32 %call1 to i64
  %add = add nsw i64 %conv, 1
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef %gfp) #10
  %tobool3.not = icmp eq i8* %call10.i, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @string_escape_mem(i8* noundef nonnull %src, i64 noundef %call, i8* noundef nonnull %call10.i, i64 noundef %conv, i32 noundef 32, i8* noundef nonnull %0) #11
  %cmp.not = icmp eq i32 %call7, %call1
  br i1 %cmp.not, label %if.end19, label %if.then18, !prof !8

if.then18:                                        ; preds = %if.end5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/string_helpers.c\22; .popsection; .long 14472b - 14470b; .short 609; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end5
  %arrayidx = getelementptr i8, i8* %call10.i, i64 %conv
  store i8 0, i8* %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end19
  %retval.0 = phi i8* [ %call10.i, %if.end19 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #9
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kstrdup_quotable_cmdline(%struct.task_struct* noundef %task, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @get_cmdline(%struct.task_struct* noundef %task, i8* noundef nonnull %call.i.i, i32 noundef 4095) #10
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr i8, i8* %call.i.i, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.end
  %res.0 = phi i32 [ %call1, %if.end ], [ %dec, %land.rhs ]
  %dec = add i32 %res.0, -1
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %while.cond
  %idxprom238 = zext i32 %dec to i64
  %arrayidx3 = getelementptr i8, i8* %call.i.i, i64 %idxprom238
  %1 = load i8, i8* %arrayidx3, align 1
  %cmp4 = icmp eq i8 %1, 0
  br i1 %cmp4, label %while.cond, label %for.body

for.body:                                         ; preds = %land.rhs, %for.inc
  %i.040 = phi i32 [ %inc, %for.inc ], [ 0, %land.rhs ]
  %idxprom8 = sext i32 %i.040 to i64
  %arrayidx9 = getelementptr i8, i8* %call.i.i, i64 %idxprom8
  %2 = load i8, i8* %arrayidx9, align 1
  %cmp11 = icmp eq i8 %2, 0
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  store i8 32, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then13
  %inc = add i32 %i.040, 1
  %cmp6.not = icmp sgt i32 %inc, %dec
  br i1 %cmp6.not, label %for.end, label %for.body

for.end:                                          ; preds = %while.cond, %for.inc
  %call17 = call i8* @kstrdup_quotable(i8* noundef nonnull %call.i.i, i32 noundef %gfp) #11
  call void @kfree(i8* noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i8* [ %call17, %for.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_cmdline(%struct.task_struct* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kstrdup_quotable_file(%struct.file* noundef %file, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.file* %file, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @kstrdup(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 noundef %gfp) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 13), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #10
  %tobool2.not = icmp eq i8* %call.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call noalias i8* @kstrdup(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 noundef %gfp) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i8* @file_path(%struct.file* noundef nonnull %file, i8* noundef nonnull %call.i.i, i32 noundef 4107) #10
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %call6) #11
  br i1 %call7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %call9 = call noalias i8* @kstrdup(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 noundef %gfp) #10
  br label %if.end11

if.else:                                          ; preds = %if.end5
  %call10 = call i8* @kstrdup_quotable(i8* noundef %call6, i32 noundef %gfp) #11
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %pathname.0 = phi i8* [ %call9, %if.then8 ], [ %call10, %if.else ]
  call void @kfree(i8* noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  %retval.0 = phi i8* [ %pathname.0, %if.end11 ], [ %call4, %if.then3 ], [ %call, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @file_path(%struct.file* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kfree_strarray(i8** noundef %array, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8** %array, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp7.not = icmp eq i64 %n, 0
  br i1 %cmp7.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %conv9 = phi i64 [ %conv, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr i8*, i8** %array, i64 %conv9
  %0 = load i8*, i8** %arrayidx, align 8
  call void @kfree(i8* noundef %0) #10
  %inc = add nuw nsw i64 %conv9, 1
  %conv = and i64 %inc, 4294967295
  %cmp = icmp ult i64 %conv, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %1 = bitcast i8** %array to i8*
  call void @kfree(i8* noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isodigit(i8 noundef %c) unnamed_addr #7 {
entry:
  %0 = and i8 %c, -8
  %1 = icmp eq i8 %0, 48
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152616304}
