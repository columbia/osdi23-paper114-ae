; ModuleID = 'arch/arm64/kernel/traps.c'
source_filename = "arch/arm64/kernel/traps.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.break_hook = type { %struct.list_head, i32 (%struct.pt_regs*, i32)*, i16, i16 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.arm64_ftr_reg = type { i8*, i64, i64, i64, i64, %struct.arm64_ftr_override*, %struct.arm64_ftr_bits* }
%struct.arm64_ftr_override = type { i64, i64 }
%struct.arm64_ftr_bits = type { i8, i8, i8, i32, i8, i8, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.5 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.6, [0 x i64] }
%struct.anon.6 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.7, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.7 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.8, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.9, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.8 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.9 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.10, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.undef_hook = type { %struct.list_head, i32, i32, i64, i64, i32 (%struct.pt_regs*, i32)* }

@aarch32_opcode_cond_checks = dso_local local_unnamed_addr constant [16 x i1 (i64)*] [i1 (i64)* @__check_eq, i1 (i64)* @__check_ne, i1 (i64)* @__check_cs, i1 (i64)* @__check_cc, i1 (i64)* @__check_mi, i1 (i64)* @__check_pl, i1 (i64)* @__check_vs, i1 (i64)* @__check_vc, i1 (i64)* @__check_hi, i1 (i64)* @__check_ls, i1 (i64)* @__check_ge, i1 (i64)* @__check_lt, i1 (i64)* @__check_gt, i1 (i64)* @__check_le, i1 (i64)* @__check_al, i1 (i64)* @__check_al], align 8
@show_unhandled_signals = dso_local local_unnamed_addr global i32 0, align 4
@die_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Fatal exception in interrupt\00", align 1
@panic_on_oops = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: Fatal exception\00", align 1
@undef_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@undef_hook = internal global %struct.list_head { %struct.list_head* @undef_hook, %struct.list_head* @undef_hook }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"undefined instruction\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"illegal memory access\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown or unrecoverable error\00", align 1
@esr_class_str = internal unnamed_addr constant [64 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)], align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Bad EL0 synchronous exception\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\012SError Interrupt on CPU%d, code 0x%08x -- %s\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Asynchronous SError Interrupt\00", align 1
@bug_break_hook = internal global %struct.break_hook { %struct.list_head zeroinitializer, i32 (%struct.pt_regs*, i32)* @bug_handler, i16 2048, i16 0 }, align 8
@fault_break_hook = internal global %struct.break_hook { %struct.list_head zeroinitializer, i32 (%struct.pt_regs*, i32)* @reserved_fault_handler, i16 256, i16 0 }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__die.die_counter = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"\010Internal error: %s: %x [#%d] SMP\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"(%08x) \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"bad PC value\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%sCode: %s\0A\00", align 1
@arm64_show_signal.rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.arm64_show_signal = private unnamed_addr constant [18 x i8] c"arm64_show_signal\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\016%s[%d]: unhandled exception: \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\01c%s, ESR 0x%08x, \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\01c in \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@arm64_ftr_reg_ctrel0 = external dso_local local_unnamed_addr global %struct.arm64_ftr_reg, align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@arch_timer_read_counter = external dso_local local_unnamed_addr global i64 ()*, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"Unknown/Uncategorized\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"WFI/WFE\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"UNRECOGNIZED EC\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"CP15 MCR/MRC\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"CP15 MCRR/MRRC\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"CP14 MCR/MRC\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"CP14 LDC/STC\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ASIMD\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"CP10 MRC/VMRS\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"PAC\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"CP14 MCRR/MRRC\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"BTI\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"PSTATE.IL\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"SVC (AArch32)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"HVC (AArch32)\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"SMC (AArch32)\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"SVC (AArch64)\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"HVC (AArch64)\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"SMC (AArch64)\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"MSR/MRS (AArch64)\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"SVE\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"ERET/ERETAA/ERETAB\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"FPAC\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"EL3 IMP DEF\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"IABT (lower EL)\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"IABT (current EL)\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"PC Alignment\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"DABT (lower EL)\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"DABT (current EL)\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"SP Alignment\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"FP (AArch32)\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"FP (AArch64)\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"SError\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Breakpoint (lower EL)\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"Breakpoint (current EL)\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Software Step (lower EL)\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Software Step (current EL)\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Watchpoint (lower EL)\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Watchpoint (current EL)\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"BKPT (AArch32)\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Vector catch (AArch32)\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"BRK (AArch64)\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Oops - BUG\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"\013%s generated an invalid instruction at %pS!\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"Kernel text patching\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_eq(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 1073741824
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_ne(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 1073741824
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_cs(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 536870912
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_cc(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 536870912
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_mi(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 2147483648
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_pl(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 2147483648
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_vs(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 268435456
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_vc(i64 noundef %pstate) #0 {
entry:
  %and = and i64 %pstate, 268435456
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_hi(i64 noundef %pstate) #0 {
entry:
  %shr = lshr i64 %pstate, 1
  %neg = xor i64 %shr, -1
  %and = and i64 %pstate, 536870912
  %and1 = and i64 %and, %neg
  %cmp = icmp ne i64 %and1, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_ls(i64 noundef %pstate) #0 {
entry:
  %shr = lshr i64 %pstate, 1
  %neg = xor i64 %shr, -1
  %and = and i64 %pstate, 536870912
  %and1 = and i64 %and, %neg
  %cmp = icmp eq i64 %and1, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_ge(i64 noundef %pstate) #0 {
entry:
  %shl = shl i64 %pstate, 3
  %xor = xor i64 %shl, %pstate
  %and = and i64 %xor, 2147483648
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_lt(i64 noundef %pstate) #0 {
entry:
  %shl = shl i64 %pstate, 3
  %xor = xor i64 %shl, %pstate
  %and = and i64 %xor, 2147483648
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_gt(i64 noundef %pstate) #0 {
entry:
  %shl = shl i64 %pstate, 3
  %xor = xor i64 %shl, %pstate
  %shl1 = shl i64 %pstate, 1
  %or = or i64 %xor, %shl1
  %and = and i64 %or, 2147483648
  %cmp = icmp eq i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_le(i64 noundef %pstate) #0 {
entry:
  %shl = shl i64 %pstate, 3
  %xor = xor i64 %shl, %pstate
  %shl1 = shl i64 %pstate, 1
  %or = or i64 %xor, %shl1
  %and = and i64 %or, 2147483648
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @__check_al(i64 noundef %pstate) #0 {
entry:
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @die(i8* noundef %str, %struct.pt_regs* noundef %regs, i32 noundef %err) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @die_lock) #17
  call void @oops_enter() #18
  call void @console_verbose() #18
  call void @bust_spinlocks(i32 noundef 1) #18
  %call1 = call fastcc i32 @__die(i8* noundef %str, i32 noundef %err, %struct.pt_regs* noundef %regs) #17
  %tobool.not = icmp eq %struct.pt_regs* %regs, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @bust_spinlocks(i32 noundef 0) #18
  call void @add_taint(i32 noundef 7, i32 noundef 1) #18
  call void @oops_exit() #18
  %call5 = call fastcc i32 @preempt_count() #17
  %1 = and i32 %call5, 15728640
  %call7 = call fastcc i32 @preempt_count() #17
  %2 = and i32 %call7, 983040
  %or40 = or i32 %2, %1
  %call10 = call fastcc i32 @preempt_count() #17
  %3 = and i32 %call10, 65280
  %or1342 = or i32 %or40, %3
  %tobool14.not = icmp eq i32 %or1342, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef %str) #20
  unreachable

if.end16:                                         ; preds = %if.end
  %4 = load i32, i32* @panic_on_oops, align 4
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %do.body20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* noundef %str) #20
  unreachable

do.body20:                                        ; preds = %if.end16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @die_lock, i64 noundef %call) #17
  %cmp28.not = icmp eq i32 %call1, 32769
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %do.body20
  call void @do_exit(i64 noundef 11) #21
  unreachable

if.end31:                                         ; preds = %do.body20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #17
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__die(i8* noundef %str, i32 noundef %err, %struct.pt_regs* noundef %regs) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @__die.die_counter, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @__die.die_counter, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* noundef %str, i32 noundef %err, i32 noundef %inc) #23
  %conv = sext i32 %err to i64
  %call1 = call i32 @notify_die(i32 noundef 1, i8* noundef %str, %struct.pt_regs* noundef %regs, i64 noundef %conv, i32 noundef 0, i32 noundef 11) #18
  %cmp = icmp eq i32 %call1, 32769
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @show_regs(%struct.pt_regs* noundef %regs) #18
  call fastcc void @dump_kernel_instr(%struct.pt_regs* noundef %regs) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @oops_exit() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.3* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !10
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_force_sig_fault(i32 noundef %signo, i32 noundef %code, i64 noundef %far, i8* noundef %str) local_unnamed_addr #1 {
entry:
  call fastcc void @arm64_show_signal(i32 noundef %signo, i8* noundef %str) #17
  %cmp = icmp eq i32 %signo, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @force_sig(i32 noundef 9) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = inttoptr i64 %far to i8*
  %call = call i32 @force_sig_fault(i32 noundef %signo, i32 noundef %code, i8* noundef %0) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arm64_show_signal(i32 noundef %signo, i8* noundef %str) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 7
  %2 = load i64, i64* %fault_code, align 16
  %conv = trunc i64 %2 to i32
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #17
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %3 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %4 = load i32, i32* @show_unhandled_signals, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i1 @unhandled_signal(%struct.task_struct* noundef %1, i32 noundef %signo) #18
  br i1 %call3, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @arm64_show_signal.rs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.arm64_show_signal, i64 0, i64 0)) #18
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false4
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %call7 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #17
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %call7) #23
  %tobool9.not = icmp eq i32 %conv, 0
  br i1 %tobool9.not, label %do.end20, label %do.end13

do.end13:                                         ; preds = %do.end
  %call15 = call i8* @esr_get_class_string(i32 noundef %conv) #17
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call15, i32 noundef %conv) #23
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.end13
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef %str) #23
  %pc = getelementptr i8, i8* %call1, i64 16304
  %5 = bitcast i8* %pc to i64*
  %6 = load i64, i64* %5, align 8
  call void @print_vma_addr(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef %6) #18
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)) #23
  call void @__show_regs(%struct.pt_regs* noundef %3) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false4, %do.end20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_force_sig_mceerr(i32 noundef %code, i64 noundef %far, i16 noundef %lsb, i8* noundef %str) local_unnamed_addr #1 {
entry:
  call fastcc void @arm64_show_signal(i32 noundef 7, i8* noundef %str) #17
  %0 = inttoptr i64 %far to i8*
  %call = call i32 @force_sig_mceerr(i32 noundef %code, i8* noundef %0, i16 noundef %lsb) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_mceerr(i32 noundef, i8* noundef, i16 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_force_sig_ptrace_errno_trap(i32 noundef %errno, i64 noundef %far, i8* noundef %str) local_unnamed_addr #1 {
entry:
  call fastcc void @arm64_show_signal(i32 noundef 5, i8* noundef %str) #17
  %0 = inttoptr i64 %far to i8*
  %call = call i32 @force_sig_ptrace_errno_trap(i32 noundef %errno, i8* noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_ptrace_errno_trap(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_notify_die(i8* noundef %str, %struct.pt_regs* noundef %regs, i32 noundef %signo, i32 noundef %sicode, i64 noundef %far, i32 noundef %err) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %3) #17
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %4 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %cmp3.not = icmp eq %struct.pt_regs* %4, %regs
  br i1 %cmp3.not, label %if.end, label %if.then10, !prof !11

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 294; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %fault_address = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 137, i32 6
  store i64 0, i64* %fault_address, align 8
  %conv19 = sext i32 %err to i64
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 137, i32 7
  store i64 %conv19, i64* %fault_code, align 16
  call void @arm64_force_sig_fault(i32 noundef %signo, i32 noundef %sicode, i64 noundef %far, i8* noundef %str) #17
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @die(i8* noundef %str, %struct.pt_regs* noundef %regs, i32 noundef %err) #17
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_skip_faulting_instruction(%struct.pt_regs* nocapture noundef %regs, i64 noundef %size) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  %add = add i64 %1, %size
  store i64 %add, i64* %0, align 8
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %3 = load i64, i64* %2, align 8
  %and = and i64 %3, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %5 = inttoptr i64 %4 to %struct.task_struct*
  call void @user_fastforward_single_step(%struct.task_struct* noundef %5) #18
  %.pre = load i64, i64* %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i64 [ %.pre, %if.then ], [ %3, %entry ]
  %and2 = and i64 %6, 31
  %cmp3 = icmp eq i64 %and2, 16
  br i1 %cmp3, label %if.end7, label %if.else

if.else:                                          ; preds = %if.end
  %and6 = and i64 %6, -3073
  store i64 %and6, i64* %2, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_fastforward_single_step(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_undef_hook(%struct.undef_hook* noundef %hook) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @undef_lock) #17
  %node = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook, i64 0, i32 0
  call fastcc void @list_add(%struct.list_head* noundef %node) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @undef_lock, i64 noundef %call) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #7 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @undef_hook, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_undef_hook(%struct.undef_hook* nocapture noundef %hook) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @undef_lock) #17
  %node = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @undef_lock, i64 noundef %call) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @force_signal_inject(i32 noundef %signal, i32 noundef %code, i64 noundef %address, i32 noundef %err) local_unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #17
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %2 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %pstate = getelementptr i8, i8* %call1, i64 16312
  %3 = bitcast i8* %pstate to i64*
  %4 = load i64, i64* %3, align 8
  %and = and i64 %4, 15
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end19, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 448; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !13
  br label %cleanup

if.end19:                                         ; preds = %entry
  %switch.selectcmp = icmp eq i32 %signal, 11
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)
  %switch.selectcmp64 = icmp eq i32 %signal, 4
  %switch.select65 = select i1 %switch.selectcmp64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %switch.select
  %cmp22.not = icmp eq i32 %signal, 9
  br i1 %cmp22.not, label %if.end40.thread, label %land.end

land.end:                                         ; preds = %if.end19
  %call24 = call i32 @siginfo_layout(i32 noundef %signal, i32 noundef %code) #18
  %cmp25.not = icmp eq i32 %call24, 3
  br i1 %cmp25.not, label %if.end40.thread, label %5, !prof !11

5:                                                ; preds = %land.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 465; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !14
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end19, %land.end, %5
  %6 = phi i32 [ 9, %5 ], [ %signal, %land.end ], [ 9, %if.end19 ]
  call void @arm64_notify_die(i8* noundef %switch.select65, %struct.pt_regs* noundef %2, i32 noundef %6, i32 noundef %code, i64 noundef %address, i32 noundef %err) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end40.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @siginfo_layout(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_notify_segfault(i64 noundef %addr) local_unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #17
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %shl.i = shl i64 %addr, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %addr
  %call4 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %3, i64 noundef %and) #18
  %cmp = icmp eq %struct.vm_area_struct* %call4, null
  %. = select i1 %cmp, i32 1, i32 2
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %4) #17
  call void @force_signal_inject(i32 noundef 11, i32 noundef %., i64 noundef %addr, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #1 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #1 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_undefinstr(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  %call = call i32 @aarch32_break_handler(%struct.pt_regs* noundef %regs) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @call_undef_hook(%struct.pt_regs* noundef %regs) #17
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp4.not = icmp eq i64 %and, 0
  br i1 %cmp4.not, label %do.end13, label %do.body9, !prof !11

do.body9:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 498; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !15
  unreachable

do.end13:                                         ; preds = %do.body
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %3 = load i64, i64* %2, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 1, i64 noundef %3, i32 noundef 0) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %do.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch32_break_handler(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @call_undef_hook(%struct.pt_regs* noundef %regs) unnamed_addr #1 {
entry:
  %instr_le = alloca i32, align 4
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #17
  %0 = inttoptr i64 %call to i8*
  %1 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %instr_le to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %instr_le, align 4, !annotation !16
  %call1 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %3, i8* noundef %0, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call1, 0
  %4 = load i32, i32* %instr_le, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  br i1 %tobool.not, label %do.body27, label %cleanup67

if.else:                                          ; preds = %entry
  %call4 = call fastcc i64 @__range_ok(i8* noundef %0) #17
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %cleanup67, label %if.end16

if.end16:                                         ; preds = %if.else
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #17
  %5 = bitcast i8* %call7 to i32*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %5, i32 -14, i32 0) #22, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %6, 0
  %asmresult11 = extractvalue { i32, i64 } %6, 1
  %conv = trunc i64 %asmresult11 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %do.body27, label %cleanup67

do.body27:                                        ; preds = %if.end16, %if.then
  %instr.2 = phi i32 [ %4, %if.then ], [ %conv, %if.end16 ]
  %call31 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef nonnull @undef_lock) #17
  %hook.0107 = load %struct.undef_hook*, %struct.undef_hook** bitcast (%struct.list_head* @undef_hook to %struct.undef_hook**), align 8
  %node108 = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0107, i64 0, i32 0
  %cmp38.not109 = icmp eq %struct.list_head* %node108, @undef_hook
  br i1 %cmp38.not109, label %exit.thread, label %for.body

exit.thread:                                      ; preds = %do.body27
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @undef_lock, i64 noundef %call31) #17
  br label %cleanup67

for.body:                                         ; preds = %do.body27, %for.inc
  %hook.0111 = phi %struct.undef_hook* [ %hook.0, %for.inc ], [ %hook.0107, %do.body27 ]
  %fn.0110 = phi i32 (%struct.pt_regs*, i32)* [ %fn.1, %for.inc ], [ null, %do.body27 ]
  %instr_mask = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0111, i64 0, i32 1
  %7 = load i32, i32* %instr_mask, align 8
  %and40 = and i32 %7, %instr.2
  %instr_val = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0111, i64 0, i32 2
  %8 = load i32, i32* %instr_val, align 4
  %cmp41 = icmp eq i32 %and40, %8
  br i1 %cmp41, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %9 = load i64, i64* %1, align 8
  %pstate_mask = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0111, i64 0, i32 3
  %10 = load i64, i64* %pstate_mask, align 8
  %and44 = and i64 %10, %9
  %pstate_val = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0111, i64 0, i32 4
  %11 = load i64, i64* %pstate_val, align 8
  %cmp45 = icmp eq i64 %and44, %11
  br i1 %cmp45, label %if.then47, label %for.inc

if.then47:                                        ; preds = %land.lhs.true
  %fn48 = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0111, i64 0, i32 5
  %12 = load i32 (%struct.pt_regs*, i32)*, i32 (%struct.pt_regs*, i32)** %fn48, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then47
  %fn.1 = phi i32 (%struct.pt_regs*, i32)* [ %12, %if.then47 ], [ %fn.0110, %land.lhs.true ], [ %fn.0110, %for.body ]
  %13 = bitcast %struct.undef_hook* %hook.0111 to %struct.undef_hook**
  %hook.0 = load %struct.undef_hook*, %struct.undef_hook** %13, align 8
  %node = getelementptr inbounds %struct.undef_hook, %struct.undef_hook* %hook.0, i64 0, i32 0
  %cmp38.not = icmp eq %struct.list_head* %node, @undef_hook
  br i1 %cmp38.not, label %exit, label %for.body

exit:                                             ; preds = %for.inc
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef nonnull @undef_lock, i64 noundef %call31) #17
  %tobool65.not = icmp eq i32 (%struct.pt_regs*, i32)* %fn.1, null
  br i1 %tobool65.not, label %cleanup67, label %cond.true

cond.true:                                        ; preds = %exit
  %call66 = call i32 %fn.1(%struct.pt_regs* noundef %regs, i32 noundef %instr.2) #18
  br label %cleanup67

cleanup67:                                        ; preds = %exit.thread, %if.else, %if.end16, %if.then, %cond.true, %exit
  %retval.0 = phi i32 [ %call66, %cond.true ], [ 1, %exit ], [ 1, %if.then ], [ 1, %if.end16 ], [ 1, %if.else ], [ 1, %exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_bti(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %do.end6, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 505; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !18
  unreachable

do.end6:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %3 = load i64, i64* %2, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 1, i64 noundef %3, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_ptrauth_fault(%struct.pt_regs* nocapture noundef readonly %regs, i32 noundef %esr) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %do.end6, label %do.body3, !prof !11

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/traps.c\22; .popsection; .long 14472b - 14470b; .short 516; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !19
  unreachable

do.end6:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %3 = load i64, i64* %2, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 2, i64 noundef %3, i32 noundef %esr) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_sysinstr(i32 noundef %esr, %struct.pt_regs* noundef %regs) local_unnamed_addr #1 {
entry:
  %and = and i32 %esr, 4193281
  %cmp = icmp eq i32 %and, 1235968
  br i1 %cmp, label %if.then, label %for.cond

for.cond:                                         ; preds = %entry
  %and.1 = and i32 %esr, 4193311
  switch i32 %and.1, label %for.cond.3 [
    i32 3325953, label %if.then
    i32 3471361, label %if.then.fold.split
    i32 3209217, label %if.then.fold.split12
  ]

for.cond.3:                                       ; preds = %for.cond
  %and.4 = and i32 %esr, 3275777
  %cmp.4 = icmp eq i32 %and.4, 3145729
  br i1 %cmp.4, label %if.then, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %and.5 = and i32 %esr, -67108863
  %cmp.5 = icmp eq i32 %and.5, 67108864
  br i1 %cmp.5, label %if.then, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  call void @do_undefinstr(%struct.pt_regs* noundef %regs) #17
  br label %cleanup

if.then.fold.split:                               ; preds = %for.cond
  br label %if.then

if.then.fold.split12:                             ; preds = %for.cond
  br label %if.then

if.then:                                          ; preds = %for.cond, %if.then.fold.split12, %if.then.fold.split, %for.cond.4, %for.cond.3, %entry
  %.lcssa = phi void (i32, %struct.pt_regs*)* [ @user_cache_maint_handler, %entry ], [ @ctr_read_handler, %for.cond ], [ @mrs_handler, %for.cond.3 ], [ @wfi_handler, %for.cond.4 ], [ @cntvct_read_handler, %if.then.fold.split ], [ @cntfrq_read_handler, %if.then.fold.split12 ]
  call void %.lcssa(i32 noundef %esr, %struct.pt_regs* noundef %regs) #18
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8* @esr_get_class_string(i32 noundef %esr) local_unnamed_addr #0 {
entry:
  %0 = lshr i32 %esr, 26
  %shr = zext i32 %0 to i64
  %arrayidx = getelementptr [64 x i8*], [64 x i8*]* @esr_class_str, i64 0, i64 %shr
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bad_el0_sync(%struct.pt_regs* nocapture noundef readonly %regs, i32 noundef %reason, i32 noundef %esr) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #17
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fault_address = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 6
  store i64 0, i64* %fault_address, align 8
  %conv = zext i32 %esr to i64
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 7
  store i64 %conv, i64* %fault_code, align 16
  call void @arm64_force_sig_fault(i32 noundef 4, i32 noundef 1, i64 noundef %call, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @arm64_serror_panic(%struct.pt_regs* noundef %regs, i32 noundef %esr) local_unnamed_addr #8 {
entry:
  call void @console_verbose() #18
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call5 = call i8* @esr_get_class_string(i32 noundef %esr) #17
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %1, i32 noundef %esr, i8* noundef %call5) #23
  %tobool.not = icmp eq %struct.pt_regs* %regs, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__show_regs(%struct.pt_regs* noundef nonnull %regs) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @nmi_panic(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)) #18
  call fastcc void @cpu_park_loop() #17
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #24, !srcloc !20
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nmi_panic(%struct.pt_regs* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_park_loop() unnamed_addr #8 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void asm sideeffect "wfe", "~{memory}"() #22, !srcloc !21
  call void asm sideeffect "wfi", "~{memory}"() #22, !srcloc !22
  br label %for.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @arm64_is_fatal_ras_serror(%struct.pt_regs* noundef %regs, i32 noundef %esr) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @arm64_ras_serror_get_severity(i32 noundef %esr) #17
  %0 = call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 22)
  %switch.tableidx = add i32 %0, -1
  %1 = icmp ult i32 %switch.tableidx, 6
  br i1 %1, label %switch.hole_check, label %sw.default

sw.default:                                       ; preds = %switch.hole_check, %entry
  call void @arm64_serror_panic(%struct.pt_regs* noundef %regs, i32 noundef %esr) #25
  unreachable

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %sw.default, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %switch.tableidx to i6
  %switch.downshift = lshr i6 5, %switch.cast
  %3 = and i6 %switch.downshift, 1
  %switch.masked = icmp ne i6 %3, 0
  ret i1 %switch.masked
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arm64_ras_serror_get_severity(i32 noundef %esr) unnamed_addr #1 {
entry:
  %0 = and i32 %esr, 7168
  %call = call fastcc i1 @arm64_is_ras_serror(i32 noundef %esr) #17
  %and2 = and i32 %esr, 63
  %cmp.not = icmp eq i32 %and2, 17
  %1 = and i1 %cmp.not, %call
  %retval.0 = select i1 %1, i32 %0, i32 0
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_serror(%struct.pt_regs* noundef %regs, i32 noundef %esr) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @arm64_is_ras_serror(i32 noundef %esr) #17
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i1 @arm64_is_fatal_ras_serror(%struct.pt_regs* noundef %regs, i32 noundef %esr) #17
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @arm64_serror_panic(%struct.pt_regs* noundef %regs, i32 noundef %esr) #25
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @arm64_is_ras_serror(i32 noundef %esr) unnamed_addr #1 {
entry:
  %0 = and i32 %esr, 16777216
  %tobool11.not = icmp eq i32 %0, 0
  br i1 %tobool11.not, label %if.end13, label %return

if.end13:                                         ; preds = %entry
  %call = call i1 @this_cpu_has_cap(i32 noundef 25) #18
  br label %return

return:                                           ; preds = %if.end13, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %call, %if.end13 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @is_valid_bugaddr(i64 noundef %addr) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @early_brk64(i64 noundef %addr, i32 noundef %esr, %struct.pt_regs* noundef %regs) local_unnamed_addr #11 section ".init.text" {
entry:
  %call = call i32 @bug_handler(%struct.pt_regs* noundef %regs, i32 noundef %esr) #17
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bug_handler(%struct.pt_regs* noundef %regs, i32 noundef %esr) #1 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  %call = call i32 @report_bug(i64 noundef %1, %struct.pt_regs* noundef %regs) #18
  switch i32 %call, label %return [
    i32 2, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  call void @die(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i64 0, i64 0), %struct.pt_regs* noundef %regs, i32 noundef 0) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  br label %return

return:                                           ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @trap_init() local_unnamed_addr #11 section ".init.text" {
entry:
  call void @register_kernel_break_hook(%struct.break_hook* noundef nonnull @bug_break_hook) #18
  call void @register_kernel_break_hook(%struct.break_hook* noundef nonnull @fault_break_hook) #18
  call void @debug_traps_init() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_kernel_break_hook(%struct.break_hook* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_traps_init() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #18
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #18
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #22, !srcloc !23
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #22, !srcloc !24
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !25

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #22, !srcloc !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #12 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #22, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_die(i32 noundef, i8* noundef, %struct.pt_regs* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dump_kernel_instr(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #1 {
entry:
  %str = alloca [53 x i8], align 1
  %val = alloca i32, align 4
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #17
  %0 = getelementptr inbounds [53 x i8], [53 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 53, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(53) %0, i8 0, i64 53, i1 false), !annotation !16
  %1 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = bitcast i32* %val to i8*
  %4 = inttoptr i64 %call to i32*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %val, align 4, !annotation !16
  %arrayidx = getelementptr i32, i32* %4, i64 -4
  %5 = bitcast i32* %arrayidx to i8*
  %call2 = call i32 @aarch64_insn_read(i8* noundef %5, i32* noundef nonnull %val) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.cond.preheader
  %p.07.lcssa = phi i8* [ %0, %for.cond.preheader ], [ %p.1, %for.inc ], [ %p.1.1, %for.inc.1 ], [ %p.1.2, %for.inc.2 ], [ %p.1.3, %for.inc.3 ]
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.07.lcssa, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  br label %do.end

for.inc:                                          ; preds = %for.cond.preheader
  %6 = load i32, i32* %val, align 4
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %6) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  %idx.ext7.pn = sext i32 %call5 to i64
  %p.1 = getelementptr [53 x i8], [53 x i8]* %str, i64 0, i64 %idx.ext7.pn
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %val, align 4, !annotation !16
  %arrayidx.1 = getelementptr i32, i32* %4, i64 -3
  %7 = bitcast i32* %arrayidx.1 to i8*
  %call2.1 = call i32 @aarch64_insn_read(i8* noundef %7, i32* noundef nonnull %val) #18
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %8 = load i32, i32* %val, align 4
  %call5.1 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %8) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  %idx.ext7.pn.1 = sext i32 %call5.1 to i64
  %p.1.1 = getelementptr i8, i8* %p.1, i64 %idx.ext7.pn.1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %val, align 4, !annotation !16
  %arrayidx.2 = getelementptr i32, i32* %4, i64 -2
  %9 = bitcast i32* %arrayidx.2 to i8*
  %call2.2 = call i32 @aarch64_insn_read(i8* noundef %9, i32* noundef nonnull %val) #18
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %10 = load i32, i32* %val, align 4
  %call5.2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.1.1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %10) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  %idx.ext7.pn.2 = sext i32 %call5.2 to i64
  %p.1.2 = getelementptr i8, i8* %p.1.1, i64 %idx.ext7.pn.2
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %val, align 4, !annotation !16
  %arrayidx.3 = getelementptr i32, i32* %4, i64 -1
  %11 = bitcast i32* %arrayidx.3 to i8*
  %call2.3 = call i32 @aarch64_insn_read(i8* noundef %11, i32* noundef nonnull %val) #18
  %tobool.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %12 = load i32, i32* %val, align 4
  %call5.3 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.1.2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 noundef %12) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  %idx.ext7.pn.3 = sext i32 %call5.3 to i64
  %p.1.3 = getelementptr i8, i8* %p.1.2, i64 %idx.ext7.pn.3
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #22
  store i32 0, i32* %val, align 4, !annotation !16
  %13 = inttoptr i64 %call to i8*
  %call2.4 = call i32 @aarch64_insn_read(i8* noundef %13, i32* noundef nonnull %val) #18
  %tobool.not.4 = icmp eq i32 %call2.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %14 = load i32, i32* %val, align 4
  %call5.4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p.1.3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %14) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #22
  br label %do.end

do.end:                                           ; preds = %for.inc.4, %cleanup
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %0) #23
  br label %cleanup13

cleanup13:                                        ; preds = %entry, %do.end
  call void @llvm.lifetime.end.p0i8(i64 53, i8* nonnull %0) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_insn_read(i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #22, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #22, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @unhandled_signal(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #6 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_vma_addr(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @undef_hook, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @undef_hook, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #22, !srcloc !30
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #22, !srcloc !31
  call void asm sideeffect "hint #20", "~{memory}"() #22, !srcloc !32
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @user_cache_maint_handler(i32 noundef %esr, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #1 {
entry:
  %and = lshr i32 %esr, 5
  %shr = and i32 %and, 31
  %0 = lshr i32 %esr, 1
  %1 = and i32 %0, 15
  %call = call fastcc i64 @pt_regs_read_reg(%struct.pt_regs* noundef %regs, i32 noundef %shr) #17
  %shl.i = shl i64 %call, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and7 = and i64 %shr.i, %call
  switch i32 %1, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.bb11
    i32 13, label %sw.bb19
    i32 12, label %sw.bb27
    i32 14, label %sw.bb35
    i32 5, label %sw.bb43
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp ugt i64 %and7, 549755813887
  br i1 %cmp, label %if.then51, label %if.else

if.else:                                          ; preds = %sw.bb
  %2 = call i32 asm sideeffect "1:\09dc civac, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !33
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %cmp12 = icmp ugt i64 %and7, 549755813887
  br i1 %cmp12, label %if.then51, label %if.else15

if.else15:                                        ; preds = %sw.bb11
  %3 = call i32 asm sideeffect "1:\09dc civac, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !34
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %cmp20 = icmp ugt i64 %and7, 549755813887
  br i1 %cmp20, label %if.then51, label %if.else23

if.else23:                                        ; preds = %sw.bb19
  %4 = call i32 asm sideeffect "1:\09sys 3, c7, c13, 1, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !35
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %cmp28 = icmp ugt i64 %and7, 549755813887
  br i1 %cmp28, label %if.then51, label %if.else31

if.else31:                                        ; preds = %sw.bb27
  %5 = call i32 asm sideeffect "1:\09sys 3, c7, c12, 1, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !36
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %cmp36 = icmp ugt i64 %and7, 549755813887
  br i1 %cmp36, label %if.then51, label %if.else39

if.else39:                                        ; preds = %sw.bb35
  %6 = call i32 asm sideeffect "1:\09dc civac, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !37
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %cmp44 = icmp ugt i64 %and7, 549755813887
  br i1 %cmp44, label %if.then51, label %if.else47

if.else47:                                        ; preds = %sw.bb43
  %7 = call i32 asm sideeffect "1:\09ic ivau, $1\0A\09mov\09${0:w}, #0\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, ${2:w}\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,i"(i64 %and7, i32 -14) #22, !srcloc !38
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 1, i64 noundef %9, i32 noundef 0) #17
  br label %cleanup

sw.epilog:                                        ; preds = %if.else47, %if.else39, %if.else31, %if.else23, %if.else15, %if.else
  %ret.0 = phi i32 [ %7, %if.else47 ], [ %6, %if.else39 ], [ %5, %if.else31 ], [ %4, %if.else23 ], [ %3, %if.else15 ], [ %2, %if.else ]
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %sw.bb43, %sw.bb35, %sw.bb27, %sw.bb19, %sw.bb11, %sw.bb, %sw.epilog
  call void @arm64_notify_segfault(i64 noundef %call) #17
  br label %cleanup

if.else52:                                        ; preds = %sw.epilog
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.else52, %sw.default
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @ctr_read_handler(i32 noundef %esr, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arm64_ftr_reg_user_value() #17
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #18
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 49, i32 0)) #18
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #18
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %and4 = and i64 %call, -536870928
  %or = or i64 %and4, 10
  %val.0 = select i1 %retval.0.i, i64 %or, i64 %call
  %0 = lshr i32 %esr, 5
  %1 = and i32 %0, 31
  call fastcc void @pt_regs_write_reg(%struct.pt_regs* noundef %regs, i32 noundef %1, i64 noundef %val.0) #17
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cntvct_read_handler(i32 noundef %esr, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #1 {
entry:
  %0 = lshr i32 %esr, 5
  %1 = and i32 %0, 31
  %2 = load i64 ()*, i64 ()** @arch_timer_read_counter, align 8
  %call = call i64 %2() #18
  call fastcc void @pt_regs_write_reg(%struct.pt_regs* noundef %regs, i32 noundef %1, i64 noundef %call) #17
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cntfrq_read_handler(i32 noundef %esr, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #1 {
entry:
  %0 = lshr i32 %esr, 5
  %1 = and i32 %0, 31
  %call = call i32 @arch_timer_get_rate() #18
  %conv2 = zext i32 %call to i64
  call fastcc void @pt_regs_write_reg(%struct.pt_regs* noundef %regs, i32 noundef %1, i64 noundef %conv2) #17
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mrs_handler(i32 noundef %esr, %struct.pt_regs* noundef %regs) unnamed_addr #1 {
entry:
  %and = lshr i32 %esr, 5
  %shr = and i32 %and, 31
  %0 = lshr i32 %esr, 1
  %shl = and i32 %0, 1572864
  %1 = shl i32 %esr, 2
  %shl8 = and i32 %1, 458752
  %or = or i32 %shl, %shl8
  %shl12 = and i32 %1, 61440
  %or13 = or i32 %or, %shl12
  %2 = shl i32 %esr, 7
  %shl17 = and i32 %2, 3840
  %or18 = or i32 %or13, %shl17
  %3 = lshr i32 %esr, 12
  %shl22 = and i32 %3, 224
  %or23 = or i32 %or18, %shl22
  %call = call i32 @do_emulate_mrs(%struct.pt_regs* noundef %regs, i32 noundef %or23, i32 noundef %shr) #18
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 1, i64 noundef %5, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wfi_handler(i32 noundef %esr, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #1 {
entry:
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pt_regs_read_reg(%struct.pt_regs* nocapture noundef readonly %regs, i32 noundef %r) unnamed_addr #6 {
entry:
  %cmp = icmp eq i32 %r, 31
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %idxprom = sext i32 %r to i64
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %0, %cond.false ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @arm64_ftr_reg_user_value() unnamed_addr #6 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 4), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 3), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 2), align 8
  %and = and i64 %2, %1
  %or = or i64 %and, %0
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pt_regs_write_reg(%struct.pt_regs* nocapture noundef writeonly %regs, i32 noundef %r, i64 noundef %val) unnamed_addr #14 {
entry:
  %cmp.not = icmp eq i32 %r, 31
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %r to i64
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %idxprom
  store i64 %val, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #12 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 562949953421312
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_timer_get_rate() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_emulate_mrs(%struct.pt_regs* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @this_cpu_has_cap(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_bug(i64 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @reserved_fault_handler(%struct.pt_regs* nocapture noundef readonly %regs, i32 noundef %esr) #1 {
entry:
  %call1 = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #17
  %0 = inttoptr i64 %call1 to i8*
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0), i8* noundef %0) #23
  ret i32 1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #21 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #22 = { nounwind }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }
attributes #24 = { nounwind readonly }
attributes #25 = { nobuiltin noreturn "no-builtins" }

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
!8 = !{i64 1046296}
!9 = !{i64 2149693400}
!10 = !{i64 2149719243}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154973314}
!13 = !{i64 2154995621}
!14 = !{i64 2154997301}
!15 = !{i64 2154999126}
!16 = !{!"auto-init"}
!17 = !{i64 2154986799, i64 2154986836, i64 2154986853, i64 2154986888, i64 2154986910, i64 2154986936, i64 2154986959, i64 2154986977, i64 2154987136, i64 2154987177, i64 2154987199, i64 2154987245}
!18 = !{i64 2155000682}
!19 = !{i64 2155002238}
!20 = !{i64 2149090525, i64 2149090572, i64 2149090578, i64 2149090615, i64 2149090633, i64 2149091560, i64 2149091608, i64 2149091656, i64 2149091719, i64 2149091768, i64 2149090711, i64 2149090736, i64 2149090762, i64 2149090768, i64 2149090805, i64 2149090811, i64 2149090861, i64 2149090907, i64 2149090940}
!21 = !{i64 2149304117}
!22 = !{i64 2149304152}
!23 = !{i64 2148947948, i64 2148947995, i64 2148948001, i64 2148948038, i64 2148948056, i64 2148949367, i64 2148949415, i64 2148949463, i64 2148949526, i64 2148949575, i64 2148948134, i64 2148948159, i64 2148948185, i64 2148948191, i64 2148949033, i64 2148949073, i64 2148949091, i64 2148949123, i64 2148949151, i64 2148949205, i64 2148949225, i64 2148949322, i64 2148948214, i64 2148948228, i64 2148948234, i64 2148948284, i64 2148948330, i64 2148948363}
!24 = !{i64 2148950127, i64 2148950174, i64 2148950180, i64 2148950217, i64 2148950235, i64 2148951178, i64 2148951226, i64 2148951274, i64 2148951337, i64 2148951386, i64 2148950313, i64 2148950338, i64 2148950364, i64 2148950370, i64 2148950407, i64 2148950413, i64 2148950463, i64 2148950509, i64 2148950542}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2148942245, i64 2148942292, i64 2148942298, i64 2148942335, i64 2148942353, i64 2148943694, i64 2148943742, i64 2148943790, i64 2148943853, i64 2148943902, i64 2148942431, i64 2148942456, i64 2148942482, i64 2148942488, i64 2148943360, i64 2148943400, i64 2148943418, i64 2148943450, i64 2148943478, i64 2148943532, i64 2148943552, i64 2148943649, i64 2148942511, i64 2148942525, i64 2148942531, i64 2148942581, i64 2148942627, i64 2148942660}
!27 = !{i64 2147956250, i64 2147956283, i64 2147956336, i64 2147956395, i64 2147956429, i64 2147956484, i64 2147956513, i64 2147956533}
!28 = !{i64 2149662530}
!29 = !{i64 2148953961, i64 2148954008, i64 2148954014, i64 2148954051, i64 2148954069, i64 2148955380, i64 2148955428, i64 2148955476, i64 2148955539, i64 2148955588, i64 2148954147, i64 2148954172, i64 2148954198, i64 2148954204, i64 2148955046, i64 2148955086, i64 2148955104, i64 2148955136, i64 2148955164, i64 2148955218, i64 2148955238, i64 2148955335, i64 2148954227, i64 2148954241, i64 2148954247, i64 2148954297, i64 2148954343, i64 2148954376}
!30 = !{i64 4630408, i64 4630491, i64 4630715, i64 4630935, i64 4630958}
!31 = !{i64 4635110, i64 4635134}
!32 = !{i64 2152149949}
!33 = !{i64 2155003257, i64 2155003285, i64 2155003308, i64 2155003324, i64 2155003361, i64 2155003382, i64 2155003408, i64 2155003425, i64 2155003723, i64 2155003764, i64 2155003786, i64 2155003832}
!34 = !{i64 2155003999, i64 2155004027, i64 2155004050, i64 2155004066, i64 2155004103, i64 2155004124, i64 2155004150, i64 2155004167, i64 2155004465, i64 2155004506, i64 2155004528, i64 2155004574}
!35 = !{i64 2155004741, i64 2155004769, i64 2155004792, i64 2155004808, i64 2155004845, i64 2155004866, i64 2155004892, i64 2155004909, i64 2155005216, i64 2155005257, i64 2155005279, i64 2155005325}
!36 = !{i64 2155005492, i64 2155005520, i64 2155005543, i64 2155005559, i64 2155005596, i64 2155005617, i64 2155005643, i64 2155005660, i64 2155005967, i64 2155006008, i64 2155006030, i64 2155006076}
!37 = !{i64 2155006243, i64 2155006271, i64 2155006294, i64 2155006310, i64 2155006347, i64 2155006368, i64 2155006394, i64 2155006411, i64 2155006709, i64 2155006750, i64 2155006772, i64 2155006818}
!38 = !{i64 2155006984, i64 2155007012, i64 2155007035, i64 2155007051, i64 2155007088, i64 2155007109, i64 2155007135, i64 2155007152, i64 2155007449, i64 2155007490, i64 2155007512, i64 2155007558}
