; ModuleID = 'arch/arm64/mm/context.c'
source_filename = "arch/arm64/mm/context.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init\22, \22a\22\09\09"
module asm "__initcall__kmod_context__368_399_asids_update_limit3:\09\09\09"
module asm ".long\09asids_update_limit - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_context__370_422_asids_initearly:\09\09\09"
module asm ".long\09asids_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [4 x i64] }
%struct.secondary_data = type { %struct.task_struct*, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.16 = type { i32 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.1, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.1 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.42 }
%union.anon.42 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.44 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.48 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.46, %struct.qspinlock }
%union.anon.46 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.48 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.39, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.39 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.bp_hardening_data = type { i32, void ()* }

@asid_bits = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"\012CPU%d: smaller ASID size(%u) than boot CPU (%u)\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@active_asids = internal global %struct.atomic64_t zeroinitializer, section ".data..percpu", align 8
@asid_generation = internal global %struct.atomic64_t zeroinitializer, align 8
@cpu_asid_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@tlb_flush_pending = internal global %struct.cpumask zeroinitializer, align 8
@pinned_asid_map = internal unnamed_addr global i64* null, align 8
@nr_pinned_asids = internal unnamed_addr global i64 0, align 8
@max_pinned_asids = internal unnamed_addr global i64 0, align 8
@__UNIQUE_ID___addressable_asids_update_limit369 = internal global i8* bitcast (i32 ()* @asids_update_limit to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_asids_init371 = internal global i8* bitcast (i32 ()* @asids_init to i8*), section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"\014CPU%d: Unknown ASID size (%d); assuming 8-bit\0A\00", align 1
@secondary_data = external dso_local global %struct.secondary_data, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@new_context.cur_idx = internal unnamed_addr global i32 1, align 4
@asid_map = internal unnamed_addr global i64* null, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@reserved_asids = internal global i64 0, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@bp_hardening_data = external dso_local global %struct.bp_hardening_data, section ".data..percpu..read_mostly", align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"\016ASID allocator initialised with %lu entries\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to allocate bitmap for %lu ASIDs\0A\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_asids_init371 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_asids_update_limit369 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @verify_cpu_asid_bits() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @get_cpu_asid_bits() #13
  %0 = load i32, i32* @asid_bits, align 4
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  %call6 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call6, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %call, i32 noundef %0) #14
  call fastcc void @cpu_panic_kernel() #13
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_cpu_asid_bits() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #15, !srcloc !8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 4
  %conv.i.i = and i32 %2, 15
  switch i32 %conv.i.i, label %do.body2 [
    i32 0, label %sw.epilog
    i32 2, label %sw.bb9
  ]

do.body2:                                         ; preds = %entry
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call7, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4, i32 noundef %conv.i.i) #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body2, %entry, %sw.bb9
  %asid.0 = phi i32 [ 16, %sw.bb9 ], [ 8, %entry ], [ 8, %do.body2 ]
  ret i32 %asid.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !9
  ret i64 %2
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_panic_kernel() unnamed_addr #3 {
entry:
  call fastcc void @update_cpu_boot_status() #13
  call fastcc void @cpu_park_loop() #13
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @check_and_switch_context(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call3, ptrtoint (%struct.atomic64_t* @active_asids to i64)
  %1 = inttoptr i64 %add to %struct.atomic64_t*
  %counter.i94 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %counter.i94, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %do.body21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), align 8
  %xor = xor i64 %3, %0
  %4 = load i32, i32* @asid_bits, align 4
  %sh_prom = zext i32 %4 to i64
  %shr = lshr i64 %xor, %sh_prom
  %tobool6.not = icmp eq i64 %shr, 0
  br i1 %tobool6.not, label %do.body8, label %do.body21

do.body8:                                         ; preds = %land.lhs.true
  %call15 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add16 = add i64 %call15, ptrtoint (%struct.atomic64_t* @active_asids to i64)
  %5 = inttoptr i64 %add16 to i8*
  %call14.i.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %5, i64 noundef %2, i64 noundef %0) #17
  %tobool18.not = icmp eq i64 %call14.i.i, 0
  br i1 %tobool18.not, label %do.body21, label %switch_mm_fastpath

do.body21:                                        ; preds = %entry, %land.lhs.true, %do.body8
  %call23 = call fastcc i64 @__raw_spin_lock_irqsave() #13
  %6 = load volatile i64, i64* %counter.i, align 8
  %7 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), align 8
  %xor30 = xor i64 %7, %6
  %8 = load i32, i32* @asid_bits, align 4
  %sh_prom31 = zext i32 %8 to i64
  %shr32 = lshr i64 %xor30, %sh_prom31
  %tobool33.not = icmp eq i64 %shr32, 0
  br i1 %tobool33.not, label %do.body39, label %if.then34

if.then34:                                        ; preds = %do.body21
  %call35 = call fastcc i64 @new_context(%struct.mm_struct* noundef %mm) #13
  store volatile i64 %call35, i64* %counter.i, align 8
  br label %do.body39

do.body39:                                        ; preds = %do.body21, %if.then34
  %asid.0 = phi i64 [ %call35, %if.then34 ], [ %6, %do.body21 ]
  %call46 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add47 = add i64 %call46, ptrtoint (i32* @cpu_number to i64)
  %9 = inttoptr i64 %add47 to i32*
  %10 = load i32, i32* %9, align 4
  %call48 = call fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %10) #13
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %if.then50

if.then50:                                        ; preds = %do.body39
  call fastcc void @local_flush_tlb_all() #13
  br label %do.body52

do.body52:                                        ; preds = %do.body39, %if.then50
  %call59 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add60 = add i64 %call59, ptrtoint (%struct.atomic64_t* @active_asids to i64)
  %11 = inttoptr i64 %add60 to %struct.atomic64_t*
  %counter.i97 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %11, i64 0, i32 0
  store volatile i64 %asid.0, i64* %counter.i97, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call23) #13
  br label %switch_mm_fastpath

switch_mm_fastpath:                               ; preds = %do.body8, %do.body52
  call fastcc void @arm64_apply_bp_hardening() #13
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %12 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %12, %struct.mm_struct* noundef %mm) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #15, !srcloc !10
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  call fastcc void @do_raw_spin_lock_flags() #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @new_context(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), align 8
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  %.pre = load i64*, i64** @asid_map, align 8
  %.pre77 = load i32, i32* @asid_bits, align 4
  br label %if.end24

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @asid_bits, align 4
  %sub2 = sub i32 64, %2
  %sh_prom = zext i32 %sub2 to i64
  %shr = lshr i64 -1, %sh_prom
  %and4 = and i64 %shr, %0
  %or = or i64 %and4, %1
  %call5 = call fastcc i1 @check_update_reserved_asid(i64 noundef %0, i64 noundef %or) #13
  br i1 %call5, label %cleanup52, label %if.end

if.end:                                           ; preds = %if.then
  %pinned = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 1
  %call8 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %pinned) #13
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %cleanup52

if.end10:                                         ; preds = %if.end
  %3 = load i32, i32* @asid_bits, align 4
  %sub12 = sub i32 64, %3
  %sh_prom13 = zext i32 %sub12 to i64
  %shr14 = lshr i64 -1, %sh_prom13
  %and19 = and i64 %shr14, %0
  %4 = load i64*, i64** @asid_map, align 8
  %rem.i = and i64 %and19, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %and19, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %4, i64 %idx.ext.i
  %5 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %shl.i, %5
  store i64 %or.i, i64* %add.ptr.i, align 8
  %and.i = and i64 %shl.i, %5
  %cmp.i.not.not = icmp eq i64 %and.i, 0
  br i1 %cmp.i.not.not, label %cleanup52, label %if.end24

if.end24:                                         ; preds = %entry.if.end24_crit_edge, %if.end10
  %6 = phi i32 [ %.pre77, %entry.if.end24_crit_edge ], [ %3, %if.end10 ]
  %7 = phi i64* [ %.pre, %entry.if.end24_crit_edge ], [ %4, %if.end10 ]
  %sh_prom25 = zext i32 %6 to i64
  %shl = shl nuw i64 1, %sh_prom25
  %8 = load i32, i32* @new_context.cur_idx, align 4
  %conv26 = zext i32 %8 to i64
  %call27 = call fastcc i64 @find_next_zero_bit(i64* noundef %7, i64 noundef %shl, i64 noundef %conv26) #13
  %9 = load i32, i32* @asid_bits, align 4
  %sh_prom28 = zext i32 %9 to i64
  %shl29 = shl nuw i64 1, %sh_prom28
  %cmp30.not = icmp eq i64 %call27, %shl29
  br i1 %cmp30.not, label %if.end33, label %set_asid

if.end33:                                         ; preds = %if.end24
  %call.i.i = call fastcc i64 @__ll_sc_atomic64_add_return_relaxed(i64 noundef %call27) #17
  call fastcc void @flush_context() #13
  %10 = load i64*, i64** @asid_map, align 8
  %11 = load i32, i32* @asid_bits, align 4
  %sh_prom37 = zext i32 %11 to i64
  %shl38 = shl nuw i64 1, %sh_prom37
  %call39 = call fastcc i64 @find_next_zero_bit(i64* noundef %10, i64 noundef %shl38, i64 noundef 1) #13
  %.pre78 = load i32, i32* @asid_bits, align 4
  br label %set_asid

set_asid:                                         ; preds = %if.end24, %if.end33
  %12 = phi i32 [ %9, %if.end24 ], [ %.pre78, %if.end33 ]
  %asid.0 = phi i64 [ %call27, %if.end24 ], [ %call39, %if.end33 ]
  %generation.0 = phi i64 [ %1, %if.end24 ], [ %call.i.i, %if.end33 ]
  %conv40 = trunc i64 %asid.0 to i32
  %13 = load i64*, i64** @asid_map, align 8
  %rem.i70 = and i64 %asid.0, 63
  %shl.i72 = shl nuw i64 1, %rem.i70
  %div.i73 = lshr i64 %asid.0, 6
  %idx.ext.i74 = and i64 %div.i73, 67108863
  %add.ptr.i75 = getelementptr i64, i64* %13, i64 %idx.ext.i74
  %14 = load i64, i64* %add.ptr.i75, align 8
  %or.i76 = or i64 %14, %shl.i72
  store i64 %or.i76, i64* %add.ptr.i75, align 8
  store i32 %conv40, i32* @new_context.cur_idx, align 4
  %sub43 = sub i32 64, %12
  %sh_prom44 = zext i32 %sub43 to i64
  %shr45 = lshr i64 -1, %sh_prom44
  %and50 = and i64 %shr45, %asid.0
  %or51 = or i64 %and50, %generation.0
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %if.then, %if.end10, %set_asid
  %retval.1 = phi i64 [ %or51, %set_asid ], [ %or, %if.end10 ], [ %or, %if.then ], [ %or, %if.end ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_clear_bit(i64 noundef %conv) #13
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb nshst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #15, !srcloc !14
  call void asm sideeffect "dsb nsh", "~{memory}"() #15, !srcloc !15
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #13
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arm64_apply_bp_hardening() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #17
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %cpus_have_const_cap.exit

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 36, i32 0)) #17
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br i1 %cmp1.i.i, label %do.body, label %cleanup

cpus_have_const_cap.exit:                         ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 36) #17
  br i1 %call6.i, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call2, ptrtoint (%struct.bp_hardening_data* @bp_hardening_data to i64)
  %0 = inttoptr i64 %add to %struct.bp_hardening_data*
  %fn = getelementptr inbounds %struct.bp_hardening_data, %struct.bp_hardening_data* %0, i64 0, i32 1
  %1 = load void ()*, void ()** %fn, align 8
  %tobool.not = icmp eq void ()* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %do.body
  call void %1() #17
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %do.body, %if.then3, %cpus_have_const_cap.exit
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %pgd, %struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pgd_t* %pgd, getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0)
  br i1 %cmp, label %do.body2, label %do.end5, !prof !18

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/mmu_context.h\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !19
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #13
  %0 = bitcast %struct.pgd_t* %pgd to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #13
  call void @cpu_do_switch_mm(i64 noundef %call, %struct.mm_struct* noundef %mm) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arm64_mm_context_get(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %0 = load i64*, i64** @pinned_asid_map, align 8
  %tobool.not = icmp eq i64* %0, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #13
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i, align 8
  %pinned = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 1
  %call3 = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %pinned) #13
  br i1 %call3, label %do.body25, label %if.end5

if.end5:                                          ; preds = %do.body
  %2 = load i64, i64* @nr_pinned_asids, align 8
  %3 = load i64, i64* @max_pinned_asids, align 8
  %cmp6.not = icmp ult i64 %2, %3
  br i1 %cmp6.not, label %if.end9, label %do.body25

if.end9:                                          ; preds = %if.end5
  %4 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), align 8
  %xor = xor i64 %4, %1
  %5 = load i32, i32* @asid_bits, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %xor, %sh_prom
  %tobool11.not = icmp eq i64 %shr, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call13 = call fastcc i64 @new_context(%struct.mm_struct* noundef %mm) #13
  store volatile i64 %call13, i64* %counter.i, align 8
  %.pre = load i64, i64* @nr_pinned_asids, align 8
  %.pre61 = load i32, i32* @asid_bits, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %6 = phi i32 [ %.pre61, %if.then12 ], [ %5, %if.end9 ]
  %7 = phi i64 [ %.pre, %if.then12 ], [ %2, %if.end9 ]
  %asid.0 = phi i64 [ %call13, %if.then12 ], [ %1, %if.end9 ]
  %inc = add i64 %7, 1
  store i64 %inc, i64* @nr_pinned_asids, align 8
  %sub17 = sub i32 64, %6
  %sh_prom18 = zext i32 %sub17 to i64
  %shr19 = lshr i64 -1, %sh_prom18
  %and21 = and i64 %shr19, %asid.0
  %8 = load i64*, i64** @pinned_asid_map, align 8
  %rem.i = and i64 %and21, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %and21, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %8, i64 %idx.ext.i
  %9 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %shl.i, %9
  store i64 %or.i, i64* %add.ptr.i, align 8
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %pinned) #13
  br label %do.body25

do.body25:                                        ; preds = %if.end5, %if.end16, %do.body
  %asid.1 = phi i64 [ %1, %do.body ], [ %asid.0, %if.end16 ], [ 0, %if.end5 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #13
  %10 = load i32, i32* @asid_bits, align 4
  %sub34 = sub i32 64, %10
  %sh_prom35 = zext i32 %sub34 to i64
  %shr36 = lshr i64 -1, %sh_prom35
  %and41 = and i64 %shr36, %asid.1
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body25
  %call43 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  %or = zext i1 %call43 to i64
  %spec.select = or i64 %and41, %or
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %do.body25, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %do.body25 ], [ %spec.select, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #5 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #17
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #17
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #17
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @arm64_mm_context_put(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %1 = load i64*, i64** @pinned_asid_map, align 8
  %tobool.not = icmp eq i64* %1, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave() #13
  %pinned = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 1
  %call3 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %pinned) #13
  br i1 %call3, label %if.then4, label %do.body10

if.then4:                                         ; preds = %do.body
  %2 = load i32, i32* @asid_bits, align 4
  %sub5 = sub i32 64, %2
  %sh_prom = zext i32 %sub5 to i64
  %shr = lshr i64 -1, %sh_prom
  %and7 = and i64 %shr, %0
  %3 = load i64*, i64** @pinned_asid_map, align 8
  %rem.i = and i64 %and7, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %and7, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %3, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %4 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %4, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %5 = load i64, i64* @nr_pinned_asids, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* @nr_pinned_asids, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.body, %if.then4
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @post_ttbr_update_workaround() local_unnamed_addr #6 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_do_switch_mm(i64 noundef %pgd_phys, %struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, ttbr1_el1", "=r"() #15, !srcloc !20
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i, align 8
  %and2 = and i64 %0, 281474976710655
  %shl = shl i64 %1, 48
  %or21 = or i64 %shl, %and2
  call void asm sideeffect "msr ttbr1_el1, ${0:x}", "rZ"(i64 %or21) #15, !srcloc !21
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !22
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %pgd_phys) #15, !srcloc !23
  call void asm sideeffect "isb", "~{memory}"() #15, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @asids_update_limit() #0 {
entry:
  %0 = load i32, i32* @asid_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %call = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  br i1 %call, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %div = lshr i64 %shl, 1
  %1 = load i64*, i64** @pinned_asid_map, align 8
  %tobool.not = icmp eq i64* %1, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.then
  call fastcc void @set_kpti_asid_bits(i64* noundef nonnull %1) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  %num_available_asids.0 = phi i64 [ %div, %if.then1 ], [ %div, %if.then ], [ %shl, %entry ]
  %sub = add i64 %num_available_asids.0, -1
  %call3 = call fastcc i32 @cpumask_weight() #13
  %conv = zext i32 %call3 to i64
  %cmp.not = icmp ugt i64 %sub, %conv
  br i1 %cmp.not, label %if.end14, label %if.then13, !prof !25

if.then13:                                        ; preds = %if.end2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/context.c\22; .popsection; .long 14472b - 14470b; .short 387; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !26
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end2
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 noundef %num_available_asids.0) #14
  %call24 = call fastcc i32 @cpumask_weight() #13
  %conv25 = zext i32 %call24 to i64
  %sub26 = add i64 %num_available_asids.0, -2
  %sub27 = sub i64 %sub26, %conv25
  store i64 %sub27, i64* @max_pinned_asids, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @asids_init() #0 {
entry:
  %call = call fastcc i32 @get_cpu_asid_bits() #13
  store i32 %call, i32* @asid_bits, align 4
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  store volatile i64 %shl, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), align 8
  %conv = trunc i64 %shl to i32
  %call3 = call i64* @bitmap_zalloc(i32 noundef %conv, i32 noundef 3264) #17
  store i64* %call3, i64** @asid_map, align 8
  %tobool.not = icmp eq i64* %call3, null
  %0 = load i32, i32* @asid_bits, align 4
  %sh_prom4 = zext i32 %0 to i64
  %shl5 = shl nuw i64 1, %sh_prom4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 noundef %shl5) #18
  unreachable

if.end:                                           ; preds = %entry
  %conv8 = trunc i64 %shl5 to i32
  %call9 = call i64* @bitmap_zalloc(i32 noundef %conv8, i32 noundef 3264) #17
  store i64* %call9, i64** @pinned_asid_map, align 8
  store i64 0, i64* @nr_pinned_asids, align 8
  %1 = load i64*, i64** @asid_map, align 8
  call fastcc void @set_kpti_asid_bits(i64* noundef %1) #13
  ret i32 0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_cpu_boot_status() unnamed_addr #0 {
entry:
  store volatile i64 3, i64* getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 1), align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !27
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_park_loop() unnamed_addr #3 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void asm sideeffect "wfe", "~{memory}"() #15, !srcloc !28
  call void asm sideeffect "wfi", "~{memory}"() #15, !srcloc !29
  br label %for.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #15, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #15, !srcloc !31
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #13
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !25

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @cpu_asid_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !32
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !33
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !18

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @cpu_asid_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @cpu_asid_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #15, !srcloc !35
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_update_reserved_asid(i64 noundef %asid, i64 noundef %newasid) unnamed_addr #9 {
entry:
  %call22 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp23 = icmp ult i32 %call22, %0
  br i1 %cmp23, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %if.end
  %1 = phi i32 [ %5, %if.end ], [ %0, %entry ]
  %call25 = phi i32 [ %call, %if.end ], [ %call22, %entry ]
  %hit.0.off024 = phi i1 [ %hit.1.off0, %if.end ], [ false, %entry ]
  %idxprom = sext i32 %call25 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (i64* @reserved_asids to i64)
  %3 = inttoptr i64 %add to i64*
  %4 = load i64, i64* %3, align 8
  %cmp2 = icmp eq i64 %4, %asid
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i64 %newasid, i64* %3, align 8
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = phi i32 [ %.pre, %if.then ], [ %1, %do.body ]
  %hit.1.off0 = phi i1 [ true, %if.then ], [ %hit.0.off024, %do.body ]
  %call = call i32 @cpumask_next(i32 noundef %call25, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %hit.0.off0.lcssa = phi i1 [ false, %entry ], [ %hit.1.off0, %if.end ]
  ret i1 %hit.0.off0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #17
  ret i64 %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_context() unnamed_addr #0 {
entry:
  call fastcc void @set_reserved_asid_bits() #13
  %call42 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp43 = icmp ult i32 %call42, %0
  br i1 %cmp43, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %if.end
  %call44 = phi i32 [ %call, %if.end ], [ %call42, %entry ]
  %idxprom = sext i32 %call44 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.atomic64_t* @active_asids to i64)
  %2 = inttoptr i64 %add to i8*
  %call11.i.i = call fastcc i64 @__xchg_case_64(i8* noundef %2) #17
  %cmp3 = icmp eq i64 %call11.i.i, 0
  br i1 %cmp3, label %do.body4, label %if.end

do.body4:                                         ; preds = %do.body
  %3 = load i64, i64* %arrayidx, align 8
  %add13 = add i64 %3, ptrtoint (i64* @reserved_asids to i64)
  %4 = inttoptr i64 %add13 to i64*
  %5 = load i64, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body
  %asid.0 = phi i64 [ %5, %do.body4 ], [ %call11.i.i, %do.body ]
  %6 = load i32, i32* @asid_bits, align 4
  %sub14 = sub i32 64, %6
  %sh_prom = zext i32 %sub14 to i64
  %shr = lshr i64 -1, %sh_prom
  %and17 = and i64 %shr, %asid.0
  %7 = load i64*, i64** @asid_map, align 8
  %rem.i = and i64 %and17, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %and17, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %7, i64 %idx.ext.i
  %8 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %shl.i, %8
  store i64 %or.i, i64* %add.ptr.i, align 8
  %9 = load i64, i64* %arrayidx, align 8
  %add27 = add i64 %9, ptrtoint (i64* @reserved_asids to i64)
  %10 = inttoptr i64 %add27 to i64*
  store i64 %asid.0, i64* %10, align 8
  %call = call i32 @cpumask_next(i32 noundef %call44, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #19
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  call fastcc void @cpumask_setall() #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return_relaxed(i64 noundef %i) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return_relaxed\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0), i64 %i, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @asid_generation, i64 0, i32 0)) #15, !srcloc !36
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_reserved_asid_bits() unnamed_addr #0 {
entry:
  %0 = load i64*, i64** @pinned_asid_map, align 8
  %tobool.not = icmp eq i64* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @asid_map, align 8
  %2 = load i32, i32* @asid_bits, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv = trunc i64 %shl to i32
  call fastcc void @bitmap_copy(i64* noundef %1, i64* noundef nonnull %0, i32 noundef %conv) #13
  br label %if.end6

if.else:                                          ; preds = %entry
  %call = call fastcc i1 @arm64_kernel_unmapped_at_el0() #13
  %3 = load i64*, i64** @asid_map, align 8
  br i1 %call, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  call fastcc void @set_kpti_asid_bits(i64* noundef %3) #13
  br label %if.end6

if.else2:                                         ; preds = %if.else
  %4 = load i32, i32* @asid_bits, align 4
  %sh_prom3 = zext i32 %4 to i64
  %shl4 = shl nuw i64 1, %sh_prom3
  %conv5 = trunc i64 %shl4 to i32
  call void @__bitmap_clear(i64* noundef %3, i32 noundef 0, i32 noundef %conv5) #17
  br label %if.end6

if.end6:                                          ; preds = %if.else2, %if.then1, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_setall() unnamed_addr #0 {
entry:
  call fastcc void @bitmap_fill() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef %conv1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_kpti_asid_bits(i64* noundef %map) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @asid_bits, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %sub = add nuw i64 %shl, 63
  %1 = lshr i64 %sub, 3
  %conv = and i64 %1, 4294967288
  %2 = bitcast i64* %map to i8*
  %call = call i8* @memset(i8* noundef %2, i32 noundef 170, i64 noundef %conv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #15, !srcloc !37
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_fill() unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast (%struct.cpumask* @tlb_flush_pending to i8*), i32 noundef 255, i64 noundef 32) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @tlb_flush_pending, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #17
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !38
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @cpu_asid_lock to i8*), i8 0) #15, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #5 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #11 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
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
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #17
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !25

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !25

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #17
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #15, !srcloc !41
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !25

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !42
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #12

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2153644047, i64 2153644149, i64 2153644189, i64 2153644207, i64 2153643949, i64 2153644237, i64 2153644265, i64 2153643765, i64 2153644598}
!9 = !{i64 2149103475, i64 2149103522, i64 2149103528, i64 2149103565, i64 2149103583, i64 2149104510, i64 2149104558, i64 2149104606, i64 2149104669, i64 2149104718, i64 2149103661, i64 2149103686, i64 2149103712, i64 2149103718, i64 2149103755, i64 2149103761, i64 2149103811, i64 2149103857, i64 2149103890}
!10 = !{i64 2153627687}
!11 = !{i64 2153627833}
!12 = !{i64 2149710411}
!13 = !{i64 2151345787}
!14 = !{i64 2151346204, i64 2151345952, i64 2151346552, i64 2151346598, i64 2151346604, i64 2151347992, i64 2151346641, i64 2151346659, i64 2151348059, i64 2151348107, i64 2151348155, i64 2151348218, i64 2151348267, i64 2151346737, i64 2151346762, i64 2151346788, i64 2151346794, i64 2151348013, i64 2151346831, i64 2151346837, i64 2151346887, i64 2151346933, i64 2151346966}
!15 = !{i64 2151348331}
!16 = !{i64 2151348378}
!17 = !{i64 2149736254}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153629146}
!20 = !{i64 2153669922}
!21 = !{i64 2153688424}
!22 = !{i64 2153688571}
!23 = !{i64 2153688647}
!24 = !{i64 2153688794}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2153690313}
!27 = !{i64 2149323435}
!28 = !{i64 2149321128}
!29 = !{i64 2149321163}
!30 = !{i64 2147869143, i64 2147869176, i64 2147869228, i64 2147869287, i64 2147869321, i64 2147869376, i64 2147869405, i64 2147869425}
!31 = !{i64 2147870761, i64 2147870794, i64 2147870845, i64 2147870901, i64 2147870934, i64 2147870988, i64 2147871017, i64 2147871037}
!32 = !{i64 2148964959, i64 2148965006, i64 2148965012, i64 2148965049, i64 2148965067, i64 2148966378, i64 2148966426, i64 2148966474, i64 2148966537, i64 2148966586, i64 2148965145, i64 2148965170, i64 2148965196, i64 2148965202, i64 2148966044, i64 2148966084, i64 2148966102, i64 2148966134, i64 2148966162, i64 2148966216, i64 2148966236, i64 2148966333, i64 2148965225, i64 2148965239, i64 2148965245, i64 2148965295, i64 2148965341, i64 2148965374}
!33 = !{i64 2148967138, i64 2148967185, i64 2148967191, i64 2148967228, i64 2148967246, i64 2148968189, i64 2148968237, i64 2148968285, i64 2148968348, i64 2148968397, i64 2148967324, i64 2148967349, i64 2148967375, i64 2148967381, i64 2148967418, i64 2148967424, i64 2148967474, i64 2148967520, i64 2148967553}
!34 = !{i64 2148955195, i64 2148955242, i64 2148955248, i64 2148955285, i64 2148955303, i64 2148956644, i64 2148956692, i64 2148956740, i64 2148956803, i64 2148956852, i64 2148955381, i64 2148955406, i64 2148955432, i64 2148955438, i64 2148956310, i64 2148956350, i64 2148956368, i64 2148956400, i64 2148956428, i64 2148956482, i64 2148956502, i64 2148956599, i64 2148955461, i64 2148955475, i64 2148955481, i64 2148955531, i64 2148955577, i64 2148955610}
!35 = !{i64 2147875681, i64 2147875714, i64 2147875767, i64 2147875826, i64 2147875860, i64 2147875915, i64 2147875944, i64 2147875964}
!36 = !{i64 2147822369, i64 2147823025, i64 2147823055, i64 2147823086, i64 2147823118, i64 2147823152, i64 2147823177}
!37 = !{i64 2147897554, i64 2147897586, i64 2147897630, i64 2147897676, i64 2147897702}
!38 = !{i64 2147860322, i64 2147860984, i64 2147861014, i64 2147861045, i64 2147861077, i64 2147861112, i64 2147861137}
!39 = !{i64 2149679541}
!40 = !{i64 2148970972, i64 2148971019, i64 2148971025, i64 2148971062, i64 2148971080, i64 2148972391, i64 2148972439, i64 2148972487, i64 2148972550, i64 2148972599, i64 2148971158, i64 2148971183, i64 2148971209, i64 2148971215, i64 2148972057, i64 2148972097, i64 2148972115, i64 2148972147, i64 2148972175, i64 2148972229, i64 2148972249, i64 2148972346, i64 2148971238, i64 2148971252, i64 2148971258, i64 2148971308, i64 2148971354, i64 2148971387}
!41 = !{i64 2149880656}
!42 = !{i64 2147793504, i64 2147794178, i64 2147794208, i64 2147794240, i64 2147794274, i64 2147794310, i64 2147794335}
