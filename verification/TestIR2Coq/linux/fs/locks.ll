; ModuleID = 'fs/locks.c'
source_filename = "fs/locks.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_locks__435_2936_proc_locks_init5:\09\09\09"
module asm ".long\09proc_locks_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_locks__437_2959_filelock_init1:\09\09\09"
module asm ".long\09filelock_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kmem_cache = type opaque
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.40, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.mm_struct = type { %struct.anon.11, [0 x i64] }
%struct.anon.11 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.60, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.60 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.55, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.56, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.55 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.56 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.41, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon, i8* }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, {}*, {}*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, {}*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.65, i32 }
%union.anon.65 = type { %struct.kuid_t }
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
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.8, %union.anon.9 }
%union.anon.8 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.9 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.61, %struct.qspinlock }
%union.anon.61 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [48 x i8] }
%struct.anon.21 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.22, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%struct.request_queue = type opaque
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.39, i32, [12 x i8] }
%union.anon.39 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.59, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.59 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, %struct.notifier_block* }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.file_lock_list_struct = type { %struct.spinlock, %struct.hlist_head }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.pt_regs = type { %union.anon.78, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.78 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.flock64 = type { i16, i16, i64, i64, i32 }
%struct.proc_dir_entry = type opaque
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.locks_iterator = type { i32, i64 }

@leases_enable = dso_local local_unnamed_addr global i32 1, align 4
@lease_break_time = dso_local local_unnamed_addr global i32 45, align 4
@flctx_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@filelock_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@blocked_lock_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"\013locks_delete_lock: fasync == %p\0A\00", align 1
@file_rwsem = internal global %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.percpu_rw_semaphore* @file_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.percpu_rw_semaphore* @file_rwsem to i8*), i64 16) to %struct.list_head*) } }, %struct.callback_head zeroinitializer }, i32* @__percpu_rwsem_rc_file_rwsem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.percpu_rw_semaphore* @file_rwsem to i8*), i64 72) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.percpu_rw_semaphore* @file_rwsem to i8*), i64 72) to %struct.list_head*) } }, %struct.atomic_t zeroinitializer }, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@lease_notifier_chain = internal global %struct.srcu_notifier_head zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FLOCK\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LEASE\00", align 1
@__UNIQUE_ID___addressable_proc_locks_init436 = internal global i8* bitcast (i32 ()* @proc_locks_init to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_filelock_init438 = internal global i8* bitcast (i32 ()* @filelock_init to i8*), section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"\014Leaked locks on dev=0x%x:0x%x ino=0x%lx:\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\014%s: fl_owner=%p fl_flags=0x%x fl_type=0x%x fl_pid=%u\0A\00", align 1
@locks_init_lock_heads.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&fl->fl_wait\00", align 1
@blocked_hash = internal global [128 x %struct.hlist_head] zeroinitializer, align 8
@file_lock_list = internal global %struct.file_lock_list_struct zeroinitializer, section ".data..percpu", align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@lease_manager_ops = internal constant %struct.lock_manager_operations { i8* (i8*)* null, void (i8*)* null, void (%struct.file_lock*)* null, i32 (%struct.file_lock*, i32)* null, i1 (%struct.file_lock*)* @lease_break_callback, i32 (%struct.file_lock*, i32, %struct.list_head*)* @lease_modify, void (%struct.file_lock*, i8**)* @lease_setup, i1 (%struct.file_lock*)* null }, align 8
@__percpu_rwsem_rc_file_rwsem = internal global i32 0, section ".data..percpu", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 8
@.str.7 = private unnamed_addr constant [95 x i8] c"\014Leaked %s lock on dev=0x%x:0x%x ino=0x%lx  fl_owner=%p fl_flags=0x%x fl_type=0x%x fl_pid=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"lock:\09\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%lld: \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ACCESS\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"OFDLCK\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"POSIX \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"*NOINODE*\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ADVISORY \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"FLOCK  MSNFS     \00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"FLOCK  ADVISORY  \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"DELEG  \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"LEASE  \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"BREAKING  \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ACTIVE    \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"BREAKER   \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"UNKNOWN UNKNOWN  \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"RW   \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"READ \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"NONE \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"UNLCK\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"%d %02x:%02x:%lu \00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%d <none>:0 \00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%Ld EOF\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"%Ld %Ld\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"0 EOF\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"locks\00", align 1
@locks_seq_operations = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @locks_start, void (%struct.seq_file*, i8*)* @locks_stop, i8* (%struct.seq_file*, i8*, i64*)* @locks_next, i32 (%struct.seq_file*, i8*)* @locks_show }, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"file_lock_ctx\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"file_lock_cache\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_filelock_init438 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_locks_init436 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_free_lock_context(%struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call fastcc void @locks_check_ctx_lists(%struct.inode* noundef %inode) #16
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @flctx_cache, align 8
  %2 = bitcast %struct.file_lock_context* %0 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef nonnull %2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_check_ctx_lists(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %flc_flock = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_flock) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %lor.lhs.false, !prof !9

lor.lhs.false:                                    ; preds = %entry
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 2
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_posix) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %lor.lhs.false
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_lease) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry, %lor.lhs.false, %lor.rhs
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 1
  %2 = load i32, i32* %s_dev, align 16
  %shr = lshr i32 %2, 20
  %and = and i32 %2, 1048575
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 noundef %shr, i32 noundef %and, i64 noundef %3) #18
  call fastcc void @locks_dump_ctx_list(%struct.list_head* noundef %flc_flock, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #16
  %flc_posix12 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 2
  call fastcc void @locks_dump_ctx_list(%struct.list_head* noundef %flc_posix12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #16
  %flc_lease13 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  call fastcc void @locks_dump_ctx_list(%struct.list_head* noundef %flc_lease13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file_lock* @locks_alloc_lock() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @filelock_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #16
  %1 = bitcast i8* %call to %struct.file_lock*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @locks_init_lock_heads(%struct.file_lock* noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.file_lock* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_init_lock_heads(%struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 2
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %fl_link) #16
  %fl_list = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %fl_list) #16
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %fl_blocked_requests) #16
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %fl_blocked_member) #16
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 10
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %fl_wait, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @locks_init_lock_heads.__key) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_release_private(%struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 10
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %fl_wait) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body7, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 357; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !10
  unreachable

do.body7:                                         ; preds = %entry
  %fl_list = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 1
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_list) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body20, label %do.body26, !prof !9

do.body20:                                        ; preds = %do.body7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 358; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !11
  unreachable

do.body26:                                        ; preds = %do.body7
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 3
  %call27 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body39, label %do.body45, !prof !9

do.body39:                                        ; preds = %do.body26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 359; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !12
  unreachable

do.body45:                                        ; preds = %do.body26
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 4
  %call46 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body58, label %do.body64, !prof !9

do.body58:                                        ; preds = %do.body45
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 360; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !13
  unreachable

do.body64:                                        ; preds = %do.body45
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 2
  %call65 = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %fl_link) #16
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body77, label %do.end82, !prof !9

do.body77:                                        ; preds = %do.body64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 361; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !14
  unreachable

do.end82:                                         ; preds = %do.body64
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 17
  %0 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops, align 8
  %tobool83.not = icmp eq %struct.file_lock_operations* %0, null
  br i1 %tobool83.not, label %if.end92, label %if.then84

if.then84:                                        ; preds = %do.end82
  %fl_release_private = getelementptr inbounds %struct.file_lock_operations, %struct.file_lock_operations* %0, i64 0, i32 1
  %1 = load void (%struct.file_lock*)*, void (%struct.file_lock*)** %fl_release_private, align 8
  %tobool86.not = icmp eq void (%struct.file_lock*)* %1, null
  br i1 %tobool86.not, label %if.end90, label %if.then87

if.then87:                                        ; preds = %if.then84
  call void %1(%struct.file_lock* noundef %fl) #17
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then84
  store %struct.file_lock_operations* null, %struct.file_lock_operations** %fl_ops, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %do.end82
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 18
  %2 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %tobool93.not = icmp eq %struct.lock_manager_operations* %2, null
  br i1 %tobool93.not, label %if.end103, label %if.then94

if.then94:                                        ; preds = %if.end92
  %lm_put_owner = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %2, i64 0, i32 1
  %3 = load void (i8*)*, void (i8*)** %lm_put_owner, align 8
  %tobool96.not = icmp eq void (i8*)* %3, null
  br i1 %tobool96.not, label %if.end101, label %if.then97

if.then97:                                        ; preds = %if.then94
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 5
  %4 = load i8*, i8** %fl_owner, align 8
  call void %3(i8* noundef %4) #17
  store i8* null, i8** %fl_owner, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.then94
  store %struct.lock_manager_operations* null, %struct.lock_manager_operations** %fl_lmops, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.end92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #16
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #4 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_free_lock(%struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  call void @locks_release_private(%struct.file_lock* noundef %fl) #16
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @filelock_cache, align 8
  %1 = bitcast %struct.file_lock* %fl to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_init_lock(%struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.file_lock* %fl to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 216) #17
  call fastcc void @locks_init_lock_heads(%struct.file_lock* noundef %fl) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_copy_conflock(%struct.file_lock* nocapture noundef writeonly %new, %struct.file_lock* nocapture noundef readonly %fl) local_unnamed_addr #0 {
entry:
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 5
  %0 = load i8*, i8** %fl_owner, align 8
  %fl_owner1 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 5
  store i8* %0, i8** %fl_owner1, align 8
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 8
  %1 = load i32, i32* %fl_pid, align 8
  %fl_pid2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 8
  store i32 %1, i32* %fl_pid2, align 8
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 11
  store %struct.file* null, %struct.file** %fl_file, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %2 = load i32, i32* %fl_flags, align 8
  %fl_flags3 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 6
  store i32 %2, i32* %fl_flags3, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %3 = load i8, i8* %fl_type, align 4
  %fl_type4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 7
  store i8 %3, i8* %fl_type4, align 4
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  %4 = load i64, i64* %fl_start, align 8
  %fl_start5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 12
  store i64 %4, i64* %fl_start5, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  %5 = load i64, i64* %fl_end, align 8
  %fl_end6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 13
  store i64 %5, i64* %fl_end6, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 18
  %6 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %fl_lmops7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 18
  store %struct.lock_manager_operations* %6, %struct.lock_manager_operations** %fl_lmops7, align 8
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 17
  store %struct.file_lock_operations* null, %struct.file_lock_operations** %fl_ops, align 8
  %7 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %tobool.not = icmp eq %struct.lock_manager_operations* %7, null
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %lm_get_owner = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %7, i64 0, i32 0
  %8 = load i8* (i8*)*, i8* (i8*)** %lm_get_owner, align 8
  %tobool10.not = icmp eq i8* (i8*)* %8, null
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.then
  %9 = load i8*, i8** %fl_owner, align 8
  %call = call i8* %8(i8* noundef %9) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then, %if.then11, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_copy_lock(%struct.file_lock* noundef %new, %struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 17
  %0 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops, align 8
  %tobool.not = icmp eq %struct.file_lock_operations* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 431; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @locks_copy_conflock(%struct.file_lock* noundef %new, %struct.file_lock* noundef %fl) #16
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %1 = load %struct.file*, %struct.file** %fl_file, align 8
  %fl_file15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 11
  store %struct.file* %1, %struct.file** %fl_file15, align 8
  %fl_ops16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 17
  %2 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops16, align 8
  store %struct.file_lock_operations* %2, %struct.file_lock_operations** %fl_ops, align 8
  %3 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops16, align 8
  %tobool19.not = icmp eq %struct.file_lock_operations* %3, null
  br i1 %tobool19.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end
  %fl_copy_lock = getelementptr inbounds %struct.file_lock_operations, %struct.file_lock_operations* %3, i64 0, i32 0
  %4 = load void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*, %struct.file_lock*)** %fl_copy_lock, align 8
  %tobool22.not = icmp eq void (%struct.file_lock*, %struct.file_lock*)* %4, null
  br i1 %tobool22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void %4(%struct.file_lock* noundef %new, %struct.file_lock* noundef %fl) #17
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %if.then23, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @locks_delete_block(%struct.file_lock* noundef %waiter) local_unnamed_addr #0 {
entry:
  %fl_blocker = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock** elementtype(%struct.file_lock*) %fl_blocker) #19, !srcloc !16
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 3
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  %1 = load %struct.file_lock*, %struct.file_lock** %fl_blocker, align 8
  %tobool4.not = icmp eq %struct.file_lock* %1, null
  %spec.select = select i1 %tobool4.not, i32 -2, i32 0
  call fastcc void @__locks_wake_up_blocks(%struct.file_lock* noundef %waiter) #16
  call fastcc void @__locks_delete_block(%struct.file_lock* noundef %waiter) #16
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file_lock** elementtype(%struct.file_lock*) %fl_blocker, i64 0) #19, !srcloc !17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ -2, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__locks_wake_up_blocks(%struct.file_lock* noundef %blocker) unnamed_addr #0 {
entry:
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %blocker, i64 0, i32 3
  %call27 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool.not28 = icmp eq i32 %call27, 0
  br i1 %tobool.not28, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %fl_blocked_requests to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %do.body7
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -56
  %2 = bitcast i8* %add.ptr to %struct.file_lock*
  call fastcc void @__locks_delete_block(%struct.file_lock* noundef %2) #16
  %fl_lmops = getelementptr i8, i8* %1, i64 120
  %3 = bitcast i8* %fl_lmops to %struct.lock_manager_operations**
  %4 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %3, align 8
  %tobool2.not = icmp eq %struct.lock_manager_operations* %4, null
  br i1 %tobool2.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %lm_notify = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %4, i64 0, i32 2
  %5 = load void (%struct.file_lock*)*, void (%struct.file_lock*)** %lm_notify, align 8
  %tobool4.not = icmp eq void (%struct.file_lock*)* %5, null
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %5(%struct.file_lock* noundef %2) #17
  br label %do.body7

if.else:                                          ; preds = %land.lhs.true, %while.body
  %fl_wait = getelementptr i8, i8* %1, i64 40
  %6 = bitcast i8* %fl_wait to %struct.wait_queue_head*
  call void @__wake_up(%struct.wait_queue_head* noundef %6, i32 noundef 3, i32 noundef 1, i8* noundef null) #17
  br label %do.body7

do.body7:                                         ; preds = %if.then, %if.else
  %fl_blocker = bitcast i8* %add.ptr to %struct.file_lock**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file_lock** elementtype(%struct.file_lock*) %fl_blocker, i64 0) #19, !srcloc !18
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %do.body7, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__locks_delete_block(%struct.file_lock* noundef %waiter) unnamed_addr #6 {
entry:
  call fastcc void @locks_delete_global_blocked(%struct.file_lock* noundef %waiter) #16
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 4
  call fastcc void @list_del_init(%struct.list_head* noundef %fl_blocked_member) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posix_test_lock(%struct.file* nocapture noundef readonly %filp, %struct.file_lock* nocapture noundef %fl) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !19
  %1 = inttoptr i64 %0 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 2
  %call2 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_posix) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  store i8 2, i8* %fl_type, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %2 = bitcast %struct.list_head* %flc_posix to i8**
  %.pn46 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn46 to %struct.list_head*
  %cmp.not49 = icmp eq %struct.list_head* %flc_posix, %3
  br i1 %cmp.not49, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn50 = phi i8* [ %.pn, %for.inc ], [ %.pn46, %if.end ]
  %cfl.0.in51 = getelementptr i8, i8* %.pn50, i64 -8
  %cfl.052 = bitcast i8* %cfl.0.in51 to %struct.file_lock*
  %call10 = call i1 @posix_locks_conflict(%struct.file_lock* noundef %fl, %struct.file_lock* noundef %cfl.052) #16
  br i1 %call10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %cfl.052.le = bitcast i8* %cfl.0.in51 to %struct.file_lock*
  call void @locks_copy_conflock(%struct.file_lock* noundef %fl, %struct.file_lock* noundef %cfl.052.le) #16
  br label %out

for.inc:                                          ; preds = %for.body
  %4 = bitcast i8* %.pn50 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_posix, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  %fl_type21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  store i8 2, i8* %fl_type21, align 4
  br label %out

out:                                              ; preds = %for.end, %if.then11
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #4 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #19, !srcloc !20
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @posix_locks_conflict(%struct.file_lock* nocapture noundef readonly %caller_fl, %struct.file_lock* nocapture noundef readonly %sys_fl) #4 {
entry:
  %call = call fastcc i32 @posix_same_owner(%struct.file_lock* noundef %caller_fl, %struct.file_lock* noundef %sys_fl) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @locks_overlap(%struct.file_lock* noundef %caller_fl, %struct.file_lock* noundef %sys_fl) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i1 @locks_conflict(%struct.file_lock* noundef %caller_fl, %struct.file_lock* noundef %sys_fl) #16
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i1 [ %call5, %if.end4 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @posix_lock_file(%struct.file* nocapture noundef readonly %filp, %struct.file_lock* noundef %fl, %struct.file_lock* noundef %conflock) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %call1 = call fastcc i32 @posix_lock_inode(%struct.inode* noundef %call, %struct.file_lock* noundef %fl, %struct.file_lock* noundef %conflock) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @posix_lock_inode(%struct.inode* noundef %inode, %struct.file_lock* noundef %request, %struct.file_lock* noundef writeonly %conflock) unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 7
  %1 = load i8, i8* %fl_type, align 4
  %conv = zext i8 %1 to i32
  %call = call fastcc %struct.file_lock_context* @locks_get_lock_context(%struct.inode* noundef %inode, i32 noundef %conv) #16
  %tobool.not = icmp eq %struct.file_lock_context* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %fl_type, align 4
  %cmp = icmp eq i8 %2, 2
  %cond = select i1 %cmp, i32 0, i32 -12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 6
  %3 = load i32, i32* %fl_flags, align 8
  %and = and i32 %3, 8
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8, i8* %fl_type, align 4
  %cmp7.not = icmp eq i8 %4, 2
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 12
  %5 = load i64, i64* %fl_start, align 8
  %cmp9.not = icmp eq i64 %5, 0
  br i1 %cmp9.not, label %lor.lhs.false11, label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 13
  %6 = load i64, i64* %fl_end, align 8
  %cmp12.not = icmp eq i64 %6, 9223372036854775807
  br i1 %cmp12.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %call15 = call %struct.file_lock* @locks_alloc_lock() #16
  %call16 = call %struct.file_lock* @locks_alloc_lock() #16
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %lor.lhs.false11, %if.end
  %new_fl2.0 = phi %struct.file_lock* [ null, %if.end ], [ %call16, %if.then14 ], [ null, %lor.lhs.false11 ]
  %new_fl.0 = phi %struct.file_lock* [ null, %if.end ], [ %call15, %if.then14 ], [ null, %lor.lhs.false11 ]
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %7 = load i8, i8* %fl_type, align 4
  %cmp20.not = icmp eq i8 %7, 2
  br i1 %cmp20.not, label %if.end56, label %if.then22

if.then22:                                        ; preds = %if.end17
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 2
  %8 = bitcast %struct.list_head* %flc_posix to i8**
  %.pn409457 = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn409457 to %struct.list_head*
  %cmp26.not460 = icmp eq %struct.list_head* %flc_posix, %9
  br i1 %cmp26.not460, label %if.end56, label %for.body

for.body:                                         ; preds = %if.then22, %for.inc
  %.pn409461 = phi i8* [ %.pn409, %for.inc ], [ %.pn409457, %if.then22 ]
  %fl.0.in462 = getelementptr i8, i8* %.pn409461, i64 -8
  %fl.0463 = bitcast i8* %fl.0.in462 to %struct.file_lock*
  %call28 = call i1 @posix_locks_conflict(%struct.file_lock* noundef %request, %struct.file_lock* noundef %fl.0463) #16
  br i1 %call28, label %if.end30, label %for.inc

if.end30:                                         ; preds = %for.body
  %fl.0463.le = bitcast i8* %fl.0.in462 to %struct.file_lock*
  %tobool31.not = icmp eq %struct.file_lock* %conflock, null
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @locks_copy_conflock(%struct.file_lock* noundef nonnull %conflock, %struct.file_lock* noundef %fl.0463.le) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %10 = load i32, i32* %fl_flags, align 8
  %and35 = and i32 %10, 128
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %out, label %if.end38

if.end38:                                         ; preds = %if.end33
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  call fastcc void @__locks_wake_up_blocks(%struct.file_lock* noundef %request) #16
  %call39 = call fastcc i32 @posix_locks_deadlock(%struct.file_lock* noundef %request, %struct.file_lock* noundef %fl.0463.le) #16
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then46, label %if.end47, !prof !8

if.then46:                                        ; preds = %if.end38
  call fastcc void @__locks_insert_block(%struct.file_lock* noundef %fl.0463.le, %struct.file_lock* noundef %request, i1 (%struct.file_lock*, %struct.file_lock*)* noundef nonnull @posix_locks_conflict) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end38
  %error.0 = phi i32 [ 1, %if.then46 ], [ -35, %if.end38 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  br label %out

for.inc:                                          ; preds = %for.body
  %11 = bitcast i8* %.pn409461 to i8**
  %.pn409 = load i8*, i8** %11, align 8
  %12 = bitcast i8* %.pn409 to %struct.list_head*
  %cmp26.not = icmp eq %struct.list_head* %flc_posix, %12
  br i1 %cmp26.not, label %if.end56, label %for.body

if.end56:                                         ; preds = %for.inc, %if.then22, %if.end17
  %13 = load i32, i32* %fl_flags, align 8
  %and58 = and i32 %13, 8
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end61, label %out

if.end61:                                         ; preds = %if.end56
  %flc_posix63 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 2
  %14 = bitcast %struct.list_head* %flc_posix63 to i8**
  %.pn464 = load i8*, i8** %14, align 8
  %fl.1.in465 = getelementptr i8, i8* %.pn464, i64 -8
  %15 = bitcast i8* %.pn464 to %struct.list_head*
  %cmp73.not467 = icmp eq %struct.list_head* %flc_posix63, %15
  br i1 %cmp73.not467, label %for.end91, label %for.body77

for.body77:                                       ; preds = %if.end61, %for.inc82
  %fl.1.in469 = phi i8* [ %fl.1.in, %for.inc82 ], [ %fl.1.in465, %if.end61 ]
  %.pn468 = phi i8* [ %.pn, %for.inc82 ], [ %.pn464, %if.end61 ]
  %fl.1470 = bitcast i8* %fl.1.in469 to %struct.file_lock*
  %call78 = call fastcc i32 @posix_same_owner(%struct.file_lock* noundef %request, %struct.file_lock* noundef %fl.1470) #16
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.inc82, label %for.end91

for.inc82:                                        ; preds = %for.body77
  %16 = bitcast i8* %.pn468 to i8**
  %.pn = load i8*, i8** %16, align 8
  %fl.1.in = getelementptr i8, i8* %.pn, i64 -8
  %17 = bitcast i8* %.pn to %struct.list_head*
  %cmp73.not = icmp eq %struct.list_head* %flc_posix63, %17
  br i1 %cmp73.not, label %for.end91, label %for.body77

for.end91:                                        ; preds = %for.inc82, %for.body77, %if.end61
  %fl.1.in.lcssa = phi i8* [ %fl.1.in465, %if.end61 ], [ %fl.1.in469, %for.body77 ], [ %fl.1.in, %for.inc82 ]
  %.pn.lcssa = phi i8* [ %.pn464, %if.end61 ], [ %.pn468, %for.body77 ], [ %.pn, %for.inc82 ]
  %fl_list101479 = getelementptr inbounds i8, i8* %fl.1.in.lcssa, i64 8
  %18 = bitcast i8* %fl_list101479 to %struct.list_head*
  %cmp103.not480 = icmp eq %struct.list_head* %flc_posix63, %18
  br i1 %cmp103.not480, label %if.then220, label %for.body107

for.body107:                                      ; preds = %for.end91, %for.inc201
  %fl_list101488 = phi %struct.list_head* [ %33, %for.inc201 ], [ %18, %for.end91 ]
  %.pn408486.in.in = phi i8* [ %.pn408486, %for.inc201 ], [ %.pn.lcssa, %for.end91 ]
  %request.addr.0485 = phi %struct.file_lock* [ %request.addr.1, %for.inc201 ], [ %request, %for.end91 ]
  %fl.2484.in = phi i8* [ %tmp.0487.in, %for.inc201 ], [ %fl.1.in.lcssa, %for.end91 ]
  %new_fl.1483 = phi %struct.file_lock* [ %new_fl.2, %for.inc201 ], [ %new_fl.0, %for.end91 ]
  %left.0482 = phi %struct.file_lock* [ %left.2, %for.inc201 ], [ null, %for.end91 ]
  %added.0.off0481 = phi i1 [ %added.2.off0, %for.inc201 ], [ false, %for.end91 ]
  %fl.2484 = bitcast i8* %fl.2484.in to %struct.file_lock*
  %.pn408486.in = bitcast i8* %.pn408486.in.in to i8**
  %.pn408486 = load i8*, i8** %.pn408486.in, align 8
  %tmp.0487.in = getelementptr i8, i8* %.pn408486, i64 -8
  %call108 = call fastcc i32 @posix_same_owner(%struct.file_lock* noundef %request.addr.0485, %struct.file_lock* noundef %fl.2484) #16
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %for.end210.thread, label %if.end111

if.end111:                                        ; preds = %for.body107
  %fl_type112 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0485, i64 0, i32 7
  %19 = load i8, i8* %fl_type112, align 4
  %20 = getelementptr inbounds i8, i8* %fl.2484.in, i64 84
  %21 = load i8, i8* %20, align 4
  %cmp116 = icmp eq i8 %19, %21
  %fl_end119 = getelementptr inbounds i8, i8* %fl.2484.in, i64 136
  %22 = bitcast i8* %fl_end119 to i64*
  %23 = load i64, i64* %22, align 8
  %fl_start120 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0485, i64 0, i32 12
  %24 = load i64, i64* %fl_start120, align 8
  br i1 %cmp116, label %if.then118, label %if.else156

if.then118:                                       ; preds = %if.end111
  %sub = add i64 %24, -1
  %cmp121 = icmp slt i64 %23, %sub
  br i1 %cmp121, label %for.inc201, label %if.end124

if.end124:                                        ; preds = %if.then118
  %fl_start125 = getelementptr inbounds i8, i8* %fl.2484.in, i64 128
  %25 = bitcast i8* %fl_start125 to i64*
  %26 = load i64, i64* %25, align 8
  %sub126 = add i64 %26, -1
  %fl_end127 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0485, i64 0, i32 13
  %27 = load i64, i64* %fl_end127, align 8
  %cmp128 = icmp sgt i64 %sub126, %27
  br i1 %cmp128, label %for.end210.thread, label %if.end131

if.end131:                                        ; preds = %if.end124
  %cmp134 = icmp sgt i64 %26, %24
  br i1 %cmp134, label %if.then136, label %if.else

if.then136:                                       ; preds = %if.end131
  store i64 %24, i64* %25, align 8
  %.pre524 = load i64, i64* %fl_end127, align 8
  br label %if.end141

if.else:                                          ; preds = %if.end131
  store i64 %26, i64* %fl_start120, align 8
  %.pre = load i64, i64* %22, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then136
  %28 = phi i64 [ %27, %if.else ], [ %.pre524, %if.then136 ]
  %29 = phi i64 [ %.pre, %if.else ], [ %23, %if.then136 ]
  %cmp144 = icmp slt i64 %29, %28
  br i1 %cmp144, label %if.then146, label %if.else149

if.then146:                                       ; preds = %if.end141
  store i64 %28, i64* %22, align 8
  br label %if.end152

if.else149:                                       ; preds = %if.end141
  store i64 %29, i64* %fl_end127, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then146
  br i1 %added.0.off0481, label %for.inc201.sink.split, label %for.inc201

if.else156:                                       ; preds = %if.end111
  %cmp159 = icmp slt i64 %23, %24
  br i1 %cmp159, label %for.inc201, label %if.end162

if.end162:                                        ; preds = %if.else156
  %fl_start163 = getelementptr inbounds i8, i8* %fl.2484.in, i64 128
  %30 = bitcast i8* %fl_start163 to i64*
  %31 = load i64, i64* %30, align 8
  %fl_end164 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0485, i64 0, i32 13
  %32 = load i64, i64* %fl_end164, align 8
  %cmp165 = icmp sgt i64 %31, %32
  br i1 %cmp165, label %for.end210.thread, label %if.end168

if.end168:                                        ; preds = %if.end162
  %cmp171 = icmp eq i8 %19, 2
  %spec.select = select i1 %cmp171, i1 true, i1 %added.0.off0481
  %cmp177 = icmp slt i64 %31, %24
  %cmp183 = icmp sgt i64 %23, %32
  br i1 %cmp183, label %for.end210, label %if.end186

if.end186:                                        ; preds = %if.end168
  br i1 %cmp177, label %for.inc201, label %if.then191

if.then191:                                       ; preds = %if.end186
  br i1 %spec.select, label %for.inc201.sink.split, label %if.end194

if.end194:                                        ; preds = %if.then191
  %tobool195.not = icmp eq %struct.file_lock* %new_fl.1483, null
  br i1 %tobool195.not, label %out, label %if.end197

if.end197:                                        ; preds = %if.end194
  call void @locks_copy_lock(%struct.file_lock* noundef nonnull %new_fl.1483, %struct.file_lock* noundef %request.addr.0485) #16
  call fastcc void @locks_move_blocks(%struct.file_lock* noundef nonnull %new_fl.1483, %struct.file_lock* noundef %request.addr.0485) #16
  call fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef nonnull %new_fl.1483, %struct.list_head* noundef %fl_list101488) #16
  br label %for.inc201.sink.split

for.inc201.sink.split:                            ; preds = %if.then191, %if.end152, %if.end197
  %new_fl.2.ph = phi %struct.file_lock* [ null, %if.end197 ], [ %new_fl.1483, %if.end152 ], [ %new_fl.1483, %if.then191 ]
  %request.addr.1.ph = phi %struct.file_lock* [ %new_fl.1483, %if.end197 ], [ %request.addr.0485, %if.end152 ], [ %request.addr.0485, %if.then191 ]
  call fastcc void @locks_delete_lock_ctx(%struct.file_lock* noundef %fl.2484, %struct.list_head* noundef nonnull %dispose) #16
  br label %for.inc201

for.inc201:                                       ; preds = %for.inc201.sink.split, %if.end152, %if.end186, %if.else156, %if.then118
  %added.2.off0 = phi i1 [ %added.0.off0481, %if.then118 ], [ %added.0.off0481, %if.else156 ], [ %spec.select, %if.end186 ], [ true, %if.end152 ], [ true, %for.inc201.sink.split ]
  %left.2 = phi %struct.file_lock* [ %left.0482, %if.then118 ], [ %left.0482, %if.else156 ], [ %fl.2484, %if.end186 ], [ %left.0482, %if.end152 ], [ %left.0482, %for.inc201.sink.split ]
  %new_fl.2 = phi %struct.file_lock* [ %new_fl.1483, %if.then118 ], [ %new_fl.1483, %if.else156 ], [ %new_fl.1483, %if.end186 ], [ %new_fl.1483, %if.end152 ], [ %new_fl.2.ph, %for.inc201.sink.split ]
  %request.addr.1 = phi %struct.file_lock* [ %request.addr.0485, %if.then118 ], [ %request.addr.0485, %if.else156 ], [ %request.addr.0485, %if.end186 ], [ %fl.2484, %if.end152 ], [ %request.addr.1.ph, %for.inc201.sink.split ]
  %33 = bitcast i8* %.pn408486 to %struct.list_head*
  %cmp103.not = icmp eq %struct.list_head* %flc_posix63, %33
  br i1 %cmp103.not, label %for.end210.thread, label %for.body107

for.end210.thread:                                ; preds = %for.inc201, %for.body107, %if.end162, %if.end124
  %added.0.off0.lcssa = phi i1 [ %added.2.off0, %for.inc201 ], [ %added.0.off0481, %for.body107 ], [ %added.0.off0481, %if.end162 ], [ %added.0.off0481, %if.end124 ]
  %left.0.lcssa = phi %struct.file_lock* [ %left.2, %for.inc201 ], [ %left.0482, %for.body107 ], [ %left.0482, %if.end162 ], [ %left.0482, %if.end124 ]
  %new_fl.1.lcssa = phi %struct.file_lock* [ %new_fl.2, %for.inc201 ], [ %new_fl.1483, %for.body107 ], [ %new_fl.1483, %if.end162 ], [ %new_fl.1483, %if.end124 ]
  %request.addr.0.lcssa = phi %struct.file_lock* [ %request.addr.1, %for.inc201 ], [ %request.addr.0485, %for.body107 ], [ %request.addr.0485, %if.end162 ], [ %request.addr.0485, %if.end124 ]
  %fl_list101.lcssa = phi %struct.list_head* [ %flc_posix63, %for.inc201 ], [ %fl_list101488, %for.body107 ], [ %fl_list101488, %if.end162 ], [ %fl_list101488, %if.end124 ]
  br i1 %added.0.off0.lcssa, label %if.end246, label %if.then220

for.end210:                                       ; preds = %if.end168
  %fl.2484.le = bitcast i8* %fl.2484.in to %struct.file_lock*
  %left.1.le = select i1 %cmp177, %struct.file_lock* %fl.2484.le, %struct.file_lock* %left.0482
  %tobool211.not = icmp eq i8* %fl.2484.in, null
  br i1 %tobool211.not, label %if.end218, label %land.lhs.true212

land.lhs.true212:                                 ; preds = %for.end210
  %cmp213 = icmp ne %struct.file_lock* %left.1.le, %fl.2484.le
  %tobool216 = icmp ne %struct.file_lock* %new_fl2.0, null
  %or.cond = select i1 %cmp213, i1 true, i1 %tobool216
  br i1 %or.cond, label %if.end218.thread, label %out

if.end218:                                        ; preds = %for.end210
  br i1 %spec.select, label %if.end246, label %if.end231

if.end218.thread:                                 ; preds = %land.lhs.true212
  br i1 %spec.select, label %if.then238, label %if.end231

if.then220:                                       ; preds = %for.end91, %for.end210.thread
  %fl_list101.lcssa534 = phi %struct.list_head* [ %fl_list101.lcssa, %for.end210.thread ], [ %flc_posix63, %for.end91 ]
  %request.addr.0.lcssa533 = phi %struct.file_lock* [ %request.addr.0.lcssa, %for.end210.thread ], [ %request, %for.end91 ]
  %new_fl.1.lcssa532 = phi %struct.file_lock* [ %new_fl.1.lcssa, %for.end210.thread ], [ %new_fl.0, %for.end91 ]
  %left.0.lcssa531 = phi %struct.file_lock* [ %left.0.lcssa, %for.end210.thread ], [ null, %for.end91 ]
  %fl_type221.phi.trans.insert = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0.lcssa533, i64 0, i32 7
  %.pre525 = load i8, i8* %fl_type221.phi.trans.insert, align 4
  %cmp223 = icmp eq i8 %.pre525, 2
  br i1 %cmp223, label %if.then225, label %if.end231

if.then225:                                       ; preds = %if.then220
  %fl_flags226 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0.lcssa533, i64 0, i32 6
  %34 = load i32, i32* %fl_flags226, align 8
  %and227 = and i32 %34, 16
  %tobool228.not = icmp eq i32 %and227, 0
  %spec.select410 = select i1 %tobool228.not, i32 0, i32 -2
  br label %out

if.end231:                                        ; preds = %if.end218, %if.end218.thread, %if.then220
  %tobool211.not419420547 = phi i1 [ true, %if.then220 ], [ false, %if.end218.thread ], [ %tobool211.not, %if.end218 ]
  %left.3418422546 = phi %struct.file_lock* [ %left.0.lcssa531, %if.then220 ], [ %left.1.le, %if.end218.thread ], [ %left.1.le, %if.end218 ]
  %right.0417424545 = phi %struct.file_lock* [ null, %if.then220 ], [ %fl.2484.le, %if.end218.thread ], [ null, %if.end218 ]
  %fl_list101440544 = phi %struct.list_head* [ %fl_list101.lcssa534, %if.then220 ], [ %fl_list101488, %if.end218.thread ], [ %fl_list101488, %if.end218 ]
  %request.addr.0443543 = phi %struct.file_lock* [ %request.addr.0.lcssa533, %if.then220 ], [ %request.addr.0485, %if.end218.thread ], [ %request.addr.0485, %if.end218 ]
  %new_fl.1450542 = phi %struct.file_lock* [ %new_fl.1.lcssa532, %if.then220 ], [ %new_fl.1483, %if.end218.thread ], [ %new_fl.1483, %if.end218 ]
  %tobool232.not = icmp eq %struct.file_lock* %new_fl.1450542, null
  br i1 %tobool232.not, label %out, label %if.end234

if.end234:                                        ; preds = %if.end231
  call void @locks_copy_lock(%struct.file_lock* noundef nonnull %new_fl.1450542, %struct.file_lock* noundef %request.addr.0443543) #16
  call fastcc void @locks_move_blocks(%struct.file_lock* noundef nonnull %new_fl.1450542, %struct.file_lock* noundef %request.addr.0443543) #16
  call fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef nonnull %new_fl.1450542, %struct.list_head* noundef %fl_list101440544) #16
  br i1 %tobool211.not419420547, label %if.end246, label %if.then238

if.then238:                                       ; preds = %if.end218.thread, %if.end234
  %request.addr.0444 = phi %struct.file_lock* [ %request.addr.0443543, %if.end234 ], [ %request.addr.0485, %if.end218.thread ]
  %fl.3435 = phi %struct.file_lock* [ %new_fl.1450542, %if.end234 ], [ %fl.2484.le, %if.end218.thread ]
  %new_fl.3434 = phi %struct.file_lock* [ null, %if.end234 ], [ %new_fl.1483, %if.end218.thread ]
  %left.3418423433 = phi %struct.file_lock* [ %left.3418422546, %if.end234 ], [ %left.1.le, %if.end218.thread ]
  %right.0417425432 = phi %struct.file_lock* [ %right.0417424545, %if.end234 ], [ %fl.2484.le, %if.end218.thread ]
  %cmp239 = icmp eq %struct.file_lock* %left.3418423433, %right.0417425432
  br i1 %cmp239, label %if.then241, label %if.end243

if.then241:                                       ; preds = %if.then238
  call void @locks_copy_lock(%struct.file_lock* noundef %new_fl2.0, %struct.file_lock* noundef nonnull %left.3418423433) #16
  %fl_list242 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.3435, i64 0, i32 1
  call fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef %new_fl2.0, %struct.list_head* noundef %fl_list242) #16
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %if.then238
  %left.4 = phi %struct.file_lock* [ %new_fl2.0, %if.then241 ], [ %left.3418423433, %if.then238 ]
  %new_fl2.1 = phi %struct.file_lock* [ null, %if.then241 ], [ %new_fl2.0, %if.then238 ]
  %fl_end244 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0444, i64 0, i32 13
  %35 = load i64, i64* %fl_end244, align 8
  %add = add i64 %35, 1
  %fl_start245 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %right.0417425432, i64 0, i32 12
  store i64 %add, i64* %fl_start245, align 8
  call fastcc void @locks_wake_up_blocks(%struct.file_lock* noundef nonnull %right.0417425432) #16
  br label %if.end246

if.end246:                                        ; preds = %if.end218, %for.end210.thread, %if.end234, %if.end243
  %request.addr.0445 = phi %struct.file_lock* [ %request.addr.0444, %if.end243 ], [ %request.addr.0443543, %if.end234 ], [ %request.addr.0.lcssa, %for.end210.thread ], [ %request.addr.0485, %if.end218 ]
  %new_fl.3431 = phi %struct.file_lock* [ %new_fl.3434, %if.end243 ], [ null, %if.end234 ], [ %new_fl.1.lcssa, %for.end210.thread ], [ %new_fl.1483, %if.end218 ]
  %left.5 = phi %struct.file_lock* [ %left.4, %if.end243 ], [ %left.3418422546, %if.end234 ], [ %left.0.lcssa, %for.end210.thread ], [ %left.1.le, %if.end218 ]
  %new_fl2.2 = phi %struct.file_lock* [ %new_fl2.1, %if.end243 ], [ %new_fl2.0, %if.end234 ], [ %new_fl2.0, %for.end210.thread ], [ %new_fl2.0, %if.end218 ]
  %tobool247.not = icmp eq %struct.file_lock* %left.5, null
  br i1 %tobool247.not, label %out, label %if.then248

if.then248:                                       ; preds = %if.end246
  %fl_start249 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request.addr.0445, i64 0, i32 12
  %36 = load i64, i64* %fl_start249, align 8
  %sub250 = add i64 %36, -1
  %fl_end251 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %left.5, i64 0, i32 13
  store i64 %sub250, i64* %fl_end251, align 8
  call fastcc void @locks_wake_up_blocks(%struct.file_lock* noundef nonnull %left.5) #16
  br label %out

out:                                              ; preds = %if.end194, %if.then225, %if.end231, %if.end246, %if.then248, %land.lhs.true212, %if.end56, %if.end33, %if.end47
  %error.1 = phi i32 [ %error.0, %if.end47 ], [ -11, %if.end33 ], [ 0, %if.end56 ], [ 0, %if.then248 ], [ 0, %if.end246 ], [ -37, %land.lhs.true212 ], [ %spec.select410, %if.then225 ], [ -37, %if.end231 ], [ -37, %if.end194 ]
  %new_fl2.3 = phi %struct.file_lock* [ %new_fl2.0, %if.end47 ], [ %new_fl2.0, %if.end33 ], [ %new_fl2.0, %if.end56 ], [ %new_fl2.2, %if.then248 ], [ %new_fl2.2, %if.end246 ], [ null, %land.lhs.true212 ], [ %new_fl2.0, %if.then225 ], [ %new_fl2.0, %if.end231 ], [ %new_fl2.0, %if.end194 ]
  %new_fl.4 = phi %struct.file_lock* [ %new_fl.0, %if.end47 ], [ %new_fl.0, %if.end33 ], [ %new_fl.0, %if.end56 ], [ %new_fl.3431, %if.then248 ], [ %new_fl.3431, %if.end246 ], [ %new_fl.1483, %land.lhs.true212 ], [ %new_fl.1.lcssa532, %if.then225 ], [ null, %if.end231 ], [ null, %if.end194 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  %tobool254.not = icmp eq %struct.file_lock* %new_fl.4, null
  br i1 %tobool254.not, label %if.end256, label %if.then255

if.then255:                                       ; preds = %out
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %new_fl.4) #16
  br label %if.end256

if.end256:                                        ; preds = %if.then255, %out
  %tobool257.not = icmp eq %struct.file_lock* %new_fl2.3, null
  br i1 %tobool257.not, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.end256
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %new_fl2.3) #16
  br label %if.end259

if.end259:                                        ; preds = %if.then258, %if.end256
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end259, %if.then
  %retval.0 = phi i32 [ %error.1, %if.end259 ], [ %cond, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lease_modify(%struct.file_lock* noundef %fl, i32 noundef %arg, %struct.list_head* noundef %dispose) #0 {
entry:
  %conv = sext i32 %arg to i64
  %call = call fastcc i32 @assign_type(%struct.file_lock* noundef %fl, i64 noundef %conv) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @lease_clear_pending(%struct.file_lock* noundef %fl, i32 noundef %arg) #16
  call fastcc void @locks_wake_up_blocks(%struct.file_lock* noundef %fl) #16
  %cmp = icmp eq i32 %arg, 2
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %0 = load %struct.file*, %struct.file** %fl_file, align 8
  call void @f_delown(%struct.file* noundef %0) #17
  %signum = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 11, i32 5
  store i32 0, i32* %signum, align 4
  %1 = load %struct.file*, %struct.file** %fl_file, align 8
  %fl_fasync = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 14
  %call4 = call i32 @fasync_helper(i32 noundef 0, %struct.file* noundef %1, i32 noundef 0, %struct.fasync_struct** noundef %fl_fasync) #17
  %2 = load %struct.fasync_struct*, %struct.fasync_struct** %fl_fasync, align 8
  %cmp6.not = icmp eq %struct.fasync_struct* %2, null
  br i1 %cmp6.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.then2
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.fasync_struct* noundef nonnull %2) #18
  store %struct.fasync_struct* null, %struct.fasync_struct** %fl_fasync, align 8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then2
  call fastcc void @locks_delete_lock_ctx(%struct.file_lock* noundef %fl, %struct.list_head* noundef %dispose) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @assign_type(%struct.file_lock* nocapture noundef writeonly %fl, i64 noundef %type) unnamed_addr #7 {
entry:
  %switch = icmp ult i64 %type, 3
  br i1 %switch, label %sw.bb, label %return

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %type to i8
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  store i8 %conv, i8* %fl_type, align 4
  br label %return

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @lease_clear_pending(%struct.file_lock* nocapture noundef %fl, i32 noundef %arg) unnamed_addr #8 {
entry:
  switch i32 %arg, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  %fl_flags2.phi.trans.insert = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %.pre = load i32, i32* %fl_flags2.phi.trans.insert, align 8
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, -513
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %sw.bb
  %1 = phi i32 [ %.pre, %entry.sw.bb1_crit_edge ], [ %and, %sw.bb ]
  %fl_flags2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %and3 = and i32 %1, -257
  store i32 %and3, i32* %fl_flags2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_wake_up_blocks(%struct.file_lock* noundef %blocker) unnamed_addr #0 {
entry:
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %blocker, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  call fastcc void @__locks_wake_up_blocks(%struct.file_lock* noundef %blocker) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f_delown(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, %struct.file* noundef, i32 noundef, %struct.fasync_struct** noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_delete_lock_ctx(%struct.file_lock* noundef %fl, %struct.list_head* noundef %dispose) unnamed_addr #0 {
entry:
  call fastcc void @locks_unlink_lock_ctx(%struct.file_lock* noundef %fl) #16
  %tobool.not = icmp eq %struct.list_head* %dispose, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fl_list = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 1
  call fastcc void @list_add(%struct.list_head* noundef %fl_list, %struct.list_head* noundef nonnull %dispose) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @locks_free_lock(%struct.file_lock* noundef %fl) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef %mode, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %and = and i32 %mode, 3
  %cmp.not = icmp eq i32 %and, 0
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %not.cmp.not = xor i1 %cmp.not, true
  %1 = zext i1 %not.cmp.not to i64
  %call = call fastcc %struct.file_lock* @lease_alloc(%struct.file* noundef null, i64 noundef %1) #16
  %2 = bitcast %struct.file_lock* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %2) #16
  %conv4 = trunc i64 %call3 to i32
  br label %cleanup181

if.end:                                           ; preds = %entry
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  store i32 %type, i32* %fl_flags, align 8
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %3 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !21
  %4 = inttoptr i64 %3 to %struct.file_lock_context*
  %tobool7.not = icmp eq i64 %3, 0
  br i1 %tobool7.not, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 1527; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !22
  br label %free_lock

if.end23:                                         ; preds = %if.end
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @time_out_leases(%struct.inode* noundef %inode, %struct.list_head* noundef nonnull %dispose) #16
  %call24 = call fastcc i1 @any_leases_conflict(%struct.inode* noundef %inode, %struct.file_lock* noundef %call) #16
  br i1 %call24, label %if.end26, label %out

if.end26:                                         ; preds = %if.end23
  %5 = load i32, i32* @lease_break_time, align 4
  %cmp27 = icmp sgt i32 %5, 0
  br i1 %cmp27, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end26
  %6 = load volatile i64, i64* @jiffies, align 64
  %mul = mul i32 %5, 250
  %conv30 = sext i32 %mul to i64
  %add = add i64 %6, %conv30
  %cmp31 = icmp eq i64 %add, 0
  %spec.select = select i1 %cmp31, i64 1, i64 %add
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end26
  %break_time.0 = phi i64 [ 0, %if.end26 ], [ %spec.select, %if.then29 ]
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %4, i64 0, i32 3
  %7 = bitcast %struct.list_head* %flc_lease to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.list_head*
  %cmp50.not297 = icmp eq %struct.list_head* %flc_lease, %9
  br i1 %cmp50.not297, label %for.end, label %for.body

for.body:                                         ; preds = %if.end35, %for.inc
  %.pn.in.in298 = phi i8* [ %.pn301, %for.inc ], [ %8, %if.end35 ]
  %fl.0300.in = getelementptr i8, i8* %.pn.in.in298, i64 -8
  %fl.0300 = bitcast i8* %fl.0300.in to %struct.file_lock*
  %.pn301.in = bitcast i8* %.pn.in.in298 to i8**
  %.pn301 = load i8*, i8** %.pn301.in, align 8
  %call54 = call i1 @leases_conflict(%struct.file_lock* noundef %fl.0300, %struct.file_lock* noundef %call) #16
  br i1 %call54, label %if.end56, label %for.inc

if.end56:                                         ; preds = %for.body
  br i1 %cmp.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end56
  %fl_flags59 = getelementptr i8, i8* %.pn.in.in298, i64 72
  %10 = bitcast i8* %fl_flags59 to i32*
  %11 = load i32, i32* %10, align 8
  %and60 = and i32 %11, 512
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end63, label %for.inc

if.end63:                                         ; preds = %if.then58
  %or = or i32 %11, 512
  store i32 %or, i32* %10, align 8
  br label %if.end70

if.else:                                          ; preds = %if.end56
  %call65 = call fastcc i1 @lease_breaking(%struct.file_lock* noundef %fl.0300) #16
  br i1 %call65, label %for.inc, label %if.end67

if.end67:                                         ; preds = %if.else
  %fl_flags68 = getelementptr i8, i8* %.pn.in.in298, i64 72
  %12 = bitcast i8* %fl_flags68 to i32*
  %13 = load i32, i32* %12, align 8
  %or69 = or i32 %13, 256
  store i32 %or69, i32* %12, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %if.end63
  %.sink = phi i64 [ 152, %if.end67 ], [ 144, %if.end63 ]
  %fl_downgrade_time = getelementptr i8, i8* %.pn.in.in298, i64 %.sink
  %14 = bitcast i8* %fl_downgrade_time to i64*
  store i64 %break_time.0, i64* %14, align 8
  %fl_lmops = getelementptr i8, i8* %.pn.in.in298, i64 168
  %15 = bitcast i8* %fl_lmops to %struct.lock_manager_operations**
  %16 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %15, align 8
  %lm_break = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %16, i64 0, i32 4
  %17 = load i1 (%struct.file_lock*)*, i1 (%struct.file_lock*)** %lm_break, align 8
  %call71 = call i1 %17(%struct.file_lock* noundef %fl.0300) #17
  br i1 %call71, label %if.then72, label %for.inc

if.then72:                                        ; preds = %if.end70
  call fastcc void @locks_delete_lock_ctx(%struct.file_lock* noundef %fl.0300, %struct.list_head* noundef nonnull %dispose) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %if.then72, %if.else, %if.then58, %for.body
  %18 = bitcast i8* %.pn301 to %struct.list_head*
  %cmp50.not = icmp eq %struct.list_head* %flc_lease, %18
  br i1 %cmp50.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end35
  %call83 = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_lease) #16
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %out

if.end86:                                         ; preds = %for.end
  %and87 = and i32 %mode, 2048
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %restart.preheader, label %out

restart.preheader:                                ; preds = %if.end86
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 4
  %19 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 10
  br label %restart

restart:                                          ; preds = %restart.preheader, %if.end175
  %20 = load i8*, i8** %7, align 8
  %add.ptr98 = getelementptr i8, i8* %20, i64 -8
  %21 = bitcast i8* %add.ptr98 to %struct.file_lock*
  %fl_break_time99 = getelementptr i8, i8* %20, i64 144
  %22 = bitcast i8* %fl_break_time99 to i64*
  %23 = load i64, i64* %22, align 8
  %cmp100.not = icmp eq i64 %23, 0
  br i1 %cmp100.not, label %if.end103.thread, label %if.end103

if.end103:                                        ; preds = %restart
  %24 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %23, %24
  %cmp104 = icmp eq i64 %sub, 0
  br i1 %cmp104, label %if.end103.thread, label %25

if.end103.thread:                                 ; preds = %restart, %if.end103
  br label %25

25:                                               ; preds = %if.end103, %if.end103.thread
  %26 = phi i64 [ 1, %if.end103.thread ], [ %sub, %if.end103 ]
  call fastcc void @locks_insert_block(%struct.file_lock* noundef %21, %struct.file_lock* noundef %call, i1 (%struct.file_lock*, %struct.file_lock*)* noundef nonnull @leases_conflict) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  %call116 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then130, label %if.end164

if.then130:                                       ; preds = %25
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %19) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false), !annotation !23
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call133302 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call136303 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool137304.not = icmp eq i32 %call136303, 0
  br i1 %tobool137304.not, label %if.end156, label %for.end161

if.end156:                                        ; preds = %if.then130, %cleanup
  %spec.store.select190311 = phi i64 [ %spec.store.select190, %cleanup ], [ %26, %if.then130 ]
  %call133310 = phi i64 [ %call133, %cleanup ], [ %call133302, %if.then130 ]
  %tobool157.not = icmp eq i64 %call133310, 0
  br i1 %tobool157.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end156
  %call160 = call i64 @schedule_timeout(i64 noundef %spec.store.select190311) #17
  %call133 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call136 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool137 = icmp ne i32 %call136, 0
  %tobool139.not = xor i1 %tobool137, true
  %tobool142 = icmp ne i64 %call160, 0
  %or.cond189 = select i1 %tobool139.not, i1 true, i1 %tobool142
  %spec.store.select190 = select i1 %or.cond189, i64 %call160, i64 1
  %tobool149.not = icmp eq i64 %spec.store.select190, 0
  %27 = select i1 %tobool137, i1 true, i1 %tobool149.not
  br i1 %27, label %for.end161, label %if.end156

for.end161:                                       ; preds = %cleanup, %if.then130
  %spec.store.select190.lcssa = phi i64 [ %26, %if.then130 ], [ %spec.store.select190, %cleanup ]
  call void @finish_wait(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %if.end156, %for.end161
  %__ret131.1285 = phi i64 [ %spec.store.select190.lcssa, %for.end161 ], [ %call133310, %if.end156 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %19) #19
  br label %if.end164

if.end164:                                        ; preds = %__out, %25
  %__ret.0 = phi i64 [ %26, %25 ], [ %__ret131.1285, %__out ]
  %conv166 = trunc i64 %__ret.0 to i32
  call fastcc void @percpu_down_read() #16
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %call168 = call i32 @locks_delete_block(%struct.file_lock* noundef %call) #16
  %cmp169 = icmp sgt i32 %conv166, -1
  br i1 %cmp169, label %if.then171, label %out.loopexit.split.loop.exit

if.then171:                                       ; preds = %if.end164
  %cmp172 = icmp eq i32 %conv166, 0
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.then171
  call fastcc void @time_out_leases(%struct.inode* noundef %inode, %struct.list_head* noundef nonnull %dispose) #16
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.then171
  %call176 = call fastcc i1 @any_leases_conflict(%struct.inode* noundef %inode, %struct.file_lock* noundef %call) #16
  br i1 %call176, label %restart, label %out

out.loopexit.split.loop.exit:                     ; preds = %if.end164
  %conv166.le = trunc i64 %__ret.0 to i32
  br label %out

out:                                              ; preds = %if.end175, %out.loopexit.split.loop.exit, %if.end86, %for.end, %if.end23
  %error.0 = phi i32 [ 0, %for.end ], [ 0, %if.end23 ], [ -11, %if.end86 ], [ %conv166.le, %out.loopexit.split.loop.exit ], [ 0, %if.end175 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %free_lock

free_lock:                                        ; preds = %out, %if.then13
  %error.1 = phi i32 [ %error.0, %out ], [ 0, %if.then13 ]
  call void @locks_free_lock(%struct.file_lock* noundef %call) #16
  br label %cleanup181

cleanup181:                                       ; preds = %free_lock, %if.then
  %retval.0 = phi i32 [ %conv4, %if.then ], [ %error.1, %free_lock ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file_lock* @lease_alloc(%struct.file* noundef %filp, i64 noundef %type) unnamed_addr #0 {
entry:
  %call = call %struct.file_lock* @locks_alloc_lock() #16
  %cmp = icmp eq %struct.file_lock* %call, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @lease_init(%struct.file* noundef %filp, i64 noundef %type, %struct.file_lock* noundef nonnull %call) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %call) #16
  %conv4 = sext i32 %call2 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then3
  %conv4.sink = phi i64 [ %conv4, %if.then3 ], [ -12, %entry ]
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef %conv4.sink) #16
  %0 = bitcast i8* %call5 to %struct.file_lock*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.file_lock* [ %call, %if.end ], [ %0, %cleanup.sink.split ]
  ret %struct.file_lock* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #10 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  %call = call fastcc i1 @rcu_sync_is_idle() #16
  br i1 %call, label %do.body7, label %if.else, !prof !8

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %0 = load i32*, i32** getelementptr inbounds (%struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* @file_rwsem, i64 0, i32 1), align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef nonnull @file_rwsem, i1 noundef false) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @time_out_leases(%struct.inode* nocapture noundef readonly %inode, %struct.list_head* noundef %dispose) unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %1 = bitcast %struct.list_head* %flc_lease to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not49 = icmp eq %struct.list_head* %flc_lease, %3
  br i1 %cmp.not49, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn.in.in50 = phi i8* [ %.pn53, %for.inc ], [ %2, %entry ]
  %fl.051.in = getelementptr i8, i8* %.pn.in.in50, i64 -8
  %fl.051 = bitcast i8* %fl.051.in to %struct.file_lock*
  %.pn53.in = bitcast i8* %.pn.in.in50 to i8**
  %.pn53 = load i8*, i8** %.pn53.in, align 8
  %fl_downgrade_time = getelementptr i8, i8* %.pn.in.in50, i64 152
  %4 = bitcast i8* %fl_downgrade_time to i64*
  %5 = load i64, i64* %4, align 8
  %call = call fastcc i1 @past_time(i64 noundef %5) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call14 = call i32 @lease_modify(%struct.file_lock* noundef %fl.051, i32 noundef 0, %struct.list_head* noundef %dispose) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %fl_break_time = getelementptr i8, i8* %.pn.in.in50, i64 144
  %6 = bitcast i8* %fl_break_time to i64*
  %7 = load i64, i64* %6, align 8
  %call15 = call fastcc i1 @past_time(i64 noundef %7) #16
  br i1 %call15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %if.end
  %call17 = call i32 @lease_modify(%struct.file_lock* noundef %fl.051, i32 noundef 2, %struct.list_head* noundef %dispose) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then16
  %8 = bitcast i8* %.pn53 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_lease, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @any_leases_conflict(%struct.inode* nocapture noundef readonly %inode, %struct.file_lock* nocapture noundef readonly %breaker) unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %1 = bitcast %struct.list_head* %flc_lease to i8**
  %.pn22 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn22 to %struct.list_head*
  %cmp.not23 = icmp eq %struct.list_head* %flc_lease, %2
  br i1 %cmp.not23, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn24 = phi i8* [ %.pn, %for.inc ], [ %.pn22, %entry ]
  %fl.0.in = getelementptr i8, i8* %.pn24, i64 -8
  %fl.0 = bitcast i8* %fl.0.in to %struct.file_lock*
  %call = call i1 @leases_conflict(%struct.file_lock* noundef %fl.0, %struct.file_lock* noundef %breaker) #16
  br i1 %call, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn24 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_lease, %4
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %cmp.not.lcssa = phi i1 [ false, %entry ], [ %call, %for.inc ], [ %call, %for.body ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @leases_conflict(%struct.file_lock* noundef %lease, %struct.file_lock* nocapture noundef readonly %breaker) #0 {
entry:
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lease, i64 0, i32 18
  %0 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %lm_breaker_owns_lease = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %0, i64 0, i32 7
  %1 = load i1 (%struct.file_lock*)*, i1 (%struct.file_lock*)** %lm_breaker_owns_lease, align 8
  %tobool.not = icmp eq i1 (%struct.file_lock*)* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 %1(%struct.file_lock* noundef %lease) #17
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %breaker, i64 0, i32 6
  %2 = load i32, i32* %fl_flags, align 8
  %fl_flags3 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lease, i64 0, i32 6
  %3 = load i32, i32* %fl_flags3, align 8
  %4 = xor i32 %3, %2
  %5 = and i32 %4, 2048
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %and8 = and i32 %2, 4
  %tobool9.not = icmp eq i32 %and8, 0
  %and12 = and i32 %3, 32
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end6
  %call16 = call fastcc i1 @locks_conflict(%struct.file_lock* noundef %breaker, %struct.file_lock* noundef %lease) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end, %if.end6, %land.lhs.true
  %retval.0 = phi i1 [ false, %land.lhs.true ], [ %call16, %if.end15 ], [ false, %if.end ], [ false, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @lease_breaking(%struct.file_lock* nocapture noundef readonly %fl) unnamed_addr #4 {
entry:
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, 768
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_insert_block(%struct.file_lock* noundef %blocker, %struct.file_lock* noundef %waiter, i1 (%struct.file_lock*, %struct.file_lock*)* nocapture noundef readonly %conflict) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  call fastcc void @__locks_insert_block(%struct.file_lock* noundef %blocker, %struct.file_lock* noundef %waiter, i1 (%struct.file_lock*, %struct.file_lock*)* noundef %conflict) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !28
  %call = call fastcc i1 @rcu_sync_is_idle() #16
  br i1 %call, label %do.body3, label %if.else, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  %0 = load i32*, i32** getelementptr inbounds (%struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* @file_rwsem, i64 0, i32 1), align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !32
  %3 = load i32*, i32** getelementptr inbounds (%struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* @file_rwsem, i64 0, i32 1), align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef getelementptr inbounds (%struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* @file_rwsem, i64 0, i32 2)) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_dispose_list(%struct.list_head* noundef %dispose) unnamed_addr #0 {
entry:
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %dispose) #16
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %dispose to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -8
  %2 = bitcast i8* %add.ptr to %struct.file_lock*
  %3 = bitcast i8* %1 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #16
  call void @locks_free_lock(%struct.file_lock* noundef %2) #16
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %dispose) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lease_get_mtime(%struct.inode* noundef %inode, %struct.timespec64* nocapture noundef writeonly %time) local_unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !35
  %1 = inttoptr i64 %0 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 3
  %call1 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %flc_lease, i64 0, i32 0
  %2 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %2, %flc_lease
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %2, i64 -1, i32 1
  %tobool13.not48 = icmp eq %struct.list_head** %add.ptr, null
  %tobool13.not = or i1 %cmp.not, %tobool13.not48
  br i1 %tobool13.not, label %if.end24.critedge, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then
  %3 = bitcast %struct.list_head** %add.ptr to %struct.file_lock*
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i64 0, i32 7
  %4 = load i8, i8* %fl_type, align 4
  %cmp15 = icmp eq i8 %4, 1
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br i1 %cmp15, label %if.then21, label %if.end24

if.then21:                                        ; preds = %land.lhs.true14
  %call23 = call [2 x i64] @current_time(%struct.inode* noundef %inode) #17
  %call23.fca.0.extract = extractvalue [2 x i64] %call23, 0
  %call23.fca.1.extract = extractvalue [2 x i64] %call23, 1
  %tmp22.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %time, i64 0, i32 0
  store i64 %call23.fca.0.extract, i64* %tmp22.sroa.0.0..sroa_idx, align 8
  %tmp22.sroa.4.0..sroa_idx26 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %time, i64 0, i32 1
  store i64 %call23.fca.1.extract, i64* %tmp22.sroa.4.0..sroa_idx26, align 8
  br label %if.end24

if.end24.critedge:                                ; preds = %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end24

if.end24:                                         ; preds = %if.end24.critedge, %entry, %land.lhs.true, %if.then21, %land.lhs.true14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fcntl_getlease(%struct.file* noundef readonly %filp) local_unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !36
  %2 = inttoptr i64 %1 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 3
  %call2 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end23

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @time_out_leases(%struct.inode* noundef %call, %struct.list_head* noundef nonnull %dispose) #16
  %3 = bitcast %struct.list_head* %flc_lease to i8**
  %.pn45 = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn45 to %struct.list_head*
  %cmp.not46 = icmp eq %struct.list_head* %flc_lease, %4
  br i1 %cmp.not46, label %for.end, label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %.pn47 = phi i8* [ %.pn, %for.inc ], [ %.pn45, %if.then ]
  %fl_file = getelementptr i8, i8* %.pn47, i64 112
  %5 = bitcast i8* %fl_file to %struct.file**
  %6 = load %struct.file*, %struct.file** %5, align 8
  %cmp11.not = icmp eq %struct.file* %6, %filp
  br i1 %cmp11.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %fl.0.in.le = getelementptr i8, i8* %.pn47, i64 -8
  %fl.0.le = bitcast i8* %fl.0.in.le to %struct.file_lock*
  %call13 = call fastcc i32 @target_leasetype(%struct.file_lock* noundef %fl.0.le) #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %7 = bitcast i8* %.pn47 to i8**
  %.pn = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_lease, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then, %if.end
  %type.0 = phi i32 [ %call13, %if.end ], [ 2, %if.then ], [ 2, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %if.end23

if.end23:                                         ; preds = %for.end, %land.lhs.true, %entry
  %type.1 = phi i32 [ 2, %land.lhs.true ], [ %type.0, %for.end ], [ 2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %type.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @target_leasetype(%struct.file_lock* nocapture noundef readonly %fl) unnamed_addr #4 {
entry:
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 256
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %1 = load i8, i8* %fl_type, align 4
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %conv, %if.end5 ], [ 2, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_setlease(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** nocapture noundef %flp, i8** noundef %priv) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.dive2 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  %3 = load i32, i32* %coerce.dive2, align 4
  %coerce.val.ii3 = zext i32 %3 to i64
  %call4 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii3) #16
  br i1 %call4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call5 = call i1 @capable(i32 noundef 28) #17
  br i1 %call5, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  switch i64 %arg, label %cleanup [
    i64 2, label %sw.bb
    i64 0, label %sw.bb14
    i64 1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end8
  %6 = load i8*, i8** %priv, align 8
  %call13 = call fastcc i32 @generic_delete_lease(%struct.file* noundef %filp, i8* noundef %6) #16
  br label %cleanup

sw.bb14:                                          ; preds = %if.end8, %if.end8
  %7 = load %struct.file_lock*, %struct.file_lock** %flp, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i64 0, i32 18
  %8 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %lm_break = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %8, i64 0, i32 4
  %9 = load i1 (%struct.file_lock*)*, i1 (%struct.file_lock*)** %lm_break, align 8
  %tobool15.not = icmp eq i1 (%struct.file_lock*)* %9, null
  br i1 %tobool15.not, label %if.then21, label %if.end31

if.then21:                                        ; preds = %sw.bb14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 1920; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !38
  br label %cleanup

if.end31:                                         ; preds = %sw.bb14
  %call32 = call fastcc i32 @generic_add_lease(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** noundef %flp, i8** noundef %priv) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %land.lhs.true, %if.end31, %if.then21, %sw.bb
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ -37, %if.then21 ], [ %call13, %sw.bb ], [ -13, %land.lhs.true ], [ -22, %if.end ], [ -22, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #16
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @generic_delete_lease(%struct.file* noundef readonly %filp, i8* noundef readnone %owner) unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !39
  %2 = inttoptr i64 %1 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 3
  %3 = bitcast %struct.list_head* %flc_lease to i8**
  %.pn61 = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn61 to %struct.list_head*
  %cmp.not62 = icmp eq %struct.list_head* %flc_lease, %4
  br i1 %cmp.not62, label %if.end23, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn63 = phi i8* [ %.pn, %for.inc ], [ %.pn61, %if.end ]
  %fl_file = getelementptr i8, i8* %.pn63, i64 112
  %5 = bitcast i8* %fl_file to %struct.file**
  %6 = load %struct.file*, %struct.file** %5, align 8
  %cmp8 = icmp eq %struct.file* %6, %filp
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %fl_owner = getelementptr i8, i8* %.pn63, i64 64
  %7 = bitcast i8* %fl_owner to i8**
  %8 = load i8*, i8** %7, align 8
  %cmp9 = icmp eq i8* %8, %owner
  br i1 %cmp9, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %9 = bitcast i8* %.pn63 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_lease, %10
  br i1 %cmp.not, label %if.end23, label %for.body

for.end:                                          ; preds = %land.lhs.true
  %fl.0.in.le = getelementptr i8, i8* %.pn63, i64 -8
  %tobool20.not = icmp eq i8* %fl.0.in.le, null
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %for.end
  %fl.0.le = bitcast i8* %fl.0.in.le to %struct.file_lock*
  %fl_lmops = getelementptr i8, i8* %.pn63, i64 168
  %11 = bitcast i8* %fl_lmops to %struct.lock_manager_operations**
  %12 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %11, align 8
  %lm_change = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %12, i64 0, i32 5
  %13 = load i32 (%struct.file_lock*, i32, %struct.list_head*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)** %lm_change, align 8
  %call22 = call i32 %13(%struct.file_lock* noundef nonnull %fl.0.le, i32 noundef 2, %struct.list_head* noundef nonnull %dispose) #17
  br label %if.end23

if.end23:                                         ; preds = %for.inc, %if.end, %if.then21, %for.end
  %error.0 = phi i32 [ %call22, %if.then21 ], [ -11, %for.end ], [ -11, %if.end ], [ -11, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23
  %retval.0 = phi i32 [ %error.0, %if.end23 ], [ -11, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @generic_add_lease(%struct.file* noundef readonly %filp, i64 noundef %arg, %struct.file_lock** nocapture noundef %flp, i8** noundef %priv) unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = load %struct.file_lock*, %struct.file_lock** %flp, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %0, i64 0, i32 6
  %1 = load i32, i32* %fl_flags, align 8
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  %2 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %conv = trunc i64 %arg to i32
  %call1 = call fastcc %struct.file_lock_context* @locks_get_lock_context(%struct.inode* noundef %call, i32 noundef %conv) #16
  %tobool2.not = icmp eq %struct.file_lock_context* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end8.thread, label %land.lhs.true

if.end8.thread:                                   ; preds = %if.end
  %cmp160 = icmp eq i64 %arg, 1
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %call5 = call fastcc i32 @inode_trylock(%struct.inode* noundef %call) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true
  %cmp = icmp eq i64 %arg, 1
  br i1 %cmp, label %if.then13, label %if.end27

if.then13:                                        ; preds = %if.end8
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 1773; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !40
  br label %cleanup

if.end27:                                         ; preds = %if.end8.thread, %if.end8
  %cmp162 = phi i1 [ %cmp160, %if.end8.thread ], [ false, %if.end8 ]
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @time_out_leases(%struct.inode* noundef %call, %struct.list_head* noundef nonnull %dispose) #16
  %3 = load i32, i32* %fl_flags, align 8
  %call29 = call fastcc i32 @check_conflicting_open(%struct.file* noundef %filp, i64 noundef %arg, i32 noundef %3) #16
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %out

if.end32:                                         ; preds = %if.end27
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call1, i64 0, i32 3
  %4 = bitcast %struct.list_head* %flc_lease to i8**
  %.pn164 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn164 to %struct.list_head*
  %cmp36.not167 = icmp eq %struct.list_head* %flc_lease, %5
  br i1 %cmp36.not167, label %if.end73, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end32
  %fl_owner43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %0, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn169 = phi i8* [ %.pn164, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %my_fl.0168 = phi %struct.file_lock* [ null, %for.body.lr.ph ], [ %my_fl.1, %for.inc ]
  %fl_file = getelementptr i8, i8* %.pn169, i64 112
  %6 = bitcast i8* %fl_file to %struct.file**
  %7 = load %struct.file*, %struct.file** %6, align 8
  %cmp40 = icmp eq %struct.file* %7, %filp
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %for.body
  %fl.0172.in = getelementptr i8, i8* %.pn169, i64 -8
  %fl.0172 = bitcast i8* %fl.0172.in to %struct.file_lock*
  %fl_owner = getelementptr i8, i8* %.pn169, i64 64
  %8 = bitcast i8* %fl_owner to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %fl_owner43, align 8
  %cmp44 = icmp eq i8* %9, %10
  br i1 %cmp44, label %for.inc, label %if.end47

if.end47:                                         ; preds = %land.lhs.true42, %for.body
  br i1 %cmp162, label %out, label %if.end51

if.end51:                                         ; preds = %if.end47
  %fl_flags52 = getelementptr i8, i8* %.pn169, i64 72
  %11 = bitcast i8* %fl_flags52 to i32*
  %12 = load i32, i32* %11, align 8
  %and53 = and i32 %12, 512
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %for.inc, label %out

for.inc:                                          ; preds = %land.lhs.true42, %if.end51
  %my_fl.1 = phi %struct.file_lock* [ %my_fl.0168, %if.end51 ], [ %fl.0172, %land.lhs.true42 ]
  %13 = bitcast i8* %.pn169 to i8**
  %.pn = load i8*, i8** %13, align 8
  %14 = bitcast i8* %.pn to %struct.list_head*
  %cmp36.not = icmp eq %struct.list_head* %flc_lease, %14
  br i1 %cmp36.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp65.not = icmp eq %struct.file_lock* %my_fl.1, null
  br i1 %cmp65.not, label %if.end73, label %if.then67

if.then67:                                        ; preds = %for.end
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %my_fl.1, i64 0, i32 18
  %15 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops, align 8
  %lm_change = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %15, i64 0, i32 5
  %16 = load i32 (%struct.file_lock*, i32, %struct.list_head*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)** %lm_change, align 8
  %call69 = call i32 %16(%struct.file_lock* noundef nonnull %my_fl.1, i32 noundef %conv, %struct.list_head* noundef nonnull %dispose) #17
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %out_setup, label %out

if.end73:                                         ; preds = %if.end32, %for.end
  %17 = load i32, i32* @leases_enable, align 4
  %tobool74.not = icmp eq i32 %17, 0
  br i1 %tobool74.not, label %out, label %if.end76

if.end76:                                         ; preds = %if.end73
  call fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef %0, %struct.list_head* noundef %flc_lease) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !41
  %18 = load i32, i32* %fl_flags, align 8
  %call79 = call fastcc i32 @check_conflicting_open(%struct.file* noundef %filp, i64 noundef %arg, i32 noundef %18) #16
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %out_setup, label %if.then81

if.then81:                                        ; preds = %if.end76
  call fastcc void @locks_unlink_lock_ctx(%struct.file_lock* noundef %0) #16
  br label %out

out_setup:                                        ; preds = %if.end76, %if.then67
  %my_fl.0.lcssa176 = phi %struct.file_lock* [ %my_fl.1, %if.then67 ], [ null, %if.end76 ]
  %lease.0 = phi %struct.file_lock* [ %my_fl.1, %if.then67 ], [ %0, %if.end76 ]
  %fl_lmops83 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lease.0, i64 0, i32 18
  %19 = load %struct.lock_manager_operations*, %struct.lock_manager_operations** %fl_lmops83, align 8
  %lm_setup = getelementptr inbounds %struct.lock_manager_operations, %struct.lock_manager_operations* %19, i64 0, i32 6
  %20 = load void (%struct.file_lock*, i8**)*, void (%struct.file_lock*, i8**)** %lm_setup, align 8
  %tobool84.not = icmp eq void (%struct.file_lock*, i8**)* %20, null
  br i1 %tobool84.not, label %out, label %if.then85

if.then85:                                        ; preds = %out_setup
  call void %20(%struct.file_lock* noundef %lease.0, i8** noundef %priv) #17
  br label %out

out:                                              ; preds = %if.end51, %if.end47, %out_setup, %if.then85, %if.end73, %if.then67, %if.end27, %if.then81
  %error.1 = phi i32 [ %call29, %if.end27 ], [ %call69, %if.then67 ], [ 0, %if.then85 ], [ 0, %out_setup ], [ %call79, %if.then81 ], [ -22, %if.end73 ], [ -11, %if.end47 ], [ -11, %if.end51 ]
  %my_fl.2 = phi %struct.file_lock* [ null, %if.end27 ], [ %my_fl.1, %if.then67 ], [ %my_fl.0.lcssa176, %if.then85 ], [ %my_fl.0.lcssa176, %out_setup ], [ null, %if.then81 ], [ null, %if.end73 ], [ %my_fl.0168, %if.end47 ], [ %my_fl.0168, %if.end51 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br i1 %tobool.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %out
  call fastcc void @inode_unlock(%struct.inode* noundef %call) #16
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %out
  %tobool93 = icmp ne i32 %error.1, 0
  %tobool95 = icmp ne %struct.file_lock* %my_fl.2, null
  %or.cond105 = select i1 %tobool93, i1 true, i1 %tobool95
  br i1 %or.cond105, label %cleanup, label %if.then96

if.then96:                                        ; preds = %if.end92
  store %struct.file_lock* null, %struct.file_lock** %flp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then96, %land.lhs.true, %entry, %if.then13
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry ], [ -11, %land.lhs.true ], [ 0, %if.then96 ], [ %error.1, %if.end92 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lease_register_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @srcu_notifier_chain_register(%struct.srcu_notifier_head* noundef nonnull @lease_notifier_chain, %struct.notifier_block* noundef %nb) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(%struct.srcu_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lease_unregister_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @srcu_notifier_chain_unregister(%struct.srcu_notifier_head* noundef nonnull @lease_notifier_chain, %struct.notifier_block* noundef %nb) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(%struct.srcu_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_setlease(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** noundef %lease, i8** noundef %priv) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.file_lock** %lease, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.file_lock*, %struct.file_lock** %lease, align 8
  call fastcc void @setlease_notifier(i64 noundef %arg, %struct.file_lock* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %setlease = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 26
  %2 = load i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)** %setlease, align 8
  %tobool1.not = icmp eq i32 (%struct.file*, i64, %struct.file_lock**, i8**)* %2, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 %2(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** noundef %lease, i8** noundef %priv) #17
  br label %return

if.else:                                          ; preds = %if.end
  %call5 = call i32 @generic_setlease(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** noundef %lease, i8** noundef %priv) #16
  br label %return

return:                                           ; preds = %if.else, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setlease_notifier(i64 noundef %arg, %struct.file_lock* noundef %lease) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i64 %arg, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.file_lock* %lease to i8*
  %call = call i32 @srcu_notifier_call_chain(%struct.srcu_notifier_head* noundef nonnull @lease_notifier_chain, i64 noundef %arg, i8* noundef %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fcntl_setlease(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  %cmp = icmp eq i64 %arg, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.file** %filp.addr to i8**
  %call = call i32 @vfs_setlease(%struct.file* noundef %filp, i64 noundef 2, %struct.file_lock** noundef null, i8** noundef nonnull %0) #16
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @do_fcntl_add_lease(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_fcntl_add_lease(i32 noundef %fd, %struct.file* noundef %filp, i64 noundef %arg) unnamed_addr #0 {
entry:
  %fl = alloca %struct.file_lock*, align 8
  %new = alloca %struct.fasync_struct*, align 8
  %0 = bitcast %struct.file_lock** %fl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  %1 = bitcast %struct.fasync_struct** %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #19
  %call = call fastcc %struct.file_lock* @lease_alloc(%struct.file* noundef %filp, i64 noundef %arg) #16
  store %struct.file_lock* %call, %struct.file_lock** %fl, align 8
  %2 = bitcast %struct.file_lock* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %2) #16
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.fasync_struct* @fasync_alloc() #17
  store %struct.fasync_struct* %call3, %struct.fasync_struct** %new, align 8
  %tobool.not = icmp eq %struct.fasync_struct* %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @locks_free_lock(%struct.file_lock* noundef %call) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fa_fd = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %call3, i64 0, i32 2
  store i32 %fd, i32* %fa_fd, align 4
  %3 = bitcast %struct.fasync_struct** %new to i8**
  %call6 = call i32 @vfs_setlease(%struct.file* noundef %filp, i64 noundef %arg, %struct.file_lock** noundef nonnull %fl, i8** noundef nonnull %3) #16
  %4 = load %struct.file_lock*, %struct.file_lock** %fl, align 8
  %tobool7.not = icmp eq %struct.file_lock* %4, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %4) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %5 = load %struct.fasync_struct*, %struct.fasync_struct** %new, align 8
  %tobool10.not = icmp eq %struct.fasync_struct* %5, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @fasync_free(%struct.fasync_struct* noundef nonnull %5) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ -12, %if.then4 ], [ %call6, %if.then11 ], [ %call6, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @locks_lock_inode_wait(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, 3
  switch i32 %and, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @posix_lock_inode_wait(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @flock_lock_inode_wait(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) #16
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 2102; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !42
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %res.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @posix_lock_inode_wait(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 4
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %entry
  %call = call fastcc i32 @posix_lock_inode(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl, %struct.file_lock* noundef null) #16
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %for.end29

if.end:                                           ; preds = %for.cond
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !23
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call1453 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call1654 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool17.not55 = icmp eq i32 %call1654, 0
  br i1 %tobool17.not55, label %if.end19, label %for.end

if.end19:                                         ; preds = %if.then11, %cleanup
  %call1456 = phi i64 [ %call14, %cleanup ], [ %call1453, %if.then11 ]
  %tobool20.not = icmp eq i64 %call1456, 0
  br i1 %tobool20.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end19
  call void @schedule() #17
  %call14 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call16 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end

for.end:                                          ; preds = %cleanup, %if.then11
  call void @finish_wait(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %if.end19, %for.end
  %__ret12.146 = phi i64 [ 0, %for.end ], [ %call1456, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #19
  %conv = trunc i64 %__ret12.146 to i32
  br label %if.end24

if.end24:                                         ; preds = %__out, %if.end
  %__ret.0 = phi i32 [ 0, %if.end ], [ %conv, %__out ]
  %tobool26.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool26.not, label %for.cond, label %for.end29

for.end29:                                        ; preds = %if.end24, %for.cond
  %error.0 = phi i32 [ %call, %for.cond ], [ %__ret.0, %if.end24 ]
  %call30 = call i32 @locks_delete_block(%struct.file_lock* noundef %fl) #16
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @flock_lock_inode_wait(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 4
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %entry
  %call = call fastcc i32 @flock_lock_inode(%struct.inode* noundef %inode, %struct.file_lock* noundef %fl) #16
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %for.end29

if.end:                                           ; preds = %for.cond
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !23
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call1453 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call1654 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool17.not55 = icmp eq i32 %call1654, 0
  br i1 %tobool17.not55, label %if.end19, label %for.end

if.end19:                                         ; preds = %if.then11, %cleanup
  %call1456 = phi i64 [ %call14, %cleanup ], [ %call1453, %if.then11 ]
  %tobool20.not = icmp eq i64 %call1456, 0
  br i1 %tobool20.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end19
  call void @schedule() #17
  %call14 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call16 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end

for.end:                                          ; preds = %cleanup, %if.then11
  call void @finish_wait(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %if.end19, %for.end
  %__ret12.146 = phi i64 [ 0, %for.end ], [ %call1456, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #19
  %conv = trunc i64 %__ret12.146 to i32
  br label %if.end24

if.end24:                                         ; preds = %__out, %if.end
  %__ret.0 = phi i32 [ 0, %if.end ], [ %conv, %__out ]
  %tobool26.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool26.not, label %for.cond, label %for.end29

for.end29:                                        ; preds = %if.end24, %for.cond
  %error.0 = phi i32 [ %call, %for.cond ], [ %__ret.0, %if.end24 ]
  %call30 = call i32 @locks_delete_block(%struct.file_lock* noundef %fl) #16
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_flock(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_flock(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_flock(i64 noundef %fd, i64 noundef %cmd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %cmd to i32
  %call = call fastcc i64 @__do_sys_flock(i32 noundef %conv, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_test_lock(%struct.file* noundef %filp, %struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %lock = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 19
  %1 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %lock, align 8
  %tobool.not = icmp eq i32 (%struct.file*, i32, %struct.file_lock*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %filp, i32 noundef 5, %struct.file_lock* noundef %fl) #17
  br label %return

if.end:                                           ; preds = %entry
  call void @posix_test_lock(%struct.file* noundef %filp, %struct.file_lock* noundef %fl) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fcntl_getlk(%struct.file* noundef %filp, i32 noundef %cmd, %struct.flock* nocapture noundef %flock) local_unnamed_addr #0 {
entry:
  %call = call %struct.file_lock* @locks_alloc_lock() #16
  %cmp = icmp eq %struct.file_lock* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 0
  %0 = load i16, i16* %l_type, align 8
  %switch = icmp ult i16 %0, 2
  br i1 %switch, label %if.end8, label %out

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @flock_to_posix_lock(%struct.file* noundef %filp, %struct.file_lock* noundef nonnull %call, %struct.flock* noundef %flock) #16
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.end8
  %cmp12 = icmp eq i32 %cmd, 36
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  %l_pid = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 4
  %1 = load i32, i32* %l_pid, align 8
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %if.end18, label %out

if.end18:                                         ; preds = %if.then14
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %2 = load i32, i32* %fl_flags, align 8
  %or = or i32 %2, 1024
  store i32 %or, i32* %fl_flags, align 8
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 5
  %3 = bitcast i8** %fl_owner to %struct.file**
  store %struct.file* %filp, %struct.file** %3, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %call20 = call i32 @vfs_test_lock(%struct.file* noundef %filp, %struct.file_lock* noundef nonnull %call) #16
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %out

if.end23:                                         ; preds = %if.end19
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 7
  %4 = load i8, i8* %fl_type, align 4
  %conv24 = zext i8 %4 to i16
  store i16 %conv24, i16* %l_type, align 8
  %5 = load i8, i8* %fl_type, align 4
  %cmp28.not = icmp eq i8 %5, 2
  br i1 %cmp28.not, label %out, label %if.then30

if.then30:                                        ; preds = %if.end23
  call fastcc void @posix_lock_to_flock(%struct.flock* noundef %flock, %struct.file_lock* noundef nonnull %call) #16
  br label %out

out:                                              ; preds = %if.end, %if.then30, %if.end23, %if.end19, %if.then14, %if.end8
  %error.0 = phi i32 [ %call9, %if.end8 ], [ -22, %if.then14 ], [ %call20, %if.end19 ], [ 0, %if.then30 ], [ 0, %if.end23 ], [ -22, %if.end ]
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @flock_to_posix_lock(%struct.file* noundef %filp, %struct.file_lock* nocapture noundef %fl, %struct.flock* nocapture noundef readonly %l) unnamed_addr #0 {
entry:
  %ll = alloca %struct.flock64, align 8
  %0 = bitcast %struct.flock64* %ll to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !23
  %l_type = getelementptr inbounds %struct.flock64, %struct.flock64* %ll, i64 0, i32 0
  %l_type1 = getelementptr inbounds %struct.flock, %struct.flock* %l, i64 0, i32 0
  %1 = load i16, i16* %l_type1, align 8
  store i16 %1, i16* %l_type, align 8
  %l_whence = getelementptr inbounds %struct.flock64, %struct.flock64* %ll, i64 0, i32 1
  %l_whence2 = getelementptr inbounds %struct.flock, %struct.flock* %l, i64 0, i32 1
  %2 = load i16, i16* %l_whence2, align 2
  store i16 %2, i16* %l_whence, align 2
  %l_start = getelementptr inbounds %struct.flock64, %struct.flock64* %ll, i64 0, i32 2
  %l_start3 = getelementptr inbounds %struct.flock, %struct.flock* %l, i64 0, i32 2
  %3 = load i64, i64* %l_start3, align 8
  store i64 %3, i64* %l_start, align 8
  %l_len = getelementptr inbounds %struct.flock64, %struct.flock64* %ll, i64 0, i32 3
  %l_len4 = getelementptr inbounds %struct.flock, %struct.flock* %l, i64 0, i32 3
  %4 = load i64, i64* %l_len4, align 8
  store i64 %4, i64* %l_len, align 8
  %call = call fastcc i32 @flock64_to_posix_lock(%struct.file* noundef %filp, %struct.file_lock* noundef %fl, %struct.flock64* noundef nonnull %ll) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @posix_lock_to_flock(%struct.flock* nocapture noundef writeonly %flock, %struct.file_lock* nocapture noundef readonly %fl) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #17
  %call2 = call fastcc i32 @locks_translate_pid(%struct.file_lock* noundef %fl, %struct.pid_namespace* noundef %call1) #16
  %l_pid = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 4
  store i32 %call2, i32* %l_pid, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  %2 = load i64, i64* %fl_start, align 8
  %l_start = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 2
  store i64 %2, i64* %l_start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  %3 = load i64, i64* %fl_end, align 8
  %cmp = icmp eq i64 %3, 9223372036854775807
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %fl_start, align 8
  %sub = add nsw i64 %3, 1
  %add = sub i64 %sub, %4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ 0, %entry ]
  %l_len = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 3
  store i64 %cond, i64* %l_len, align 8
  %l_whence = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 1
  store i16 0, i16* %l_whence, align 2
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %5 = load i8, i8* %fl_type, align 4
  %conv = zext i8 %5 to i16
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 0
  store i16 %conv, i16* %l_type, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_lock_file(%struct.file* noundef %filp, i32 noundef %cmd, %struct.file_lock* noundef %fl, %struct.file_lock* noundef %conf) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %lock = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 19
  %1 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %lock, align 8
  %tobool.not = icmp eq i32 (%struct.file*, i32, %struct.file_lock*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %filp, i32 noundef %cmd, %struct.file_lock* noundef %fl) #17
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call i32 @posix_lock_file(%struct.file* noundef %filp, %struct.file_lock* noundef %fl, %struct.file_lock* noundef %conf) #16
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fcntl_setlk(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %cmd, %struct.flock* nocapture noundef readonly %flock) local_unnamed_addr #0 {
entry:
  %call = call %struct.file_lock* @locks_alloc_lock() #16
  %cmp = icmp eq %struct.file_lock* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @flock_to_posix_lock(%struct.file* noundef %filp, %struct.file_lock* noundef nonnull %call, %struct.flock* noundef %flock) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @check_fmode_for_setlk(%struct.file_lock* noundef nonnull %call) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end4
  switch i32 %cmd, label %sw.epilog [
    i32 37, label %sw.bb
    i32 38, label %sw.bb12
    i32 7, label %if.end8.sw.bb20_crit_edge
  ]

if.end8.sw.bb20_crit_edge:                        ; preds = %if.end8
  %fl_flags21.phi.trans.insert = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %.pre = load i32, i32* %fl_flags21.phi.trans.insert, align 8
  br label %sw.bb20

sw.bb:                                            ; preds = %if.end8
  %l_pid = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 4
  %0 = load i32, i32* %l_pid, align 8
  %cmp9.not = icmp eq i32 %0, 0
  br i1 %cmp9.not, label %if.end11, label %out

if.end11:                                         ; preds = %sw.bb
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %1 = load i32, i32* %fl_flags, align 8
  %or = or i32 %1, 1024
  store i32 %or, i32* %fl_flags, align 8
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 5
  %2 = bitcast i8** %fl_owner to %struct.file**
  store %struct.file* %filp, %struct.file** %2, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  %l_pid13 = getelementptr inbounds %struct.flock, %struct.flock* %flock, i64 0, i32 4
  %3 = load i32, i32* %l_pid13, align 8
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %if.end16, label %out

if.end16:                                         ; preds = %sw.bb12
  %fl_flags17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %4 = load i32, i32* %fl_flags17, align 8
  %or18 = or i32 %4, 1024
  %fl_owner19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 5
  %5 = bitcast i8** %fl_owner19 to %struct.file**
  store %struct.file* %filp, %struct.file** %5, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end8.sw.bb20_crit_edge, %if.end16
  %6 = phi i32 [ %.pre, %if.end8.sw.bb20_crit_edge ], [ %or18, %if.end16 ]
  %fl_flags21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %or22 = or i32 %6, 128
  store i32 %or22, i32* %fl_flags21, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.end8, %if.end11
  %cmd.addr.1 = phi i32 [ %cmd, %if.end8 ], [ 7, %sw.bb20 ], [ 6, %if.end11 ]
  %call23 = call fastcc i32 @do_lock_file_wait(%struct.file* noundef %filp, i32 noundef %cmd.addr.1, %struct.file_lock* noundef nonnull %call) #16
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %out

land.lhs.true:                                    ; preds = %sw.epilog
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 7
  %7 = load i8, i8* %fl_type, align 4
  %cmp25.not = icmp eq i8 %7, 2
  br i1 %cmp25.not, label %out, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true
  %fl_flags28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call, i64 0, i32 6
  %8 = load i32, i32* %fl_flags28, align 8
  %and = and i32 %8, 1024
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %out

if.then30:                                        ; preds = %land.lhs.true27
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %files32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 84
  %11 = load %struct.files_struct*, %struct.files_struct** %files32, align 16
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %11, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %call34 = call fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef %11, i32 noundef %fd) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  %cmp36.not = icmp eq %struct.file* %call34, %filp
  br i1 %cmp36.not, label %out, label %if.then38

if.then38:                                        ; preds = %if.then30
  store i8 2, i8* %fl_type, align 4
  %call40 = call fastcc i32 @do_lock_file_wait(%struct.file* noundef %filp, i32 noundef %cmd.addr.1, %struct.file_lock* noundef nonnull %call) #16
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %out, label %if.then50, !prof !8

if.then50:                                        ; preds = %if.then38
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 2448; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !43
  br label %out

out:                                              ; preds = %if.then30, %if.then50, %if.then38, %sw.epilog, %land.lhs.true, %land.lhs.true27, %sw.bb12, %sw.bb, %if.end4, %if.end
  %error.1 = phi i32 [ %call2, %if.end ], [ %call5, %if.end4 ], [ %call23, %sw.epilog ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true ], [ -22, %sw.bb12 ], [ -22, %sw.bb ], [ 0, %if.then30 ], [ -9, %if.then50 ], [ -9, %if.then38 ]
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.1, %out ], [ -37, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @check_fmode_for_setlk(%struct.file_lock* nocapture noundef readonly %fl) unnamed_addr #4 {
entry:
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %0 = load i8, i8* %fl_type, align 4
  switch i8 %0, label %sw.epilog [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %1 = load %struct.file*, %struct.file** %fl_file, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %fl_file2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %3 = load %struct.file*, %struct.file** %fl_file2, align 8
  %f_mode3 = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 8
  %4 = load i32, i32* %f_mode3, align 4
  %and4 = and i32 %4, 2
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %return, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -9, %sw.bb ], [ -9, %sw.bb1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_lock_file_wait(%struct.file* noundef %filp, i32 noundef %cmd, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 4
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %fl_wait = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %entry, %if.end24
  %call1 = call i32 @vfs_lock_file(%struct.file* noundef %filp, i32 noundef %cmd, %struct.file_lock* noundef %fl, %struct.file_lock* noundef null) #16
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end4, label %for.end29

if.end4:                                          ; preds = %for.cond
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end24

if.then10:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !23
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #17
  %call1357 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call1558 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool16.not59 = icmp eq i32 %call1558, 0
  br i1 %tobool16.not59, label %if.end18, label %for.end

if.end18:                                         ; preds = %if.then10, %cleanup
  %call1360 = phi i64 [ %call13, %cleanup ], [ %call1357, %if.then10 ]
  %tobool19.not = icmp eq i64 %call1360, 0
  br i1 %tobool19.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end18
  call void @schedule() #17
  %call13 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #17
  %call15 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.end

for.end:                                          ; preds = %cleanup, %if.then10
  call void @finish_wait(%struct.wait_queue_head* noundef %fl_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #17
  br label %__out

__out:                                            ; preds = %if.end18, %for.end
  %__ret11.150 = phi i64 [ 0, %for.end ], [ %call1360, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #19
  %conv23 = trunc i64 %__ret11.150 to i32
  br label %if.end24

if.end24:                                         ; preds = %__out, %if.end4
  %__ret.0 = phi i32 [ 0, %if.end4 ], [ %conv23, %__out ]
  %tobool26.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool26.not, label %for.cond, label %for.end29

for.end29:                                        ; preds = %if.end24, %for.cond
  %error.0 = phi i32 [ %call1, %for.cond ], [ %__ret.0, %if.end24 ]
  %call30 = call i32 @locks_delete_block(%struct.file_lock* noundef %fl) #16
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) #16
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_remove_posix(%struct.file* noundef %filp, i8* noundef %owner) local_unnamed_addr #0 {
entry:
  %lock = alloca %struct.file_lock, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = bitcast %struct.file_lock* %lock to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false), !annotation !23
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !44
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = inttoptr i64 %1 to %struct.file_lock_context*
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 2
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_posix) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @locks_init_lock(%struct.file_lock* noundef nonnull %lock) #16
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 7
  store i8 2, i8* %fl_type, align 4
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 6
  store i32 65, i32* %fl_flags, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 12
  store i64 0, i64* %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 13
  store i64 9223372036854775807, i64* %fl_end, align 8
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 5
  store i8* %owner, i8** %fl_owner, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 51
  %5 = load i32, i32* %tgid, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 8
  store i32 %5, i32* %fl_pid, align 8
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 11
  store %struct.file* %filp, %struct.file** %fl_file, align 8
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 17
  store %struct.file_lock_operations* null, %struct.file_lock_operations** %fl_ops, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %lock, i64 0, i32 18
  store %struct.lock_manager_operations* null, %struct.lock_manager_operations** %fl_lmops, align 8
  %call5 = call i32 @vfs_lock_file(%struct.file* noundef %filp, i32 noundef 6, %struct.file_lock* noundef nonnull %lock, %struct.file_lock* noundef null) #16
  %6 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops, align 8
  %tobool7.not = icmp eq %struct.file_lock_operations* %6, null
  br i1 %tobool7.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %fl_release_private = getelementptr inbounds %struct.file_lock_operations, %struct.file_lock_operations* %6, i64 0, i32 1
  %7 = load void (%struct.file_lock*)*, void (%struct.file_lock*)** %fl_release_private, align 8
  %tobool9.not = icmp eq void (%struct.file_lock*)* %7, null
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  call void %7(%struct.file_lock* noundef nonnull %lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then10, %entry, %lor.lhs.false
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @locks_remove_file(%struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !45
  %1 = inttoptr i64 %0 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.file* %filp to i8*
  call void @locks_remove_posix(%struct.file* noundef %filp, i8* noundef %2) #16
  call fastcc void @locks_remove_flock(%struct.file* noundef %filp, %struct.file_lock_context* noundef nonnull %1) #16
  call fastcc void @locks_remove_lease(%struct.file* noundef %filp, %struct.file_lock_context* noundef nonnull %1) #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 2
  call fastcc void @locks_check_ctx_file_list(%struct.file* noundef %filp, %struct.list_head* noundef %flc_posix, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #16
  %flc_flock = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 1
  call fastcc void @locks_check_ctx_file_list(%struct.file* noundef %filp, %struct.list_head* noundef %flc_flock, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #16
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %1, i64 0, i32 3
  call fastcc void @locks_check_ctx_file_list(%struct.file* noundef %filp, %struct.list_head* noundef %flc_lease, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_remove_flock(%struct.file* noundef %filp, %struct.file_lock_context* noundef %flctx) unnamed_addr #0 {
entry:
  %fl = alloca %struct.file_lock, align 8
  %0 = bitcast %struct.file_lock* %fl to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false), !annotation !23
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %flc_flock = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %flctx, i64 0, i32 1
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_flock) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.file_lock* @flock_make_lock(%struct.file* noundef %filp, i32 noundef 8, %struct.file_lock* noundef nonnull %fl) #16
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %1 = load i32, i32* %fl_flags, align 8
  %or = or i32 %1, 64
  store i32 %or, i32* %fl_flags, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %flock = getelementptr inbounds %struct.file_operations, %struct.file_operations* %2, i64 0, i32 23
  %3 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %flock, align 8
  %tobool3.not = icmp eq i32 (%struct.file*, i32, %struct.file_lock*)* %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call7 = call i32 %3(%struct.file* noundef %filp, i32 noundef 7, %struct.file_lock* noundef nonnull %fl) #17
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = call fastcc i32 @flock_lock_inode(%struct.inode* noundef %call, %struct.file_lock* noundef nonnull %fl) #16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 17
  %4 = load %struct.file_lock_operations*, %struct.file_lock_operations** %fl_ops, align 8
  %tobool10.not = icmp eq %struct.file_lock_operations* %4, null
  br i1 %tobool10.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %fl_release_private = getelementptr inbounds %struct.file_lock_operations, %struct.file_lock_operations* %4, i64 0, i32 1
  %5 = load void (%struct.file_lock*)*, void (%struct.file_lock*)** %fl_release_private, align 8
  %tobool12.not = icmp eq void (%struct.file_lock*)* %5, null
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  call void %5(%struct.file_lock* noundef nonnull %fl) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true, %if.then13, %entry
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_remove_lease(%struct.file* noundef readnone %filp, %struct.file_lock_context* noundef %ctx) unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %ctx, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %flc_lease) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %ctx, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %1 = bitcast %struct.list_head* %flc_lease to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not47 = icmp eq %struct.list_head* %flc_lease, %3
  br i1 %cmp.not47, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn.in.in48 = phi i8* [ %.pn50, %for.inc ], [ %2, %if.end ]
  %.pn50.in = bitcast i8* %.pn.in.in48 to i8**
  %.pn50 = load i8*, i8** %.pn50.in, align 8
  %fl_file = getelementptr i8, i8* %.pn.in.in48, i64 112
  %4 = bitcast i8* %fl_file to %struct.file**
  %5 = load %struct.file*, %struct.file** %4, align 8
  %cmp13 = icmp eq %struct.file* %5, %filp
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body
  %fl.049.in = getelementptr i8, i8* %.pn.in.in48, i64 -8
  %fl.049 = bitcast i8* %fl.049.in to %struct.file_lock*
  %call15 = call i32 @lease_modify(%struct.file_lock* noundef %fl.049, i32 noundef 2, %struct.list_head* noundef nonnull %dispose) #16
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then14
  %6 = bitcast i8* %.pn50 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %flc_lease, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_check_ctx_file_list(%struct.file* noundef readonly %filp, %struct.list_head* noundef readonly %list, i8* noundef %list_type) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = bitcast %struct.list_head* %list to i8**
  %.pn31 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn31 to %struct.list_head*
  %cmp.not32 = icmp eq %struct.list_head* %1, %list
  br i1 %cmp.not32, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn33 = phi i8* [ %.pn31, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %fl_file = getelementptr i8, i8* %.pn33, i64 112
  %2 = bitcast i8* %fl_file to %struct.file**
  %3 = load %struct.file*, %struct.file** %2, align 8
  %cmp1 = icmp eq %struct.file* %3, %filp
  br i1 %cmp1, label %do.end4, label %for.inc

do.end4:                                          ; preds = %for.body
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 1
  %5 = load i32, i32* %s_dev, align 16
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %6 = load i64, i64* %i_ino, align 8
  %fl_owner = getelementptr i8, i8* %.pn33, i64 64
  %7 = bitcast i8* %fl_owner to i8**
  %8 = load i8*, i8** %7, align 8
  %fl_flags = getelementptr i8, i8* %.pn33, i64 72
  %9 = bitcast i8* %fl_flags to i32*
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr i8, i8* %.pn33, i64 76
  %12 = load i8, i8* %11, align 4
  %conv = zext i8 %12 to i32
  %fl_pid = getelementptr i8, i8* %.pn33, i64 80
  %13 = bitcast i8* %fl_pid to i32*
  %14 = load i32, i32* %13, align 8
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0), i8* noundef %list_type, i32 noundef %shr, i32 noundef %and, i64 noundef %6, i8* noundef %8, i32 noundef %10, i32 noundef %conv, i32 noundef %14) #18
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.end4
  %15 = bitcast i8* %.pn33 to i8**
  %.pn = load i8*, i8** %15, align 8
  %16 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %16, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_cancel_lock(%struct.file* noundef %filp, %struct.file_lock* noundef %fl) local_unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %lock = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 19
  %1 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %lock, align 8
  %tobool.not = icmp eq i32 (%struct.file*, i32, %struct.file_lock*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %filp, i32 noundef 1029, %struct.file_lock* noundef %fl) #17
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_fd_locks(%struct.seq_file* noundef %f, %struct.file* noundef %filp, %struct.files_struct* noundef %files) local_unnamed_addr #0 {
entry:
  %id = alloca i32, align 4
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #19
  store i32 0, i32* %id, align 4
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 37
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !46
  %2 = inttoptr i64 %1 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %flc_flock = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 1
  call fastcc void @__show_fd_locks(%struct.seq_file* noundef %f, %struct.list_head* noundef %flc_flock, i32* noundef nonnull %id, %struct.file* noundef %filp, %struct.files_struct* noundef %files) #16
  %flc_posix = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 2
  call fastcc void @__show_fd_locks(%struct.seq_file* noundef %f, %struct.list_head* noundef %flc_posix, i32* noundef nonnull %id, %struct.file* noundef %filp, %struct.files_struct* noundef %files) #16
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %2, i64 0, i32 3
  call fastcc void @__show_fd_locks(%struct.seq_file* noundef %f, %struct.list_head* noundef %flc_lease, i32* noundef nonnull %id, %struct.file* noundef %filp, %struct.files_struct* noundef %files) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__show_fd_locks(%struct.seq_file* noundef %f, %struct.list_head* noundef readonly %head, i32* nocapture noundef %id, %struct.file* noundef readnone %filp, %struct.files_struct* noundef readnone %files) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %head to i8**
  %.pn27 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn27 to %struct.list_head*
  %cmp.not30 = icmp eq %struct.list_head* %1, %head
  br i1 %cmp.not30, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.files_struct* %files to i8*
  %3 = bitcast %struct.file* %filp to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn31 = phi i8* [ %.pn27, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %fl.033.in = getelementptr i8, i8* %.pn31, i64 -8
  %fl.033 = bitcast i8* %fl.033.in to %struct.file_lock*
  %fl_file = getelementptr i8, i8* %.pn31, i64 112
  %4 = bitcast i8* %fl_file to %struct.file**
  %5 = load %struct.file*, %struct.file** %4, align 8
  %cmp1.not = icmp eq %struct.file* %5, %filp
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %fl_owner = getelementptr i8, i8* %.pn31, i64 64
  %6 = bitcast i8* %fl_owner to i8**
  %7 = load i8*, i8** %6, align 8
  %cmp2.not = icmp eq i8* %7, %2
  %cmp4.not = icmp eq i8* %7, %3
  %or.cond = or i1 %cmp2.not, %cmp4.not
  br i1 %or.cond, label %if.end6, label %for.inc

if.end6:                                          ; preds = %if.end
  %8 = load i32, i32* %id, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %id, align 4
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #17
  %9 = load i32, i32* %id, align 4
  %conv = sext i32 %9 to i64
  call fastcc void @lock_get_status(%struct.seq_file* noundef %f, %struct.file_lock* noundef %fl.033, i64 noundef %conv, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body, %if.end6
  %10 = bitcast i8* %.pn31 to i8**
  %.pn = load i8*, i8** %10, align 8
  %11 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %11, %head
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @proc_locks_init() #11 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i16 noundef 0, %struct.proc_dir_entry* noundef null, %struct.seq_operations* noundef nonnull @locks_seq_operations, i32 noundef 16, i8* noundef null) #17
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @filelock_init() #11 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 noundef 56, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #17
  store %struct.kmem_cache* %call, %struct.kmem_cache** @flctx_cache, align 8
  %call1 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i32 noundef 216, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #17
  store %struct.kmem_cache* %call1, %struct.kmem_cache** @filelock_cache, align 8
  %call217 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp18 = icmp ult i32 %call217, %0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call219 = phi i32 [ %call2, %for.body ], [ %call217, %entry ]
  %idxprom = sext i32 %call219 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.file_lock_list_struct* @file_lock_list to i64)
  %2 = inttoptr i64 %add to %struct.file_lock_list_struct*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.file_lock_list_struct, %struct.file_lock_list_struct* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %first = getelementptr inbounds %struct.file_lock_list_struct, %struct.file_lock_list_struct* %2, i64 0, i32 1, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %call2 = call i32 @cpumask_next(i32 noundef %call219, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @lease_notifier_chain_init() #16
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_dump_ctx_list(%struct.list_head* noundef readonly %list, i8* noundef %list_type) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %.pn22 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn22 to %struct.list_head*
  %cmp.not23 = icmp eq %struct.list_head* %1, %list
  br i1 %cmp.not23, label %for.end, label %do.end3

do.end3:                                          ; preds = %entry, %do.end3
  %.pn24 = phi i8* [ %.pn, %do.end3 ], [ %.pn22, %entry ]
  %fl_owner = getelementptr i8, i8* %.pn24, i64 64
  %2 = bitcast i8* %fl_owner to i8**
  %3 = load i8*, i8** %2, align 8
  %fl_flags = getelementptr i8, i8* %.pn24, i64 72
  %4 = bitcast i8* %fl_flags to i32*
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr i8, i8* %.pn24, i64 76
  %7 = load i8, i8* %6, align 4
  %conv = zext i8 %7 to i32
  %fl_pid = getelementptr i8, i8* %.pn24, i64 80
  %8 = bitcast i8* %fl_pid to i32*
  %9 = load i32, i32* %8, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* noundef %list_type, i8* noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %9) #18
  %10 = bitcast i8* %.pn24 to i8**
  %.pn = load i8*, i8** %10, align 8
  %11 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %11, %list
  br i1 %cmp.not, label %for.end, label %do.end3

for.end:                                          ; preds = %do.end3, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #19, !srcloc !48
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @locks_delete_global_blocked(%struct.file_lock* nocapture noundef %waiter) unnamed_addr #6 {
entry:
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 2
  call fastcc void @hash_del(%struct.hlist_node* noundef %fl_link) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hash_del(%struct.hlist_node* nocapture noundef %node) unnamed_addr #6 {
entry:
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #16
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #6 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #19, !srcloc !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @posix_same_owner(%struct.file_lock* nocapture noundef readonly %fl1, %struct.file_lock* nocapture noundef readonly %fl2) unnamed_addr #4 {
entry:
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl1, i64 0, i32 5
  %0 = load i8*, i8** %fl_owner, align 8
  %fl_owner1 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl2, i64 0, i32 5
  %1 = load i8*, i8** %fl_owner1, align 8
  %cmp = icmp eq i8* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @locks_overlap(%struct.file_lock* nocapture noundef readonly %fl1, %struct.file_lock* nocapture noundef readonly %fl2) unnamed_addr #4 {
entry:
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl1, i64 0, i32 13
  %0 = load i64, i64* %fl_end, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl2, i64 0, i32 12
  %1 = load i64, i64* %fl_start, align 8
  %cmp.not = icmp slt i64 %0, %1
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %fl_end1 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl2, i64 0, i32 13
  %2 = load i64, i64* %fl_end1, align 8
  %fl_start2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl1, i64 0, i32 12
  %3 = load i64, i64* %fl_start2, align 8
  %cmp3 = icmp sge i64 %2, %3
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @locks_conflict(%struct.file_lock* nocapture noundef readonly %caller_fl, %struct.file_lock* nocapture noundef readonly %sys_fl) unnamed_addr #4 {
entry:
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %sys_fl, i64 0, i32 7
  %0 = load i8, i8* %fl_type, align 4
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %fl_type2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %caller_fl, i64 0, i32 7
  %1 = load i8, i8* %fl_type2, align 4
  %cmp4 = icmp eq i8 %1, 1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %cmp4, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file_lock_context* @locks_get_lock_context(%struct.inode* noundef %inode, i32 noundef %type) unnamed_addr #0 {
entry:
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = bitcast %struct.file_lock_context** %i_flctx to i8*
  %1 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !51
  %2 = inttoptr i64 %1 to %struct.file_lock_context*
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %out, !prof !9

lor.lhs.false:                                    ; preds = %entry
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @flctx_cache, align 8
  %call4 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #17
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %out, label %do.body8

do.body8:                                         ; preds = %if.end
  %4 = bitcast i8* %call4 to %struct.file_lock_context*
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call4 to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %flc_flock = getelementptr inbounds i8, i8* %call4, i64 8
  %5 = bitcast i8* %flc_flock to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %5) #16
  %flc_posix = getelementptr inbounds i8, i8* %call4, i64 24
  %6 = bitcast i8* %flc_posix to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #16
  %flc_lease = getelementptr inbounds i8, i8* %call4, i64 40
  %7 = bitcast i8* %flc_lease to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %7) #16
  %8 = ptrtoint i8* %call4 to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %8) #17
  %tobool17.not = icmp eq i64 %call14.i, 0
  br i1 %tobool17.not, label %out, label %if.then18

if.then18:                                        ; preds = %do.body8
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @flctx_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %9, i8* noundef nonnull %call4) #17
  %10 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.file_lock_context** elementtype(%struct.file_lock_context*) %i_flctx) #19, !srcloc !52
  %11 = inttoptr i64 %10 to %struct.file_lock_context*
  br label %out

out:                                              ; preds = %do.body8, %if.then18, %if.end, %entry, %lor.lhs.false
  %ctx.0 = phi %struct.file_lock_context* [ %2, %entry ], [ null, %lor.lhs.false ], [ %11, %if.then18 ], [ %4, %do.body8 ], [ null, %if.end ]
  ret %struct.file_lock_context* %ctx.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @posix_locks_deadlock(%struct.file_lock* nocapture noundef readonly %caller_fl, %struct.file_lock* nocapture noundef readonly %block_fl) unnamed_addr #12 {
entry:
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %caller_fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond, label %cleanup

while.cond:                                       ; preds = %entry, %if.end3
  %block_fl.addr.0 = phi %struct.file_lock* [ %call, %if.end3 ], [ %block_fl, %entry ]
  %i.0 = phi i32 [ %inc, %if.end3 ], [ 0, %entry ]
  %call = call fastcc %struct.file_lock* @what_owner_is_waiting_for(%struct.file_lock* noundef %block_fl.addr.0) #16
  %tobool1.not = icmp eq %struct.file_lock* %call, null
  %cmp = icmp ugt i32 %i.0, 10
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %while.cond
  %inc = add nuw nsw i32 %i.0, 1
  %call4 = call fastcc i32 @posix_same_owner(%struct.file_lock* noundef %caller_fl, %struct.file_lock* noundef nonnull %call) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond, label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %while.cond ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__locks_insert_block(%struct.file_lock* noundef %blocker, %struct.file_lock* noundef %waiter, i1 (%struct.file_lock*, %struct.file_lock*)* nocapture noundef readonly %conflict) unnamed_addr #0 {
entry:
  %fl_blocked_member = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 4
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_member) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %new_blocker.preheader, !prof !9

new_blocker.preheader:                            ; preds = %entry
  %fl_blocked_requests64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %blocker, i64 0, i32 3
  %0 = bitcast %struct.list_head* %fl_blocked_requests64 to i8**
  %.pn5465 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn5465 to %struct.list_head*
  %cmp.not5768 = icmp eq %struct.list_head* %fl_blocked_requests64, %1
  br i1 %cmp.not5768, label %for.end, label %for.body.lr.ph

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/locks.c\22; .popsection; .long 14472b - 14470b; .short 824; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !53
  unreachable

new_blocker.loopexit:                             ; preds = %for.body
  %fl.060.le = bitcast i8* %fl.0.in59 to %struct.file_lock*
  %fl_blocked_requests = getelementptr i8, i8* %.pn58, i64 -16
  %2 = bitcast i8* %fl_blocked_requests to %struct.list_head*
  %3 = bitcast i8* %fl_blocked_requests to i8**
  %.pn54 = load i8*, i8** %3, align 8
  %cmp.not57 = icmp eq i8* %fl_blocked_requests, %.pn54
  br i1 %cmp.not57, label %for.end.loopexit80, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %new_blocker.preheader, %new_blocker.loopexit
  %.pn5471 = phi i8* [ %.pn54, %new_blocker.loopexit ], [ %.pn5465, %new_blocker.preheader ]
  %fl_blocked_requests70 = phi %struct.list_head* [ %2, %new_blocker.loopexit ], [ %fl_blocked_requests64, %new_blocker.preheader ]
  %blocker.addr.069 = phi %struct.file_lock* [ %fl.060.le, %new_blocker.loopexit ], [ %blocker, %new_blocker.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn58 = phi i8* [ %.pn5471, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %fl.0.in59 = getelementptr i8, i8* %.pn58, i64 -56
  %fl.060 = bitcast i8* %fl.0.in59 to %struct.file_lock*
  %call18 = call i1 %conflict(%struct.file_lock* noundef %fl.060, %struct.file_lock* noundef %waiter) #17, !callees !54
  br i1 %call18, label %new_blocker.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = bitcast i8* %.pn58 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %fl_blocked_requests70, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end.loopexit80:                               ; preds = %new_blocker.loopexit
  %fl.060.le.le = bitcast i8* %fl.0.in59 to %struct.file_lock*
  %6 = bitcast i8* %fl_blocked_requests to %struct.list_head*
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.loopexit80, %new_blocker.preheader
  %blocker.addr.0.lcssa = phi %struct.file_lock* [ %blocker, %new_blocker.preheader ], [ %fl.060.le.le, %for.end.loopexit80 ], [ %blocker.addr.069, %for.inc ]
  %fl_blocked_requests.lcssa = phi %struct.list_head* [ %fl_blocked_requests64, %new_blocker.preheader ], [ %6, %for.end.loopexit80 ], [ %fl_blocked_requests70, %for.inc ]
  %fl_blocker = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 0
  store %struct.file_lock* %blocker.addr.0.lcssa, %struct.file_lock** %fl_blocker, align 8
  call fastcc void @list_add_tail(%struct.list_head* noundef %fl_blocked_member, %struct.list_head* noundef %fl_blocked_requests.lcssa) #16
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %blocker.addr.0.lcssa, i64 0, i32 6
  %7 = load i32, i32* %fl_flags, align 8
  %8 = and i32 %7, 1025
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  call fastcc void @locks_insert_global_blocked(%struct.file_lock* noundef %waiter) #16
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.end
  call fastcc void @__locks_wake_up_blocks(%struct.file_lock* noundef %waiter) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_move_blocks(%struct.file_lock* noundef %new, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  %fl_blocked_requests2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %new, i64 0, i32 3
  call fastcc void @list_splice_init(%struct.list_head* noundef %fl_blocked_requests, %struct.list_head* noundef %fl_blocked_requests2) #16
  %0 = bitcast %struct.list_head* %fl_blocked_requests2 to i8**
  %.pn22 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn22 to %struct.list_head*
  %cmp.not23 = icmp eq %struct.list_head* %fl_blocked_requests2, %1
  br i1 %cmp.not23, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %.pn24 = phi i8* [ %.pn, %for.body ], [ %.pn22, %if.end ]
  %f.0.in = getelementptr i8, i8* %.pn24, i64 -56
  %fl_blocker = bitcast i8* %f.0.in to %struct.file_lock**
  store %struct.file_lock* %new, %struct.file_lock** %fl_blocker, align 8
  %2 = bitcast i8* %.pn24 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %fl_blocked_requests2, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef %fl, %struct.list_head* noundef %before) unnamed_addr #0 {
entry:
  %fl_list = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 1
  call fastcc void @list_add_tail(%struct.list_head* noundef %fl_list, %struct.list_head* noundef %before) #16
  call fastcc void @locks_insert_global_locks(%struct.file_lock* noundef %fl) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64 %new, i64* elementtype(i64) %0) #19, !srcloc !55
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.file_lock* @what_owner_is_waiting_for(%struct.file_lock* nocapture noundef readonly %block_fl) unnamed_addr #12 {
entry:
  %call = call fastcc i64 @posix_owner_key(%struct.file_lock* noundef %block_fl) #16
  %mul.i = mul i64 %call, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 57
  %first = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @blocked_hash, i64 0, i64 %shr.i, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -2, i32 1
  %tobool3.not4044 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool3.not40 = or i1 %tobool.not, %tobool3.not4044
  br i1 %tobool3.not40, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.file_lock*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %fl.041 = phi %struct.file_lock* [ %spec.select37, %for.inc ], [ %1, %for.body.preheader ]
  %call4 = call fastcc i32 @posix_same_owner(%struct.file_lock* noundef nonnull %fl.041, %struct.file_lock* noundef %block_fl) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %while.cond

while.cond:                                       ; preds = %for.body, %while.cond
  %fl.1 = phi %struct.file_lock* [ %2, %while.cond ], [ %fl.041, %for.body ]
  %fl_blocker = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.1, i64 0, i32 0
  %2 = load %struct.file_lock*, %struct.file_lock** %fl_blocker, align 8
  %tobool6.not = icmp eq %struct.file_lock* %2, null
  br i1 %tobool6.not, label %cleanup, label %while.cond

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.041, i64 0, i32 2, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool10.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr17 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -2, i32 1
  %4 = bitcast %struct.hlist_node*** %add.ptr17 to %struct.file_lock*
  %spec.select37 = select i1 %tobool10.not, %struct.file_lock* null, %struct.file_lock* %4
  %tobool3.not = icmp eq %struct.file_lock* %spec.select37, null
  br i1 %tobool3.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %while.cond, %entry
  %retval.0 = phi %struct.file_lock* [ null, %entry ], [ %fl.1, %while.cond ], [ null, %for.inc ]
  ret %struct.file_lock* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @posix_owner_key(%struct.file_lock* nocapture noundef readonly %fl) unnamed_addr #4 {
entry:
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 5
  %0 = load i8*, i8** %fl_owner, align 8
  %1 = ptrtoint i8* %0 to i64
  ret i64 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @locks_insert_global_blocked(%struct.file_lock* noundef %waiter) unnamed_addr #6 {
entry:
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %waiter, i64 0, i32 2
  %call = call fastcc i64 @posix_owner_key(%struct.file_lock* noundef %waiter) #16
  %mul.i = mul i64 %call, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 57
  %arrayidx = getelementptr [128 x %struct.hlist_head], [128 x %struct.hlist_head]* @blocked_hash, i64 0, i64 %shr.i
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %fl_link, %struct.hlist_head* noundef %arrayidx) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #6 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_insert_global_locks(%struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.file_lock_list_struct* @file_lock_list to i64)
  %0 = inttoptr i64 %add to %struct.file_lock_list_struct*
  %rlock.i = getelementptr inbounds %struct.file_lock_list_struct, %struct.file_lock_list_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add13 = add i64 %call12, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add13 to i32*
  %2 = load i32, i32* %1, align 4
  %fl_link_cpu = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 9
  store i32 %2, i32* %fl_link_cpu, align 4
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 2
  %hlist = getelementptr inbounds %struct.file_lock_list_struct, %struct.file_lock_list_struct* %0, i64 0, i32 1
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %fl_link, %struct.hlist_head* noundef %hlist) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #13 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !56
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_unlink_lock_ctx(%struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  call fastcc void @locks_delete_global_locks(%struct.file_lock* noundef %fl) #16
  %fl_list = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %fl_list) #16
  call fastcc void @locks_wake_up_blocks(%struct.file_lock* noundef %fl) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @locks_delete_global_locks(%struct.file_lock* nocapture noundef %fl) unnamed_addr #0 {
entry:
  %fl_link = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 2
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %fl_link) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %fl_link_cpu = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 9
  %0 = load i32, i32* %fl_link_cpu, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.file_lock_list_struct* @file_lock_list to i64)
  %2 = inttoptr i64 %add to %struct.file_lock_list_struct*
  %rlock.i = getelementptr inbounds %struct.file_lock_list_struct, %struct.file_lock_list_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %fl_link) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #10 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @lease_init(%struct.file* noundef %filp, i64 noundef %type, %struct.file_lock* nocapture noundef writeonly %fl) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @assign_type(%struct.file_lock* noundef %fl, i64 noundef %type) #16
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 5
  %0 = bitcast i8** %fl_owner to %struct.file**
  store %struct.file* %filp, %struct.file** %0, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 51
  %3 = load i32, i32* %tgid, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 8
  store i32 %3, i32* %fl_pid, align 8
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  store %struct.file* %filp, %struct.file** %fl_file, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  store i32 32, i32* %fl_flags, align 8
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  store i64 0, i64* %fl_start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  store i64 9223372036854775807, i64* %fl_end, align 8
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 17
  store %struct.file_lock_operations* null, %struct.file_lock_operations** %fl_ops, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 18
  store %struct.lock_manager_operations* @lease_manager_ops, %struct.lock_manager_operations** %fl_lmops, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @lease_break_callback(%struct.file_lock* noundef %fl) #0 {
entry:
  %fl_fasync = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 14
  call void @kill_fasync(%struct.fasync_struct** noundef %fl_fasync, i32 noundef 29, i32 noundef 3) #17
  ret i1 false
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @lease_setup(%struct.file_lock* noundef %fl, i8** nocapture noundef %priv) #0 {
entry:
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %0 = load %struct.file*, %struct.file** %fl_file, align 8
  %1 = bitcast i8** %priv to %struct.fasync_struct**
  %2 = load %struct.fasync_struct*, %struct.fasync_struct** %1, align 8
  %fa_fd = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %2, i64 0, i32 2
  %3 = load i32, i32* %fa_fd, align 4
  %fl_fasync = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 14
  %call = call %struct.fasync_struct* @fasync_insert_entry(i32 noundef %3, %struct.file* noundef %0, %struct.fasync_struct** noundef %fl_fasync, %struct.fasync_struct* noundef %2) #17
  %tobool.not = icmp eq %struct.fasync_struct* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %priv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call2 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %5) #16
  call void @__f_setown(%struct.file* noundef %0, %struct.pid* noundef %call2, i32 noundef 1, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fasync_struct* @fasync_insert_entry(i32 noundef, %struct.file* noundef, %struct.fasync_struct** noundef, %struct.fasync_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(%struct.file* noundef, %struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* @file_rwsem, i64 0, i32 0, i32 0), align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #19, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @past_time(i64 noundef %then) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i64 %then, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %then, %0
  %cmp = icmp slt i64 %sub, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @inode_trylock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  %call = call i32 @down_write_trylock(%struct.rw_semaphore* noundef %i_rwsem) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @check_conflicting_open(%struct.file* nocapture noundef readonly %filp, i64 noundef %arg, i32 noundef %flags) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %0 = and i32 %flags, 2052
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  switch i64 %arg, label %cleanup [
    i64 0, label %if.then5
    i64 1, label %if.end10
  ]

if.then5:                                         ; preds = %if.end4
  %call6 = call fastcc i1 @inode_is_open_for_write(%struct.inode* noundef %call) #16
  %cond = select i1 %call6, i32 -11, i32 0
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and11 = and i32 %2, 2
  %tobool12.not = icmp eq i32 %and11, 0
  %not.tobool12.not = xor i1 %tobool12.not, true
  %self_wcount.0 = zext i1 %not.tobool12.not to i32
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 34, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  %cmp22.not = icmp eq i32 %3, %self_wcount.0
  br i1 %cmp22.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %and16 = and i32 %2, 1
  %self_rcount.0 = select i1 %tobool12.not, i32 %and16, i32 0
  %counter.i39 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 35, i32 0
  %4 = load volatile i32, i32* %counter.i39, align 4
  %cmp24.not = icmp eq i32 %4, %self_rcount.0
  %spec.select38 = select i1 %cmp24.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end10, %if.end4, %entry, %if.then5
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ 0, %entry ], [ 0, %if.end4 ], [ -11, %if.end10 ], [ %spec.select38, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @inode_is_open_for_write(%struct.inode* noundef %inode) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(%struct.srcu_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fasync_struct* @fasync_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fasync_free(%struct.fasync_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @flock_lock_inode(%struct.inode* noundef %inode, %struct.file_lock* noundef %request) unnamed_addr #0 {
entry:
  %dispose = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dispose to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #19
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 0
  store %struct.list_head* %dispose, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dispose, i64 0, i32 1
  store %struct.list_head* %dispose, %struct.list_head** %prev, align 8
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 7
  %1 = load i8, i8* %fl_type, align 4
  %conv = zext i8 %1 to i32
  %call = call fastcc %struct.file_lock_context* @locks_get_lock_context(%struct.inode* noundef %inode, i32 noundef %conv) #16
  %tobool.not = icmp eq %struct.file_lock_context* %call, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %fl_type, align 4
  %cmp.not = icmp eq i8 %2, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 6
  %3 = load i32, i32* %fl_flags, align 8
  %and = and i32 %3, 16
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -2
  br label %cleanup

if.end6:                                          ; preds = %entry
  %fl_flags7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 6
  %4 = load i32, i32* %fl_flags7, align 8
  %and8 = and i32 %4, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end6
  %5 = load i8, i8* %fl_type, align 4
  %cmp12.not = icmp eq i8 %5, 2
  br i1 %cmp12.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %call15 = call %struct.file_lock* @locks_alloc_lock() #16
  %tobool16.not = icmp eq %struct.file_lock* %call15, null
  br i1 %tobool16.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then14, %land.lhs.true, %if.end6
  %new_fl.0 = phi %struct.file_lock* [ null, %if.end6 ], [ %call15, %if.then14 ], [ null, %land.lhs.true ]
  call fastcc void @percpu_down_read() #16
  %rlock.i = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %6 = load i32, i32* %fl_flags7, align 8
  %and21 = and i32 %6, 8
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %find_conflict

if.end24:                                         ; preds = %if.end19
  %flc_flock = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 1
  %7 = bitcast %struct.list_head* %flc_flock to i8**
  %.pn165 = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn165 to %struct.list_head*
  %cmp27.not166 = icmp eq %struct.list_head* %flc_flock, %8
  br i1 %cmp27.not166, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end24
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %request, i64 0, i32 11
  %9 = load %struct.file*, %struct.file** %fl_file, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn167 = phi i8* [ %.pn165, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %fl_file29 = getelementptr i8, i8* %.pn167, i64 112
  %10 = bitcast i8* %fl_file29 to %struct.file**
  %11 = load %struct.file*, %struct.file** %10, align 8
  %cmp30.not = icmp eq %struct.file* %9, %11
  br i1 %cmp30.not, label %if.end33, label %for.inc

if.end33:                                         ; preds = %for.body
  %12 = load i8, i8* %fl_type, align 4
  %13 = getelementptr i8, i8* %.pn167, i64 76
  %14 = load i8, i8* %13, align 4
  %cmp38 = icmp eq i8 %12, %14
  br i1 %cmp38, label %out, label %if.end41

if.end41:                                         ; preds = %if.end33
  %fl.0.in.le = getelementptr i8, i8* %.pn167, i64 -8
  %fl.0.le = bitcast i8* %fl.0.in.le to %struct.file_lock*
  call fastcc void @locks_delete_lock_ctx(%struct.file_lock* noundef %fl.0.le, %struct.list_head* noundef nonnull %dispose) #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %15 = bitcast i8* %.pn167 to i8**
  %.pn = load i8*, i8** %15, align 8
  %16 = bitcast i8* %.pn to %struct.list_head*
  %cmp27.not = icmp eq %struct.list_head* %flc_flock, %16
  br i1 %cmp27.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end24, %if.end41
  %cmp27.not162 = phi i32 [ 0, %if.end41 ], [ -2, %if.end24 ], [ -2, %for.inc ]
  %17 = load i8, i8* %fl_type, align 4
  %cmp52 = icmp eq i8 %17, 2
  br i1 %cmp52, label %if.then54, label %find_conflict

if.then54:                                        ; preds = %for.end
  %18 = load i32, i32* %fl_flags7, align 8
  %and56 = and i32 %18, 16
  %tobool57.not = icmp eq i32 %and56, 0
  %spec.select158 = select i1 %tobool57.not, i32 0, i32 %cmp27.not162
  br label %out

find_conflict:                                    ; preds = %if.end19, %for.end
  %flc_flock64 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %call, i64 0, i32 1
  %19 = bitcast %struct.list_head* %flc_flock64 to i8**
  %.pn157169 = load i8*, i8** %19, align 8
  %20 = bitcast i8* %.pn157169 to %struct.list_head*
  %cmp74.not172 = icmp eq %struct.list_head* %flc_flock64, %20
  br i1 %cmp74.not172, label %for.end95, label %for.body77

for.body77:                                       ; preds = %find_conflict, %for.inc86
  %.pn157173 = phi i8* [ %.pn157, %for.inc86 ], [ %.pn157169, %find_conflict ]
  %fl.1.in174 = getelementptr i8, i8* %.pn157173, i64 -8
  %fl.1175 = bitcast i8* %fl.1.in174 to %struct.file_lock*
  %call78 = call i1 @flock_locks_conflict(%struct.file_lock* noundef %request, %struct.file_lock* noundef %fl.1175) #16
  br i1 %call78, label %if.end80, label %for.inc86

if.end80:                                         ; preds = %for.body77
  %21 = load i32, i32* %fl_flags7, align 8
  %and82 = and i32 %21, 128
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %out, label %if.end85

if.end85:                                         ; preds = %if.end80
  %fl.1175.le = bitcast i8* %fl.1.in174 to %struct.file_lock*
  call fastcc void @locks_insert_block(%struct.file_lock* noundef %fl.1175.le, %struct.file_lock* noundef %request, i1 (%struct.file_lock*, %struct.file_lock*)* noundef nonnull @flock_locks_conflict) #16
  br label %out

for.inc86:                                        ; preds = %for.body77
  %22 = bitcast i8* %.pn157173 to i8**
  %.pn157 = load i8*, i8** %22, align 8
  %23 = bitcast i8* %.pn157 to %struct.list_head*
  %cmp74.not = icmp eq %struct.list_head* %flc_flock64, %23
  br i1 %cmp74.not, label %for.end95, label %for.body77

for.end95:                                        ; preds = %for.inc86, %find_conflict
  %24 = load i32, i32* %fl_flags7, align 8
  %and97 = and i32 %24, 8
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end100, label %out

if.end100:                                        ; preds = %for.end95
  call void @locks_copy_lock(%struct.file_lock* noundef %new_fl.0, %struct.file_lock* noundef %request) #16
  call fastcc void @locks_move_blocks(%struct.file_lock* noundef %new_fl.0, %struct.file_lock* noundef %request) #16
  call fastcc void @locks_insert_lock_ctx(%struct.file_lock* noundef %new_fl.0, %struct.list_head* noundef %flc_flock64) #16
  br label %out

out:                                              ; preds = %if.then54, %for.end95, %if.end80, %if.end33, %if.end100, %if.end85
  %error.0 = phi i32 [ 1, %if.end85 ], [ -11, %if.end80 ], [ 0, %for.end95 ], [ 0, %if.end100 ], [ 0, %if.end33 ], [ %spec.select158, %if.then54 ]
  %new_fl.1 = phi %struct.file_lock* [ %new_fl.0, %if.end85 ], [ %new_fl.0, %if.end80 ], [ %new_fl.0, %for.end95 ], [ null, %if.end100 ], [ %new_fl.0, %if.end33 ], [ %new_fl.0, %if.then54 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @percpu_up_read() #16
  %tobool103.not = icmp eq %struct.file_lock* %new_fl.1, null
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %out
  call void @locks_free_lock(%struct.file_lock* noundef nonnull %new_fl.1) #16
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %out
  call fastcc void @locks_dispose_list(%struct.list_head* noundef nonnull %dispose) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then, %if.end105, %if.end
  %retval.0 = phi i32 [ %error.0, %if.end105 ], [ %cond, %if.end ], [ -12, %if.then ], [ -12, %if.then14 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #19
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @flock_locks_conflict(%struct.file_lock* nocapture noundef readonly %caller_fl, %struct.file_lock* nocapture noundef readonly %sys_fl) #4 {
entry:
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %caller_fl, i64 0, i32 11
  %0 = load %struct.file*, %struct.file** %fl_file, align 8
  %fl_file1 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %sys_fl, i64 0, i32 11
  %1 = load %struct.file*, %struct.file** %fl_file1, align 8
  %cmp = icmp eq %struct.file* %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %caller_fl, i64 0, i32 7
  %2 = load i8, i8* %fl_type, align 4
  %3 = and i8 %2, 32
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end
  %fl_type2 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %sys_fl, i64 0, i32 7
  %4 = load i8, i8* %fl_type2, align 4
  %5 = and i8 %4, 32
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %lor.lhs.false
  %call = call fastcc i1 @locks_conflict(%struct.file_lock* noundef %caller_fl, %struct.file_lock* noundef %sys_fl) #16
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %entry, %if.end7
  %retval.0 = phi i1 [ %call, %if.end7 ], [ false, %entry ], [ false, %lor.lhs.false ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_flock(i32 noundef %fd, i32 noundef %cmd) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %cmd, 4
  %tobool1.not = icmp eq i32 %and, 0
  %and2 = and i32 %cmd, -5
  %cmp = icmp ne i32 %and2, 8
  %and4 = and i32 %cmd, 32
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = and i1 %cmp, %tobool5.not
  br i1 %or.cond, label %land.lhs.true6, label %if.end11

land.lhs.true6:                                   ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and8 = and i32 %1, 3
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %out_putf, label %if.end11

if.end11:                                         ; preds = %land.lhs.true6, %if.end
  %call13 = call fastcc %struct.file_lock* @flock_make_lock(%struct.file* noundef nonnull %0, i32 noundef %and2, %struct.file_lock* noundef null) #16
  %2 = bitcast %struct.file_lock* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %2) #16
  br i1 %call14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %2) #16
  %conv17 = trunc i64 %call16 to i32
  br label %out_putf

if.end18:                                         ; preds = %if.end11
  br i1 %tobool1.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %call13, i64 0, i32 6
  %3 = load i32, i32* %fl_flags, align 8
  %or = or i32 %3, 128
  store i32 %or, i32* %fl_flags, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %f_op = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %4 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %flock = getelementptr inbounds %struct.file_operations, %struct.file_operations* %4, i64 0, i32 23
  %5 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %flock, align 8
  %tobool29.not = icmp eq i32 (%struct.file*, i32, %struct.file_lock*)* %5, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end21
  %cond = select i1 %tobool1.not, i32 7, i32 6
  %call36 = call i32 %5(%struct.file* noundef nonnull %0, i32 noundef %cond, %struct.file_lock* noundef %call13) #17
  br label %out_free

if.else:                                          ; preds = %if.end21
  %call38 = call fastcc i32 @locks_lock_file_wait(%struct.file* noundef nonnull %0, %struct.file_lock* noundef %call13) #16
  br label %out_free

out_free:                                         ; preds = %if.then30, %if.else
  %error.0 = phi i32 [ %call36, %if.then30 ], [ %call38, %if.else ]
  call void @locks_free_lock(%struct.file_lock* noundef %call13) #16
  br label %out_putf

out_putf:                                         ; preds = %land.lhs.true6, %out_free, %if.then15
  %error.1 = phi i32 [ %conv17, %if.then15 ], [ %error.0, %out_free ], [ -9, %land.lhs.true6 ]
  call fastcc void @fdput([2 x i64] %call) #16
  br label %out

out:                                              ; preds = %entry, %out_putf
  %error.2 = phi i32 [ %error.1, %out_putf ], [ -9, %entry ]
  %conv40 = sext i32 %error.2 to i64
  ret i64 %conv40
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #17
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #16
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file_lock* @flock_make_lock(%struct.file* noundef %filp, i32 noundef %cmd, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @flock_translate_cmd(i32 noundef %cmd) #16
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %0 = bitcast i8* %call1 to %struct.file_lock*
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.file_lock* %fl, null
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = call %struct.file_lock* @locks_alloc_lock() #16
  %cmp6 = icmp eq %struct.file_lock* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.then4
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -12) #16
  %1 = bitcast i8* %call9 to %struct.file_lock*
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @locks_init_lock(%struct.file_lock* noundef nonnull %fl) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.else
  %fl.addr.0 = phi %struct.file_lock* [ %call5, %if.then4 ], [ %fl, %if.else ]
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 11
  store %struct.file* %filp, %struct.file** %fl_file, align 8
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 5
  %2 = bitcast i8** %fl_owner to %struct.file**
  store %struct.file* %filp, %struct.file** %2, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 51
  %5 = load i32, i32* %tgid, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 8
  store i32 %5, i32* %fl_pid, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 6
  store i32 2, i32* %fl_flags, align 8
  %conv13 = trunc i32 %call to i8
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 7
  store i8 %conv13, i8* %fl_type, align 4
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl.addr.0, i64 0, i32 13
  store i64 9223372036854775807, i64* %fl_end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  %retval.0 = phi %struct.file_lock* [ %0, %if.then ], [ %1, %if.then8 ], [ %fl.addr.0, %if.end11 ]
  ret %struct.file_lock* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @locks_lock_file_wait(%struct.file* nocapture noundef readonly %filp, %struct.file_lock* noundef %fl) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %call1 = call i32 @locks_lock_inode_wait(%struct.inode* noundef %call, %struct.file_lock* noundef %fl) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #10 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @flock_translate_cmd(i32 noundef %cmd) unnamed_addr #10 {
entry:
  %and = and i32 %cmd, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %cmd, 224
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.epilog [
    i32 1, label %return
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
  ]

sw.bb2:                                           ; preds = %if.end
  br label %return

sw.bb3:                                           ; preds = %if.end
  br label %return

sw.epilog:                                        ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end, %sw.epilog, %sw.bb3, %sw.bb2, %if.then
  %retval.0 = phi i32 [ %and1, %if.then ], [ -22, %sw.epilog ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @flock64_to_posix_lock(%struct.file* noundef %filp, %struct.file_lock* nocapture noundef %fl, %struct.flock64* nocapture noundef readonly %l) unnamed_addr #0 {
entry:
  %l_whence = getelementptr inbounds %struct.flock64, %struct.flock64* %l, i64 0, i32 1
  %0 = load i16, i16* %l_whence, align 2
  %conv = sext i16 %0 to i32
  switch i32 %conv, label %return [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb1:                                           ; preds = %entry
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 10
  %1 = load i64, i64* %f_pos, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #16
  %call4 = call fastcc i64 @i_size_read(%struct.inode* noundef %call) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1
  %call4.sink = phi i64 [ %call4, %sw.bb3 ], [ %1, %sw.bb1 ], [ 0, %entry ]
  %fl_start5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  store i64 %call4.sink, i64* %fl_start5, align 8
  %l_start = getelementptr inbounds %struct.flock64, %struct.flock64* %l, i64 0, i32 2
  %2 = load i64, i64* %l_start, align 8
  %fl_start6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  %sub = sub i64 9223372036854775807, %call4.sink
  %cmp = icmp sgt i64 %2, %sub
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %sw.epilog
  %add = add i64 %call4.sink, %2
  store i64 %add, i64* %fl_start6, align 8
  %cmp11 = icmp slt i64 %add, 0
  br i1 %cmp11, label %return, label %if.end14

if.end14:                                         ; preds = %if.end
  %l_len = getelementptr inbounds %struct.flock64, %struct.flock64* %l, i64 0, i32 3
  %3 = load i64, i64* %l_len, align 8
  %cmp15 = icmp sgt i64 %3, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %sub19 = add nsw i64 %3, -1
  %sub21 = sub nuw nsw i64 9223372036854775807, %add
  %cmp22 = icmp ugt i64 %sub19, %sub21
  br i1 %cmp22, label %return, label %if.end25

if.end25:                                         ; preds = %if.then17
  %add29 = add nuw i64 %sub19, %add
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  store i64 %add29, i64* %fl_end, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end14
  %cmp31 = icmp slt i64 %3, 0
  br i1 %cmp31, label %if.then33, label %if.else47

if.then33:                                        ; preds = %if.else
  %add36 = add nsw i64 %3, %add
  %cmp37 = icmp slt i64 %add36, 0
  br i1 %cmp37, label %return, label %if.end40

if.end40:                                         ; preds = %if.then33
  %sub42 = add nsw i64 %add, -1
  %fl_end43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  store i64 %sub42, i64* %fl_end43, align 8
  %4 = load i64, i64* %l_len, align 8
  %add46 = add i64 %4, %add
  store i64 %add46, i64* %fl_start6, align 8
  br label %if.end50

if.else47:                                        ; preds = %if.else
  %fl_end48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  store i64 9223372036854775807, i64* %fl_end48, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end40, %if.else47, %if.end25
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !37
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 84
  %7 = bitcast %struct.files_struct** %files to i8**
  %8 = load i8*, i8** %7, align 16
  %fl_owner = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 5
  store i8* %8, i8** %fl_owner, align 8
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 51
  %9 = load i32, i32* %tgid, align 4
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 8
  store i32 %9, i32* %fl_pid, align 8
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  store %struct.file* %filp, %struct.file** %fl_file, align 8
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  store i32 1, i32* %fl_flags, align 8
  %fl_ops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 17
  store %struct.file_lock_operations* null, %struct.file_lock_operations** %fl_ops, align 8
  %fl_lmops = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 18
  store %struct.lock_manager_operations* null, %struct.lock_manager_operations** %fl_lmops, align 8
  %l_type = getelementptr inbounds %struct.flock64, %struct.flock64* %l, i64 0, i32 0
  %10 = load i16, i16* %l_type, align 8
  %conv53 = sext i16 %10 to i64
  %call54 = call fastcc i32 @assign_type(%struct.file_lock* noundef %fl, i64 noundef %conv53) #16
  br label %return

return:                                           ; preds = %if.then33, %if.then17, %if.end, %sw.epilog, %entry, %if.end50
  %retval.0 = phi i32 [ %call54, %if.end50 ], [ -22, %entry ], [ -75, %sw.epilog ], [ -22, %if.end ], [ -75, %if.then17 ], [ -22, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @i_size_read(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @locks_translate_pid(%struct.file_lock* nocapture noundef readonly %fl, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %0 = load i32, i32* %fl_flags, align 8
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fl_pid = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 8
  %1 = load i32, i32* %fl_pid, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq %struct.pid_namespace* %ns, @init_pid_ns
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  call fastcc void @__rcu_read_lock() #17
  %2 = load i32, i32* %fl_pid, align 8
  %call = call %struct.pid* @find_pid_ns(i32 noundef %2, %struct.pid_namespace* noundef nonnull @init_pid_ns) #17
  %call9 = call i32 @pid_nr_ns(%struct.pid* noundef %call, %struct.pid_namespace* noundef %ns) #17
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -1, %entry ], [ 0, %if.end ], [ %1, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_pid_ns(i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(%struct.pid* noundef, %struct.pid_namespace* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !58
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !59
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp = icmp ugt i32 %1, %fd
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %conv = zext i32 %fd to i64
  %conv4 = zext i32 %1 to i64
  %call = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv4) #16
  %2 = trunc i64 %call to i32
  %conv13 = and i32 %2, %fd
  %fd19 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %3 = load %struct.file**, %struct.file*** %fd19, align 8
  %idxprom = zext i32 %conv13 to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %3, i64 %idxprom
  %4 = load volatile %struct.file*, %struct.file** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.file* [ %4, %if.then ], [ null, %entry ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx, i64 noundef %sz) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 %sz) #19, !srcloc !60
  call void asm sideeffect "hint #20", "~{memory}"() #19, !srcloc !61
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_get_status(%struct.seq_file* noundef %f, %struct.file_lock* nocapture noundef readonly %fl, i64 noundef %id, i8* noundef %pfx, i32 noundef %repeat) unnamed_addr #0 {
entry:
  %file = getelementptr inbounds %struct.seq_file, %struct.seq_file* %f, i64 0, i32 10
  %0 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #16
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %1) #16
  %call2 = call fastcc i32 @locks_translate_pid(%struct.file_lock* noundef %fl, %struct.pid_namespace* noundef %call1) #16
  %fl_file = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 11
  %2 = load %struct.file*, %struct.file** %fl_file, align 8
  %cmp.not = icmp eq %struct.file* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %inode.0 = phi %struct.inode* [ %call4, %if.then ], [ null, %entry ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 noundef %id) #17
  %tobool.not = icmp eq i32 %repeat, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub = add i32 %repeat, -1
  %call6 = call i64 @strlen(i8* noundef %pfx) #17
  %conv = trunc i64 %call6 to i32
  %add = add i32 %sub, %conv
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 noundef %add, i8* noundef %pfx) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %fl_flags = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 6
  %3 = load i32, i32* %fl_flags, align 8
  %and = and i32 %3, 1
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else23, label %if.then9

if.then9:                                         ; preds = %if.end7
  %and11 = and i32 %3, 8
  %tobool12.not = icmp eq i32 %and11, 0
  %and15 = and i32 %3, 1024
  %tobool16.not = icmp eq i32 %and15, 0
  %. = select i1 %tobool16.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  %.sink = select i1 %tobool12.not, i8* %., i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef %.sink) #17
  %cmp21 = icmp eq %struct.inode* %inode.0, null
  %cond = select i1 %cmp21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %cond) #17
  br label %if.end57

if.else23:                                        ; preds = %if.end7
  %and25 = and i32 %3, 2
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %if.else23
  %fl_type = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %4 = load i8, i8* %fl_type, align 4
  %5 = and i8 %4, 32
  %tobool30.not = icmp eq i8 %5, 0
  br i1 %tobool30.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %if.then27
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0)) #17
  br label %if.end57

if.else32:                                        ; preds = %if.then27
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0)) #17
  br label %if.end57

if.else34:                                        ; preds = %if.else23
  %and36 = and i32 %3, 2084
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else54, label %if.then38

if.then38:                                        ; preds = %if.else34
  %and40 = and i32 %3, 4
  %tobool41.not = icmp eq i32 %and40, 0
  %.178 = select i1 %tobool41.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef %.178) #17
  %call45 = call fastcc i1 @lease_breaking(%struct.file_lock* noundef %fl) #16
  br i1 %call45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then38
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0)) #17
  br label %if.end57

if.else47:                                        ; preds = %if.then38
  %6 = load %struct.file*, %struct.file** %fl_file, align 8
  %tobool49.not = icmp eq %struct.file* %6, null
  br i1 %tobool49.not, label %if.else51, label %if.then50

if.then50:                                        ; preds = %if.else47
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #17
  br label %if.end57

if.else51:                                        ; preds = %if.else47
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #17
  br label %if.end57

if.else54:                                        ; preds = %if.else34
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #17
  br label %if.end57

if.end57:                                         ; preds = %if.else32, %if.then31, %if.then46, %if.else51, %if.then50, %if.else54, %if.then9
  %fl_type58 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 7
  %7 = load i8, i8* %fl_type58, align 4
  %conv59 = zext i8 %7 to i32
  %and60 = and i32 %conv59, 32
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else78, label %if.then62

if.then62:                                        ; preds = %if.end57
  %and65 = and i32 %conv59, 64
  %tobool66.not = icmp eq i32 %and65, 0
  %and74 = and i32 %conv59, 128
  %tobool75.not = icmp eq i32 %and74, 0
  %cond71 = select i1 %tobool75.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)
  %cond76 = select i1 %tobool75.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)
  %cond77 = select i1 %tobool66.not, i8* %cond76, i8* %cond71
  br label %if.end98

if.else78:                                        ; preds = %if.end57
  %8 = load i32, i32* %fl_flags, align 8
  %and80 = and i32 %8, 2084
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %cond.end87, label %cond.true82

cond.true82:                                      ; preds = %if.else78
  %call83 = call fastcc i32 @target_leasetype(%struct.file_lock* noundef %fl) #16
  br label %cond.end87

cond.end87:                                       ; preds = %if.else78, %cond.true82
  %cond88 = phi i32 [ %call83, %cond.true82 ], [ %conv59, %if.else78 ]
  %cmp89 = icmp eq i32 %cond88, 1
  %cmp93 = icmp eq i32 %cond88, 0
  %cond95 = select i1 %cmp93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)
  %cond97 = select i1 %cmp89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8* %cond95
  br label %if.end98

if.end98:                                         ; preds = %cond.end87, %if.then62
  %cond97.sink = phi i8* [ %cond97, %cond.end87 ], [ %cond77, %if.then62 ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %cond97.sink) #17
  %tobool99.not = icmp eq %struct.inode* %inode.0, null
  br i1 %tobool99.not, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.end98
  %i_sb101 = getelementptr inbounds %struct.inode, %struct.inode* %inode.0, i64 0, i32 6
  %9 = load %struct.super_block*, %struct.super_block** %i_sb101, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i64 0, i32 1
  %10 = load i32, i32* %s_dev, align 16
  %shr = lshr i32 %10, 20
  %and104 = and i32 %10, 1048575
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %inode.0, i64 0, i32 8
  %11 = load i64, i64* %i_ino, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call2, i32 noundef %shr, i32 noundef %and104, i64 noundef %11) #17
  br label %if.end106

if.else105:                                       ; preds = %if.end98
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 noundef %call2) #17
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then100
  %12 = load i32, i32* %fl_flags, align 8
  %and108 = and i32 %12, 1
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.else118, label %if.then110

if.then110:                                       ; preds = %if.end106
  %fl_end = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 13
  %13 = load i64, i64* %fl_end, align 8
  %cmp111 = icmp eq i64 %13, 9223372036854775807
  %fl_start = getelementptr inbounds %struct.file_lock, %struct.file_lock* %fl, i64 0, i32 12
  %14 = load i64, i64* %fl_start, align 8
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.then110
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i64 noundef %14) #17
  br label %if.end119

if.else114:                                       ; preds = %if.then110
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i64 noundef %14, i64 noundef %13) #17
  br label %if.end119

if.else118:                                       ; preds = %if.end106
  call void @seq_puts(%struct.seq_file* noundef %f, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0)) #17
  br label %if.end119

if.end119:                                        ; preds = %if.then113, %if.else114, %if.else118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %sb) #16
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 0
  %0 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  ret %struct.pid_namespace* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #4 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.seq_operations* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @locks_start(%struct.seq_file* nocapture noundef readonly %f, i64* nocapture noundef readonly %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %f, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.locks_iterator**
  %1 = load %struct.locks_iterator*, %struct.locks_iterator** %0, align 8
  %2 = load i64, i64* %pos, align 8
  %add = add i64 %2, 1
  %li_pos = getelementptr inbounds %struct.locks_iterator, %struct.locks_iterator* %1, i64 0, i32 1
  store i64 %add, i64* %li_pos, align 8
  call void @percpu_down_write(%struct.percpu_rw_semaphore* noundef nonnull @file_rwsem) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  %li_cpu = getelementptr inbounds %struct.locks_iterator, %struct.locks_iterator* %1, i64 0, i32 0
  %3 = load i64, i64* %pos, align 8
  %call = call %struct.hlist_node* @seq_hlist_start_percpu(%struct.hlist_head* noundef getelementptr inbounds (%struct.file_lock_list_struct, %struct.file_lock_list_struct* @file_lock_list, i64 0, i32 1), i32* noundef %li_cpu, i64 noundef %3) #17
  %4 = bitcast %struct.hlist_node* %call to i8*
  ret i8* %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @locks_stop(%struct.seq_file* nocapture noundef readnone %f, i8* nocapture noundef readnone %v) #0 {
entry:
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @blocked_lock_lock, i64 0, i32 0, i32 0)) #17
  call void @percpu_up_write(%struct.percpu_rw_semaphore* noundef nonnull @file_rwsem) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @locks_next(%struct.seq_file* nocapture noundef readonly %f, i8* noundef %v, i64* noundef %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %f, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.locks_iterator**
  %1 = load %struct.locks_iterator*, %struct.locks_iterator** %0, align 8
  %li_pos = getelementptr inbounds %struct.locks_iterator, %struct.locks_iterator* %1, i64 0, i32 1
  %2 = load i64, i64* %li_pos, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %li_pos, align 8
  %li_cpu = getelementptr inbounds %struct.locks_iterator, %struct.locks_iterator* %1, i64 0, i32 0
  %call = call %struct.hlist_node* @seq_hlist_next_percpu(i8* noundef %v, %struct.hlist_head* noundef getelementptr inbounds (%struct.file_lock_list_struct, %struct.file_lock_list_struct* @file_lock_list, i64 0, i32 1), i32* noundef %li_cpu, i64* noundef %pos) #17
  %3 = bitcast %struct.hlist_node* %call to i8*
  ret i8* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @locks_show(%struct.seq_file* noundef %f, i8* noundef %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %f, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.locks_iterator**
  %1 = load %struct.locks_iterator*, %struct.locks_iterator** %0, align 8
  %file = getelementptr inbounds %struct.seq_file, %struct.seq_file* %f, i64 0, i32 10
  %2 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %2) #16
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %3) #16
  %add.ptr = getelementptr i8, i8* %v, i64 -24
  %4 = bitcast i8* %add.ptr to %struct.file_lock*
  %call3 = call fastcc i32 @locks_translate_pid(%struct.file_lock* noundef %4, %struct.pid_namespace* noundef %call1) #16
  %cmp = icmp eq i32 %call3, 0
  %cmp4.not74 = icmp eq i8* %add.ptr, null
  %or.cond = or i1 %cmp, %cmp4.not74
  br i1 %or.cond, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %li_pos = getelementptr inbounds %struct.locks_iterator, %struct.locks_iterator* %1, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end32
  %cur.076 = phi %struct.file_lock* [ %4, %while.body.lr.ph ], [ %cur.2, %if.end32 ]
  %level.075 = phi i32 [ 0, %while.body.lr.ph ], [ %level.2, %if.end32 ]
  %tobool.not = icmp eq i32 %level.075, 0
  %5 = load i64, i64* %li_pos, align 8
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %while.body
  call fastcc void @lock_get_status(%struct.seq_file* noundef %f, %struct.file_lock* noundef nonnull %cur.076, i64 noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 noundef %level.075) #16
  br label %if.end7

if.else:                                          ; preds = %while.body
  call fastcc void @lock_get_status(%struct.seq_file* noundef %f, %struct.file_lock* noundef nonnull %cur.076, i64 noundef %5, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0) #16
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %cur.076, i64 0, i32 3
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %fl_blocked_requests) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else24

if.then10:                                        ; preds = %if.end7
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %fl_blocked_requests, i64 0, i32 0
  %6 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp17.not = icmp eq %struct.list_head* %6, %fl_blocked_requests
  %add.ptr23 = getelementptr %struct.list_head, %struct.list_head* %6, i64 -4, i32 1
  %7 = bitcast %struct.list_head** %add.ptr23 to %struct.file_lock*
  %inc = add i32 %level.075, 1
  br i1 %cmp17.not, label %cleanup, label %if.end32

if.else24:                                        ; preds = %if.end7
  %call25 = call fastcc %struct.file_lock* @get_next_blocked_member(%struct.file_lock* noundef nonnull %cur.076) #16
  %cmp2768 = icmp eq %struct.file_lock* %call25, null
  br i1 %cmp2768, label %land.rhs, label %if.end32

land.rhs:                                         ; preds = %if.else24, %while.body29
  %cur.170 = phi %struct.file_lock* [ %8, %while.body29 ], [ %cur.076, %if.else24 ]
  %level.169 = phi i32 [ %dec, %while.body29 ], [ %level.075, %if.else24 ]
  %fl_blocker = getelementptr inbounds %struct.file_lock, %struct.file_lock* %cur.170, i64 0, i32 0
  %8 = load %struct.file_lock*, %struct.file_lock** %fl_blocker, align 8
  %cmp28.not = icmp eq %struct.file_lock* %8, null
  br i1 %cmp28.not, label %cleanup, label %while.body29

while.body29:                                     ; preds = %land.rhs
  %dec = add i32 %level.169, -1
  %call31 = call fastcc %struct.file_lock* @get_next_blocked_member(%struct.file_lock* noundef nonnull %8) #16
  %cmp27 = icmp eq %struct.file_lock* %call31, null
  br i1 %cmp27, label %land.rhs, label %if.end32

if.end32:                                         ; preds = %while.body29, %if.then10, %if.else24
  %level.2 = phi i32 [ %inc, %if.then10 ], [ %level.075, %if.else24 ], [ %dec, %while.body29 ]
  %cur.2 = phi %struct.file_lock* [ %7, %if.then10 ], [ %call25, %if.else24 ], [ %call31, %while.body29 ]
  %cmp4.not = icmp eq %struct.file_lock* %cur.2, null
  br i1 %cmp4.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.then10, %if.end32, %land.rhs, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(%struct.percpu_rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.hlist_node* @seq_hlist_start_percpu(%struct.hlist_head* noundef, i32* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(%struct.percpu_rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.hlist_node* @seq_hlist_next_percpu(i8* noundef, %struct.hlist_head* noundef, i32* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.file_lock* @get_next_blocked_member(%struct.file_lock* noundef readonly %node) unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.file_lock* %node, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %fl_blocker = getelementptr inbounds %struct.file_lock, %struct.file_lock* %node, i64 0, i32 0
  %0 = load %struct.file_lock*, %struct.file_lock** %fl_blocker, align 8
  %cmp1 = icmp eq %struct.file_lock* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %next = getelementptr inbounds %struct.file_lock, %struct.file_lock* %node, i64 0, i32 4, i32 0
  %1 = bitcast %struct.list_head** %next to i8**
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -56
  %3 = bitcast i8* %add.ptr to %struct.file_lock*
  %4 = bitcast i8* %2 to %struct.list_head*
  %fl_blocked_requests = getelementptr inbounds %struct.file_lock, %struct.file_lock* %0, i64 0, i32 3
  %cmp5 = icmp eq %struct.list_head* %fl_blocked_requests, %4
  %cmp7 = icmp eq %struct.file_lock* %3, %node
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  %spec.select = select i1 %or.cond, %struct.file_lock* null, %struct.file_lock* %3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false
  %retval.0 = phi %struct.file_lock* [ null, %lor.lhs.false ], [ null, %entry ], [ %spec.select, %if.end ]
  ret %struct.file_lock* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lease_notifier_chain_init() unnamed_addr #0 {
entry:
  call void @srcu_init_notifier_head(%struct.srcu_notifier_head* noundef nonnull @lease_notifier_chain) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(%struct.srcu_notifier_head* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #22 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154978318}
!11 = !{i64 2154979664}
!12 = !{i64 2154981034}
!13 = !{i64 2154982400}
!14 = !{i64 2154983754}
!15 = !{i64 2154988138}
!16 = !{i64 2155011516}
!17 = !{i64 2155015029}
!18 = !{i64 2155007332}
!19 = !{i64 2155026478}
!20 = !{i64 2148687671}
!21 = !{i64 2155094928}
!22 = !{i64 2155102873}
!23 = !{!"auto-init"}
!24 = !{i64 2151719159}
!25 = !{i64 2151722582}
!26 = !{i64 2151723424}
!27 = !{i64 2151724610}
!28 = !{i64 2151737519}
!29 = !{i64 2151741380}
!30 = !{i64 2151742222}
!31 = !{i64 2151743476}
!32 = !{i64 2151751360}
!33 = !{i64 2151752202}
!34 = !{i64 2151753454}
!35 = !{i64 2155115939}
!36 = !{i64 2155124289}
!37 = !{i64 1294698}
!38 = !{i64 2155149222}
!39 = !{i64 2155139724}
!40 = !{i64 2155133429}
!41 = !{i64 2155138837}
!42 = !{i64 2155153127}
!43 = !{i64 2155163611}
!44 = !{i64 2155164657}
!45 = !{i64 2155175818}
!46 = !{i64 2155203933}
!47 = !{i64 2149483433}
!48 = !{i64 2148011705, i64 2148011738, i64 2148011791, i64 2148011850, i64 2148011884, i64 2148011939, i64 2148011968, i64 2148011988}
!49 = !{i64 2149490714}
!50 = !{i64 2149282944}
!51 = !{i64 2154956974}
!52 = !{i64 2154961451}
!53 = !{i64 2155019651}
!54 = !{i1 (%struct.file_lock*, %struct.file_lock*)* @flock_locks_conflict, i1 (%struct.file_lock*, %struct.file_lock*)* @leases_conflict, i1 (%struct.file_lock*, %struct.file_lock*)* @posix_locks_conflict}
!55 = !{i64 2148030563, i64 2148030596, i64 2148030647, i64 2148030703, i64 2148030736, i64 2148030791, i64 2148030820, i64 2148030847}
!56 = !{i64 2149056578, i64 2149056625, i64 2149056631, i64 2149056668, i64 2149056686, i64 2149057613, i64 2149057661, i64 2149057709, i64 2149057772, i64 2149057821, i64 2149056764, i64 2149056789, i64 2149056815, i64 2149056821, i64 2149056858, i64 2149056864, i64 2149056914, i64 2149056960, i64 2149056993}
!57 = !{i64 2149081468, i64 2149081510, i64 2149081569, i64 2149081622}
!58 = !{i64 2149654082}
!59 = !{i64 2149654299}
!60 = !{i64 401818, i64 401836}
!61 = !{i64 2147889020}
