; ModuleID = 'arch/arm64/kernel/sys.c'
source_filename = "arch/arm64/kernel/sys.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
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

@sys_call_table = dso_local local_unnamed_addr constant [449 x i64 (%struct.pt_regs*)*] [i64 (%struct.pt_regs*)* @__arm64_sys_io_setup, i64 (%struct.pt_regs*)* @__arm64_sys_io_destroy, i64 (%struct.pt_regs*)* @__arm64_sys_io_submit, i64 (%struct.pt_regs*)* @__arm64_sys_io_cancel, i64 (%struct.pt_regs*)* @__arm64_sys_io_getevents, i64 (%struct.pt_regs*)* @__arm64_sys_setxattr, i64 (%struct.pt_regs*)* @__arm64_sys_lsetxattr, i64 (%struct.pt_regs*)* @__arm64_sys_fsetxattr, i64 (%struct.pt_regs*)* @__arm64_sys_getxattr, i64 (%struct.pt_regs*)* @__arm64_sys_lgetxattr, i64 (%struct.pt_regs*)* @__arm64_sys_fgetxattr, i64 (%struct.pt_regs*)* @__arm64_sys_listxattr, i64 (%struct.pt_regs*)* @__arm64_sys_llistxattr, i64 (%struct.pt_regs*)* @__arm64_sys_flistxattr, i64 (%struct.pt_regs*)* @__arm64_sys_removexattr, i64 (%struct.pt_regs*)* @__arm64_sys_lremovexattr, i64 (%struct.pt_regs*)* @__arm64_sys_fremovexattr, i64 (%struct.pt_regs*)* @__arm64_sys_getcwd, i64 (%struct.pt_regs*)* @__arm64_sys_lookup_dcookie, i64 (%struct.pt_regs*)* @__arm64_sys_eventfd2, i64 (%struct.pt_regs*)* @__arm64_sys_epoll_create1, i64 (%struct.pt_regs*)* @__arm64_sys_epoll_ctl, i64 (%struct.pt_regs*)* @__arm64_sys_epoll_pwait, i64 (%struct.pt_regs*)* @__arm64_sys_dup, i64 (%struct.pt_regs*)* @__arm64_sys_dup3, i64 (%struct.pt_regs*)* @__arm64_sys_fcntl, i64 (%struct.pt_regs*)* @__arm64_sys_inotify_init1, i64 (%struct.pt_regs*)* @__arm64_sys_inotify_add_watch, i64 (%struct.pt_regs*)* @__arm64_sys_inotify_rm_watch, i64 (%struct.pt_regs*)* @__arm64_sys_ioctl, i64 (%struct.pt_regs*)* @__arm64_sys_ioprio_set, i64 (%struct.pt_regs*)* @__arm64_sys_ioprio_get, i64 (%struct.pt_regs*)* @__arm64_sys_flock, i64 (%struct.pt_regs*)* @__arm64_sys_mknodat, i64 (%struct.pt_regs*)* @__arm64_sys_mkdirat, i64 (%struct.pt_regs*)* @__arm64_sys_unlinkat, i64 (%struct.pt_regs*)* @__arm64_sys_symlinkat, i64 (%struct.pt_regs*)* @__arm64_sys_linkat, i64 (%struct.pt_regs*)* @__arm64_sys_renameat, i64 (%struct.pt_regs*)* @__arm64_sys_umount, i64 (%struct.pt_regs*)* @__arm64_sys_mount, i64 (%struct.pt_regs*)* @__arm64_sys_pivot_root, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_statfs, i64 (%struct.pt_regs*)* @__arm64_sys_fstatfs, i64 (%struct.pt_regs*)* @__arm64_sys_truncate, i64 (%struct.pt_regs*)* @__arm64_sys_ftruncate, i64 (%struct.pt_regs*)* @__arm64_sys_fallocate, i64 (%struct.pt_regs*)* @__arm64_sys_faccessat, i64 (%struct.pt_regs*)* @__arm64_sys_chdir, i64 (%struct.pt_regs*)* @__arm64_sys_fchdir, i64 (%struct.pt_regs*)* @__arm64_sys_chroot, i64 (%struct.pt_regs*)* @__arm64_sys_fchmod, i64 (%struct.pt_regs*)* @__arm64_sys_fchmodat, i64 (%struct.pt_regs*)* @__arm64_sys_fchownat, i64 (%struct.pt_regs*)* @__arm64_sys_fchown, i64 (%struct.pt_regs*)* @__arm64_sys_openat, i64 (%struct.pt_regs*)* @__arm64_sys_close, i64 (%struct.pt_regs*)* @__arm64_sys_vhangup, i64 (%struct.pt_regs*)* @__arm64_sys_pipe2, i64 (%struct.pt_regs*)* @__arm64_sys_quotactl, i64 (%struct.pt_regs*)* @__arm64_sys_getdents64, i64 (%struct.pt_regs*)* @__arm64_sys_lseek, i64 (%struct.pt_regs*)* @__arm64_sys_read, i64 (%struct.pt_regs*)* @__arm64_sys_write, i64 (%struct.pt_regs*)* @__arm64_sys_readv, i64 (%struct.pt_regs*)* @__arm64_sys_writev, i64 (%struct.pt_regs*)* @__arm64_sys_pread64, i64 (%struct.pt_regs*)* @__arm64_sys_pwrite64, i64 (%struct.pt_regs*)* @__arm64_sys_preadv, i64 (%struct.pt_regs*)* @__arm64_sys_pwritev, i64 (%struct.pt_regs*)* @__arm64_sys_sendfile64, i64 (%struct.pt_regs*)* @__arm64_sys_pselect6, i64 (%struct.pt_regs*)* @__arm64_sys_ppoll, i64 (%struct.pt_regs*)* @__arm64_sys_signalfd4, i64 (%struct.pt_regs*)* @__arm64_sys_vmsplice, i64 (%struct.pt_regs*)* @__arm64_sys_splice, i64 (%struct.pt_regs*)* @__arm64_sys_tee, i64 (%struct.pt_regs*)* @__arm64_sys_readlinkat, i64 (%struct.pt_regs*)* @__arm64_sys_newfstatat, i64 (%struct.pt_regs*)* @__arm64_sys_newfstat, i64 (%struct.pt_regs*)* @__arm64_sys_sync, i64 (%struct.pt_regs*)* @__arm64_sys_fsync, i64 (%struct.pt_regs*)* @__arm64_sys_fdatasync, i64 (%struct.pt_regs*)* @__arm64_sys_sync_file_range, i64 (%struct.pt_regs*)* @__arm64_sys_timerfd_create, i64 (%struct.pt_regs*)* @__arm64_sys_timerfd_settime, i64 (%struct.pt_regs*)* @__arm64_sys_timerfd_gettime, i64 (%struct.pt_regs*)* @__arm64_sys_utimensat, i64 (%struct.pt_regs*)* @__arm64_sys_acct, i64 (%struct.pt_regs*)* @__arm64_sys_capget, i64 (%struct.pt_regs*)* @__arm64_sys_capset, i64 (%struct.pt_regs*)* @__arm64_sys_arm64_personality, i64 (%struct.pt_regs*)* @__arm64_sys_exit, i64 (%struct.pt_regs*)* @__arm64_sys_exit_group, i64 (%struct.pt_regs*)* @__arm64_sys_waitid, i64 (%struct.pt_regs*)* @__arm64_sys_set_tid_address, i64 (%struct.pt_regs*)* @__arm64_sys_unshare, i64 (%struct.pt_regs*)* @__arm64_sys_futex, i64 (%struct.pt_regs*)* @__arm64_sys_set_robust_list, i64 (%struct.pt_regs*)* @__arm64_sys_get_robust_list, i64 (%struct.pt_regs*)* @__arm64_sys_nanosleep, i64 (%struct.pt_regs*)* @__arm64_sys_getitimer, i64 (%struct.pt_regs*)* @__arm64_sys_setitimer, i64 (%struct.pt_regs*)* @__arm64_sys_kexec_load, i64 (%struct.pt_regs*)* @__arm64_sys_init_module, i64 (%struct.pt_regs*)* @__arm64_sys_delete_module, i64 (%struct.pt_regs*)* @__arm64_sys_timer_create, i64 (%struct.pt_regs*)* @__arm64_sys_timer_gettime, i64 (%struct.pt_regs*)* @__arm64_sys_timer_getoverrun, i64 (%struct.pt_regs*)* @__arm64_sys_timer_settime, i64 (%struct.pt_regs*)* @__arm64_sys_timer_delete, i64 (%struct.pt_regs*)* @__arm64_sys_clock_settime, i64 (%struct.pt_regs*)* @__arm64_sys_clock_gettime, i64 (%struct.pt_regs*)* @__arm64_sys_clock_getres, i64 (%struct.pt_regs*)* @__arm64_sys_clock_nanosleep, i64 (%struct.pt_regs*)* @__arm64_sys_syslog, i64 (%struct.pt_regs*)* @__arm64_sys_ptrace, i64 (%struct.pt_regs*)* @__arm64_sys_sched_setparam, i64 (%struct.pt_regs*)* @__arm64_sys_sched_setscheduler, i64 (%struct.pt_regs*)* @__arm64_sys_sched_getscheduler, i64 (%struct.pt_regs*)* @__arm64_sys_sched_getparam, i64 (%struct.pt_regs*)* @__arm64_sys_sched_setaffinity, i64 (%struct.pt_regs*)* @__arm64_sys_sched_getaffinity, i64 (%struct.pt_regs*)* @__arm64_sys_sched_yield, i64 (%struct.pt_regs*)* @__arm64_sys_sched_get_priority_max, i64 (%struct.pt_regs*)* @__arm64_sys_sched_get_priority_min, i64 (%struct.pt_regs*)* @__arm64_sys_sched_rr_get_interval, i64 (%struct.pt_regs*)* @__arm64_sys_restart_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_kill, i64 (%struct.pt_regs*)* @__arm64_sys_tkill, i64 (%struct.pt_regs*)* @__arm64_sys_tgkill, i64 (%struct.pt_regs*)* @__arm64_sys_sigaltstack, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigsuspend, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigaction, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigprocmask, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigpending, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigtimedwait, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigqueueinfo, i64 (%struct.pt_regs*)* @__arm64_sys_rt_sigreturn, i64 (%struct.pt_regs*)* @__arm64_sys_setpriority, i64 (%struct.pt_regs*)* @__arm64_sys_getpriority, i64 (%struct.pt_regs*)* @__arm64_sys_reboot, i64 (%struct.pt_regs*)* @__arm64_sys_setregid, i64 (%struct.pt_regs*)* @__arm64_sys_setgid, i64 (%struct.pt_regs*)* @__arm64_sys_setreuid, i64 (%struct.pt_regs*)* @__arm64_sys_setuid, i64 (%struct.pt_regs*)* @__arm64_sys_setresuid, i64 (%struct.pt_regs*)* @__arm64_sys_getresuid, i64 (%struct.pt_regs*)* @__arm64_sys_setresgid, i64 (%struct.pt_regs*)* @__arm64_sys_getresgid, i64 (%struct.pt_regs*)* @__arm64_sys_setfsuid, i64 (%struct.pt_regs*)* @__arm64_sys_setfsgid, i64 (%struct.pt_regs*)* @__arm64_sys_times, i64 (%struct.pt_regs*)* @__arm64_sys_setpgid, i64 (%struct.pt_regs*)* @__arm64_sys_getpgid, i64 (%struct.pt_regs*)* @__arm64_sys_getsid, i64 (%struct.pt_regs*)* @__arm64_sys_setsid, i64 (%struct.pt_regs*)* @__arm64_sys_getgroups, i64 (%struct.pt_regs*)* @__arm64_sys_setgroups, i64 (%struct.pt_regs*)* @__arm64_sys_newuname, i64 (%struct.pt_regs*)* @__arm64_sys_sethostname, i64 (%struct.pt_regs*)* @__arm64_sys_setdomainname, i64 (%struct.pt_regs*)* @__arm64_sys_getrlimit, i64 (%struct.pt_regs*)* @__arm64_sys_setrlimit, i64 (%struct.pt_regs*)* @__arm64_sys_getrusage, i64 (%struct.pt_regs*)* @__arm64_sys_umask, i64 (%struct.pt_regs*)* @__arm64_sys_prctl, i64 (%struct.pt_regs*)* @__arm64_sys_getcpu, i64 (%struct.pt_regs*)* @__arm64_sys_gettimeofday, i64 (%struct.pt_regs*)* @__arm64_sys_settimeofday, i64 (%struct.pt_regs*)* @__arm64_sys_adjtimex, i64 (%struct.pt_regs*)* @__arm64_sys_getpid, i64 (%struct.pt_regs*)* @__arm64_sys_getppid, i64 (%struct.pt_regs*)* @__arm64_sys_getuid, i64 (%struct.pt_regs*)* @__arm64_sys_geteuid, i64 (%struct.pt_regs*)* @__arm64_sys_getgid, i64 (%struct.pt_regs*)* @__arm64_sys_getegid, i64 (%struct.pt_regs*)* @__arm64_sys_gettid, i64 (%struct.pt_regs*)* @__arm64_sys_sysinfo, i64 (%struct.pt_regs*)* @__arm64_sys_mq_open, i64 (%struct.pt_regs*)* @__arm64_sys_mq_unlink, i64 (%struct.pt_regs*)* @__arm64_sys_mq_timedsend, i64 (%struct.pt_regs*)* @__arm64_sys_mq_timedreceive, i64 (%struct.pt_regs*)* @__arm64_sys_mq_notify, i64 (%struct.pt_regs*)* @__arm64_sys_mq_getsetattr, i64 (%struct.pt_regs*)* @__arm64_sys_msgget, i64 (%struct.pt_regs*)* @__arm64_sys_msgctl, i64 (%struct.pt_regs*)* @__arm64_sys_msgrcv, i64 (%struct.pt_regs*)* @__arm64_sys_msgsnd, i64 (%struct.pt_regs*)* @__arm64_sys_semget, i64 (%struct.pt_regs*)* @__arm64_sys_semctl, i64 (%struct.pt_regs*)* @__arm64_sys_semtimedop, i64 (%struct.pt_regs*)* @__arm64_sys_semop, i64 (%struct.pt_regs*)* @__arm64_sys_shmget, i64 (%struct.pt_regs*)* @__arm64_sys_shmctl, i64 (%struct.pt_regs*)* @__arm64_sys_shmat, i64 (%struct.pt_regs*)* @__arm64_sys_shmdt, i64 (%struct.pt_regs*)* @__arm64_sys_socket, i64 (%struct.pt_regs*)* @__arm64_sys_socketpair, i64 (%struct.pt_regs*)* @__arm64_sys_bind, i64 (%struct.pt_regs*)* @__arm64_sys_listen, i64 (%struct.pt_regs*)* @__arm64_sys_accept, i64 (%struct.pt_regs*)* @__arm64_sys_connect, i64 (%struct.pt_regs*)* @__arm64_sys_getsockname, i64 (%struct.pt_regs*)* @__arm64_sys_getpeername, i64 (%struct.pt_regs*)* @__arm64_sys_sendto, i64 (%struct.pt_regs*)* @__arm64_sys_recvfrom, i64 (%struct.pt_regs*)* @__arm64_sys_setsockopt, i64 (%struct.pt_regs*)* @__arm64_sys_getsockopt, i64 (%struct.pt_regs*)* @__arm64_sys_shutdown, i64 (%struct.pt_regs*)* @__arm64_sys_sendmsg, i64 (%struct.pt_regs*)* @__arm64_sys_recvmsg, i64 (%struct.pt_regs*)* @__arm64_sys_readahead, i64 (%struct.pt_regs*)* @__arm64_sys_brk, i64 (%struct.pt_regs*)* @__arm64_sys_munmap, i64 (%struct.pt_regs*)* @__arm64_sys_mremap, i64 (%struct.pt_regs*)* @__arm64_sys_add_key, i64 (%struct.pt_regs*)* @__arm64_sys_request_key, i64 (%struct.pt_regs*)* @__arm64_sys_keyctl, i64 (%struct.pt_regs*)* @__arm64_sys_clone, i64 (%struct.pt_regs*)* @__arm64_sys_execve, i64 (%struct.pt_regs*)* @__arm64_sys_mmap, i64 (%struct.pt_regs*)* @__arm64_sys_fadvise64_64, i64 (%struct.pt_regs*)* @__arm64_sys_swapon, i64 (%struct.pt_regs*)* @__arm64_sys_swapoff, i64 (%struct.pt_regs*)* @__arm64_sys_mprotect, i64 (%struct.pt_regs*)* @__arm64_sys_msync, i64 (%struct.pt_regs*)* @__arm64_sys_mlock, i64 (%struct.pt_regs*)* @__arm64_sys_munlock, i64 (%struct.pt_regs*)* @__arm64_sys_mlockall, i64 (%struct.pt_regs*)* @__arm64_sys_munlockall, i64 (%struct.pt_regs*)* @__arm64_sys_mincore, i64 (%struct.pt_regs*)* @__arm64_sys_madvise, i64 (%struct.pt_regs*)* @__arm64_sys_remap_file_pages, i64 (%struct.pt_regs*)* @__arm64_sys_mbind, i64 (%struct.pt_regs*)* @__arm64_sys_get_mempolicy, i64 (%struct.pt_regs*)* @__arm64_sys_set_mempolicy, i64 (%struct.pt_regs*)* @__arm64_sys_migrate_pages, i64 (%struct.pt_regs*)* @__arm64_sys_move_pages, i64 (%struct.pt_regs*)* @__arm64_sys_rt_tgsigqueueinfo, i64 (%struct.pt_regs*)* @__arm64_sys_perf_event_open, i64 (%struct.pt_regs*)* @__arm64_sys_accept4, i64 (%struct.pt_regs*)* @__arm64_sys_recvmmsg, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_wait4, i64 (%struct.pt_regs*)* @__arm64_sys_prlimit64, i64 (%struct.pt_regs*)* @__arm64_sys_fanotify_init, i64 (%struct.pt_regs*)* @__arm64_sys_fanotify_mark, i64 (%struct.pt_regs*)* @__arm64_sys_name_to_handle_at, i64 (%struct.pt_regs*)* @__arm64_sys_open_by_handle_at, i64 (%struct.pt_regs*)* @__arm64_sys_clock_adjtime, i64 (%struct.pt_regs*)* @__arm64_sys_syncfs, i64 (%struct.pt_regs*)* @__arm64_sys_setns, i64 (%struct.pt_regs*)* @__arm64_sys_sendmmsg, i64 (%struct.pt_regs*)* @__arm64_sys_process_vm_readv, i64 (%struct.pt_regs*)* @__arm64_sys_process_vm_writev, i64 (%struct.pt_regs*)* @__arm64_sys_kcmp, i64 (%struct.pt_regs*)* @__arm64_sys_finit_module, i64 (%struct.pt_regs*)* @__arm64_sys_sched_setattr, i64 (%struct.pt_regs*)* @__arm64_sys_sched_getattr, i64 (%struct.pt_regs*)* @__arm64_sys_renameat2, i64 (%struct.pt_regs*)* @__arm64_sys_seccomp, i64 (%struct.pt_regs*)* @__arm64_sys_getrandom, i64 (%struct.pt_regs*)* @__arm64_sys_memfd_create, i64 (%struct.pt_regs*)* @__arm64_sys_bpf, i64 (%struct.pt_regs*)* @__arm64_sys_execveat, i64 (%struct.pt_regs*)* @__arm64_sys_userfaultfd, i64 (%struct.pt_regs*)* @__arm64_sys_membarrier, i64 (%struct.pt_regs*)* @__arm64_sys_mlock2, i64 (%struct.pt_regs*)* @__arm64_sys_copy_file_range, i64 (%struct.pt_regs*)* @__arm64_sys_preadv2, i64 (%struct.pt_regs*)* @__arm64_sys_pwritev2, i64 (%struct.pt_regs*)* @__arm64_sys_pkey_mprotect, i64 (%struct.pt_regs*)* @__arm64_sys_pkey_alloc, i64 (%struct.pt_regs*)* @__arm64_sys_pkey_free, i64 (%struct.pt_regs*)* @__arm64_sys_statx, i64 (%struct.pt_regs*)* @__arm64_sys_io_pgetevents, i64 (%struct.pt_regs*)* @__arm64_sys_rseq, i64 (%struct.pt_regs*)* @__arm64_sys_kexec_file_load, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_ni_syscall, i64 (%struct.pt_regs*)* @__arm64_sys_pidfd_send_signal, i64 (%struct.pt_regs*)* @__arm64_sys_io_uring_setup, i64 (%struct.pt_regs*)* @__arm64_sys_io_uring_enter, i64 (%struct.pt_regs*)* @__arm64_sys_io_uring_register, i64 (%struct.pt_regs*)* @__arm64_sys_open_tree, i64 (%struct.pt_regs*)* @__arm64_sys_move_mount, i64 (%struct.pt_regs*)* @__arm64_sys_fsopen, i64 (%struct.pt_regs*)* @__arm64_sys_fsconfig, i64 (%struct.pt_regs*)* @__arm64_sys_fsmount, i64 (%struct.pt_regs*)* @__arm64_sys_fspick, i64 (%struct.pt_regs*)* @__arm64_sys_pidfd_open, i64 (%struct.pt_regs*)* @__arm64_sys_clone3, i64 (%struct.pt_regs*)* @__arm64_sys_close_range, i64 (%struct.pt_regs*)* @__arm64_sys_openat2, i64 (%struct.pt_regs*)* @__arm64_sys_pidfd_getfd, i64 (%struct.pt_regs*)* @__arm64_sys_faccessat2, i64 (%struct.pt_regs*)* @__arm64_sys_process_madvise, i64 (%struct.pt_regs*)* @__arm64_sys_epoll_pwait2, i64 (%struct.pt_regs*)* @__arm64_sys_mount_setattr, i64 (%struct.pt_regs*)* @__arm64_sys_quotactl_fd, i64 (%struct.pt_regs*)* @__arm64_sys_landlock_create_ruleset, i64 (%struct.pt_regs*)* @__arm64_sys_landlock_add_rule, i64 (%struct.pt_regs*)* @__arm64_sys_landlock_restrict_self, i64 (%struct.pt_regs*)* @__arm64_sys_memfd_secret, i64 (%struct.pt_regs*)* @__arm64_sys_process_mrelease], align 8
@arm64_mismatched_32bit_el0 = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mmap(%struct.pt_regs* nocapture noundef readonly %regs) #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_mmap(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mmap(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %off) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_mmap(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %off) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_arm64_personality(%struct.pt_regs* nocapture noundef readonly %regs) #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_arm64_personality(i64 noundef %0) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_arm64_personality(i64 noundef %personality) unnamed_addr #0 {
entry:
  %conv = trunc i64 %personality to i32
  %call = call fastcc i64 @__do_sys_arm64_personality(i32 noundef %conv) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ni_syscall(%struct.pt_regs* nocapture readnone %__unused) #0 {
entry:
  %call = call i64 @sys_ni_syscall() #5
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sys_ni_syscall() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_setup(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_destroy(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_submit(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_cancel(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_getevents(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_lsetxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fsetxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_lgetxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fgetxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_listxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_llistxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_flistxattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_removexattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_lremovexattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fremovexattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getcwd(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_lookup_dcookie(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_eventfd2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_epoll_create1(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_epoll_ctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_epoll_pwait(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_dup(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_dup3(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fcntl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_inotify_init1(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_inotify_add_watch(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_inotify_rm_watch(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ioctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ioprio_set(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ioprio_get(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_flock(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mknodat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mkdirat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_unlinkat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_symlinkat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_linkat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_renameat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_umount(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mount(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pivot_root(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_statfs(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fstatfs(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_truncate(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ftruncate(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fallocate(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_faccessat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_chdir(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fchdir(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_chroot(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fchmod(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fchmodat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fchownat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fchown(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_openat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_close(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_vhangup(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pipe2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_quotactl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getdents64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_lseek(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_read(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_write(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_readv(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_writev(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pread64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pwrite64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_preadv(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pwritev(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sendfile64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pselect6(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ppoll(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_signalfd4(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_vmsplice(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_splice(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_tee(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_readlinkat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_newfstatat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_newfstat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sync(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fsync(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fdatasync(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sync_file_range(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timerfd_create(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timerfd_settime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timerfd_gettime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_utimensat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_acct(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_capget(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_capset(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_exit(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_exit_group(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_waitid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_set_tid_address(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_unshare(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_futex(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_set_robust_list(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_get_robust_list(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_nanosleep(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getitimer(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setitimer(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_kexec_load(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_init_module(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_delete_module(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timer_create(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timer_gettime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timer_getoverrun(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timer_settime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_timer_delete(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clock_settime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clock_gettime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clock_getres(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clock_nanosleep(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_syslog(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_ptrace(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_setparam(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_setscheduler(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_getscheduler(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_getparam(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_setaffinity(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_getaffinity(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_yield(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_get_priority_max(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_get_priority_min(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_rr_get_interval(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_restart_syscall(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_kill(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_tkill(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_tgkill(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sigaltstack(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigsuspend(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigaction(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigprocmask(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigpending(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigtimedwait(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigqueueinfo(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_sigreturn(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setpriority(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getpriority(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_reboot(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setregid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setreuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setresuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getresuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setresgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getresgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setfsuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setfsgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_times(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setpgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getpgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getsid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setsid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getgroups(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setgroups(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_newuname(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sethostname(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setdomainname(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getrlimit(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setrlimit(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getrusage(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_umask(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_prctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getcpu(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_gettimeofday(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_settimeofday(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_adjtimex(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getpid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getppid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_geteuid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getgid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getegid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_gettid(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sysinfo(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_open(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_unlink(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_timedsend(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_timedreceive(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_notify(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mq_getsetattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_msgget(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_msgctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_msgrcv(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_msgsnd(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_semget(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_semctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_semtimedop(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_semop(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_shmget(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_shmctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_shmat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_shmdt(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_socket(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_socketpair(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_bind(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_listen(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_accept(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_connect(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getsockname(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getpeername(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sendto(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_recvfrom(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setsockopt(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getsockopt(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_shutdown(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sendmsg(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_recvmsg(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_readahead(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_brk(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_munmap(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mremap(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_add_key(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_request_key(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_keyctl(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clone(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_execve(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fadvise64_64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_swapon(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_swapoff(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mprotect(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_msync(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mlock(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_munlock(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mlockall(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_munlockall(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mincore(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_madvise(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_remap_file_pages(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mbind(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_get_mempolicy(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_set_mempolicy(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_migrate_pages(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_move_pages(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rt_tgsigqueueinfo(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_perf_event_open(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_accept4(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_recvmmsg(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_wait4(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_prlimit64(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fanotify_init(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fanotify_mark(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_name_to_handle_at(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_open_by_handle_at(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clock_adjtime(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_syncfs(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_setns(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sendmmsg(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_process_vm_readv(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_process_vm_writev(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_kcmp(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_finit_module(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_setattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_sched_getattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_renameat2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_seccomp(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_getrandom(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_memfd_create(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_bpf(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_execveat(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_userfaultfd(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_membarrier(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mlock2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_copy_file_range(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_preadv2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pwritev2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pkey_mprotect(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pkey_alloc(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pkey_free(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_statx(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_pgetevents(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_rseq(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_kexec_file_load(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pidfd_send_signal(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_uring_setup(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_uring_enter(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_io_uring_register(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_open_tree(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_move_mount(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fsopen(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fsconfig(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fsmount(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_fspick(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pidfd_open(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_clone3(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_close_range(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_openat2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_pidfd_getfd(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_faccessat2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_process_madvise(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_epoll_pwait2(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_mount_setattr(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_quotactl_fd(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_landlock_create_ruleset(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_landlock_add_rule(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_landlock_restrict_self(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_memfd_secret(%struct.pt_regs* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arm64_sys_process_mrelease(%struct.pt_regs* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mmap(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %off) unnamed_addr #0 {
entry:
  %and = and i64 %off, 4095
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %shr = lshr i64 %off, 12
  %call = call i64 @ksys_mmap_pgoff(i64 noundef %addr, i64 noundef %len, i64 noundef %prot, i64 noundef %flags, i64 noundef %fd, i64 noundef %shr) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ksys_mmap_pgoff(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_arm64_personality(i32 noundef %personality) unnamed_addr #0 {
entry:
  %and = and i32 %personality, 255
  %cmp = icmp eq i32 %and, 8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @system_supports_32bit_el0() #4
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = call fastcc i32 @ksys_personality(i32 noundef %personality) #4
  %conv = zext i32 %call1 to i64
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @system_supports_32bit_el0() unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #5
  %call1 = call fastcc i32 @static_key_count() #4
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs, !prof !7

lor.rhs:                                          ; preds = %entry
  %call5 = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %call) #4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call5, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ksys_personality(i32 noundef %personality) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %personality1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %2 = load i32, i32* %personality1, align 16
  %cmp.not = icmp eq i32 %personality, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 %personality, i32* %personality1, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @read_sanitised_ftr_reg(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %pfr0) unnamed_addr #3 {
entry:
  %conv.i.i2 = and i64 %pfr0, 15
  %cmp = icmp eq i64 %conv.i.i2, 2
  ret i1 %cmp
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 1344433}
