; ModuleID = 'arch/arm64/kernel/fpsimd.c'
source_filename = "arch/arm64/kernel/fpsimd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_fpsimd__256_1460_fpsimd_init1:\09\09\09"
module asm ".long\09fpsimd_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.fpsimd_last_state_struct = type { %struct.user_fpsimd_state*, i8*, i32 }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.64, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.debug_info = type {}

@fpsimd_last_state = internal global %struct.fpsimd_last_state_struct zeroinitializer, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__UNIQUE_ID___addressable_fpsimd_init257 = internal global i8* bitcast (i32 ()* @fpsimd_init to i8*), section ".discard.addressable", align 8
@fpsimd_context_busy = dso_local global i8 0, section ".data..percpu", align 1
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"\015Floating-point is not implemented\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\015Advanced SIMD is not implemented\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_fpsimd_init257 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_sve_acc(i32 noundef %esr, %struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  call void @force_signal_inject(i32 noundef 4, i32 noundef 1, i64 noundef %1, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_signal_inject(i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_cpu_fpsimd_context() unnamed_addr #0 {
entry:
  call fastcc void @local_bh_disable() #11
  call fastcc void @__get_cpu_fpsimd_context() #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fpsimd_bind_task_to_cpu() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (%struct.fpsimd_last_state_struct* @fpsimd_last_state to i64)
  %0 = inttoptr i64 %add to %struct.fpsimd_last_state_struct*
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1120; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then, %system_supports_fpsimd.exit
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 137, i32 1, i32 2
  %st = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 0
  store %struct.user_fpsimd_state* %fpsimd_state, %struct.user_fpsimd_state** %st, align 8
  %sve_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 137, i32 3
  %3 = load i8*, i8** %sve_state, align 8
  %sve_state21 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 1
  store i8* %3, i8** %sve_state21, align 8
  %sve_vl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 137, i32 4
  %4 = load i32, i32* %sve_vl, align 16
  %sve_vl24 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 2
  store i32 %4, i32* %sve_vl24, align 8
  %call32 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add33 = add i64 %call32, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add33 to i32*
  %6 = load i32, i32* %5, align 4
  %fpsimd_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 137, i32 2
  store i32 %6, i32* %fpsimd_cpu, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cpu_fpsimd_context() unnamed_addr #0 {
entry:
  call fastcc void @__put_cpu_fpsimd_context() #11
  call fastcc void @local_bh_enable() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_fpsimd_acc(i32 noundef %esr, %struct.pt_regs* nocapture noundef readnone %regs) local_unnamed_addr #0 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 978; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_fpsimd_exc(i32 noundef %esr, %struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %0 = and i32 %esr, 8388608
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %esr, 1
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.end23

if.else:                                          ; preds = %if.then
  %and4 = and i32 %esr, 2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.end23

if.else7:                                         ; preds = %if.else
  %and8 = and i32 %esr, 4
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.end23

if.else11:                                        ; preds = %if.else7
  %and12 = and i32 %esr, 8
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else15, label %if.end23

if.else15:                                        ; preds = %if.else11
  %and16 = and i32 %esr, 16
  %tobool17.not = icmp eq i32 %and16, 0
  %spec.select = select i1 %tobool17.not, i32 14, i32 6
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else11, %if.else7, %if.else, %if.then, %entry
  %si_code.0 = phi i32 [ 14, %entry ], [ 7, %if.then ], [ 3, %if.else ], [ 4, %if.else7 ], [ 5, %if.else11 ], [ %spec.select, %if.else15 ]
  %call = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #11
  %1 = inttoptr i64 %call to i8*
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call25 = call i32 @send_sig_fault(i32 noundef 8, i32 noundef %si_code.0, i8* noundef %1, %struct.task_struct* noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_fault(i32 noundef, i32 noundef, i8* noundef, %struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_thread_switch(%struct.task_struct* noundef %next) local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %cleanup, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @__get_cpu_fpsimd_context() #11
  call fastcc void @fpsimd_save() #11
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call8, ptrtoint (%struct.fpsimd_last_state_struct* @fpsimd_last_state to i64)
  %0 = inttoptr i64 %add to %struct.user_fpsimd_state**
  %1 = load %struct.user_fpsimd_state*, %struct.user_fpsimd_state** %0, align 8
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 137, i32 1, i32 2
  %cmp = icmp ne %struct.user_fpsimd_state* %1, %fpsimd_state
  %fpsimd_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 137, i32 2
  %2 = load i32, i32* %fpsimd_cpu, align 16
  %add19 = add i64 %call8, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add19 to i32*
  %4 = load i32, i32* %3, align 4
  %cmp20 = icmp ne i32 %2, %4
  %5 = select i1 %cmp, i1 true, i1 %cmp20
  call fastcc void @update_tsk_thread_flag(%struct.task_struct* noundef %next, i1 noundef %5) #11
  call fastcc void @__put_cpu_fpsimd_context() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__get_cpu_fpsimd_context() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i8* @fpsimd_context_busy to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = load i8, i8* %0, align 1, !range !12
  %tobool.not = icmp eq i8 %1, 0
  store i8 1, i8* %0, align 1
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 171; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fpsimd_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (%struct.fpsimd_last_state_struct* @fpsimd_last_state to i64)
  %0 = inttoptr i64 %add to %struct.fpsimd_last_state_struct*
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 308; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then, %system_supports_fpsimd.exit
  %call19 = call fastcc i1 @have_cpu_fpsimd_context() #11
  br i1 %call19, label %if.end35, label %if.then34, !prof !13

if.then34:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 309; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !16
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call45 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 3) #11
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end35
  %st = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 0
  %4 = load %struct.user_fpsimd_state*, %struct.user_fpsimd_state** %st, align 8
  call void @fpsimd_save_state(%struct.user_fpsimd_state* noundef %4) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end35
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #14, !srcloc !17
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_tsk_thread_flag(%struct.task_struct* noundef %tsk, i1 noundef %value) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #11
  call fastcc void @update_ti_thread_flag(%struct.thread_info* noundef %call, i1 noundef %value) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__put_cpu_fpsimd_context() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i8* @fpsimd_context_busy to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = load i8, i8* %0, align 1, !range !12
  %tobool.not = icmp eq i8 %1, 0
  store i8 0, i8* %0, align 1
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 193; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_flush_thread() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %cleanup, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @get_cpu_fpsimd_context() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call void @fpsimd_flush_task_state(%struct.task_struct* noundef %1) #11
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2
  %2 = bitcast %struct.user_fpsimd_state* %fpsimd_state to i8*
  %call3 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 528) #10
  call fastcc void @put_cpu_fpsimd_context() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_flush_task_state(%struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %fpsimd_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 137, i32 2
  store i32 256, i32* %fpsimd_cpu, align 16
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %return, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %t) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_preserve_current_state() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %return, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @get_cpu_fpsimd_context() #11
  call fastcc void @fpsimd_save() #11
  call fastcc void @put_cpu_fpsimd_context() #11
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_signal_preserve_current_state() local_unnamed_addr #0 {
entry:
  call void @fpsimd_preserve_current_state() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 23) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_bind_state_to_cpu(%struct.user_fpsimd_state* noundef %st, i8* noundef %sve_state, i32 noundef %sve_vl) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (%struct.fpsimd_last_state_struct* @fpsimd_last_state to i64)
  %0 = inttoptr i64 %add to %struct.fpsimd_last_state_struct*
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1143; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then, %system_supports_fpsimd.exit
  %call19 = call fastcc i32 @preempt_count() #11
  %1 = and i32 %call19, 65280
  %tobool21.not = icmp eq i32 %1, 0
  br i1 %tobool21.not, label %land.rhs, label %if.end52

land.rhs:                                         ; preds = %if.end
  %call25 = call fastcc i64 @arch_local_save_flags() #11
  %call35 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call25) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then51, label %if.end52, !prof !8

if.then51:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1144; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !22
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then51, %land.rhs
  %st61 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 0
  store %struct.user_fpsimd_state* %st, %struct.user_fpsimd_state** %st61, align 8
  %sve_state62 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 1
  store i8* %sve_state, i8** %sve_state62, align 8
  %sve_vl63 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %0, i64 0, i32 2
  store i32 %sve_vl, i32* %sve_vl63, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !23
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !24
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_restore_current_state() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2) #11
  br label %return

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @get_cpu_fpsimd_context() #11
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %5 = getelementptr %struct.task_struct, %struct.task_struct* %4, i64 0, i32 0
  %call3 = call fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %5) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @task_fpsimd_load() #11
  call fastcc void @fpsimd_bind_task_to_cpu() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  call fastcc void @put_cpu_fpsimd_context() #11
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #11
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_fpsimd_load() unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 287; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then, %system_supports_fpsimd.exit
  %call16 = call fastcc i1 @have_cpu_fpsimd_context() #11
  br i1 %call16, label %if.end32, label %if.then31, !prof !13

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 288; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !26
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2
  call void @fpsimd_load_state(%struct.user_fpsimd_state* noundef %fpsimd_state) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_update_current_state(%struct.user_fpsimd_state* nocapture noundef readonly %state) local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end17, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end17, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1189; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !27
  br label %return

if.end17:                                         ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @get_cpu_fpsimd_context() #11
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2
  %2 = bitcast %struct.user_fpsimd_state* %fpsimd_state to i8*
  %3 = bitcast %struct.user_fpsimd_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 16 dereferenceable(528) %2, i8* noundef align 16 dereferenceable(528) %3, i64 528, i1 false)
  %4 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call20 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %4, i32 noundef 23) #11
  call fastcc void @task_fpsimd_load() #11
  call fastcc void @fpsimd_bind_task_to_cpu() #11
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %4) #11
  call fastcc void @put_cpu_fpsimd_context() #11
  br label %return

return:                                           ; preds = %if.then, %if.end17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #11
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fpsimd_save_and_flush_cpu_state() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end4

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %return, label %if.end4

if.end4:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @__get_cpu_fpsimd_context() #11
  call fastcc void @fpsimd_save() #11
  call fastcc void @fpsimd_flush_cpu_state() #11
  call fastcc void @__put_cpu_fpsimd_context() #11
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fpsimd_flush_cpu_state() unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %if.end, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1240; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then, %system_supports_fpsimd.exit
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call22, ptrtoint (%struct.fpsimd_last_state_struct* @fpsimd_last_state to i64)
  %0 = inttoptr i64 %add to %struct.user_fpsimd_state**
  store %struct.user_fpsimd_state* null, %struct.user_fpsimd_state** %0, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_neon_begin() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %if.then, label %do.body, !prof !8

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %if.then, label %do.body, !prof !8

if.then:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1281; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !29
  br label %return

do.body:                                          ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %call18 = call fastcc i1 @may_use_simd() #11
  br i1 %call18, label %do.end33, label %do.body29, !prof !13

do.body29:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/fpsimd.c\22; .popsection; .long 14472b - 14470b; .short 1284; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !30
  unreachable

do.end33:                                         ; preds = %do.body
  call fastcc void @get_cpu_fpsimd_context() #11
  call fastcc void @fpsimd_save() #11
  call fastcc void @fpsimd_flush_cpu_state() #11
  br label %return

return:                                           ; preds = %if.then, %do.end33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @may_use_simd() unnamed_addr #0 {
entry:
  %call.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/simd.h\22; .popsection; .long 14472b - 14470b; .short 38; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !31
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %land.lhs.true
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %land.end, label %land.lhs.true18

system_supports_fpsimd.exit:                      ; preds = %land.lhs.true
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %call19 = call fastcc i32 @preempt_count() #11
  %0 = and i32 %call19, 983040
  %tobool21.not = icmp eq i32 %0, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %land.end

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %call25 = call fastcc i64 @arch_local_save_flags() #11
  %call33 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call25) #11
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %land.end

land.lhs.true35:                                  ; preds = %land.lhs.true22
  %call36 = call fastcc i32 @preempt_count() #11
  %1 = and i32 %call36, 15728640
  %tobool39.not = icmp eq i32 %1, 0
  br i1 %tobool39.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true35
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %call49 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call49, ptrtoint (i8* @fpsimd_context_busy to i64)
  %2 = inttoptr i64 %add to i8*
  %call50 = call fastcc i64 @__percpu_read_8(i8* noundef %2) #11
  %tobool51.not = icmp eq i64 %call50, 0
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %land.end

land.end:                                         ; preds = %if.then3.i.i, %if.then, %land.rhs, %land.lhs.true35, %land.lhs.true22, %land.lhs.true18, %system_supports_fpsimd.exit
  %3 = phi i1 [ false, %land.lhs.true35 ], [ false, %land.lhs.true22 ], [ false, %land.lhs.true18 ], [ false, %system_supports_fpsimd.exit ], [ false, %if.then ], [ %tobool51.not, %land.rhs ], [ false, %if.then3.i.i ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_neon_end() local_unnamed_addr #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #10
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #10
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #10
  br i1 %call6.i.i, label %return, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  call fastcc void @put_cpu_fpsimd_context() #11
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @fpsimd_init() #6 section ".init.text" {
entry:
  %call = call i1 @cpu_have_feature(i32 noundef 0) #10
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %entry, %do.end
  %call2 = call i1 @cpu_have_feature(i32 noundef 1) #10
  br i1 %call2, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_disable() unnamed_addr #0 {
__here:
  call fastcc void @__preempt_count_add() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_enable() #0 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  call void @__local_bh_enable_ip(i64 noundef ptrtoint (i8* blockaddress(@local_bh_enable, %__here) to i64), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #2 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 4194304
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @have_cpu_fpsimd_context() unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i8* @fpsimd_context_busy to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = load i8, i8* %0, align 1, !range !12
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_save_state(%struct.user_fpsimd_state* noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_ti_thread_flag(%struct.thread_info* noundef %ti, i1 noundef %value) unnamed_addr #0 {
entry:
  br i1 %value, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #8 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #12, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #12, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 8
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #10
  %2 = and i64 %call.i.i.i, 8
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 8, i64* elementtype(i64) %counter) #12, !srcloc !37
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_load_state(%struct.user_fpsimd_state* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_8(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = load volatile i8, i8* %ptr, align 1
  %conv = zext i8 %0 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpu_have_feature(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }

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
!9 = !{i64 2153501310}
!10 = !{i64 1237126}
!11 = !{i64 2153485051}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153445766}
!15 = !{i64 2153470138}
!16 = !{i64 2153471780}
!17 = !{i64 2149038544, i64 2149038591, i64 2149038597, i64 2149038634, i64 2149038652, i64 2149039579, i64 2149039627, i64 2149039675, i64 2149039738, i64 2149039787, i64 2149038730, i64 2149038755, i64 2149038781, i64 2149038787, i64 2149038824, i64 2149038830, i64 2149038880, i64 2149038926, i64 2149038959}
!18 = !{i64 2153452900}
!19 = !{i64 2153509863}
!20 = !{i64 2153509903}
!21 = !{i64 2153504680}
!22 = !{i64 2153507421}
!23 = !{i64 2149244041, i64 2149244088, i64 2149244094, i64 2149244131, i64 2149244149, i64 2149245460, i64 2149245508, i64 2149245556, i64 2149245619, i64 2149245668, i64 2149244227, i64 2149244252, i64 2149244278, i64 2149244284, i64 2149245126, i64 2149245166, i64 2149245184, i64 2149245216, i64 2149245244, i64 2149245298, i64 2149245318, i64 2149245415, i64 2149244307, i64 2149244321, i64 2149244327, i64 2149244377, i64 2149244423, i64 2149244456}
!24 = !{i64 2149246220, i64 2149246267, i64 2149246273, i64 2149246310, i64 2149246328, i64 2149247271, i64 2149247319, i64 2149247367, i64 2149247430, i64 2149247479, i64 2149246406, i64 2149246431, i64 2149246457, i64 2149246463, i64 2149246500, i64 2149246506, i64 2149246556, i64 2149246602, i64 2149246635}
!25 = !{i64 2153465029}
!26 = !{i64 2153466671}
!27 = !{i64 2153509276}
!28 = !{i64 2153511248}
!29 = !{i64 2153519671}
!30 = !{i64 2153521067}
!31 = !{i64 2153422164}
!32 = !{i64 2153424647}
!33 = !{i64 2153425519}
!34 = !{i64 2148785185}
!35 = !{i64 2147813741, i64 2147814252, i64 2147814282, i64 2147814308, i64 2147814340, i64 2147814369}
!36 = !{i64 2147824311, i64 2147824832, i64 2147824862, i64 2147824888, i64 2147824920, i64 2147824949}
!37 = !{i64 2147825164, i64 2147825826, i64 2147825856, i64 2147825887, i64 2147825919, i64 2147825954, i64 2147825979}
