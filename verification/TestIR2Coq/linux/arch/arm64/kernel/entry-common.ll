; ModuleID = 'arch/arm64/kernel/entry-common.c'
source_filename = "arch/arm64/kernel/entry-common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.nmi_ctx = type { i64, i32 }
%struct.bp_hardening_data = type { i32, void ()* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.7, %union.anon.43, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.19, %struct.list_head, %struct.list_head, %union.anon.20 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
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
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.21 }
%union.anon.21 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
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
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.27 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.43 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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

@.str = private unnamed_addr constant [17 x i8] c"64-bit el1t sync\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"64-bit el1t irq\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"64-bit el1t fiq\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"64-bit el1t error\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"64-bit el1h sync\00", align 1
@handle_arch_irq = external dso_local local_unnamed_addr global void (%struct.pt_regs*)*, align 8
@handle_arch_fiq = external dso_local local_unnamed_addr global void (%struct.pt_regs*)*, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"32-bit el0t sync\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"32-bit el0t irq\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"32-bit el0t fiq\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"32-bit el0t error\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"\012Unhandled %s exception on CPU%d, ESR 0x%08x -- %s\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Unhandled exception\00", align 1
@nmi_contexts = external dso_local global %struct.nmi_ctx, section ".data..percpu", align 8
@bp_hardening_data = external dso_local global %struct.bp_hardening_data, section ".data..percpu..read_mostly", align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @asm_exit_to_user_mode(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el1t_64_sync_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !10
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define internal fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef %vector, i32 noundef %esr) unnamed_addr #1 section ".noinstr.text" {
entry:
  call fastcc void @arm64_enter_nmi(%struct.pt_regs* noundef %regs) #14
  call void @console_verbose() #11
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call5 = call i8* @esr_get_class_string(i32 noundef %esr) #11
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* noundef %vector, i32 noundef %1, i32 noundef %esr, i8* noundef %call5) #15
  call void @__show_regs(%struct.pt_regs* noundef %regs) #11
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #16
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el1t_64_irq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !11
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el1t_64_fiq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !12
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el1t_64_error_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !13
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el1h_64_sync_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !14
  %and = lshr i64 %0, 26
  %shr = and i64 %and, 63
  switch i64 %shr, label %sw.default [
    i64 37, label %sw.bb
    i64 33, label %sw.bb
    i64 34, label %sw.bb1
    i64 24, label %sw.bb2
    i64 0, label %sw.bb2
    i64 49, label %sw.bb3
    i64 51, label %sw.bb3
    i64 53, label %sw.bb3
    i64 60, label %sw.bb3
    i64 28, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry
  call fastcc void @el1_abort(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call fastcc void @el1_pc(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  call fastcc void @el1_undef(%struct.pt_regs* noundef %regs) #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry
  call fastcc void @el1_dbg(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call fastcc void @el1_fpac(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #14
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_abort(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !15
  call fastcc void @enter_from_kernel_mode(%struct.pt_regs* noundef %regs) #14
  call fastcc void @local_daif_inherit(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %esr to i32
  call void @do_mem_abort(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #14
  call fastcc void @exit_to_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_pc(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !16
  call fastcc void @enter_from_kernel_mode(%struct.pt_regs* noundef %regs) #14
  call fastcc void @local_daif_inherit(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %esr to i32
  call void @do_sp_pc_abort(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #14
  call fastcc void @exit_to_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_undef(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @enter_from_kernel_mode(%struct.pt_regs* noundef %regs) #14
  call fastcc void @local_daif_inherit(%struct.pt_regs* noundef %regs) #14
  call void @do_undefinstr(%struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #14
  call fastcc void @exit_to_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_dbg(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !17
  call fastcc void @arm64_enter_el1_dbg(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %esr to i32
  call void @do_debug_exception(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @arm64_exit_el1_dbg(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_fpac(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @enter_from_kernel_mode(%struct.pt_regs* noundef %regs) #14
  call fastcc void @local_daif_inherit(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %esr to i32
  call void @do_ptrauth_fault(%struct.pt_regs* noundef %regs, i32 noundef %conv) #11
  call fastcc void @local_daif_mask() #14
  call fastcc void @exit_to_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el1h_64_irq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_irq, align 8
  call fastcc void @el1_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %0) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el1_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) unnamed_addr #0 section ".noinstr.text" {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 192) #13, !srcloc !18
  call fastcc void @enter_el1_irq_or_nmi(%struct.pt_regs* noundef %regs) #14
  call fastcc void @do_interrupt_handler(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) #14
  call fastcc void @exit_el1_irq_or_nmi(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el1h_64_fiq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_fiq, align 8
  call fastcc void @el1_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %0) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el1h_64_error_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !19
  call fastcc void @local_daif_restore(i64 noundef 448) #14
  call fastcc void @arm64_enter_nmi(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %0 to i32
  call void @do_serror(%struct.pt_regs* noundef %regs, i32 noundef %conv) #11
  call fastcc void @arm64_exit_nmi(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_restore(i64 noundef %flags) unnamed_addr #2 {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 %flags) #13, !srcloc !20
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @arm64_enter_nmi(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %lockdep_hardirqs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 7
  store i64 0, i64* %lockdep_hardirqs, align 8
  %call = call fastcc i1 @is_kernel_in_hyp_mode() #14
  br i1 %call, label %do.body2, label %cleanup

do.body2:                                         ; preds = %entry
  %call4 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call4, ptrtoint (%struct.nmi_ctx* @nmi_contexts to i64)
  %0 = inttoptr i64 %add to %struct.nmi_ctx*
  %cnt = getelementptr inbounds %struct.nmi_ctx, %struct.nmi_ctx* %0, i64 0, i32 1
  %1 = load i32, i32* %cnt, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.body2
  %inc = add i32 %1, 1
  store i32 %inc, i32* %cnt, align 8
  br label %cleanup

if.end7:                                          ; preds = %do.body2
  %2 = call i64 asm sideeffect "mrs $0, hcr_el2", "=r"() #13, !srcloc !21
  %and = and i64 %2, 134217728
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %do.body11, label %if.end15

do.body11:                                        ; preds = %if.end7
  %or = or i64 %2, 134217728
  call void asm sideeffect "msr hcr_el2, ${0:x}", "rZ"(i64 %or) #13, !srcloc !22
  call void asm sideeffect "isb", "~{memory}"() #13, !srcloc !23
  br label %if.end15

if.end15:                                         ; preds = %do.body11, %if.end7
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  store i32 1, i32* %cnt, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %hcr = getelementptr inbounds %struct.nmi_ctx, %struct.nmi_ctx* %0, i64 0, i32 0
  store i64 %2, i64* %hcr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %if.then5
  %call21 = call fastcc i32 @preempt_count() #14
  %3 = and i32 %call21, 15728640
  %cmp = icmp eq i32 %3, 15728640
  br i1 %cmp, label %do.body28, label %do.end36, !prof !26

do.body28:                                        ; preds = %cleanup
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/entry-common.c\22; .popsection; .long 14472b - 14470b; .short 157; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !27
  unreachable

do.end36:                                         ; preds = %cleanup
  call fastcc void @__preempt_count_add() #14
  call void @rcu_nmi_enter() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_serror(%struct.pt_regs* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @arm64_exit_nmi(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call void @rcu_nmi_exit() #11
  %call = call fastcc i32 @preempt_count() #14
  %0 = and i32 %call, 15728640
  %tobool39.not = icmp eq i32 %0, 0
  br i1 %tobool39.not, label %do.body45, label %do.end53, !prof !26

do.body45:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/entry-common.c\22; .popsection; .long 14472b - 14470b; .short 185; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !28
  unreachable

do.end53:                                         ; preds = %entry
  call fastcc void @__preempt_count_sub() #14
  %call55 = call fastcc i1 @is_kernel_in_hyp_mode() #14
  br i1 %call55, label %do.body58, label %cleanup

do.body58:                                        ; preds = %do.end53
  %call62 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add63 = add i64 %call62, ptrtoint (%struct.nmi_ctx* @nmi_contexts to i64)
  %1 = inttoptr i64 %add63 to %struct.nmi_ctx*
  %hcr = getelementptr inbounds %struct.nmi_ctx, %struct.nmi_ctx* %1, i64 0, i32 0
  %2 = load i64, i64* %hcr, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %cnt = getelementptr inbounds %struct.nmi_ctx, %struct.nmi_ctx* %1, i64 0, i32 1
  %3 = load i32, i32* %cnt, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %cnt, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %4 = load i32, i32* %cnt, align 8
  %tobool65.not = icmp eq i32 %4, 0
  %and66 = and i64 %2, 134217728
  %tobool67.not = icmp eq i64 %and66, 0
  %or.cond = select i1 %tobool65.not, i1 %tobool67.not, i1 false
  br i1 %or.cond, label %do.body69, label %cleanup

do.body69:                                        ; preds = %do.body58
  call void asm sideeffect "msr hcr_el2, ${0:x}", "rZ"(i64 %2) #13, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %do.body58, %do.body69, %do.end53
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el0t_64_sync_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !32
  %and = lshr i64 %0, 26
  %shr = and i64 %and, 63
  switch i64 %shr, label %sw.default [
    i64 21, label %sw.bb
    i64 36, label %sw.bb1
    i64 32, label %sw.bb2
    i64 7, label %sw.bb3
    i64 25, label %sw.bb4
    i64 44, label %sw.bb5
    i64 24, label %sw.bb6
    i64 1, label %sw.bb6
    i64 38, label %sw.bb7
    i64 34, label %sw.bb8
    i64 0, label %sw.bb9
    i64 13, label %sw.bb10
    i64 48, label %sw.bb11
    i64 50, label %sw.bb11
    i64 52, label %sw.bb11
    i64 60, label %sw.bb11
    i64 28, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @el0_svc(%struct.pt_regs* noundef %regs) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call fastcc void @el0_da(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call fastcc void @el0_ia(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call fastcc void @el0_fpsimd_acc(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call fastcc void @el0_sve_acc(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call fastcc void @el0_fpsimd_exc(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry
  call fastcc void @el0_sys(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call fastcc void @el0_sp(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call fastcc void @el0_pc(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call fastcc void @el0_undef(%struct.pt_regs* noundef %regs) #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call fastcc void @el0_bti(%struct.pt_regs* noundef %regs) #14
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry, %entry, %entry, %entry
  call fastcc void @el0_dbg(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call fastcc void @el0_fpac(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call fastcc void @el0_inv(%struct.pt_regs* noundef %regs, i64 noundef %0) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_svc(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call void @do_el0_svc(%struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_da(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !33
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_mem_abort(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %3, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %3) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_ia(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !34
  %call = call fastcc i1 @is_ttbr0_addr(i64 noundef %0) #14
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @arm64_apply_bp_hardening() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_mem_abort(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %3, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %if.end
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %3) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %if.end, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_fpsimd_acc(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_fpsimd_acc(i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_sve_acc(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_sve_acc(i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_fpsimd_exc(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_fpsimd_exc(i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_sys(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_sysinstr(i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_sp(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %conv = trunc i64 %esr to i32
  call void @do_sp_pc_abort(i64 noundef %1, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 0, i32 0
  %4 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %4, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %4) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_pc(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !35
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #14
  %call1 = call fastcc i1 @is_ttbr0_addr(i64 noundef %call) #14
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @arm64_apply_bp_hardening() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_sp_pc_abort(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %3, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %if.end
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %3) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %if.end, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_undef(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  call void @do_undefinstr(%struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_bti(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  call void @do_bti(%struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_dbg(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, far_el1", "=r"() #13, !srcloc !36
  %conv = trunc i64 %esr to i32
  call void @do_debug_exception(i64 noundef %0, i32 noundef %conv, %struct.pt_regs* noundef %regs) #11
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  call fastcc void @local_daif_mask() #11
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %3, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %3) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_fpac(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @do_ptrauth_fault(%struct.pt_regs* noundef %regs, i32 noundef %conv) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_inv(%struct.pt_regs* noundef %regs, i64 noundef %esr) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  %conv = trunc i64 %esr to i32
  call void @bad_el0_sync(%struct.pt_regs* noundef %regs, i32 noundef 0, i32 noundef %conv) #11
  call fastcc void @local_daif_mask() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %2, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %2) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el0t_64_irq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @__el0_irq_handler_common(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @__el0_irq_handler_common(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_irq, align 8
  call fastcc void @el0_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %0) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el0t_64_fiq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @__el0_fiq_handler_common(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @__el0_fiq_handler_common(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = load void (%struct.pt_regs*)*, void (%struct.pt_regs*)** @handle_arch_fiq, align 8
  call fastcc void @el0_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %0) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @el0t_64_error_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @__el0_error_handler_common(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @__el0_error_handler_common(%struct.pt_regs* noundef %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !37
  call fastcc void @local_daif_restore(i64 noundef 448) #14
  call fastcc void @arm64_enter_nmi(%struct.pt_regs* noundef %regs) #14
  %conv = trunc i64 %0 to i32
  call void @do_serror(%struct.pt_regs* noundef %regs, i32 noundef %conv) #11
  call fastcc void @arm64_exit_nmi(%struct.pt_regs* noundef %regs) #14
  call fastcc void @local_daif_restore(i64 noundef 0) #14
  call fastcc void @local_daif_mask() #11
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %3, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %entry
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %3) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %entry, %if.then.i.i
  ret void
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el0t_32_sync_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !38
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el0t_32_irq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !39
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el0t_32_fiq_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !40
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline noprofile noreturn nounwind null_pointer_is_valid
define dso_local void @el0t_32_error_handler(%struct.pt_regs* noundef %regs) local_unnamed_addr #1 section ".noinstr.text" {
entry:
  %0 = call i64 asm sideeffect "mrs $0, esr_el1", "=r"() #13, !srcloc !41
  %conv = trunc i64 %0 to i32
  call fastcc void @__panic_unhandled(%struct.pt_regs* noundef %regs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #14
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_mask() unnamed_addr #2 {
entry:
  call void asm sideeffect "msr\09daifset, #0xf\09\09// local_daif_mask\0A", "~{memory}"() #13, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_notify_resume(%struct.pt_regs* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !43
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @esr_get_class_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__show_regs(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @enter_from_kernel_mode(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %exit_rcu.i = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 8
  store i64 0, i64* %exit_rcu.i, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags.i.i, align 4
  %and.i.i = and i32 %2, 2
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %__enter_from_kernel_mode.exit, label %cond.end.i

cond.end.i:                                       ; preds = %entry
  call void @rcu_irq_enter() #11
  store i64 1, i64* %exit_rcu.i, align 8
  br label %__enter_from_kernel_mode.exit

__enter_from_kernel_mode.exit:                    ; preds = %entry, %cond.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_inherit(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 960
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 %and) #13, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_mem_abort(i64 noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @exit_to_kernel_mode(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %exit_rcu.i = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 8
  %0 = load i64, i64* %exit_rcu.i, align 8
  %tobool1.not.i = icmp eq i64 %0, 0
  br i1 %tobool1.not.i, label %__exit_to_kernel_mode.exit, label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %entry
  call void @rcu_irq_exit() #11
  br label %__exit_to_kernel_mode.exit

__exit_to_kernel_mode.exit:                       ; preds = %entry, %if.end42.sink.split.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sp_pc_abort(i64 noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_undefinstr(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @arm64_enter_el1_dbg(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  %lockdep_hardirqs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 7
  store i64 0, i64* %lockdep_hardirqs, align 8
  call void @rcu_nmi_enter() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_debug_exception(i64 noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @arm64_exit_el1_dbg(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call void @rcu_nmi_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_nmi_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_ptrauth_fault(%struct.pt_regs* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @enter_el1_irq_or_nmi(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @enter_from_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_interrupt_handler(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = call i64 @llvm.read_register.i64(metadata !0)
  %call1 = call fastcc i1 @on_task_stack(%struct.task_struct* noundef %1, i64 noundef %2) #14
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @call_on_irq_stack(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void %handler(%struct.pt_regs* noundef %regs) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @exit_el1_irq_or_nmi(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 section ".noinstr.text" {
entry:
  call fastcc void @exit_to_kernel_mode(%struct.pt_regs* noundef %regs) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @on_task_stack(%struct.task_struct* nocapture noundef readonly %tsk, i64 noundef %sp) unnamed_addr #9 {
entry:
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #14
  %0 = ptrtoint i8* %call to i64
  %add = add i64 %0, 16384
  %call1 = call fastcc i1 @on_stack(i64 noundef %sp, i64 noundef %0, i64 noundef %add) #14
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_on_irq_stack(%struct.pt_regs* noundef, void (%struct.pt_regs*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #9 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @on_stack(i64 noundef %sp, i64 noundef %low, i64 noundef %high) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i64 %low, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i64 %sp, %low
  %cmp1 = icmp eq i64 %sp, -1
  %or.cond = or i1 %cmp1, %cmp
  %add = add i64 %sp, 1
  %cmp4 = icmp ugt i64 %add, %high
  %or.cond1 = or i1 %or.cond, %cmp4
  %not.or.cond1 = xor i1 %or.cond1, true
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %not.or.cond1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_kernel_in_hyp_mode() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, CurrentEL", "=r"() #13, !srcloc !45
  %cmp = icmp eq i64 %0, 8
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 1114112
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_sub() unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %sub = add i32 %3, -1114112
  store volatile i32 %sub, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_el0_svc(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_ttbr0_addr(i64 noundef %addr) unnamed_addr #9 {
entry:
  %0 = load i64, i64* @vabits_actual, align 8
  %addr.highbits = lshr i64 %addr, %0
  %cmp = icmp eq i64 %addr.highbits, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arm64_apply_bp_hardening() unnamed_addr #2 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #11
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %cpus_have_const_cap.exit

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 36, i32 0)) #11
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br i1 %cmp1.i.i, label %do.body, label %cleanup

cpus_have_const_cap.exit:                         ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #11
  br i1 %call6.i, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call2, ptrtoint (%struct.bp_hardening_data* @bp_hardening_data to i64)
  %0 = inttoptr i64 %add to %struct.bp_hardening_data*
  %fn = getelementptr inbounds %struct.bp_hardening_data, %struct.bp_hardening_data* %0, i64 0, i32 1
  %1 = load void ()*, void ()** %fn, align 8
  %tobool.not = icmp eq void ()* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %do.body
  call void %1() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %do.body, %if.then3, %cpus_have_const_cap.exit
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 68719476736
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_fpsimd_acc(i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sve_acc(i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_fpsimd_exc(i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sysinstr(i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_bti(%struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bad_el0_sync(%struct.pt_regs* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @el0_interrupt(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) unnamed_addr #0 section ".noinstr.text" {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 192) #13, !srcloc !46
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @arm64_apply_bp_hardening() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @do_interrupt_handler(%struct.pt_regs* noundef %regs, void (%struct.pt_regs*)* noundef %handler) #14
  call fastcc void @local_daif_mask() #11
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags1.i.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 0, i32 0
  %4 = load volatile i64, i64* %flags1.i.i, align 8
  %and.i.i = and i64 %4, 127
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %exit_to_user_mode.exit, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %if.end
  call void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %4) #11
  br label %exit_to_user_mode.exit

exit_to_user_mode.exit:                           ; preds = %if.end, %if.then.i.i
  ret void
}

attributes #0 = { noinline noprofile nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline noprofile noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 177558}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153768484}
!11 = !{i64 2153769201}
!12 = !{i64 2153769918}
!13 = !{i64 2153770641}
!14 = !{i64 2153772944}
!15 = !{i64 2153771073}
!16 = !{i64 2153771505}
!17 = !{i64 2153772217}
!18 = !{i64 2153773623}
!19 = !{i64 2153779297}
!20 = !{i64 2153685232}
!21 = !{i64 2153742763}
!22 = !{i64 2153742998}
!23 = !{i64 2153743238}
!24 = !{i64 2153743281}
!25 = !{i64 2153743319}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2153745033}
!28 = !{i64 2153753841}
!29 = !{i64 2153755914}
!30 = !{i64 2153755952}
!31 = !{i64 2153756094}
!32 = !{i64 2153784367}
!33 = !{i64 2153779798}
!34 = !{i64 2153780232}
!35 = !{i64 2153781794}
!36 = !{i64 2153783356}
!37 = !{i64 2153786830}
!38 = !{i64 2153787916}
!39 = !{i64 2153788633}
!40 = !{i64 2153793411}
!41 = !{i64 2153794134}
!42 = !{i64 5166928}
!43 = !{i64 2149084092, i64 2149084139, i64 2149084145, i64 2149084182, i64 2149084200, i64 2149085127, i64 2149085175, i64 2149085223, i64 2149085286, i64 2149085335, i64 2149084278, i64 2149084303, i64 2149084329, i64 2149084335, i64 2149084372, i64 2149084378, i64 2149084428, i64 2149084474, i64 2149084507}
!44 = !{i64 2153685885}
!45 = !{i64 2149334495}
!46 = !{i64 2153785095}
