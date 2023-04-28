; ModuleID = 'kernel/panic.c'
source_filename = "kernel/panic.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_panic__370_550_init_oops_id7:\09\09\09"
module asm ".long\09init_oops_id - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_panic__372_673_register_warn_debugfs6:\09\09\09"
module asm ".long\09register_warn_debugfs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.taint_flag = type { i8, i8, i8 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.74 }
%struct.module = type opaque
%union.anon.74 = type { i8* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.2, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.2 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }
%struct.atomic64_t = type { i64 }
%struct.warn_args = type { i8*, %"struct.std::__va_list" }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.6 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.9, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.10, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.9 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.10 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.43, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.27 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.43 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.51, %struct.anon.52, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.49, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.49 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.51 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.52 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.50, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.50 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
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

@panic_on_oops = dso_local local_unnamed_addr global i32 0, align 4
@panic_on_taint_nousertaint = dso_local local_unnamed_addr global i8 0, align 4
@panic_timeout = dso_local global i32 0, align 4
@panic_notifier_list = dso_local global %struct.atomic_notifier_head zeroinitializer, align 8
@crash_smp_send_stop.cpus_stopped = internal unnamed_addr global i1 false, align 4
@panic_cpu = dso_local global %struct.atomic_t { i32 -1 }, align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@panic.buf = internal global [1024 x i8] zeroinitializer, align 1
@crash_kexec_post_notifiers = dso_local global i8 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\010Kernel panic - not syncing: %s\0A\00", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@panic_blink = dso_local local_unnamed_addr global i64 (i32)* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\010Rebooting in %d seconds..\0A\00", align 1
@panic_reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\010---[ end Kernel panic - not syncing: %s ]---\0A\00", align 1
@suppress_printk = external dso_local local_unnamed_addr global i32, align 4
@taint_flags = dso_local local_unnamed_addr constant [18 x %struct.taint_flag] [%struct.taint_flag { i8 80, i8 71, i8 1 }, %struct.taint_flag { i8 70, i8 32, i8 1 }, %struct.taint_flag { i8 83, i8 32, i8 0 }, %struct.taint_flag { i8 82, i8 32, i8 0 }, %struct.taint_flag { i8 77, i8 32, i8 0 }, %struct.taint_flag { i8 66, i8 32, i8 0 }, %struct.taint_flag { i8 85, i8 32, i8 0 }, %struct.taint_flag { i8 68, i8 32, i8 0 }, %struct.taint_flag { i8 65, i8 32, i8 0 }, %struct.taint_flag { i8 87, i8 32, i8 0 }, %struct.taint_flag { i8 67, i8 32, i8 1 }, %struct.taint_flag { i8 73, i8 32, i8 0 }, %struct.taint_flag { i8 79, i8 32, i8 1 }, %struct.taint_flag { i8 69, i8 32, i8 1 }, %struct.taint_flag { i8 76, i8 32, i8 0 }, %struct.taint_flag { i8 75, i8 32, i8 1 }, %struct.taint_flag { i8 88, i8 32, i8 1 }, %struct.taint_flag { i8 84, i8 32, i8 1 }], align 1
@print_tainted.buf = internal global [28 x i8] zeroinitializer, align 1
@tainted_mask = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Tainted: \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Not tainted\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\014Disabling lock debugging due to kernel taint\0A\00", align 1
@panic_on_taint = dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"panic_on_taint set ...\00", align 1
@pause_on_oops_flag = internal unnamed_addr global i1 false, align 4
@sysctl_oops_all_cpu_backtrace = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__UNIQUE_ID___addressable_init_oops_id371 = internal global i8* bitcast (i32 ()* @init_oops_id to i8*), section ".discard.addressable", align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"\014WARNING: CPU: %d PID: %d at %s:%d %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\014WARNING: CPU: %d PID: %d at %pS\0A\00", align 1
@panic_on_warn = dso_local global i32 0, section ".data..read_mostly", align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"panic_on_warn set ...\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\014------------[ cut here ]------------\0A\00", align 1
@__UNIQUE_ID___addressable_register_warn_debugfs373 = internal global i8* bitcast (i32 ()* @register_warn_debugfs to i8*), section ".discard.addressable", align 8
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_panic = internal constant %struct.kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.74 { i8* bitcast (i32* @panic_timeout to i8*) } }, section "__param", align 8
@__param_str_panic_print = internal constant [12 x i8] c"panic_print\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@panic_print = dso_local global i64 0, align 8
@__param_panic_print = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_panic_print, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.74 { i8* bitcast (i64* @panic_print to i8*) } }, section "__param", align 8
@__param_str_pause_on_oops = internal constant [14 x i8] c"pause_on_oops\00", align 1
@pause_on_oops = internal global i32 0, align 4
@__param_pause_on_oops = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_pause_on_oops, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.74 { i8* bitcast (i32* @pause_on_oops to i8*) } }, section "__param", align 8
@__param_str_panic_on_warn = internal constant [14 x i8] c"panic_on_warn\00", align 1
@__param_panic_on_warn = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_panic_on_warn, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.74 { i8* bitcast (i32* @panic_on_warn to i8*) } }, section "__param", align 8
@__param_str_crash_kexec_post_notifiers = internal constant [27 x i8] c"crash_kexec_post_notifiers\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_crash_kexec_post_notifiers = internal constant %struct.kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__param_str_crash_kexec_post_notifiers, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { i8* @crash_kexec_post_notifiers } }, section "__param", align 8
@__setup_str_oops_setup = internal constant [5 x i8] c"oops\00", section ".init.rodata", align 1
@__setup_oops_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__setup_str_oops_setup, i32 0, i32 0), i32 (i8*)* @oops_setup, i32 1 }, section ".init.setup", align 8
@__setup_str_panic_on_taint_setup = internal constant [15 x i8] c"panic_on_taint\00", section ".init.rodata", align 1
@__setup_panic_on_taint_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__setup_str_panic_on_taint_setup, i32 0, i32 0), i32 (i8*)* @panic_on_taint_setup, i32 1 }, section ".init.setup", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@debug_locks = external dso_local global i32, section ".data..read_mostly", align 4
@do_oops_enter_exit.spin_counter = internal unnamed_addr global i32 0, align 4
@pause_on_oops_lock = internal global %struct.spinlock zeroinitializer, align 4
@oops_id = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"\014---[ end trace %016llx ]---\0A\00", align 1
@.str.15 = private constant [6 x i8] c"panic\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"nousertaint\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\016panic_on_taint: bitmask=0x%lx nousertaint_mode=%sabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@llvm.compiler.used = appending global [9 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_oops_id371 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_register_warn_debugfs373 to i8*), i8* bitcast (%struct.kernel_param* @__param_crash_kexec_post_notifiers to i8*), i8* bitcast (%struct.kernel_param* @__param_panic to i8*), i8* bitcast (%struct.kernel_param* @__param_panic_on_warn to i8*), i8* bitcast (%struct.kernel_param* @__param_panic_print to i8*), i8* bitcast (%struct.kernel_param* @__param_pause_on_oops to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_oops_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_panic_on_taint_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @panic_smp_self_stop() local_unnamed_addr #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #15
  br label %while.body
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @nmi_panic_self_stop(%struct.pt_regs* noundef %regs) local_unnamed_addr #0 {
entry:
  call void @panic_smp_self_stop() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @crash_smp_send_stop() local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %.b, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @smp_send_stop() #17
  store i1 true, i1* @crash_smp_send_stop.cpus_stopped, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_stop() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @nmi_panic(%struct.pt_regs* noundef %regs, i8* noundef %msg) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %1) #17
  %cmp = icmp eq i32 %call11.i.i, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %msg) #18
  unreachable

if.else:                                          ; preds = %entry
  %cmp3.not = icmp eq i32 %call11.i.i, %1
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @nmi_panic_self_stop(%struct.pt_regs* noundef %regs) #15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #3 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !9
  ret i64 %2
}

; Function Attrs: cold noinline noreturn nounwind null_pointer_is_valid optsize
define dso_local void @panic(i8* noundef %fmt, ...) local_unnamed_addr #4 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !10
  %1 = load i8, i8* @crash_kexec_post_notifiers, align 4, !range !11
  %tobool.not = icmp eq i8 %1, 0
  call fastcc void @arch_local_irq_disable() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %3) #17
  %cmp.not = icmp eq i32 %call11.i.i, -1
  %cmp6.not = icmp eq i32 %call11.i.i, %3
  %or.cond116 = or i1 %cmp.not, %cmp6.not
  br i1 %or.cond116, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @panic_smp_self_stop() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @console_verbose() #17
  call void @bust_spinlocks(i32 noundef 1) #17
  call void @llvm.va_start(i8* nonnull %0)
  %4 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call8 = call i32 @vscnprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @panic.buf, i64 0, i64 0), i64 noundef 1024, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #16
  call void @llvm.va_end(i8* nonnull %0)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %do.end21, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end
  %conv = sext i32 %call8 to i64
  %sub = add nsw i64 %conv, -1
  %arrayidx = getelementptr [1024 x i8], [1024 x i8]* @panic.buf, i64 0, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %cmp13 = icmp eq i8 %5, 10
  br i1 %cmp13, label %if.then15, label %do.end21

if.then15:                                        ; preds = %land.lhs.true11
  store i8 0, i8* %arrayidx, align 1
  br label %do.end21

do.end21:                                         ; preds = %if.end, %land.lhs.true11, %if.then15
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @panic.buf, i64 0, i64 0)) #20
  %call24 = call i32 @test_taint(i32 noundef 7) #15
  %tobool25 = icmp eq i32 %call24, 0
  %6 = load i32, i32* @oops_in_progress, align 4
  %cmp27 = icmp slt i32 %6, 2
  %or.cond = select i1 %tobool25, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.end21
  call void @dump_stack() #20
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.end21
  br i1 %tobool.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end30
  call void @smp_send_stop() #17
  br label %if.end37

if.else:                                          ; preds = %if.end30
  call void @crash_smp_send_stop() #15
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.else
  %call34 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @panic_notifier_list, i64 noundef 0, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @panic.buf, i64 0, i64 0)) #17
  call void @kmsg_dump(i32 noundef 1) #17
  call void @unblank_screen() #17
  call void @console_unblank() #17
  %call38 = call i32 @debug_locks_off() #17
  call void @console_flush_on_panic(i32 noundef 0) #17
  call fastcc void @panic_print_sys_info() #15
  %7 = load i64 (i32)*, i64 (i32)** @panic_blink, align 8
  %tobool39.not = icmp eq i64 (i32)* %7, null
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  store i64 (i32)* @no_blink, i64 (i32)** @panic_blink, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %8 = load i32, i32* @panic_timeout, align 4
  %cmp42 = icmp sgt i32 %8, 0
  br i1 %cmp42, label %do.end47, label %if.end62

do.end47:                                         ; preds = %if.end41
  %call49 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8) #20
  %9 = load i32, i32* @panic_timeout, align 4
  %mul118 = mul i32 %9, 1000
  %cmp51120 = icmp sgt i32 %mul118, 0
  br i1 %cmp51120, label %for.body, label %if.end62

for.body:                                         ; preds = %do.end47, %while.end
  %i.0123 = phi i64 [ %add61, %while.end ], [ 0, %do.end47 ]
  %i_next.0122 = phi i64 [ %i_next.1, %while.end ], [ 0, %do.end47 ]
  %state.0121 = phi i32 [ %state.1, %while.end ], [ 0, %do.end47 ]
  %cmp53.not = icmp slt i64 %i.0123, %i_next.0122
  br i1 %cmp53.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %for.body
  %10 = load i64 (i32)*, i64 (i32)** @panic_blink, align 8
  %xor = xor i32 %state.0121, 1
  %call56 = call i64 %10(i32 noundef %xor) #17
  %add57 = add i64 %call56, %i.0123
  %add58 = add i64 %add57, 200
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %for.body
  %state.1 = phi i32 [ %xor, %if.then55 ], [ %state.0121, %for.body ]
  %i_next.1 = phi i64 [ %add58, %if.then55 ], [ %i_next.0122, %for.body ]
  %i.1 = phi i64 [ %add57, %if.then55 ], [ %i.0123, %for.body ]
  br label %while.body

while.body:                                       ; preds = %if.end59, %while.body
  %__ms.0117 = phi i64 [ 100, %if.end59 ], [ %dec, %while.body ]
  %dec = add nsw i64 %__ms.0117, -1
  call void @__const_udelay(i64 noundef 4295000) #17
  %tobool60.not = icmp eq i64 %dec, 0
  br i1 %tobool60.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %add61 = add i64 %i.1, 100
  %11 = load i32, i32* @panic_timeout, align 4
  %mul = mul i32 %11, 1000
  %conv50 = sext i32 %mul to i64
  %cmp51 = icmp slt i64 %add61, %conv50
  br i1 %cmp51, label %for.body, label %if.end62

if.end62:                                         ; preds = %while.end, %do.end47, %if.end41
  %12 = phi i32 [ %8, %if.end41 ], [ %9, %do.end47 ], [ %11, %while.end ]
  %state.2 = phi i32 [ 0, %if.end41 ], [ 0, %do.end47 ], [ %state.1, %while.end ]
  %i_next.2 = phi i64 [ 0, %if.end41 ], [ 0, %do.end47 ], [ %i_next.1, %while.end ]
  %cmp63.not = icmp eq i32 %12, 0
  br i1 %cmp63.not, label %do.end73, label %if.then65

if.then65:                                        ; preds = %if.end62
  %13 = load i32, i32* @panic_reboot_mode, align 4
  %cmp66.not = icmp eq i32 %13, -1
  br i1 %cmp66.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.then65
  store i32 %13, i32* @reboot_mode, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then65
  call void @emergency_restart() #17
  br label %do.end73

do.end73:                                         ; preds = %if.end62, %if.end69
  %call75 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @panic.buf, i64 0, i64 0)) #20
  store i32 1, i32* @suppress_printk, align 4
  call fastcc void @arch_local_irq_enable() #15
  br label %for.cond79

for.cond79:                                       ; preds = %while.end93, %do.end73
  %state.3 = phi i32 [ %state.2, %do.end73 ], [ %state.4, %while.end93 ]
  %i_next.3 = phi i64 [ %i_next.2, %do.end73 ], [ %i_next.4, %while.end93 ]
  %i.2 = phi i64 [ 0, %do.end73 ], [ %add95, %while.end93 ]
  %cmp80.not = icmp slt i64 %i.2, %i_next.3
  br i1 %cmp80.not, label %if.end87, label %if.then82

if.then82:                                        ; preds = %for.cond79
  %14 = load i64 (i32)*, i64 (i32)** @panic_blink, align 8
  %xor83 = xor i32 %state.3, 1
  %call84 = call i64 %14(i32 noundef %xor83) #17
  %add85 = add i64 %call84, %i.2
  %add86 = add i64 %add85, 200
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %for.cond79
  %state.4 = phi i32 [ %xor83, %if.then82 ], [ %state.3, %for.cond79 ]
  %i_next.4 = phi i64 [ %add86, %if.then82 ], [ %i_next.3, %for.cond79 ]
  %i.3 = phi i64 [ %add85, %if.then82 ], [ %i.2, %for.cond79 ]
  br label %while.body92

while.body92:                                     ; preds = %if.end87, %while.body92
  %__ms88.0126 = phi i64 [ 100, %if.end87 ], [ %dec90, %while.body92 ]
  %dec90 = add nsw i64 %__ms88.0126, -1
  call void @__const_udelay(i64 noundef 4295000) #17
  %tobool91.not = icmp eq i64 %dec90, 0
  br i1 %tobool91.not, label %while.end93, label %while.body92

while.end93:                                      ; preds = %while.body92
  %add95 = add i64 %i.3, 100
  br label %for.cond79
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @test_taint(i32 noundef %flag) local_unnamed_addr #9 {
entry:
  %div.i = lshr i32 %flag, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* @tainted_mask, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unblank_screen() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unblank() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_flush_on_panic(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @panic_print_sys_info() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @panic_print, align 8
  %and = and i64 %0, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @console_flush_on_panic(i32 noundef 1) #17
  %.pre = load i64, i64* @panic_print, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %and1 = and i64 %1, 1
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @show_state() #15
  %.pre21 = load i64, i64* @panic_print, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = phi i64 [ %.pre21, %if.then3 ], [ %1, %if.end ]
  %and5 = and i64 %2, 2
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @show_mem(i32 noundef 0, %struct.nodemask_t* noundef null) #17
  %.pre22 = load i64, i64* @panic_print, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %3 = phi i64 [ %.pre22, %if.then7 ], [ %2, %if.end4 ]
  %and9 = and i64 %3, 4
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end20, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @sysrq_timer_list_show() #17
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @no_blink(i32 noundef %state) #10 {
entry:
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @print_tainted() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @tainted_mask, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @print_tainted.buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #17
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr [28 x i8], [28 x i8]* @print_tainted.buf, i64 0, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.body ]
  %s.016 = phi i8* [ %add.ptr, %if.then ], [ %incdec.ptr, %for.body ]
  %div.i = lshr i64 %indvars.iv, 6
  %idxprom.i = and i64 %div.i, 67108863
  %arrayidx.i = getelementptr i64, i64* @tainted_mask, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %2 = shl nuw i64 1, %indvars.iv
  %3 = and i64 %1, %2
  %tobool2.not = icmp eq i64 %3, 0
  %c_true = getelementptr [18 x %struct.taint_flag], [18 x %struct.taint_flag]* @taint_flags, i64 0, i64 %indvars.iv, i32 0
  %c_false = getelementptr [18 x %struct.taint_flag], [18 x %struct.taint_flag]* @taint_flags, i64 0, i64 %indvars.iv, i32 1
  %cond.in.in = select i1 %tobool2.not, i8* %c_false, i8* %c_true
  %cond.in14 = load i8, i8* %cond.in.in, align 1
  %incdec.ptr = getelementptr i8, i8* %s.016, i64 1
  store i8 %cond.in14, i8* %s.016, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i8 0, i8* %incdec.ptr, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @print_tainted.buf, i64 0, i64 0), i64 noundef 28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret i8* getelementptr inbounds ([28 x i8], [28 x i8]* @print_tainted.buf, i64 0, i64 0)
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @get_taint() local_unnamed_addr #11 {
entry:
  %0 = load i64, i64* @tainted_mask, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_taint(i32 noundef %flag, i32 noundef %lockdep_ok) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %lockdep_ok, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32() #17
  %tobool.not = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %land.lhs.true
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %conv = zext i32 %flag to i64
  call fastcc void @set_bit(i64 noundef %conv) #15
  %0 = load i64, i64* @tainted_mask, align 8
  %1 = load i64, i64* @panic_on_taint, align 8
  %and = and i64 %1, %0
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i64 0, i64* @panic_on_taint, align 8
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #18
  unreachable

if.end4:                                          ; preds = %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* @tainted_mask, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @oops_may_print() local_unnamed_addr #11 {
entry:
  %.b = load i1, i1* @pause_on_oops_flag, align 4
  %cmp = xor i1 %.b, true
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @oops_enter() local_unnamed_addr #0 {
entry:
  %call = call i32 @debug_locks_off() #17
  call fastcc void @do_oops_enter_exit() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_oops_enter_exit() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @pause_on_oops, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #15
  %.b = load i1, i1* @pause_on_oops_flag, align 4
  br i1 %.b, label %if.else, label %if.end17.sink.split

if.else:                                          ; preds = %do.body1
  %1 = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.then9, label %while.body

if.then9:                                         ; preds = %if.else
  %2 = load i32, i32* @pause_on_oops, align 4
  store i32 %2, i32* @do_oops_enter_exit.spin_counter, align 4
  br label %do.body10

do.body10:                                        ; preds = %do.body10, %if.then9
  call fastcc void @__raw_spin_unlock() #17
  call fastcc void @spin_msec(i32 noundef 1000) #15
  call fastcc void @__raw_spin_lock() #17
  %3 = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* @do_oops_enter_exit.spin_counter, align 4
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %if.end17.sink.split, label %do.body10

while.body:                                       ; preds = %if.else, %while.body
  call fastcc void @__raw_spin_unlock() #17
  call fastcc void @spin_msec(i32 noundef 1) #15
  call fastcc void @__raw_spin_lock() #17
  %.pr = load i32, i32* @do_oops_enter_exit.spin_counter, align 4
  %tobool15.not = icmp eq i32 %.pr, 0
  br i1 %tobool15.not, label %if.end17, label %while.body

if.end17.sink.split:                              ; preds = %do.body10, %do.body1
  %4 = xor i1 %.b, true
  store i1 %4, i1* @pause_on_oops_flag, align 4
  br label %if.end17

if.end17:                                         ; preds = %while.body, %if.end17.sink.split
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @init_oops_id() #0 {
entry:
  %0 = load i64, i64* @oops_id, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @get_random_bytes(i8* noundef bitcast (i64* @oops_id to i8*), i32 noundef 8) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %inc = add i64 %0, 1
  store i64 %inc, i64* @oops_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @oops_exit() local_unnamed_addr #0 {
entry:
  call fastcc void @do_oops_enter_exit() #15
  call fastcc void @print_oops_end_marker() #15
  call void @kmsg_dump(i32 noundef 2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_oops_end_marker() unnamed_addr #0 {
entry:
  %call = call i32 @init_oops_id() #15
  %0 = load i64, i64* @oops_id, align 8
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__warn(i8* noundef %file, i32 noundef %line, i8* noundef %caller, i32 noundef %taint, %struct.pt_regs* noundef %regs, %struct.warn_args* noundef readonly %args) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %tobool.not = icmp eq i8* %file, null
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add17 = add i64 %call16, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add17 to i32*
  %1 = load i32, i32* %0, align 4
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %pid19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 50
  %4 = load i32, i32* %pid19, align 32
  br i1 %tobool.not, label %do.body10, label %do.body1

do.body1:                                         ; preds = %entry
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 noundef %1, i32 noundef %4, i8* noundef nonnull %file, i32 noundef %line, i8* noundef %caller) #20
  br label %if.end

do.body10:                                        ; preds = %entry
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 noundef %1, i32 noundef %4, i8* noundef %caller) #20
  br label %if.end

if.end:                                           ; preds = %do.body10, %do.body1
  %tobool21.not = icmp eq %struct.warn_args* %args, null
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end
  %fmt = getelementptr inbounds %struct.warn_args, %struct.warn_args* %args, i64 0, i32 0
  %5 = load i8*, i8** %fmt, align 8
  %args23 = getelementptr inbounds %struct.warn_args, %struct.warn_args* %args, i64 0, i32 1
  %6 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #16
  %7 = bitcast %"struct.std::__va_list"* %args23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef align 8 dereferenceable(32) %7, i64 32, i1 false)
  %call24 = call i32 @vprintk(i8* noundef %5, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end
  %tobool26.not = icmp eq %struct.pt_regs* %regs, null
  br i1 %tobool26.not, label %if.end28, label %if.end28.thread

if.end28:                                         ; preds = %if.end25
  %8 = load i32, i32* @panic_on_warn, align 4
  %tobool29.not = icmp eq i32 %8, 0
  br i1 %tobool29.not, label %if.then33, label %if.then30

if.end28.thread:                                  ; preds = %if.end25
  call void @show_regs(%struct.pt_regs* noundef nonnull %regs) #17
  %9 = load i32, i32* @panic_on_warn, align 4
  %tobool29.not46 = icmp eq i32 %9, 0
  br i1 %tobool29.not46, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end28.thread, %if.end28
  store i32 0, i32* @panic_on_warn, align 4
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)) #18
  unreachable

if.then33:                                        ; preds = %if.end28
  call void @dump_stack() #20
  br label %if.end34

if.end34:                                         ; preds = %if.end28.thread, %if.then33
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !16
  call fastcc void @print_oops_end_marker() #15
  call void @add_taint(i32 noundef %taint, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(%struct.pt_regs* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__warn_printk(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !10
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #20
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call2 = call i32 @vprintk(i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #16
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal i32 @register_warn_debugfs() #12 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @oops_setup(i8* noundef %s) #13 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @strcmp(i8* noundef nonnull %s, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  store i32 1, i32* @panic_on_oops, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.then2 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @panic_on_taint_setup(i8* noundef %s) #13 section ".init.text" {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %tobool.not = icmp eq i8* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @strsep(i8** noundef nonnull %s.addr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #17
  %call1 = call fastcc i32 @kstrtoul(i8* noundef %call) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i64, i64* @panic_on_taint, align 8
  %and = and i64 %0, 262143
  store i64 %and, i64* @panic_on_taint, align 8
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %1 = load i8*, i8** %s.addr, align 8
  %tobool8.not = icmp eq i8* %1, null
  br i1 %tobool8.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %call9 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end

if.then11:                                        ; preds = %land.lhs.true
  store i8 1, i8* @panic_on_taint_nousertaint, align 4
  br label %do.end

do.end:                                           ; preds = %if.end7, %land.lhs.true, %if.then11
  %2 = load i64, i64* @panic_on_taint, align 8
  %3 = load i8, i8* @panic_on_taint_nousertaint, align 4, !range !11
  %tobool13.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool13.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0), i64 noundef %2, i8* noundef %cond) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry ], [ -22, %if.end ], [ -22, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i32 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i32 noundef %new) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @panic_cpu, i64 0, i32 0), i64 4294967295, i32 %new, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @panic_cpu, i64 0, i32 0)) #16, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_state() unnamed_addr #0 {
entry:
  call void @show_state_filter(i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_timer_list_show() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* nonnull elementtype(i32) @debug_locks, i32 0, i32* nonnull elementtype(i32) @debug_locks) #16, !srcloc !18
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  call fastcc void @do_raw_spin_lock_flags() #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @spin_msec(i32 noundef %msecs) unnamed_addr #0 {
entry:
  %cmp3 = icmp sgt i32 %msecs, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @__const_udelay(i64 noundef 4295000) #17
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %msecs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
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
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !21

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pause_on_oops_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !23
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pause_on_oops_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pause_on_oops_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #16, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @pause_on_oops_lock to i8*), i8 0) #16, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  call fastcc void @do_raw_spin_lock() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !21

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pause_on_oops_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strsep(i8** noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 16, i64* noundef nonnull @panic_on_taint) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline noreturn nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin noreturn "no-builtins" }
attributes #19 = { nounwind readonly }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind readnone }

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
!8 = !{i64 1866855}
!9 = !{i64 2148885099, i64 2148885146, i64 2148885152, i64 2148885189, i64 2148885207, i64 2148886134, i64 2148886182, i64 2148886230, i64 2148886293, i64 2148886342, i64 2148885285, i64 2148885310, i64 2148885336, i64 2148885342, i64 2148885379, i64 2148885385, i64 2148885435, i64 2148885481, i64 2148885514}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2154066359}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149323673, i64 2149323720, i64 2149323726, i64 2149323763, i64 2149323781, i64 2149325122, i64 2149325170, i64 2149325218, i64 2149325281, i64 2149325330, i64 2149323859, i64 2149323884, i64 2149323910, i64 2149323916, i64 2149324788, i64 2149324828, i64 2149324846, i64 2149324878, i64 2149324906, i64 2149324960, i64 2149324980, i64 2149325077, i64 2149323939, i64 2149323953, i64 2149323959, i64 2149324009, i64 2149324055, i64 2149324088}
!15 = !{i64 2149314217, i64 2149314264, i64 2149314270, i64 2149314307, i64 2149314325, i64 2149315665, i64 2149315713, i64 2149315761, i64 2149315824, i64 2149315873, i64 2149314403, i64 2149314428, i64 2149314454, i64 2149314460, i64 2149315331, i64 2149315371, i64 2149315389, i64 2149315421, i64 2149315449, i64 2149315503, i64 2149315523, i64 2149315620, i64 2149314483, i64 2149314497, i64 2149314503, i64 2149314553, i64 2149314599, i64 2149314632}
!16 = !{i64 1301518}
!17 = !{i64 2147779217, i64 2147779250, i64 2147779302, i64 2147779361, i64 2147779395, i64 2147779451, i64 2147779480, i64 2147779507}
!18 = !{i64 2147799926, i64 2147799958, i64 2147800003, i64 2147800051, i64 2147800077}
!19 = !{i64 2147735227, i64 2147735738, i64 2147735768, i64 2147735794, i64 2147735826, i64 2147735855}
!20 = !{i64 2149718044}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149329376, i64 2149329423, i64 2149329429, i64 2149329466, i64 2149329484, i64 2149330795, i64 2149330843, i64 2149330891, i64 2149330954, i64 2149331003, i64 2149329562, i64 2149329587, i64 2149329613, i64 2149329619, i64 2149330461, i64 2149330501, i64 2149330519, i64 2149330551, i64 2149330579, i64 2149330633, i64 2149330653, i64 2149330750, i64 2149329642, i64 2149329656, i64 2149329662, i64 2149329712, i64 2149329758, i64 2149329791}
!23 = !{i64 2149331555, i64 2149331602, i64 2149331608, i64 2149331645, i64 2149331663, i64 2149332606, i64 2149332654, i64 2149332702, i64 2149332765, i64 2149332814, i64 2149331741, i64 2149331766, i64 2149331792, i64 2149331798, i64 2149331835, i64 2149331841, i64 2149331891, i64 2149331937, i64 2149331970}
!24 = !{i64 2147762009, i64 2147762042, i64 2147762095, i64 2147762154, i64 2147762188, i64 2147762243, i64 2147762272, i64 2147762292}
!25 = !{i64 2149740326}
!26 = !{i64 2149687174}
!27 = !{i64 2149733045}
!28 = !{i64 2149743887}
!29 = !{i64 2149335389, i64 2149335436, i64 2149335442, i64 2149335479, i64 2149335497, i64 2149336808, i64 2149336856, i64 2149336904, i64 2149336967, i64 2149337016, i64 2149335575, i64 2149335600, i64 2149335626, i64 2149335632, i64 2149336474, i64 2149336514, i64 2149336532, i64 2149336564, i64 2149336592, i64 2149336646, i64 2149336666, i64 2149336763, i64 2149335655, i64 2149335669, i64 2149335675, i64 2149335725, i64 2149335771, i64 2149335804}
