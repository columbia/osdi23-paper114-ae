; ModuleID = 'arch/arm64/kernel/process.c'
source_filename = "arch/arm64/kernel/process.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.5, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.6, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.5 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.6 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.7, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.23, %struct.list_head, %struct.list_head, %union.anon.24 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.18, i32 }
%union.anon.18 = type { %struct.kuid_t }
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
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.71 = type { %struct.callback_head }
%union.anon.72 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.25 }
%union.anon.25 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.26, %union.anon.27 }
%union.anon.26 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.27 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.31 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.29, %struct.qspinlock }
%union.anon.29 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.31 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.47 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.53, %union.anon.54, i32 }
%struct.request_queue = type opaque
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.59 }
%struct.anon.59 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.67, i32, [12 x i8] }
%union.anon.67 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.68 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.69, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.69 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.stackframe = type { i64, i64, [1 x i64], i64, i32 }

@pm_power_off = dso_local local_unnamed_addr global void ()* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Reboot failed -- System halted\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pc : %pS\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"lr : %pS\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pc : %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"lr : %016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sp : %016llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"x%-2d: %016llx\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\01c x%-2d: %016llx\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@randomize_va_space = external dso_local local_unnamed_addr global i32, align 4
@arm64_mismatched_32bit_el0 = external dso_local global %struct.static_key_false, align 4
@__entry_task = dso_local global %struct.task_struct* null, section ".data..percpu", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.11 = private unnamed_addr constant [56 x i8] c"pstate: %08llx (%c%c%c%c %c %s %s %c%c%c %cDIT %cSSBS)\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"T32\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"A32\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@btypes = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)], align 8
@.str.16 = private unnamed_addr constant [76 x i8] c"pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO %cTCO %cDIT %cSSBS BTYPE=%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"jc\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"j-\00", align 1
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @machine_shutdown() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @machine_halt() local_unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void @smp_send_stop() #14
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  br label %while.body
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #2 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_stop() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @machine_power_off() local_unnamed_addr #2 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void @smp_send_stop() #14
  %0 = load void ()*, void ()** @pm_power_off, align 8
  %tobool.not = icmp eq void ()* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @machine_restart(i8* noundef %cmd) local_unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void @smp_send_stop() #14
  call void @do_kernel_restart(i8* noundef %cmd) #14
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)) #16
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_kernel_restart(i8* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__show_regs(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 14
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 13
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 30
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %sp.0.in = select i1 %cmp, i64* %arrayidx3, i64* %2
  %lr.0.in = select i1 %cmp, i64* %arrayidx, i64* %arrayidx5
  %top_reg.0 = select i1 %cmp, i32 12, i32 29
  %lr.0 = load i64, i64* %lr.0.in, align 8
  %sp.0 = load i64, i64* %sp.0.in, align 8
  call void @show_regs_print_info(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #14
  call fastcc void @print_pstate(%struct.pt_regs* noundef %regs) #13
  %3 = load i64, i64* %0, align 8
  %and8 = and i64 %3, 15
  %cmp9 = icmp eq i64 %and8, 0
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  br i1 %cmp9, label %do.end19, label %do.end

do.end:                                           ; preds = %entry
  %6 = inttoptr i64 %5 to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6) #16
  %7 = inttoptr i64 %lr.0 to i8*
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #16
  br label %do.end31

do.end19:                                         ; preds = %entry
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 noundef %5) #16
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 noundef %lr.0) #16
  br label %do.end31

do.end31:                                         ; preds = %do.end, %do.end19
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 noundef %sp.0) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end31, %do.end62
  %i.092 = phi i32 [ %top_reg.0, %do.end31 ], [ %dec.lcssa, %do.end62 ]
  %idxprom87 = zext i32 %i.092 to i64
  %arrayidx48 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %idxprom87
  %8 = load i64, i64* %arrayidx48, align 8
  %call49 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef %i.092, i64 noundef %8) #16
  %dec88 = add nsw i32 %i.092, -1
  %rem8994 = urem i32 %i.092, 3
  %tobool.not90 = icmp eq i32 %rem8994, 0
  br i1 %tobool.not90, label %do.end62, label %do.end54

do.end54:                                         ; preds = %do.end45, %do.end54
  %dec91 = phi i32 [ %dec, %do.end54 ], [ %dec88, %do.end45 ]
  %idxprom57 = sext i32 %dec91 to i64
  %arrayidx58 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %idxprom57
  %9 = load i64, i64* %arrayidx58, align 8
  %call59 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 noundef %dec91, i64 noundef %9) #16
  %dec = add i32 %dec91, -1
  %rem = srem i32 %dec91, 3
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %do.end62, label %do.end54

do.end62:                                         ; preds = %do.end54, %do.end45
  %dec.lcssa = phi i32 [ %dec88, %do.end45 ], [ %dec, %do.end54 ]
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #16
  %cmp42 = icmp sgt i32 %dec.lcssa, -1
  br i1 %cmp42, label %do.end45, label %while.end65

while.end65:                                      ; preds = %do.end62
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs_print_info(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_pstate(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %and3 = and i64 %1, 2147483648
  %tobool.not = icmp eq i64 %and3, 0
  %cond = select i1 %tobool.not, i32 110, i32 78
  %and4 = and i64 %1, 1073741824
  %tobool5.not = icmp eq i64 %and4, 0
  %cond6 = select i1 %tobool5.not, i32 122, i32 90
  %and7 = and i64 %1, 536870912
  %tobool8.not = icmp eq i64 %and7, 0
  %cond9 = select i1 %tobool8.not, i32 99, i32 67
  %and10 = and i64 %1, 268435456
  %tobool11.not = icmp eq i64 %and10, 0
  %cond12 = select i1 %tobool11.not, i32 118, i32 86
  %and13 = and i64 %1, 134217728
  %tobool14.not = icmp eq i64 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 113, i32 81
  %and16 = and i64 %1, 32
  %tobool17.not = icmp eq i64 %and16, 0
  %cond18 = select i1 %tobool17.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %and19 = and i64 %1, 512
  %tobool20.not = icmp eq i64 %and19, 0
  %cond21 = select i1 %tobool20.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %and22 = and i64 %1, 256
  %tobool23.not = icmp eq i64 %and22, 0
  %cond24 = select i1 %tobool23.not, i32 97, i32 65
  %and25 = and i64 %1, 128
  %tobool26.not = icmp eq i64 %and25, 0
  %cond27 = select i1 %tobool26.not, i32 105, i32 73
  %and28 = and i64 %1, 64
  %tobool29.not = icmp eq i64 %and28, 0
  %cond30 = select i1 %tobool29.not, i32 102, i32 70
  %and31 = and i64 %1, 16777216
  %tobool32.not = icmp eq i64 %and31, 0
  %cond33 = select i1 %tobool32.not, i32 45, i32 43
  %and34 = and i64 %1, 8388608
  %tobool35.not = icmp eq i64 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 45, i32 43
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i64 noundef %1, i32 noundef %cond, i32 noundef %cond6, i32 noundef %cond9, i32 noundef %cond12, i32 noundef %cond15, i8* noundef %cond18, i8* noundef %cond21, i32 noundef %cond24, i32 noundef %cond27, i32 noundef %cond30, i32 noundef %cond33, i32 noundef %cond36) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %and37 = lshr i64 %1, 10
  %shr = and i64 %and37, 3
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @btypes, i64 0, i64 %shr
  %2 = load i8*, i8** %arrayidx, align 8
  %and42 = and i64 %1, 2147483648
  %tobool43.not = icmp eq i64 %and42, 0
  %cond44 = select i1 %tobool43.not, i32 110, i32 78
  %and45 = and i64 %1, 1073741824
  %tobool46.not = icmp eq i64 %and45, 0
  %cond47 = select i1 %tobool46.not, i32 122, i32 90
  %and48 = and i64 %1, 536870912
  %tobool49.not = icmp eq i64 %and48, 0
  %cond50 = select i1 %tobool49.not, i32 99, i32 67
  %and51 = and i64 %1, 268435456
  %tobool52.not = icmp eq i64 %and51, 0
  %cond53 = select i1 %tobool52.not, i32 118, i32 86
  %and54 = and i64 %1, 512
  %tobool55.not = icmp eq i64 %and54, 0
  %cond56 = select i1 %tobool55.not, i32 100, i32 68
  %and57 = and i64 %1, 256
  %tobool58.not = icmp eq i64 %and57, 0
  %cond59 = select i1 %tobool58.not, i32 97, i32 65
  %and60 = and i64 %1, 128
  %tobool61.not = icmp eq i64 %and60, 0
  %cond62 = select i1 %tobool61.not, i32 105, i32 73
  %and63 = and i64 %1, 64
  %tobool64.not = icmp eq i64 %and63, 0
  %cond65 = select i1 %tobool64.not, i32 102, i32 70
  %and66 = and i64 %1, 4194304
  %tobool67.not = icmp eq i64 %and66, 0
  %cond68 = select i1 %tobool67.not, i32 45, i32 43
  %and69 = and i64 %1, 8388608
  %tobool70.not = icmp eq i64 %and69, 0
  %cond71 = select i1 %tobool70.not, i32 45, i32 43
  %and72 = and i64 %1, 33554432
  %tobool73.not = icmp eq i64 %and72, 0
  %cond74 = select i1 %tobool73.not, i32 45, i32 43
  %and75 = and i64 %1, 16777216
  %tobool76.not = icmp eq i64 %and75, 0
  %cond77 = select i1 %tobool76.not, i32 45, i32 43
  %and78 = and i64 %1, 4096
  %tobool79.not = icmp eq i64 %and78, 0
  %cond80 = select i1 %tobool79.not, i32 45, i32 43
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0), i64 noundef %1, i32 noundef %cond44, i32 noundef %cond47, i32 noundef %cond50, i32 noundef %cond53, i32 noundef %cond56, i32 noundef %cond59, i32 noundef %cond62, i32 noundef %cond65, i32 noundef %cond68, i32 noundef %cond71, i32 noundef %cond74, i32 noundef %cond77, i32 noundef %cond80, i8* noundef %2) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_regs(%struct.pt_regs* noundef %regs) local_unnamed_addr #2 {
entry:
  call void @__show_regs(%struct.pt_regs* noundef %regs) #13
  call void @dump_backtrace(%struct.pt_regs* noundef %regs, %struct.task_struct* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_backtrace(%struct.pt_regs* noundef, %struct.task_struct* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_thread() local_unnamed_addr #2 {
entry:
  call void @fpsimd_flush_thread() #14
  call fastcc void @tls_thread_flush() #13
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_flush_thread() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tls_thread_flush() unnamed_addr #2 {
entry:
  call void asm sideeffect "msr tpidr_el0, ${0:x}", "rZ"(i64 0) #15, !srcloc !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @release_thread(%struct.task_struct* nocapture noundef %dead_task) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @arch_release_task_struct(%struct.task_struct* nocapture noundef %tsk) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @arch_dup_task_struct(%struct.task_struct* noundef %dst, %struct.task_struct* nocapture noundef readonly %src) local_unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fpsimd_preserve_current_state() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.task_struct* %dst to i8*
  %4 = bitcast %struct.task_struct* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 64 dereferenceable(2560) %3, i8* noundef align 64 dereferenceable(2560) %4, i64 2560, i1 false)
  %sve_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %dst, i64 0, i32 137, i32 3
  store i8* null, i8** %sve_state, align 8
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %dst, i32 noundef 23) #13
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %dst, i32 noundef 5) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_preserve_current_state() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #13
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_thread(i64 noundef %clone_flags, i64 noundef %stack_start, i64 noundef %stk_sz, %struct.task_struct* noundef %p, i64 noundef %tls) local_unnamed_addr #2 {
entry:
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %p) #13
  %add.ptr1 = getelementptr i8, i8* %call, i64 16048
  %thread = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137
  %0 = bitcast %struct.thread_struct* %thread to i8*
  %call2 = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 104) #14
  call void @fpsimd_flush_task_state(%struct.task_struct* noundef %p) #14
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2097168
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else27, !prof !12

if.then:                                          ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call7 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %3) #13
  %add.ptr9 = getelementptr i8, i8* %call7, i64 16048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(336) %add.ptr1, i8* noundef align 8 dereferenceable(336) %add.ptr9, i64 336, i1 false)
  %arrayidx = bitcast i8* %add.ptr1 to i64*
  store i64 0, i64* %arrayidx, align 8
  %4 = call i64 asm sideeffect "mrs $0, tpidr_el0", "=r"() #15, !srcloc !13
  %tp_value = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 1, i32 0
  store i64 %4, i64* %tp_value, align 16
  %tobool11.not = icmp eq i64 %stack_start, 0
  br i1 %tobool11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.then
  %sp = getelementptr i8, i8* %call, i64 16296
  %5 = bitcast i8* %sp to i64*
  store i64 %stack_start, i64* %5, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.then
  %and20 = and i64 %clone_flags, 524288
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %if.end19
  store i64 %tls, i64* %tp_value, align 16
  br label %if.end33

if.else27:                                        ; preds = %entry
  %call28 = call i8* @memset(i8* noundef %add.ptr1, i32 noundef 0, i64 noundef 336) #14
  %pstate = getelementptr i8, i8* %call, i64 16312
  %6 = bitcast i8* %pstate to i64*
  store i64 1048581, i64* %6, align 8
  %x19 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %thread, i64 0, i32 0, i32 0
  store i64 %stack_start, i64* %x19, align 16
  %x20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 1
  store i64 %stk_sz, i64* %x20, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end19, %if.then22, %if.else27
  %pc = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 12
  store i64 ptrtoint (void ()* @ret_from_fork to i64), i64* %pc, align 16
  %7 = ptrtoint i8* %add.ptr1 to i64
  %sp38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 11
  store i64 %7, i64* %sp38, align 8
  %stackframe = getelementptr i8, i8* %call, i64 16352
  %8 = ptrtoint i8* %stackframe to i64
  %fp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 10
  store i64 %8, i64* %fp, align 16
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #7 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_flush_task_state(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #0 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ret_from_fork() #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tls_preserve_current_state() local_unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, tpidr_el0", "=r"() #15, !srcloc !14
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %tp_value = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 137, i32 1, i32 0
  store i64 %0, i64* %tp_value, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_sctlr_el1(i64 noundef %sctlr) local_unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, sctlr_el1", "=r"() #15, !srcloc !15
  %and = and i64 %0, -825841688577
  %or = or i64 %and, %sctlr
  %cmp.not = icmp eq i64 %or, %0
  br i1 %cmp.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %entry
  call void asm sideeffect "msr sctlr_el1, ${0:x}", "rZ"(i64 %or) #15, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @__switch_to(%struct.task_struct* noundef %prev, %struct.task_struct* noundef %next) local_unnamed_addr #2 {
entry:
  call void @fpsimd_thread_switch(%struct.task_struct* noundef %next) #14
  call fastcc void @tls_thread_switch(%struct.task_struct* noundef %next) #13
  call fastcc void @entry_task_switch(%struct.task_struct* noundef %next) #13
  call fastcc void @ssbs_thread_switch(%struct.task_struct* noundef %next) #13
  call void asm sideeffect "dsb ish", "~{memory}"() #15, !srcloc !18
  %sctlr_user = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 137, i32 9
  %0 = load i64, i64* %sctlr_user, align 8
  %sctlr_user2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 137, i32 9
  %1 = load i64, i64* %sctlr_user2, align 8
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @update_sctlr_el1(i64 noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.task_struct* @cpu_switch_to(%struct.task_struct* noundef %prev, %struct.task_struct* noundef %next) #14
  ret %struct.task_struct* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_thread_switch(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tls_thread_switch(%struct.task_struct* noundef readonly %next) unnamed_addr #2 {
entry:
  call void @tls_preserve_current_state() #13
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  br i1 %call2, label %do.body8, label %do.body4

do.body4:                                         ; preds = %entry
  call void asm sideeffect "msr tpidrro_el0, ${0:x}", "rZ"(i64 0) #15, !srcloc !19
  br label %do.body8

do.body8:                                         ; preds = %do.body4, %entry
  %tp_value12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 137, i32 1, i32 0
  %0 = load i64, i64* %tp_value12, align 16
  call void asm sideeffect "msr tpidr_el0, ${0:x}", "rZ"(i64 %0) #15, !srcloc !20
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @entry_task_switch(%struct.task_struct* noundef %next) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (%struct.task_struct** @__entry_task to i64)
  %0 = inttoptr i64 %add to %struct.task_struct**
  store %struct.task_struct* %next, %struct.task_struct** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ssbs_thread_switch(%struct.task_struct* noundef %next) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %cpus_have_const_cap.exit

if.then3.i:                                       ; preds = %if.end
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 39, i32 0)) #14
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br i1 %cmp1.i.i, label %return, label %if.end4

cpus_have_const_cap.exit:                         ; preds = %if.end
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 39) #14
  br i1 %call6.i, label %return, label %if.end4

if.end4:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  call void @spectre_v4_enable_task_mitigation(%struct.task_struct* noundef %next) #14
  br label %return

return:                                           ; preds = %if.then3.i, %cpus_have_const_cap.exit, %entry, %if.end4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @cpu_switch_to(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_wchan(%struct.task_struct* noundef %p) local_unnamed_addr #2 {
entry:
  %frame = alloca %struct.stackframe, align 8
  %0 = bitcast %struct.stackframe* %frame to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !21
  %tobool.not = icmp eq %struct.task_struct* %p, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %2, %p
  br i1 %cmp, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %3 = load volatile i32, i32* %__state, align 16
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %do.end
  %call3 = call fastcc i8* @try_get_task_stack(%struct.task_struct* noundef nonnull %p) #13
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %fp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 10
  %4 = load i64, i64* %fp, align 16
  %pc = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 137, i32 0, i32 12
  %5 = load i64, i64* %pc, align 16
  call void @start_backtrace(%struct.stackframe* noundef nonnull %frame, i64 noundef %4, i64 noundef %5) #14
  %pc14 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %frame, i64 0, i32 1
  br label %do.body9

do.body9:                                         ; preds = %do.cond20, %if.end6
  %count.0 = phi i32 [ 0, %if.end6 ], [ %inc, %do.cond20 ]
  %call10 = call i32 @unwind_frame(%struct.task_struct* noundef nonnull %p, %struct.stackframe* noundef nonnull %frame) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %out

if.end13:                                         ; preds = %do.body9
  %6 = load i64, i64* %pc14, align 8
  %call15 = call i32 @in_sched_functions(i64 noundef %6) #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %do.cond20

if.then17:                                        ; preds = %if.end13
  %7 = load i64, i64* %pc14, align 8
  br label %out

do.cond20:                                        ; preds = %if.end13
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %out, label %do.body9

out:                                              ; preds = %do.cond20, %do.body9, %if.then17
  %ret.0 = phi i64 [ %7, %if.then17 ], [ 0, %do.body9 ], [ 0, %do.cond20 ]
  call void @put_task_stack(%struct.task_struct* noundef nonnull %p) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %do.end, %out
  %retval.0 = phi i64 [ %ret.0, %out ], [ 0, %do.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @try_get_task_stack(%struct.task_struct* noundef %tsk) unnamed_addr #2 {
entry:
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 136
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %stack_refcount) #13
  br i1 %call, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_backtrace(%struct.stackframe* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(%struct.task_struct* noundef, %struct.stackframe* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_sched_functions(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_align_stack(i64 noundef %sp) local_unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %2 = load i32, i32* %personality, align 16
  %and = and i32 %2, 262144
  %tobool = icmp eq i32 %and, 0
  %3 = load i32, i32* @randomize_va_space, align 4
  %tobool1 = icmp ne i32 %3, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @get_random_int() #13
  %4 = and i32 %call2, 4095
  %and3 = zext i32 %4 to i64
  %sub = sub i64 %sp, %and3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sp.addr.0 = phi i64 [ %sub, %if.then ], [ %sp, %entry ]
  %and4 = and i64 %sp.addr.0, -16
  ret i64 %and4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_random_int() unnamed_addr #2 {
entry:
  %call = call i32 @get_random_u32() #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arch_setup_new_exec() local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0)) #13
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call void @relax_compatible_cpus_allowed_ptr(%struct.task_struct* noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 42, i32 3
  store i64 0, i64* %flags, align 8
  %call7 = call fastcc i1 @task_spec_ssb_noexec(%struct.task_struct* noundef %3) #13
  br i1 %call7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %call10 = call i32 @arch_prctl_spec_ctrl_set(%struct.task_struct* noundef %3, i64 noundef 0, i64 noundef 2) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #10 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @relax_compatible_cpus_allowed_ptr(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_spec_ssb_noexec(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %1 = and i64 %0, 128
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prctl_spec_ctrl_set(%struct.task_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #2 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef %0, i64* noundef %flags) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #2 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #10 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #14
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #14
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #14
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #10 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !23
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @spectre_v4_enable_task_mitigation(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #13
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #14
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !12

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !12

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #10 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #2 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #15, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149214633, i64 2149214680, i64 2149214686, i64 2149214723, i64 2149214741, i64 2149216082, i64 2149216130, i64 2149216178, i64 2149216241, i64 2149216290, i64 2149214819, i64 2149214844, i64 2149214870, i64 2149214876, i64 2149215748, i64 2149215788, i64 2149215806, i64 2149215838, i64 2149215866, i64 2149215920, i64 2149215940, i64 2149216037, i64 2149214899, i64 2149214913, i64 2149214919, i64 2149214969, i64 2149215015, i64 2149215048}
!10 = !{i64 1452534}
!11 = !{i64 2155412213}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155415731}
!14 = !{i64 2155415985}
!15 = !{i64 2155428057}
!16 = !{i64 2155428227}
!17 = !{i64 2155428378}
!18 = !{i64 2155428413}
!19 = !{i64 2155416368}
!20 = !{i64 2155416558}
!21 = !{!"auto-init"}
!22 = !{i64 2147904003, i64 2147904524, i64 2147904554, i64 2147904580, i64 2147904612, i64 2147904641}
!23 = !{i64 2149014839, i64 2149014886, i64 2149014892, i64 2149014929, i64 2149014947, i64 2149015874, i64 2149015922, i64 2149015970, i64 2149016033, i64 2149016082, i64 2149015025, i64 2149015050, i64 2149015076, i64 2149015082, i64 2149015119, i64 2149015125, i64 2149015175, i64 2149015221, i64 2149015254}
!24 = !{i64 2147913677, i64 2147913710, i64 2147913762, i64 2147913821, i64 2147913855, i64 2147913910, i64 2147913939, i64 2147913959}
