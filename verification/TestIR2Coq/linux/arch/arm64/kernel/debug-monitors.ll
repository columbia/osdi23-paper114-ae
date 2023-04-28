; ModuleID = 'arch/arm64/kernel/debug-monitors.c'
source_filename = "arch/arm64/kernel/debug-monitors.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_debug_monitors__363_63_create_debug_debugfs_entry5:\09\09\09"
module asm ".long\09create_debug_debugfs_entry - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_debug_monitors__365_139_debug_monitors_init2:\09\09\09"
module asm ".long\09debug_monitors_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.step_hook = type { %struct.list_head, i32 (%struct.pt_regs*, i32)* }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.break_hook = type { %struct.list_head, i32 (%struct.pt_regs*, i32)*, i16, i16 }
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

@__UNIQUE_ID___addressable_create_debug_debugfs_entry364 = internal global i8* bitcast (i32 ()* @create_debug_debugfs_entry to i8*), section ".discard.addressable", align 8
@__setup_str_early_debug_disable = internal constant [11 x i8] c"nodebugmon\00", section ".init.rodata", align 1
@__setup_early_debug_disable = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_early_debug_disable, i32 0, i32 0), i32 (i8*)* @early_debug_disable, i32 1 }, section ".init.setup", align 8
@mde_ref_count = internal global i32 0, section ".data..percpu", align 4
@kde_ref_count = internal global i32 0, section ".data..percpu", align 4
@debug_enabled = internal unnamed_addr global i1 false, align 4
@__UNIQUE_ID___addressable_debug_monitors_init366 = internal global i8* bitcast (i32 ()* @debug_monitors_init to i8*), section ".discard.addressable", align 8
@user_step_hook = internal global %struct.list_head { %struct.list_head* @user_step_hook, %struct.list_head* @user_step_hook }, align 8
@kernel_step_hook = internal global %struct.list_head { %struct.list_head* @kernel_step_hook, %struct.list_head* @kernel_step_hook }, align 8
@user_break_hook = internal global %struct.list_head { %struct.list_head* @user_break_hook, %struct.list_head* @user_break_hook }, align 8
@kernel_break_hook = internal global %struct.list_head { %struct.list_head* @kernel_break_hook, %struct.list_head* @kernel_break_hook }, align 8
@.str = private unnamed_addr constant [20 x i8] c"single-step handler\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"BRK handler\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"arm64/debug_monitors:starting\00", align 1
@debug_hook_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"User debug trap\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\014Unexpected kernel single-step exception at EL1\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\014Unexpected kernel BRK exception at EL1\0A\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_create_debug_debugfs_entry364 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_debug_monitors_init366 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_debug_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8 @debug_monitors_arch() local_unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1574144) #12
  %0 = trunc i64 %call to i8
  %conv.i.i = and i8 %0, 15
  ret i8 %conv.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @read_sanitised_ftr_reg(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @create_debug_debugfs_entry() #2 {
entry:
  ret i32 0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @early_debug_disable(i8* nocapture noundef readnone %buf) #3 section ".init.text" {
entry:
  store i1 true, i1* @debug_enabled, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @enable_debug_monitors(i32 noundef %el) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @mde_ref_count to i64)
  %0 = inttoptr i64 %add to i8*
  %call16 = call fastcc i32 @__percpu_add_return_case_32(i8* noundef %0, i64 noundef 1) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %cmp = icmp eq i32 %call16, 1
  %enable.0 = select i1 %cmp, i32 32768, i32 0
  %cmp22 = icmp eq i32 %el, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add38 = add i64 %call37, ptrtoint (i32* @kde_ref_count to i64)
  %1 = inttoptr i64 %add38 to i8*
  %call39 = call fastcc i32 @__percpu_add_return_case_32(i8* noundef %1, i64 noundef 1) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %cmp42 = icmp eq i32 %call39, 1
  %or = or i32 %enable.0, 8192
  %spec.select = select i1 %cmp42, i32 %or, i32 %enable.0
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true, %entry
  %enable.1 = phi i32 [ %enable.0, %entry ], [ %spec.select, %land.lhs.true ]
  %tobool46.not = icmp eq i32 %enable.1, 0
  %.b = load i1, i1* @debug_enabled, align 4
  %or.cond = select i1 %tobool46.not, i1 true, i1 %.b
  br i1 %or.cond, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end45
  %call51 = call fastcc i32 @mdscr_read() #14
  %or52 = or i32 %call51, %enable.1
  call fastcc void @mdscr_write(i32 noundef %or52) #14
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__percpu_add_return_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #13, !srcloc !12
  %asmresult1 = extractvalue { i32, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !13
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mdscr_read() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, mdscr_el1", "=r"() #13, !srcloc !14
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mdscr_write(i32 noundef %mdscr) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @local_daif_save() #14
  %conv = zext i32 %mdscr to i64
  call void asm sideeffect "msr mdscr_el1, ${0:x}", "rZ"(i64 %conv) #13, !srcloc !15
  call fastcc void @local_daif_restore(i64 noundef %call) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_debug_monitors(i32 noundef %el) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @mde_ref_count to i64)
  %0 = inttoptr i64 %add to i8*
  %call16 = call fastcc i32 @__percpu_add_return_case_32(i8* noundef %0, i64 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %cmp = icmp eq i32 %call16, 0
  %disable.0 = select i1 %cmp, i32 -32769, i32 0
  %cmp22 = icmp eq i32 %el, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add38 = add i64 %call37, ptrtoint (i32* @kde_ref_count to i64)
  %1 = inttoptr i64 %add38 to i8*
  %call39 = call fastcc i32 @__percpu_add_return_case_32(i8* noundef %1, i64 noundef -1) #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %cmp42 = icmp eq i32 %call39, 0
  %and = and i32 %disable.0, -40961
  %spec.select = select i1 %cmp42, i32 %and, i32 %disable.0
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true, %entry
  %disable.1 = phi i32 [ %disable.0, %entry ], [ %spec.select, %land.lhs.true ]
  %tobool46.not = icmp eq i32 %disable.1, 0
  br i1 %tobool46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end45
  %call48 = call fastcc i32 @mdscr_read() #14
  %and49 = and i32 %call48, %disable.1
  call fastcc void @mdscr_write(i32 noundef %and49) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @debug_monitors_init() #5 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state() #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_user_step_hook(%struct.step_hook* noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.step_hook, %struct.step_hook* %hook, i64 0, i32 0
  call fastcc void @register_debug_hook(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @user_step_hook) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @register_debug_hook(%struct.list_head* noundef %node, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #12
  call fastcc void @list_add_rcu(%struct.list_head* noundef %node, %struct.list_head* noundef %list) #14
  call fastcc void @__raw_spin_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_user_step_hook(%struct.step_hook* nocapture noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.step_hook, %struct.step_hook* %hook, i64 0, i32 0
  call fastcc void @unregister_debug_hook(%struct.list_head* noundef %node) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unregister_debug_hook(%struct.list_head* nocapture noundef %node) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #12
  call fastcc void @list_del_rcu(%struct.list_head* noundef %node) #14
  call fastcc void @__raw_spin_unlock() #12
  call void @synchronize_rcu() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_kernel_step_hook(%struct.step_hook* noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.step_hook, %struct.step_hook* %hook, i64 0, i32 0
  call fastcc void @register_debug_hook(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @kernel_step_hook) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_kernel_step_hook(%struct.step_hook* nocapture noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.step_hook, %struct.step_hook* %hook, i64 0, i32 0
  call fastcc void @unregister_debug_hook(%struct.list_head* noundef %node) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_user_break_hook(%struct.break_hook* noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.break_hook, %struct.break_hook* %hook, i64 0, i32 0
  call fastcc void @register_debug_hook(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @user_break_hook) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_user_break_hook(%struct.break_hook* nocapture noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.break_hook, %struct.break_hook* %hook, i64 0, i32 0
  call fastcc void @unregister_debug_hook(%struct.list_head* noundef %node) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_kernel_break_hook(%struct.break_hook* noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.break_hook, %struct.break_hook* %hook, i64 0, i32 0
  call fastcc void @register_debug_hook(%struct.list_head* noundef %node, %struct.list_head* noundef nonnull @kernel_break_hook) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_kernel_break_hook(%struct.break_hook* nocapture noundef %hook) local_unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.break_hook, %struct.break_hook* %hook, i64 0, i32 0
  call fastcc void @unregister_debug_hook(%struct.list_head* noundef %node) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @aarch32_break_handler(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #14
  %0 = inttoptr i64 %call to i8*
  %1 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 31
  %cmp = icmp eq i64 %and, 16
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @__range_ok(i8* noundef %0) #14
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #14
  %3 = bitcast i8* %call3 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #13, !srcloc !20
  %asmresult7 = extractvalue { i32, i64 } %4, 1
  %phi.bo34 = and i64 %asmresult7, 268435455
  %phi.cmp = icmp eq i64 %phi.bo34, 133169648
  br i1 %phi.cmp, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then2
  call fastcc void @send_user_sigtrap(i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -14, %entry ], [ -14, %if.then2 ], [ -14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #13, !srcloc !21
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !22
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !23
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @send_user_sigtrap(i32 noundef %si_code) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #14
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %2 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %pstate = getelementptr i8, i8* %call1, i64 16312
  %3 = bitcast i8* %pstate to i64*
  %4 = load i64, i64* %3, align 8
  %and = and i64 %4, 15
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end19, label %if.then, !prof !25

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/debug-monitors.c\22; .popsection; .long 14472b - 14470b; .short 231; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !26
  br label %cleanup

if.end19:                                         ; preds = %entry
  %and21 = and i64 %4, 128
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end19
  call fastcc void @arch_local_irq_enable() #14
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %if.end19
  %call29 = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %2) #14
  call void @arm64_force_sig_fault(i32 noundef 5, i32 noundef %si_code, i64 noundef %call29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end28
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @debug_traps_init() local_unnamed_addr #5 section ".init.text" {
entry:
  call void @hook_debug_fault_code(i32 noundef 1, i32 (i64, i32, %struct.pt_regs*)* noundef nonnull @single_step_handler, i32 noundef 5, i32 noundef 2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #12
  call void @hook_debug_fault_code(i32 noundef 6, i32 (i64, i32, %struct.pt_regs*)* noundef nonnull @brk_handler, i32 noundef 5, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_debug_fault_code(i32 noundef, i32 (i64, i32, %struct.pt_regs*)* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @single_step_handler(i64 noundef %unused, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %call2 = call fastcc i32 @call_step_hook(%struct.pt_regs* noundef %regs, i32 noundef %esr) #14
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %cleanup, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp7 = icmp eq i64 %and, 0
  br i1 %cmp7, label %if.then8, label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call fastcc void @send_user_sigtrap(i32 noundef 2) #14
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !24
  %3 = inttoptr i64 %2 to %struct.task_struct*
  call void @user_rewind_single_step(%struct.task_struct* noundef %3) #14
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true6
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #17
  %user_regs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0
  call fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* noundef %user_regs) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.end, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @brk_handler(i64 noundef %unused, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %call = call fastcc i32 @call_break_hook(%struct.pt_regs* noundef %regs, i32 noundef %esr) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.end
  call fastcc void @send_user_sigtrap(i32 noundef 1) #14
  br label %return

do.end:                                           ; preds = %if.end
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0)) #17
  br label %return

return:                                           ; preds = %entry, %if.then2, %do.end
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -14, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @user_rewind_single_step(%struct.task_struct* noundef %task) local_unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %task) #14
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %user_regs = bitcast i8* %add.ptr2 to %struct.user_pt_regs*
  call fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* noundef %user_regs) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #14
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #14
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* nocapture noundef %regs) unnamed_addr #8 {
entry:
  %pstate = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %regs, i64 0, i32 3
  %0 = load i64, i64* %pstate, align 8
  %or = or i64 %0, 2097152
  store i64 %or, i64* %pstate, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @user_fastforward_single_step(%struct.task_struct* noundef %task) local_unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %task) #14
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %user_regs = bitcast i8* %add.ptr2 to %struct.user_pt_regs*
  call fastcc void @clear_user_regs_spsr_ss(%struct.user_pt_regs* noundef %user_regs) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clear_user_regs_spsr_ss(%struct.user_pt_regs* nocapture noundef %regs) unnamed_addr #8 {
entry:
  %pstate = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %regs, i64 0, i32 3
  %0 = load i64, i64* %pstate, align 8
  %and = and i64 %0, -2097153
  store i64 %and, i64* %pstate, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @user_regs_reset_single_step(%struct.user_pt_regs* nocapture noundef %regs, %struct.task_struct* noundef %task) local_unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* noundef %regs) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @clear_user_regs_spsr_ss(%struct.user_pt_regs* noundef %regs) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_enable_single_step(%struct.pt_regs* nocapture noundef %regs) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call9 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !27

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/debug-monitors.c\22; .popsection; .long 14472b - 14470b; .short 419; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %user_regs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0
  call fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* noundef %user_regs) #14
  %call27 = call fastcc i32 @mdscr_read() #14
  %or = or i32 %call27, 1
  call fastcc void @mdscr_write(i32 noundef %or) #14
  call void @enable_debug_monitors(i32 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !29
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !30
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_disable_single_step() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call9 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !27

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/debug-monitors.c\22; .popsection; .long 14472b - 14470b; .short 428; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call27 = call fastcc i32 @mdscr_read() #14
  %and = and i32 %call27, -2
  call fastcc void @mdscr_write(i32 noundef %and) #14
  call void @disable_debug_monitors(i32 noundef 1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_active_single_step() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call9 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !27

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/debug-monitors.c\22; .popsection; .long 14472b - 14470b; .short 436; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call27 = call fastcc i32 @mdscr_read() #14
  %and = and i32 %call27, 1
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @user_enable_single_step(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %task) #14
  %call1 = call fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %task) #14
  %add.ptr3 = getelementptr i8, i8* %call2, i64 16048
  %user_regs = bitcast i8* %add.ptr3 to %struct.user_pt_regs*
  call fastcc void @set_user_regs_spsr_ss(%struct.user_pt_regs* noundef %user_regs) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #2 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_set_bit(i64* noundef %flags) #14
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @user_disable_single_step(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %task) #14
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags) #14
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_daif_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @local_daif_save_flags() #14
  call fastcc void @local_daif_mask() #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 %flags) #13, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_daif_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, daif", "=r"() #13, !srcloc !34
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_mask() unnamed_addr #0 {
entry:
  call void asm sideeffect "msr\09daifset, #0xf\09\09// local_daif_mask\0A", "~{memory}"() #13, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 115, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @clear_os_lock, i32 (i32)* noundef null, i1 noundef false) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @clear_os_lock(i32 noundef %cpu) #0 {
entry:
  call void asm sideeffect "msr osdlr_el1, ${0:x}", "rZ"(i64 0) #13, !srcloc !36
  call void asm sideeffect "msr oslar_el1, ${0:x}", "rZ"(i64 0) #13, !srcloc !37
  call void asm sideeffect "isb", "~{memory}"() #13, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  call fastcc void @do_raw_spin_lock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !25

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @debug_hook_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @debug_hook_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @debug_hook_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !40
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #13, !srcloc !41
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @debug_hook_lock to i8*), i8 0) #13, !srcloc !43
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_force_sig_fault(i32 noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @call_step_hook(%struct.pt_regs* noundef %regs, i32 noundef %esr) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  %cond = select i1 %cmp, %struct.list_head* @user_step_hook, %struct.list_head* @kernel_step_hook
  %next = select i1 %cmp, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @user_step_hook, i64 0, i32 0), %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @kernel_step_hook, i64 0, i32 0)
  %hook.0.in30 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp6.not31 = icmp eq %struct.list_head* %hook.0.in30, %cond
  br i1 %cmp6.not31, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %next14 = getelementptr %struct.list_head, %struct.list_head* %hook.0.in32, i64 0, i32 0
  %hook.0.in = load volatile %struct.list_head*, %struct.list_head** %next14, align 8
  %cmp6.not = icmp eq %struct.list_head* %hook.0.in, %cond
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %hook.0.in32 = phi %struct.list_head* [ %hook.0.in, %for.cond ], [ %hook.0.in30, %entry ]
  %fn = getelementptr inbounds %struct.list_head, %struct.list_head* %hook.0.in32, i64 1
  %2 = bitcast %struct.list_head* %fn to i32 (%struct.pt_regs*, i32)**
  %3 = load i32 (%struct.pt_regs*, i32)*, i32 (%struct.pt_regs*, i32)** %2, align 8
  %call = call i32 %3(%struct.pt_regs* noundef %regs, i32 noundef %esr) #12
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %entry
  %retval1.1 = phi i32 [ 1, %entry ], [ 0, %for.body ], [ %call, %for.cond ]
  ret i32 %retval1.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @call_break_hook(%struct.pt_regs* noundef %regs, i32 noundef %esr) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  %cond = select i1 %cmp, %struct.list_head* @user_break_hook, %struct.list_head* @kernel_break_hook
  %next = select i1 %cmp, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @user_break_hook, i64 0, i32 0), %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @kernel_break_hook, i64 0, i32 0)
  %hook.0.in39 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp5.not40 = icmp eq %struct.list_head* %hook.0.in39, %cond
  br i1 %cmp5.not40, label %cond.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %and6 = and i32 %esr, 65535
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %hook.0.in42 = phi %struct.list_head* [ %hook.0.in39, %for.body.lr.ph ], [ %hook.0.in, %if.end ]
  %fn.041 = phi i32 (%struct.pt_regs*, i32)* [ null, %for.body.lr.ph ], [ %fn.1, %if.end ]
  %hook.0 = bitcast %struct.list_head* %hook.0.in42 to %struct.break_hook*
  %mask = getelementptr inbounds %struct.break_hook, %struct.break_hook* %hook.0, i64 0, i32 3
  %2 = load i16, i16* %mask, align 2
  %conv = zext i16 %2 to i32
  %neg = xor i32 %conv, -1
  %and7 = and i32 %and6, %neg
  %imm = getelementptr inbounds %struct.list_head, %struct.list_head* %hook.0.in42, i64 1, i32 1
  %3 = bitcast %struct.list_head** %imm to i16*
  %4 = load i16, i16* %3, align 8
  %conv8 = zext i16 %4 to i32
  %cmp9 = icmp eq i32 %and7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fn11 = getelementptr inbounds %struct.list_head, %struct.list_head* %hook.0.in42, i64 1
  %5 = bitcast %struct.list_head* %fn11 to i32 (%struct.pt_regs*, i32)**
  %6 = load i32 (%struct.pt_regs*, i32)*, i32 (%struct.pt_regs*, i32)** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %fn.1 = phi i32 (%struct.pt_regs*, i32)* [ %6, %if.then ], [ %fn.041, %for.body ]
  %next18 = getelementptr %struct.list_head, %struct.list_head* %hook.0.in42, i64 0, i32 0
  %hook.0.in = load volatile %struct.list_head*, %struct.list_head** %next18, align 8
  %cmp5.not = icmp eq %struct.list_head* %hook.0.in, %cond
  br i1 %cmp5.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 (%struct.pt_regs*, i32)* %fn.1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.end
  %call = call i32 %fn.1(%struct.pt_regs* noundef %regs, i32 noundef %esr) #12
  br label %cond.end

cond.end:                                         ; preds = %entry, %for.end, %cond.true
  %cond24 = phi i32 [ %call, %cond.true ], [ 1, %for.end ], [ 1, %entry ]
  ret i32 %cond24
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 21
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2097152
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #12
  %2 = and i64 %call.i.i.i, 2097152
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2097152, i64* elementtype(i64) %counter) #13, !srcloc !45
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 2097152, i64* elementtype(i64) %counter) #13, !srcloc !46
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2153974835}
!9 = !{i64 2153975647}
!10 = !{i64 2153980670}
!11 = !{i64 2153981482}
!12 = !{i64 2149166589, i64 2149166631, i64 2149166690, i64 2149166743}
!13 = !{i64 2149127705, i64 2149127752, i64 2149127758, i64 2149127795, i64 2149127813, i64 2149128740, i64 2149128788, i64 2149128836, i64 2149128899, i64 2149128948, i64 2149127891, i64 2149127916, i64 2149127942, i64 2149127948, i64 2149127985, i64 2149127991, i64 2149128041, i64 2149128087, i64 2149128120}
!14 = !{i64 2153959106}
!15 = !{i64 2153958930}
!16 = !{i64 2153988176}
!17 = !{i64 2153988988}
!18 = !{i64 2153994025}
!19 = !{i64 2153994837}
!20 = !{i64 2154087906, i64 2154087943, i64 2154087960, i64 2154087995, i64 2154088017, i64 2154088043, i64 2154088066, i64 2154088084, i64 2154088243, i64 2154088284, i64 2154088306, i64 2154088352}
!21 = !{i64 4297283, i64 4297366, i64 4297590, i64 4297810, i64 4297833}
!22 = !{i64 4301985, i64 4302009}
!23 = !{i64 2151854769}
!24 = !{i64 330243}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2154038983}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2154092656}
!29 = !{i64 2148985128, i64 2148985175, i64 2148985181, i64 2148985218, i64 2148985236, i64 2148986547, i64 2148986595, i64 2148986643, i64 2148986706, i64 2148986755, i64 2148985314, i64 2148985339, i64 2148985365, i64 2148985371, i64 2148986213, i64 2148986253, i64 2148986271, i64 2148986303, i64 2148986331, i64 2148986385, i64 2148986405, i64 2148986502, i64 2148985394, i64 2148985408, i64 2148985414, i64 2148985464, i64 2148985510, i64 2148985543}
!30 = !{i64 2148987307, i64 2148987354, i64 2148987360, i64 2148987397, i64 2148987415, i64 2148988358, i64 2148988406, i64 2148988454, i64 2148988517, i64 2148988566, i64 2148987493, i64 2148987518, i64 2148987544, i64 2148987550, i64 2148987587, i64 2148987593, i64 2148987643, i64 2148987689, i64 2148987722}
!31 = !{i64 2154099329}
!32 = !{i64 2154101897}
!33 = !{i64 2153947376}
!34 = !{i64 2153941680}
!35 = !{i64 6385980}
!36 = !{i64 2153996143}
!37 = !{i64 2153996327}
!38 = !{i64 2153996470}
!39 = !{i64 2149745581}
!40 = !{i64 2148092676, i64 2148092709, i64 2148092762, i64 2148092821, i64 2148092855, i64 2148092910, i64 2148092939, i64 2148092959}
!41 = !{i64 2149523020}
!42 = !{i64 2149752862}
!43 = !{i64 2149699710}
!44 = !{i64 2148969969, i64 2148970016, i64 2148970022, i64 2148970059, i64 2148970077, i64 2148971417, i64 2148971465, i64 2148971513, i64 2148971576, i64 2148971625, i64 2148970155, i64 2148970180, i64 2148970206, i64 2148970212, i64 2148971083, i64 2148971123, i64 2148971141, i64 2148971173, i64 2148971201, i64 2148971255, i64 2148971275, i64 2148971372, i64 2148970235, i64 2148970249, i64 2148970255, i64 2148970305, i64 2148970351, i64 2148970384}
!45 = !{i64 2148066740, i64 2148067392, i64 2148067422, i64 2148067453, i64 2148067485, i64 2148067520, i64 2148067545}
!46 = !{i64 2148076464, i64 2148076985, i64 2148077015, i64 2148077041, i64 2148077073, i64 2148077102}
