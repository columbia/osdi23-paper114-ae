; ModuleID = 'kernel/rseq.c'
source_filename = "kernel/rseq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.kernel_siginfo = type { %struct.anon }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.pt_regs = type { %union.anon.10, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.10 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.12 }
%union.anon.12 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.14 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.19, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.35, %struct.list_head, %struct.list_head, %union.anon.36 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.26, i8* }
%union.anon.26 = type { i64 }
%struct.lockref = type { %union.anon.28 }
%union.anon.28 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.30, i32 }
%union.anon.30 = type { %struct.kuid_t }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.37 }
%union.anon.37 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.38, %union.anon.39 }
%union.anon.38 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.39 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.43 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.41, %struct.qspinlock }
%union.anon.41 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.43 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32, [48 x i8] }
%struct.anon.32 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.33, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.25, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.25 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.45 = type { %struct.callback_head }
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
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.21 }
%union.anon.21 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.65, %union.anon.66, i32 }
%struct.request_queue = type opaque
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
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
%struct.rseq_cs = type { i32, i32, i64, i64, i64 }

@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@rseq_get_rseq_cs._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.rseq_get_rseq_cs = private unnamed_addr constant [17 x i8] c"rseq_get_rseq_cs\00", align 1
@.str = private unnamed_addr constant [94 x i8] c"\014Possible attack attempt. Unexpected rseq signature 0x%x, expecting 0x%x (pid=%d, addr=%p).\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__rseq_handle_notify_resume(%struct.ksignal* noundef readonly %ksig, %struct.pt_regs* noundef %regs) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq %struct.pt_regs* %regs, null
  br i1 %tobool3.not, label %if.end16, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @rseq_ip_fixup(%struct.pt_regs* noundef nonnull %regs) #11
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %error, label %if.end16, !prof !10

if.end16:                                         ; preds = %if.then4, %if.end
  %call17 = call fastcc i32 @rseq_update_cpu_id(%struct.task_struct* noundef %1) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %error, !prof !9

error:                                            ; preds = %if.end16, %if.then4
  %tobool28.not = icmp eq %struct.ksignal* %ksig, null
  br i1 %tobool28.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %error
  %sig29 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  %3 = load i32, i32* %sig29, align 8
  br label %cond.end

cond.end:                                         ; preds = %error, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %error ]
  call void @force_sigsegv(i32 noundef %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry, %cond.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rseq_ip_fixup(%struct.pt_regs* nocapture noundef %regs) unnamed_addr #0 {
entry:
  %rseq_cs = alloca %struct.rseq_cs, align 32
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = bitcast %struct.rseq_cs* %rseq_cs to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 32 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !11
  %call2 = call fastcc i32 @rseq_get_rseq_cs(%struct.task_struct* noundef %1, %struct.rseq_cs* noundef nonnull %rseq_cs) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @in_rseq_cs(i64 noundef %call, %struct.rseq_cs* noundef nonnull %rseq_cs) #11
  br i1 %call3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i32 @clear_rseq_cs(%struct.task_struct* noundef %1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 1
  %3 = load i32, i32* %flags, align 4
  %call7 = call fastcc i32 @rseq_need_restart(%struct.task_struct* noundef %1, i32 noundef %3) #11
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc i32 @clear_rseq_cs(%struct.task_struct* noundef %1) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end9
  %abort_ip = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 4
  %4 = load i64, i64* %abort_ip, align 8
  call fastcc void @instruction_pointer_set(%struct.pt_regs* noundef %regs, i64 noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6, %entry, %if.end13, %if.then4
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call5, %if.then4 ], [ %call2, %entry ], [ %call7, %if.end6 ], [ %call10, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rseq_update_cpu_id(%struct.task_struct* nocapture noundef readonly %t) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %rseq2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %2 = load %struct.rseq*, %struct.rseq** %rseq2, align 16
  %3 = bitcast %struct.rseq* %2 to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 32) #11
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %cleanup, label %do.body4

do.body4:                                         ; preds = %entry
  %call6 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 4) #11
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %do.body4
  %call9 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #11
  %4 = bitcast i8* %call9 to i32*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %1, i32* %4, i32 -14, i32 0) #13, !srcloc !12
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %do.body29, label %cleanup, !prof !9

do.body29:                                        ; preds = %if.then8
  %cpu_id33 = getelementptr inbounds %struct.rseq, %struct.rseq* %2, i64 0, i32 1
  %6 = bitcast i32* %cpu_id33 to i8*
  %call34 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4) #11
  %tobool35.not = icmp eq i64 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.then36

if.then36:                                        ; preds = %do.body29
  %call37 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #11
  %7 = bitcast i8* %call37 to i32*
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %1, i32* %7, i32 -14, i32 0) #13, !srcloc !13
  %phi.cmp91 = icmp eq i32 %8, 0
  %spec.select = select i1 %phi.cmp91, i32 0, i32 -14, !prof !9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %entry, %if.then8, %do.body4, %do.body29
  %retval.0 = phi i32 [ -14, %do.body29 ], [ -14, %do.body4 ], [ -14, %if.then8 ], [ -14, %entry ], [ %spec.select, %if.then36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sigsegv(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rseq(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_rseq(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rseq(i64 noundef %rseq, i64 noundef %rseq_len, i64 noundef %flags, i64 noundef %sig) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %rseq to %struct.rseq*
  %conv = trunc i64 %rseq_len to i32
  %conv1 = trunc i64 %flags to i32
  %conv2 = trunc i64 %sig to i32
  %call = call fastcc i64 @__do_sys_rseq(%struct.rseq* noundef %0, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rseq_get_rseq_cs(%struct.task_struct* nocapture noundef readonly %t, %struct.rseq_cs* noundef %rseq_cs) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %ptr64 = getelementptr inbounds %struct.rseq, %struct.rseq* %0, i64 0, i32 2, i32 0
  %1 = bitcast i64* %ptr64 to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 8) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %2 = bitcast i8* %call2 to i64*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %2, i32 -14, i32 0) #13, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %3, 0
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end
  %tobool15.not = icmp eq i64 %asmresult6, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %4 = bitcast %struct.rseq_cs* %rseq_cs to i8*
  %call17 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 32) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %5 = load i64, i64* @vabits_actual, align 8
  %ptr.0.highbits = lshr i64 %asmresult6, %5
  %cmp.not = icmp eq i64 %ptr.0.highbits, 0
  br i1 %cmp.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end18
  %6 = bitcast %struct.rseq_cs* %rseq_cs to i8*
  %7 = inttoptr i64 %asmresult6 to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %6, i8* noundef nonnull %7) #12
  %tobool22.not = icmp eq i64 %call2.i, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end20
  %start_ip = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 2
  %8 = load i64, i64* %start_ip, align 8
  %9 = load i64, i64* @vabits_actual, align 8
  %shl25 = shl nuw i64 1, %9
  %cmp26.not = icmp ult i64 %8, %shl25
  br i1 %cmp26.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end24
  %post_commit_offset = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 3
  %10 = load i64, i64* %post_commit_offset, align 16
  %add = add i64 %10, %8
  %cmp29.not = icmp ult i64 %add, %shl25
  br i1 %cmp29.not, label %lor.lhs.false30, label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %abort_ip = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 4
  %11 = load i64, i64* %abort_ip, align 8
  %cmp32.not = icmp ult i64 %11, %shl25
  br i1 %cmp32.not, label %lor.lhs.false33, label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %version = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 0
  %12 = load i32, i32* %version, align 32
  %cmp34.not = icmp ne i32 %12, 0
  %cmp41 = icmp ult i64 %add, %8
  %or.cond = select i1 %cmp34.not, i1 true, i1 %cmp41
  %sub = sub i64 %11, %8
  %cmp47 = icmp ult i64 %sub, %10
  %or.cond135 = select i1 %or.cond, i1 true, i1 %cmp47
  br i1 %or.cond135, label %cleanup, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false33
  %sub51 = add i64 %11, -4
  %13 = inttoptr i64 %sub51 to i32*
  %14 = inttoptr i64 %sub51 to i8*
  %call55 = call fastcc i64 @__range_ok(i8* noundef %14, i64 noundef 4) #11
  %tobool56.not = icmp eq i64 %call55, 0
  br i1 %tobool56.not, label %cleanup, label %if.end71

if.end71:                                         ; preds = %if.end49
  %call58 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %14) #11
  %15 = bitcast i8* %call58 to i32*
  %16 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %15, i32 -14, i32 0) #13, !srcloc !15
  %asmresult63 = extractvalue { i32, i64 } %16, 0
  %asmresult64 = extractvalue { i32, i64 } %16, 1
  %conv = trunc i64 %asmresult64 to i32
  %tobool75.not = icmp eq i32 %asmresult63, 0
  br i1 %tobool75.not, label %if.end77, label %cleanup

if.end77:                                         ; preds = %if.end71
  %17 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %18 = inttoptr i64 %17 to %struct.task_struct*
  %rseq_sig = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i64 0, i32 122
  %19 = load i32, i32* %rseq_sig, align 8
  %cmp79.not = icmp eq i32 %19, %conv
  br i1 %cmp79.not, label %cleanup, label %if.then81

if.then81:                                        ; preds = %if.end77
  %call82 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @rseq_get_rseq_cs._rs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.rseq_get_rseq_cs, i64 0, i64 0)) #12
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %do.end87

do.end87:                                         ; preds = %if.then81
  %20 = load i32, i32* %rseq_sig, align 8
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i64 0, i32 50
  %21 = load i32, i32* %pid, align 32
  %call92 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 noundef %conv, i32 noundef %20, i32 noundef %21, i32* noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %entry, %if.end77, %if.then81, %do.end87, %if.end71, %if.end24, %lor.lhs.false, %lor.lhs.false30, %lor.lhs.false33, %if.end20, %if.end18, %if.end, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ -14, %if.end ], [ -22, %if.end18 ], [ -14, %if.end20 ], [ -22, %lor.lhs.false33 ], [ -22, %lor.lhs.false30 ], [ -22, %lor.lhs.false ], [ -22, %if.end24 ], [ %asmresult63, %if.end71 ], [ -22, %do.end87 ], [ -22, %if.then81 ], [ 0, %if.end77 ], [ -14, %entry ], [ -14, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @in_rseq_cs(i64 noundef %ip, %struct.rseq_cs* nocapture noundef readonly %rseq_cs) unnamed_addr #3 {
entry:
  %start_ip = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 2
  %0 = load i64, i64* %start_ip, align 8
  %sub = sub i64 %ip, %0
  %post_commit_offset = getelementptr inbounds %struct.rseq_cs, %struct.rseq_cs* %rseq_cs, i64 0, i32 3
  %1 = load i64, i64* %post_commit_offset, align 16
  %cmp = icmp ult i64 %sub, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @clear_rseq_cs(%struct.task_struct* nocapture noundef readonly %t) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %ptr64 = getelementptr inbounds %struct.rseq, %struct.rseq* %0, i64 0, i32 2, i32 0
  %1 = bitcast i64* %ptr64 to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 8) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %2 = bitcast i8* %call1 to i64*
  %3 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 0, i64* %2, i32 -14, i32 0) #13, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %3, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rseq_need_restart(%struct.task_struct* nocapture noundef %t, i32 noundef %cs_flags) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %flags1 = getelementptr inbounds %struct.rseq, %struct.rseq* %0, i64 0, i32 3
  %1 = bitcast i32* %flags1 to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %2 = bitcast i8* %call2 to i32*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %2, i32 -14, i32 0) #13, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %3, 0
  %tobool12.not = icmp eq i32 %asmresult, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %conv = trunc i64 %asmresult6 to i32
  %or = or i32 %conv, %cs_flags
  %and = and i32 %or, 2
  %tobool15 = icmp ne i32 %and, 0
  %and16 = and i32 %or, 5
  %cmp = icmp ne i32 %and16, 5
  %4 = and i1 %tobool15, %cmp
  br i1 %4, label %cleanup, label %if.end22, !prof !10

if.end22:                                         ; preds = %if.end14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 123
  %5 = load i64, i64* %rseq_event_mask, align 64
  %conv23 = trunc i64 %5 to i32
  store i64 0, i64* %rseq_event_mask, align 64
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %neg = xor i32 %or, -1
  %and25 = and i32 %conv23, %neg
  %tobool26 = icmp ne i32 %and25, 0
  %lnot.ext30 = zext i1 %tobool26 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %if.end, %if.end22
  %retval.0 = phi i32 [ %lnot.ext30, %if.end22 ], [ %asmresult, %if.end ], [ -22, %if.end14 ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @instruction_pointer_set(%struct.pt_regs* nocapture noundef writeonly %regs, i64 noundef %val) unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  store i64 %val, i64* %0, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !20
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !21
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !22
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef 32) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 32) #12
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !9

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 32, %entry ]
  %sub = sub i64 32, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !23
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rseq(%struct.rseq* noundef %rseq, i32 noundef %rseq_len, i32 noundef %flags, i32 noundef %sig) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %tobool2.not = icmp ult i32 %flags, 2
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %rseq4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 121
  %2 = load %struct.rseq*, %struct.rseq** %rseq4, align 16
  %cmp.not = icmp eq %struct.rseq* %2, %rseq
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tobool7.not = icmp ne %struct.rseq* %rseq, null
  %cmp10.not = icmp eq i32 %rseq_len, 32
  %or.cond90 = and i1 %cmp10.not, %tobool7.not
  br i1 %or.cond90, label %if.end13, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %rseq_sig = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 122
  %3 = load i32, i32* %rseq_sig, align 8
  %cmp15.not = icmp eq i32 %3, %sig
  br i1 %cmp15.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end13
  %call20 = call fastcc i32 @rseq_reset_rseq_cpu_id(%struct.task_struct* noundef %1) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end18
  %conv23 = sext i32 %call20 to i64
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  store %struct.rseq* null, %struct.rseq** %rseq4, align 16
  store i32 0, i32* %rseq_sig, align 8
  br label %cleanup

if.end29:                                         ; preds = %entry
  %tobool30.not = icmp eq i32 %flags, 0
  br i1 %tobool30.not, label %if.end35, label %cleanup, !prof !9

if.end35:                                         ; preds = %if.end29
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !8
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %rseq37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 121
  %6 = load %struct.rseq*, %struct.rseq** %rseq37, align 16
  %tobool38.not = icmp eq %struct.rseq* %6, null
  br i1 %tobool38.not, label %if.end56, label %if.then39

if.then39:                                        ; preds = %if.end35
  %cmp42 = icmp ne %struct.rseq* %6, %rseq
  %cmp46 = icmp ne i32 %rseq_len, 32
  %or.cond = or i1 %cmp46, %cmp42
  br i1 %or.cond, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.then39
  %rseq_sig51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 122
  %7 = load i32, i32* %rseq_sig51, align 8
  %cmp52.not = icmp eq i32 %7, %sig
  %. = select i1 %cmp52.not, i64 -16, i64 -1
  br label %cleanup

if.end56:                                         ; preds = %if.end35
  %8 = ptrtoint %struct.rseq* %rseq to i64
  %and57 = and i64 %8, 31
  %cmp58 = icmp ne i64 %and57, 0
  %cmp62 = icmp ne i32 %rseq_len, 32
  %or.cond76 = or i1 %cmp62, %cmp58
  br i1 %or.cond76, label %cleanup, label %if.end65

if.end65:                                         ; preds = %if.end56
  %9 = bitcast %struct.rseq* %rseq to i8*
  %call67 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 32) #11
  %tobool68.not = icmp eq i64 %call67, 0
  br i1 %tobool68.not, label %cleanup, label %if.end70

if.end70:                                         ; preds = %if.end65
  store %struct.rseq* %rseq, %struct.rseq** %rseq37, align 16
  %rseq_sig74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 122
  store i32 %sig, i32* %rseq_sig74, align 8
  call fastcc void @rseq_set_notify_resume(%struct.task_struct* noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end56, %if.end49, %if.then39, %if.end29, %if.end13, %if.end, %lor.lhs.false, %if.then, %if.end70, %if.end24, %if.then22
  %retval.0 = phi i64 [ %conv23, %if.then22 ], [ 0, %if.end24 ], [ 0, %if.end70 ], [ -22, %if.then ], [ -22, %lor.lhs.false ], [ -22, %if.end ], [ -1, %if.end13 ], [ -22, %if.end29 ], [ -22, %if.then39 ], [ %., %if.end49 ], [ -22, %if.end56 ], [ -14, %if.end65 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rseq_reset_rseq_cpu_id(%struct.task_struct* nocapture noundef readonly %t) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = bitcast %struct.rseq** %rseq to i8**
  %1 = load i8*, i8** %0, align 16
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %2 = bitcast i8* %call2 to i32*
  %3 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %2, i32 -14, i32 0) #13, !srcloc !24
  %phi.cmp = icmp eq i32 %3, 0
  br i1 %phi.cmp, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then
  %4 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %cpu_id18 = getelementptr inbounds %struct.rseq, %struct.rseq* %4, i64 0, i32 1
  %5 = bitcast i32* %cpu_id18 to i8*
  %call19 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 4) #11
  %tobool20.not = icmp eq i64 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end13
  %call22 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #11
  %6 = bitcast i8* %call22 to i32*
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 -1, i32* %6, i32 -14, i32 0) #13, !srcloc !25
  %phi.cmp56 = icmp eq i32 %7, 0
  %spec.select = select i1 %phi.cmp56, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end13, %entry, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ -14, %entry ], [ -14, %if.end13 ], [ %spec.select, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_set_notify_resume(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %tobool.not = icmp eq %struct.rseq* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %t) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #11
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #9 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 4, i64* elementtype(i64) %counter) #13, !srcloc !26
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 163854}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2154822299, i64 2154822339, i64 2154822356, i64 2154822390, i64 2154822412, i64 2154822438, i64 2154822456, i64 2154822471, i64 2154822512, i64 2154822534, i64 2154822580}
!13 = !{i64 2154831484, i64 2154831524, i64 2154831541, i64 2154831575, i64 2154831597, i64 2154831623, i64 2154831641, i64 2154831656, i64 2154831697, i64 2154831719, i64 2154831765}
!14 = !{i64 2154843771, i64 2154843808, i64 2154843825, i64 2154843860, i64 2154843882, i64 2154843908, i64 2154843931, i64 2154843949, i64 2154844108, i64 2154844149, i64 2154844171, i64 2154844217}
!15 = !{i64 2154847758, i64 2154847795, i64 2154847812, i64 2154847847, i64 2154847869, i64 2154847895, i64 2154847918, i64 2154847936, i64 2154848095, i64 2154848136, i64 2154848158, i64 2154848204}
!16 = !{i64 2154858475, i64 2154858513, i64 2154858530, i64 2154858564, i64 2154858586, i64 2154858612, i64 2154858630, i64 2154858788, i64 2154858829, i64 2154858851, i64 2154858897}
!17 = !{i64 2154853448, i64 2154853485, i64 2154853502, i64 2154853537, i64 2154853559, i64 2154853585, i64 2154853608, i64 2154853626, i64 2154853785, i64 2154853826, i64 2154853848, i64 2154853894}
!18 = !{i64 2154855527}
!19 = !{i64 2154855575}
!20 = !{i64 2986920, i64 2987003, i64 2987227, i64 2987447, i64 2987470}
!21 = !{i64 2991622, i64 2991646}
!22 = !{i64 2150791080}
!23 = !{i64 2149070388, i64 2149070435, i64 2149070441, i64 2149070478, i64 2149070496, i64 2149071423, i64 2149071471, i64 2149071519, i64 2149071582, i64 2149071631, i64 2149070574, i64 2149070599, i64 2149070625, i64 2149070631, i64 2149070668, i64 2149070674, i64 2149070724, i64 2149070770, i64 2149070803}
!24 = !{i64 2154835217, i64 2154835255, i64 2154835272, i64 2154835306, i64 2154835328, i64 2154835354, i64 2154835372, i64 2154835530, i64 2154835571, i64 2154835593, i64 2154835639}
!25 = !{i64 2154839174, i64 2154839212, i64 2154839229, i64 2154839263, i64 2154839285, i64 2154839311, i64 2154839329, i64 2154839487, i64 2154839528, i64 2154839550, i64 2154839596}
!26 = !{i64 2147941185, i64 2147941696, i64 2147941726, i64 2147941752, i64 2147941784, i64 2147941813}
