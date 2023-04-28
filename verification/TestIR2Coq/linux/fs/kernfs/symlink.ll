; ModuleID = 'fs/kernfs/symlink.c'
source_filename = "fs/kernfs/symlink.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.10, i64, i32 }
%union.anon.10 = type { i8* }
%struct.net = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.11 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.11 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
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
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.57, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.15 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.20, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.36 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.22 }
%union.anon.22 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.42, %union.anon.43, i32 }
%struct.request_queue = type opaque
%union.anon.42 = type { %struct.list_head }
%union.anon.43 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.56, i32, [12 x i8] }
%union.anon.56 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [48 x i8] }
%struct.anon.7 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.8, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.kmem_cache = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }

@kernfs_symlink_iops = dso_local local_unnamed_addr constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @kernfs_iop_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* @kernfs_iop_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @kernfs_iop_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @kernfs_iop_getattr, i64 (%struct.dentry*, i8*, i64)* @kernfs_iop_listxattr, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@kernfs_rwsem = external dso_local global %struct.rw_semaphore, align 8
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* noundef %parent, i8* noundef %name, %struct.kernfs_node* noundef %target) local_unnamed_addr #0 {
entry:
  %iattr = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %target, i64 0, i32 12
  %0 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %iattr, align 8
  %tobool.not = icmp eq %struct.kernfs_iattrs* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 0, i32 0
  %uid.sroa.0.0.copyload = load i32, i32* %uid.sroa.0.0..sroa_idx, align 8
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %0, i64 0, i32 1, i32 0
  %gid.sroa.0.0.copyload = load i32, i32* %gid.sroa.0.0..sroa_idx, align 4
  %phi.cast = zext i32 %uid.sroa.0.0.copyload to i64
  %phi.cast37 = zext i32 %gid.sroa.0.0.copyload to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %uid.sroa.0.0 = phi i64 [ %phi.cast, %if.then ], [ 0, %entry ]
  %gid.sroa.0.0 = phi i64 [ %phi.cast37, %if.then ], [ 0, %entry ]
  %call = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef %parent, i8* noundef %name, i16 noundef -24065, i64 %uid.sroa.0.0, i64 %gid.sroa.0.0, i32 noundef 4) #5
  %tobool5.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool5.not, label %cleanup.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* noundef %parent) #6
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %ns = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %target, i64 0, i32 5
  %1 = load i8*, i8** %ns, align 8
  %ns11 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 5
  store i8* %1, i8** %ns11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %call, i64 0, i32 7
  %target_kn = bitcast %union.anon* %2 to %struct.kernfs_node**
  store %struct.kernfs_node* %target, %struct.kernfs_node** %target_kn, align 8
  call void @kernfs_get(%struct.kernfs_node* noundef %target) #5
  %call13 = call i32 @kernfs_add_one(%struct.kernfs_node* noundef nonnull %call) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @kernfs_put(%struct.kernfs_node* noundef nonnull %call) #5
  %conv = sext i32 %call13 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end16
  %conv.sink = phi i64 [ %conv, %if.end16 ], [ -12, %if.end ]
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #6
  %3 = bitcast i8* %call17 to %struct.kernfs_node*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12
  %retval.0 = phi %struct.kernfs_node* [ %call, %if.end12 ], [ %3, %cleanup.sink.split ]
  ret %struct.kernfs_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* noundef, i8* noundef, i16 noundef, i64, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @kernfs_ns_enabled(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 32
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @kernfs_iop_get_link(%struct.dentry* noundef readnone %dentry, %struct.inode* nocapture noundef readonly %inode, %struct.delayed_call* nocapture noundef writeonly %done) #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -10) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc() #6
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @kernfs_getlink(%struct.inode* noundef %inode, i8* noundef nonnull %call1) #6
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then9, label %if.end12, !prof !7

if.then9:                                         ; preds = %if.end5
  call void @kfree(i8* noundef nonnull %call1) #5
  %conv10 = sext i32 %call6 to i64
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef %conv10) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call fastcc void @set_delayed_call(%struct.delayed_call* noundef %done, i8* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then3, %if.then
  %retval.0 = phi i8* [ %call11, %if.then9 ], [ %call1, %if.end12 ], [ %call4, %if.then3 ], [ %call, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(%struct.user_namespace* noundef, %struct.path* noundef, %struct.kstat* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @kernfs_iop_listxattr(%struct.dentry* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #5
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_getlink(%struct.inode* nocapture noundef readonly %inode, i8* noundef %path) unnamed_addr #0 {
entry:
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 42
  %0 = bitcast i8** %i_private to %struct.kernfs_node**
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %0, align 8
  %parent1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1, align 8
  %3 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %1, i64 0, i32 7
  %target_kn = bitcast %union.anon* %3 to %struct.kernfs_node**
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %target_kn, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #5
  %call = call fastcc i32 @kernfs_get_target_path(%struct.kernfs_node* noundef %2, %struct.kernfs_node* noundef %4, i8* noundef %path) #6
  call void @up_read(%struct.rw_semaphore* noundef nonnull @kernfs_rwsem) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_delayed_call(%struct.delayed_call* nocapture noundef writeonly %call, i8* noundef %arg) unnamed_addr #4 {
entry:
  %fn1 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 0
  store void (i8*)* @kfree_link, void (i8*)** %fn1, align 8
  %arg2 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 1
  store i8* %arg, i8** %arg2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(i8* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernfs_get_target_path(%struct.kernfs_node* noundef readonly %parent, %struct.kernfs_node* noundef readonly %target, i8* noundef %path) unnamed_addr #0 {
entry:
  %parent1107 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %parent, i64 0, i32 2
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1107, align 8
  %tobool.not108 = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool.not108, label %while.end13, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %parent2 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %target, i64 0, i32 2
  %sub.ptr.rhs.cast = ptrtoint i8* %path to i64
  %sub.ptr.sub = sub i64 3, %sub.ptr.rhs.cast
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end11
  %parent1111 = phi %struct.kernfs_node** [ %parent1107, %while.body.lr.ph ], [ %parent1, %if.end11 ]
  %s.0110 = phi i8* [ %path, %while.body.lr.ph ], [ %add.ptr, %if.end11 ]
  %base.0109 = phi %struct.kernfs_node* [ %parent, %while.body.lr.ph ], [ %4, %if.end11 ]
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %parent2, align 8
  br label %while.cond3

while.cond3:                                      ; preds = %while.cond3, %while.body
  %kn.0 = phi %struct.kernfs_node* [ %1, %while.body ], [ %2, %while.cond3 ]
  %parent4 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.0, i64 0, i32 2
  %2 = load %struct.kernfs_node*, %struct.kernfs_node** %parent4, align 8
  %tobool5 = icmp ne %struct.kernfs_node* %2, null
  %cmp = icmp ne %struct.kernfs_node* %base.0109, %kn.0
  %3 = select i1 %tobool5, i1 %cmp, i1 false
  br i1 %3, label %while.cond3, label %while.end

while.end:                                        ; preds = %while.cond3
  %cmp8 = icmp eq %struct.kernfs_node* %base.0109, %kn.0
  br i1 %cmp8, label %while.end13, label %if.end

if.end:                                           ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint i8* %s.0110 to i64
  %add = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast
  %cmp9 = icmp sgt i64 %add, 4095
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call = call i8* @strcpy(i8* noundef %s.0110, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5
  %add.ptr = getelementptr i8, i8* %s.0110, i64 3
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1111, align 8
  %parent1 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %4, i64 0, i32 2
  %5 = load %struct.kernfs_node*, %struct.kernfs_node** %parent1, align 8
  %tobool.not = icmp eq %struct.kernfs_node* %5, null
  br i1 %tobool.not, label %while.end13, label %while.body

while.end13:                                      ; preds = %if.end11, %while.end, %entry
  %base.0.lcssa = phi %struct.kernfs_node* [ %parent, %entry ], [ %base.0109, %while.end ], [ %4, %if.end11 ]
  %s.0.lcssa = phi i8* [ %path, %entry ], [ %s.0110, %while.end ], [ %add.ptr, %if.end11 ]
  %parent15115 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %target, i64 0, i32 2
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15115, align 8
  %tobool16116 = icmp ne %struct.kernfs_node* %6, null
  %cmp18117 = icmp ne %struct.kernfs_node* %base.0.lcssa, %target
  %7 = select i1 %tobool16116, i1 %cmp18117, i1 false
  br i1 %7, label %while.body20, label %cleanup

while.body20:                                     ; preds = %while.end13, %while.body20
  %parent15120 = phi %struct.kernfs_node** [ %parent15, %while.body20 ], [ %parent15115, %while.end13 ]
  %len.0119 = phi i32 [ %conv24, %while.body20 ], [ 0, %while.end13 ]
  %kn.1118 = phi %struct.kernfs_node* [ %11, %while.body20 ], [ %target, %while.end13 ]
  %name = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.1118, i64 0, i32 3
  %8 = load i8*, i8** %name, align 8
  %call21 = call i64 @strlen(i8* noundef %8) #5
  %9 = trunc i64 %call21 to i32
  %10 = add i32 %len.0119, 1
  %conv24 = add i32 %10, %9
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15120, align 8
  %parent15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %11, i64 0, i32 2
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15, align 8
  %tobool16 = icmp ne %struct.kernfs_node* %12, null
  %cmp18 = icmp ne %struct.kernfs_node* %11, %base.0.lcssa
  %13 = select i1 %tobool16, i1 %cmp18, i1 false
  br i1 %13, label %while.body20, label %while.end26

while.end26:                                      ; preds = %while.body20
  %14 = trunc i64 %call21 to i32
  %cmp27 = icmp slt i32 %conv24, 2
  br i1 %cmp27, label %cleanup, label %if.end30

if.end30:                                         ; preds = %while.end26
  %dec = add i32 %len.0119, %14
  %sub.ptr.lhs.cast31 = ptrtoint i8* %s.0.lcssa to i64
  %sub.ptr.rhs.cast32 = ptrtoint i8* %path to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %15 = zext i32 %dec to i64
  %add35 = add i64 %sub.ptr.sub33, %15
  %cmp36 = icmp sgt i64 %add35, 4095
  br i1 %cmp36, label %cleanup, label %while.cond40.preheader

while.cond40.preheader:                           ; preds = %if.end30
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %parent15115, align 8
  %tobool42123 = icmp ne %struct.kernfs_node* %16, null
  %17 = select i1 %tobool42123, i1 %cmp18117, i1 false
  br i1 %17, label %while.body47, label %cleanup

while.body47:                                     ; preds = %while.cond40.preheader, %if.end58
  %parent41127 = phi %struct.kernfs_node** [ %parent41, %if.end58 ], [ %parent15115, %while.cond40.preheader ]
  %len.1126 = phi i32 [ %len.2, %if.end58 ], [ %dec, %while.cond40.preheader ]
  %kn.2125 = phi %struct.kernfs_node* [ %20, %if.end58 ], [ %target, %while.cond40.preheader ]
  %name48 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn.2125, i64 0, i32 3
  %18 = load i8*, i8** %name48, align 8
  %call49 = call i64 @strlen(i8* noundef %18) #5
  %conv50 = trunc i64 %call49 to i32
  %sub = sub i32 %len.1126, %conv50
  %idx.ext = sext i32 %sub to i64
  %add.ptr51 = getelementptr i8, i8* %s.0.lcssa, i64 %idx.ext
  %19 = load i8*, i8** %name48, align 8
  %sext = shl i64 %call49, 32
  %conv53 = ashr exact i64 %sext, 32
  %call54 = call i8* @memcpy(i8* noundef %add.ptr51, i8* noundef %19, i64 noundef %conv53) #5
  %tobool55.not = icmp eq i32 %sub, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %while.body47
  %dec57 = add i32 %sub, -1
  %idxprom = sext i32 %dec57 to i64
  %arrayidx = getelementptr i8, i8* %s.0.lcssa, i64 %idxprom
  store i8 47, i8* %arrayidx, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %while.body47
  %len.2 = phi i32 [ %dec57, %if.then56 ], [ 0, %while.body47 ]
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %parent41127, align 8
  %parent41 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i64 0, i32 2
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %parent41, align 8
  %tobool42 = icmp ne %struct.kernfs_node* %21, null
  %cmp44 = icmp ne %struct.kernfs_node* %20, %base.0.lcssa
  %22 = select i1 %tobool42, i1 %cmp44, i1 false
  br i1 %22, label %while.body47, label %cleanup

cleanup:                                          ; preds = %if.end, %if.end58, %while.end13, %while.cond40.preheader, %if.end30, %while.end26
  %retval.0 = phi i32 [ -22, %while.end26 ], [ -36, %if.end30 ], [ 0, %while.cond40.preheader ], [ -22, %while.end13 ], [ 0, %if.end58 ], [ -36, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
