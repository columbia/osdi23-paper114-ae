; ModuleID = 'kernel/stop_machine.c'
source_filename = "kernel/stop_machine.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_stop_machine__258_586_cpu_stop_initearly:\09\09\09"
module asm ".long\09cpu_stop_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpu_stopper = type { %struct.task_struct*, %struct.raw_spinlock, i8, %struct.list_head, %struct.cpu_stop_work, i64, i32 (i8*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.0 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.3, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.4, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.3 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.4 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.5, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
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
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.22 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.22 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.38 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type { %struct.atomic_t, i32, %struct.completion }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.smp_hotplug_thread = type { %struct.task_struct**, %struct.list_head, i32 (i32)*, void (i32)*, void (i32)*, void (i32)*, void (i32, i1)*, void (i32)*, void (i32)*, i8, i8* }
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }
%struct.multi_stop_data = type { i32 (i8*)*, i8*, i32, %struct.cpumask*, i32, %struct.atomic_t }

@cpu_stopper = internal global %struct.cpu_stopper zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@.str = private unnamed_addr constant [23 x i8] c"%sStopper: %pS <- %pS\0A\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@__UNIQUE_ID___addressable_cpu_stop_init259 = internal global i8* bitcast (i32 ()* @cpu_stop_init to i8*), section ".discard.addressable", align 8
@stop_machine_initialized = internal unnamed_addr global i1 false, align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@stop_cpus_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @stop_cpus_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @stop_cpus_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@stop_cpus_in_progress = internal unnamed_addr global i1 false, align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_stop_threads = internal global %struct.smp_hotplug_thread { %struct.task_struct** getelementptr inbounds (%struct.cpu_stopper, %struct.cpu_stopper* @cpu_stopper, i32 0, i32 0), %struct.list_head zeroinitializer, i32 (i32)* @cpu_stop_should_run, void (i32)* @cpu_stopper_thread, void (i32)* @cpu_stop_create, void (i32)* null, void (i32, i1)* null, void (i32)* @cpu_stop_park, void (i32)* null, i8 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"migration/%u\00", align 1
@cpu_stopper_thread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cpu_stop: %ps(%p) leaked preempt count\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cpu_stop_init259 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @print_stop_info(i8* noundef %log_lvl, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #14
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %thread = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 0
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %cmp.not = icmp eq %struct.task_struct* %2, %task
  br i1 %cmp.not, label %do.end4, label %cleanup

do.end4:                                          ; preds = %entry
  %fn = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 6
  %3 = load i32 (i8*)*, i32 (i8*)** %fn, align 8
  %caller = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 5
  %4 = load i64, i64* %caller, align 8
  %5 = inttoptr i64 %4 to i8*
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %log_lvl, i32 (i8*)* noundef %3, i8* noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #2 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @stop_one_cpu(i32 noundef %cpu, i32 (i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.cpu_stop_done, align 8
  %work = alloca %struct.cpu_stop_work, align 8
  %0 = bitcast %struct.cpu_stop_done* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !8
  %1 = bitcast %struct.cpu_stop_work* %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #16
  %fn1 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 1
  %2 = bitcast %struct.cpu_stop_work* %work to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 (i8*)* %fn, i32 (i8*)** %fn1, align 8
  %caller = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 2
  %3 = call i8* @llvm.returnaddress(i32 0)
  %4 = ptrtoint i8* %3 to i64
  %and = and i64 %4, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %5 = load i64, i64* @vabits_actual, align 8
  %shl4.neg = shl nsw i64 -1, %5
  %or = or i64 %shl4.neg, %4
  %and7 = and i64 %shl4.neg, 36028797018963967
  %neg = xor i64 %and7, -1
  %and9 = and i64 %neg, %4
  %cond = select i1 %tobool.not, i64 %and9, i64 %or
  store i64 %cond, i64* %caller, align 8
  %arg10 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 3
  store i8* %arg, i8** %arg10, align 8
  %done11 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 4
  store %struct.cpu_stop_done* %done, %struct.cpu_stop_done** %done11, align 8
  call fastcc void @cpu_stop_init_done(%struct.cpu_stop_done* noundef nonnull %done, i32 noundef 1) #14
  %call = call fastcc i1 @cpu_stop_queue_work(i32 noundef %cpu, %struct.cpu_stop_work* noundef nonnull %work) #14
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @_cond_resched() #14
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  call void @wait_for_completion(%struct.completion* noundef %completion) #17
  %ret = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 1
  %6 = load i32, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %6, %if.end ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_stop_init_done(%struct.cpu_stop_done* noundef %done, i32 noundef %nr_todo) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.cpu_stop_done* %done to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 40) #17
  %counter.i = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 0, i32 0
  store volatile i32 %nr_todo, i32* %counter.i, align 4
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  call fastcc void @init_completion(%struct.completion* noundef %completion) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpu_stop_queue_work(i32 noundef %cpu, %struct.cpu_stop_work* noundef %work) unnamed_addr #0 {
entry:
  %wakeq = alloca %struct.wake_q_head, align 8
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %2 = bitcast %struct.wake_q_head* %wakeq to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wakeq, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wakeq, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %lock = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #14
  %enabled7 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 2
  %3 = load i8, i8* %enabled7, align 4, !range !10
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @__cpu_stop_queue_work(%struct.cpu_stopper* noundef %1, %struct.cpu_stop_work* noundef %work, %struct.wake_q_head* noundef nonnull %wakeq) #14
  br label %do.body13

if.else:                                          ; preds = %entry
  %done = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 4
  %4 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %done, align 8
  %tobool9.not = icmp eq %struct.cpu_stop_done* %4, null
  br i1 %tobool9.not, label %do.body13, label %if.then10

if.then10:                                        ; preds = %if.else
  call fastcc void @cpu_stop_signal_done(%struct.cpu_stop_done* noundef nonnull %4) #14
  br label %do.body13

do.body13:                                        ; preds = %if.then, %if.then10, %if.else
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #14
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wakeq) #17
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @stop_machine_yield(%struct.cpumask* noundef %cpumask) local_unnamed_addr #0 {
entry:
  call fastcc void @cpu_relax() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @stop_two_cpus(i32 noundef %cpu1, i32 noundef %cpu2, i32 (i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.cpu_stop_done, align 8
  %work1 = alloca %struct.cpu_stop_work, align 8
  %work2 = alloca %struct.cpu_stop_work, align 8
  %msdata = alloca %struct.multi_stop_data, align 8
  %0 = bitcast %struct.cpu_stop_done* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !8
  %1 = bitcast %struct.cpu_stop_work* %work1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #16
  %2 = bitcast %struct.cpu_stop_work* %work2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2) #16
  %3 = bitcast %struct.multi_stop_data* %msdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #16
  %4 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %5 = bitcast i32* %4 to i64*, !annotation !8
  store i64 0, i64* %5, align 8, !annotation !8
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu1) #14
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 0
  store i32 (i8*)* %fn, i32 (i8*)** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx28 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 1
  store i8* %arg, i8** %.compoundliteral.sroa.2.0..sroa_idx28, align 8
  %.compoundliteral.sroa.3.0..sroa_idx29 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  store i32 2, i32* %.compoundliteral.sroa.3.0..sroa_idx29, align 8
  %.compoundliteral.sroa.430.0..sroa_idx31 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 3
  store %struct.cpumask* %call, %struct.cpumask** %.compoundliteral.sroa.430.0..sroa_idx31, align 8
  %.compoundliteral.sroa.5.0..sroa_idx32 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 4
  store i32 0, i32* %.compoundliteral.sroa.5.0..sroa_idx32, align 8
  %.compoundliteral.sroa.6.0..sroa_idx33 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 5, i32 0
  store i32 0, i32* %.compoundliteral.sroa.6.0..sroa_idx33, align 4
  %6 = call i8* @llvm.returnaddress(i32 0)
  %7 = ptrtoint i8* %6 to i64
  %and = and i64 %7, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %8 = load i64, i64* @vabits_actual, align 8
  %shl6.neg = shl nsw i64 -1, %8
  %or = or i64 %shl6.neg, %7
  %and9 = and i64 %shl6.neg, 36028797018963967
  %neg = xor i64 %and9, -1
  %and11 = and i64 %neg, %7
  %cond = select i1 %tobool.not, i64 %and11, i64 %or
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.compoundliteral2.sroa.2.0..sroa_idx23 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work2, i64 0, i32 1
  store i32 (i8*)* @multi_cpu_stop, i32 (i8*)** %.compoundliteral2.sroa.2.0..sroa_idx23, align 8
  %.compoundliteral2.sroa.3.0..sroa_idx24 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work2, i64 0, i32 2
  store i64 %cond, i64* %.compoundliteral2.sroa.3.0..sroa_idx24, align 8
  %.compoundliteral2.sroa.4.0..sroa_idx25 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work2, i64 0, i32 3
  %9 = bitcast i8** %.compoundliteral2.sroa.4.0..sroa_idx25 to %struct.multi_stop_data**
  store %struct.multi_stop_data* %msdata, %struct.multi_stop_data** %9, align 8
  %.compoundliteral2.sroa.5.0..sroa_idx26 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work2, i64 0, i32 4
  store %struct.cpu_stop_done* %done, %struct.cpu_stop_done** %.compoundliteral2.sroa.5.0..sroa_idx26, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8* noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call fastcc void @cpu_stop_init_done(%struct.cpu_stop_done* noundef nonnull %done, i32 noundef 2) #14
  call fastcc void @set_state(%struct.multi_stop_data* noundef nonnull %msdata, i32 noundef 1) #14
  %cmp = icmp ugt i32 %cpu1, %cpu2
  %spec.select = select i1 %cmp, i32 %cpu1, i32 %cpu2
  %spec.select39 = select i1 %cmp, i32 %cpu2, i32 %cpu1
  %call14 = call fastcc i32 @cpu_stop_queue_two_works(i32 noundef %spec.select39, %struct.cpu_stop_work* noundef nonnull %work1, i32 noundef %spec.select, %struct.cpu_stop_work* noundef nonnull %work2) #14
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %entry
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  call void @wait_for_completion(%struct.completion* noundef %completion) #17
  %ret = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 1
  %10 = load i32, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  %retval.0 = phi i32 [ %10, %if.end17 ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #7 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @multi_cpu_stop(i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.multi_stop_data*
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call4 = call fastcc i64 @arch_local_save_flags() #14
  %active_cpus = getelementptr inbounds i8, i8* %data, i64 24
  %3 = bitcast i8* %active_cpus to %struct.cpumask**
  %4 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %tobool.not = icmp eq %struct.cpumask* %4, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call7 = call fastcc i32 @cpumask_first() #14
  %cmp8 = icmp eq i32 %2, %call7
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef nonnull %4) #14
  %tobool12 = icmp ne i32 %call11, 0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cpumask.0 = phi %struct.cpumask* [ %4, %if.else ], [ @__cpu_online_mask, %if.then ]
  %is_active.0.in = phi i1 [ %tobool12, %if.else ], [ %cmp8, %if.then ]
  %state = getelementptr inbounds i8, i8* %data, i64 32
  %5 = bitcast i8* %state to i32*
  %fn = bitcast i8* %data to i32 (i8*)**
  %data31 = getelementptr inbounds i8, i8* %data, i64 8
  %6 = bitcast i8* %data31 to i8**
  br label %do.body14

do.body14:                                        ; preds = %if.end39, %if.end
  %err.0 = phi i32 [ 0, %if.end ], [ %err.2, %if.end39 ]
  %curstate.0 = phi i32 [ 0, %if.end ], [ %curstate.1, %if.end39 ]
  call void @stop_machine_yield(%struct.cpumask* noundef nonnull %cpumask.0) #14
  %7 = load volatile i32, i32* %5, align 8
  %cmp19.not = icmp eq i32 %7, %curstate.0
  br i1 %cmp19.not, label %if.end39, label %if.then21

if.then21:                                        ; preds = %do.body14
  switch i32 %7, label %sw.epilog [
    i32 2, label %do.body22
    i32 3, label %sw.bb28
  ]

do.body22:                                        ; preds = %if.then21
  call fastcc void @arch_local_irq_disable() #14
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then21
  br i1 %is_active.0.in, label %if.then30, label %sw.epilog

if.then30:                                        ; preds = %sw.bb28
  %8 = load i32 (i8*)*, i32 (i8*)** %fn, align 8
  %9 = load i8*, i8** %6, align 8
  %call32 = call i32 %8(i8* noundef %9) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %sw.bb28, %if.then30, %do.body22
  %err.1 = phi i32 [ %err.0, %if.then21 ], [ %call32, %if.then30 ], [ %err.0, %sw.bb28 ], [ %err.0, %do.body22 ]
  call fastcc void @ack_state(%struct.multi_stop_data* noundef %0) #14
  br label %if.end39

if.end39:                                         ; preds = %do.body14, %sw.epilog
  %err.2 = phi i32 [ %err.1, %sw.epilog ], [ %err.0, %do.body14 ]
  %curstate.1 = phi i32 [ %7, %sw.epilog ], [ %curstate.0, %do.body14 ]
  call void @rcu_momentary_dyntick_idle() #17
  %cmp41.not = icmp eq i32 %curstate.1, 4
  br i1 %cmp41.not, label %do.body45, label %do.body14

do.body45:                                        ; preds = %if.end39
  call fastcc void @arch_local_irq_restore(i64 noundef %call4) #14
  ret i32 %err.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_state(%struct.multi_stop_data* noundef %msdata, i32 noundef %newstate) unnamed_addr #0 {
entry:
  %num_threads = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %0 = load i32, i32* %num_threads, align 8
  %counter.i = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 5, i32 0
  store volatile i32 %0, i32* %counter.i, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !13
  %state = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 4
  store volatile i32 %newstate, i32* %state, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpu_stop_queue_two_works(i32 noundef %cpu1, %struct.cpu_stop_work* noundef %work1, i32 noundef %cpu2, %struct.cpu_stop_work* noundef %work2) unnamed_addr #0 {
entry:
  %wakeq = alloca %struct.wake_q_head, align 8
  %idxprom = sext i32 %cpu1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %idxprom9 = sext i32 %cpu2 to i64
  %arrayidx10 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom9
  %2 = load i64, i64* %arrayidx10, align 8
  %add11 = add i64 %2, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %3 = inttoptr i64 %add11 to %struct.cpu_stopper*
  %4 = bitcast %struct.wake_q_head* %wakeq to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #16
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wakeq, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wakeq, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %lock = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 1
  %lock13 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %3, i64 0, i32 1
  %enabled = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 2
  %enabled14 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %3, i64 0, i32 2
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock13) #14
  %5 = load i8, i8* %enabled, align 4, !range !10
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %unlock, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %retry
  %6 = load i8, i8* %enabled14, align 4, !range !10
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %unlock, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %.b4850 = load i1, i1* @stop_cpus_in_progress, align 1
  br i1 %.b4850, label %unlock, label %if.end20, !prof !15

if.end20:                                         ; preds = %if.end
  call fastcc void @__cpu_stop_queue_work(%struct.cpu_stopper* noundef %1, %struct.cpu_stop_work* noundef %work1, %struct.wake_q_head* noundef nonnull %wakeq) #14
  call fastcc void @__cpu_stop_queue_work(%struct.cpu_stopper* noundef %3, %struct.cpu_stop_work* noundef %work2, %struct.wake_q_head* noundef nonnull %wakeq) #14
  br label %unlock

unlock:                                           ; preds = %if.end, %retry, %lor.lhs.false, %if.end20
  %cmp = phi i1 [ false, %if.end20 ], [ false, %lor.lhs.false ], [ false, %retry ], [ true, %if.end ]
  %err.0 = phi i32 [ 0, %if.end20 ], [ -2, %lor.lhs.false ], [ -2, %retry ], [ -35, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock13) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #14
  br i1 %cmp, label %if.then31, label %if.end33, !prof !15

if.then31:                                        ; preds = %unlock
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %.b4951 = load i1, i1* @stop_cpus_in_progress, align 1
  br i1 %.b4951, label %while.body, label %retry.backedge

retry.backedge:                                   ; preds = %while.body, %if.then31
  br label %retry

while.body:                                       ; preds = %if.then31, %while.body
  call fastcc void @cpu_relax() #14
  %.b49 = load i1, i1* @stop_cpus_in_progress, align 1
  br i1 %.b49, label %while.body, label %retry.backedge

if.end33:                                         ; preds = %unlock
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wakeq) #17
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #16
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @stop_one_cpu_nowait(i32 noundef %cpu, i32 (i8*)* noundef %fn, i8* noundef %arg, %struct.cpu_stop_work* noundef %work_buf) local_unnamed_addr #0 {
entry:
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl4.neg = shl nsw i64 -1, %2
  %or = or i64 %shl4.neg, %1
  %and7 = and i64 %shl4.neg, 36028797018963967
  %neg = xor i64 %and7, -1
  %and9 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and9, i64 %or
  %.compoundliteral.sroa.0.0..sroa_cast = bitcast %struct.cpu_stop_work* %work_buf to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(16) %.compoundliteral.sroa.0.0..sroa_cast, i8 0, i64 16, i1 false)
  %.compoundliteral.sroa.2.0..sroa_idx12 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work_buf, i64 0, i32 1
  store i32 (i8*)* %fn, i32 (i8*)** %.compoundliteral.sroa.2.0..sroa_idx12, align 8
  %.compoundliteral.sroa.3.0..sroa_idx13 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work_buf, i64 0, i32 2
  store i64 %cond, i64* %.compoundliteral.sroa.3.0..sroa_idx13, align 8
  %.compoundliteral.sroa.4.0..sroa_idx14 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work_buf, i64 0, i32 3
  store i8* %arg, i8** %.compoundliteral.sroa.4.0..sroa_idx14, align 8
  %.compoundliteral.sroa.5.0..sroa_idx15 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work_buf, i64 0, i32 4
  store %struct.cpu_stop_done* null, %struct.cpu_stop_done** %.compoundliteral.sroa.5.0..sroa_idx15, align 8
  %call = call fastcc i1 @cpu_stop_queue_work(i32 noundef %cpu, %struct.cpu_stop_work* noundef %work_buf) #14
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @stop_machine_park(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %enabled = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 2
  store i8 0, i8* %enabled, align 4
  %thread = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 0
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %call = call i32 @kthread_park(%struct.task_struct* noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @stop_machine_unpark(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %enabled = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 2
  store i8 1, i8* %enabled, align 4
  %thread = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 0
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  call void @kthread_unpark(%struct.task_struct* noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(%struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @cpu_stop_init() #9 section ".init.text" {
entry:
  %call35 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp36 = icmp ult i32 %call35, %0
  br i1 %cmp36, label %for.body, label %do.body5

for.body:                                         ; preds = %entry, %for.body
  %call37 = phi i32 [ %call, %for.body ], [ %call35, %entry ]
  %idxprom = zext i32 %call37 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %2 = inttoptr i64 %add to %struct.cpu_stopper*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %2, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %works = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %2, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %works) #14
  %call = call i32 @cpumask_next(i32 noundef %call37, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %do.body5

do.body5:                                         ; preds = %for.body, %entry
  %call6 = call i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef nonnull @cpu_stop_threads) #17
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body17, label %do.body9, !prof !18

do.body9:                                         ; preds = %do.body5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/stop_machine.c\22; .popsection; .long 14472b - 14470b; .short 581; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !19
  unreachable

do.body17:                                        ; preds = %do.body5
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #14
  %add25 = add i64 %call24, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add25 to i32*
  %5 = load i32, i32* %4, align 4
  call void @stop_machine_unpark(i32 noundef %5) #14
  store i1 true, i1* @stop_machine_initialized, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @stop_machine_cpuslocked(i32 (i8*)* noundef %fn, i8* noundef %data, %struct.cpumask* noundef %cpus) local_unnamed_addr #0 {
entry:
  %msdata = alloca %struct.multi_stop_data, align 8
  %0 = bitcast %struct.multi_stop_data* %msdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %fn1 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 0
  store i32 (i8*)* %fn, i32 (i8*)** %fn1, align 8
  %data2 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 1
  store i8* %data, i8** %data2, align 8
  %num_threads = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %call = call fastcc i32 @num_online_cpus() #14
  store i32 %call, i32* %num_threads, align 8
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 3
  store %struct.cpumask* %cpus, %struct.cpumask** %active_cpus, align 8
  %state = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 4
  store i32 0, i32* %state, align 8
  %3 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 5, i32 0
  store i32 0, i32* %3, align 4
  %.b52 = load i1, i1* @stop_machine_initialized, align 1
  br i1 %.b52, label %if.end44, label %if.then

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then11, !prof !18

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/stop_machine.c\22; .popsection; .long 14472b - 14470b; .short 609; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %call23 = call fastcc i64 @arch_local_irq_save() #14
  %call29 = call i32 %fn(i8* noundef %data) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %call23) #14
  br label %cleanup

if.end44:                                         ; preds = %entry
  call fastcc void @set_state(%struct.multi_stop_data* noundef nonnull %msdata, i32 noundef 1) #14
  %call45 = call fastcc i32 @stop_cpus(i8* noundef nonnull %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end
  %retval.0 = phi i32 [ %call45, %if.end44 ], [ %call29, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @stop_cpus(i8* noundef %arg) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @stop_cpus_mutex) #17
  %call = call fastcc i32 @__stop_cpus(i8* noundef %arg) #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @stop_cpus_mutex) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @stop_machine(i32 (i8*)* noundef %fn, i8* noundef %data, %struct.cpumask* noundef %cpus) local_unnamed_addr #0 {
entry:
  %call = call i32 @stop_machine_cpuslocked(i32 (i8*)* noundef %fn, i8* noundef %data, %struct.cpumask* noundef %cpus) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @stop_machine_from_inactive_cpu(i32 (i8*)* noundef %fn, i8* noundef %data, %struct.cpumask* noundef %cpus) local_unnamed_addr #0 {
entry:
  %msdata = alloca %struct.multi_stop_data, align 8
  %done = alloca %struct.cpu_stop_done, align 8
  %0 = bitcast %struct.multi_stop_data* %msdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  %1 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %fn1 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 0
  store i32 (i8*)* %fn, i32 (i8*)** %fn1, align 8
  %data2 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 1
  store i8* %data, i8** %data2, align 8
  %active_cpus = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 3
  store %struct.cpumask* %cpus, %struct.cpumask** %active_cpus, align 8
  %state = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 4
  store i32 0, i32* %state, align 8
  %3 = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 5, i32 0
  store i32 0, i32* %3, align 4
  %4 = bitcast %struct.cpu_stop_done* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !8
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %call5 = call fastcc i1 @cpu_active(i32 noundef %6) #14
  br i1 %call5, label %do.body7, label %do.end14, !prof !15

do.body7:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/stop_machine.c\22; .popsection; .long 14472b - 14470b; .short 667; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !22
  unreachable

do.end14:                                         ; preds = %entry
  %num_threads = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 2
  %call15 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef nonnull @__cpu_active_mask) #14
  %add16 = add i32 %call15, 1
  store i32 %add16, i32* %num_threads, align 8
  %call1836 = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @stop_cpus_mutex) #17
  %tobool19.not37 = icmp eq i32 %call1836, 0
  br i1 %tobool19.not37, label %while.body, label %while.end

while.body:                                       ; preds = %do.end14, %while.body
  call fastcc void @cpu_relax() #14
  %call18 = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @stop_cpus_mutex) #17
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.end14
  call fastcc void @set_state(%struct.multi_stop_data* noundef nonnull %msdata, i32 noundef 1) #14
  %call22 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef nonnull @__cpu_active_mask) #14
  call fastcc void @cpu_stop_init_done(%struct.cpu_stop_done* noundef nonnull %done, i32 noundef %call22) #14
  %7 = call fastcc i1 @queue_stop_cpus_work(%struct.cpumask* noundef nonnull @__cpu_active_mask, i8* noundef nonnull %0, %struct.cpu_stop_done* noundef nonnull %done) #14
  %call24 = call i32 @multi_cpu_stop(i8* noundef nonnull %0) #14
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  %call2638 = call i1 @completion_done(%struct.completion* noundef %completion) #17
  br i1 %call2638, label %while.end30, label %while.body29

while.body29:                                     ; preds = %while.end, %while.body29
  call fastcc void @cpu_relax() #14
  %call26 = call i1 @completion_done(%struct.completion* noundef %completion) #17
  br i1 %call26, label %while.end30, label %while.body29

while.end30:                                      ; preds = %while.body29, %while.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @stop_cpus_mutex) #17
  %tobool31.not = icmp eq i32 %call24, 0
  %ret32 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 1
  %8 = load i32, i32* %ret32, align 4
  %cond = select i1 %tobool31.not, i32 %8, i32 %call24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_active(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #14
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #19, !srcloc !23
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @queue_stop_cpus_work(%struct.cpumask* noundef %cpumask, i8* noundef %arg, %struct.cpu_stop_done* noundef %done) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  store i1 true, i1* @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %call2 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpumask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %0
  br i1 %cmp3, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call5 = phi i32 [ %call2, %do.body.lr.ph ], [ %call, %do.body ]
  %queued.0.off04 = phi i1 [ false, %do.body.lr.ph ], [ %spec.select, %do.body ]
  %idxprom = zext i32 %call5 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.cpu_stop_work* getelementptr inbounds (%struct.cpu_stopper, %struct.cpu_stopper* @cpu_stopper, i64 0, i32 4) to i64)
  %4 = inttoptr i64 %add to %struct.cpu_stop_work*
  %fn2 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %4, i64 0, i32 1
  store i32 (i8*)* @multi_cpu_stop, i32 (i8*)** %fn2, align 8
  %arg3 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %4, i64 0, i32 3
  store i8* %arg, i8** %arg3, align 8
  %done4 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %4, i64 0, i32 4
  store %struct.cpu_stop_done* %done, %struct.cpu_stop_done** %done4, align 8
  %5 = load i64, i64* @vabits_actual, align 8
  %shl8.neg = shl nsw i64 -1, %5
  %or = or i64 %shl8.neg, %2
  %and11 = and i64 %shl8.neg, 36028797018963967
  %neg = xor i64 %and11, -1
  %and13 = and i64 %neg, %2
  %cond = select i1 %tobool.not, i64 %and13, i64 %or
  %caller = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %4, i64 0, i32 2
  store i64 %cond, i64* %caller, align 8
  %call14 = call fastcc i1 @cpu_stop_queue_work(i32 noundef %call5, %struct.cpu_stop_work* noundef %4) #14
  %spec.select = select i1 %call14, i1 true, i1 %queued.0.off04
  %call = call i32 @cpumask_next(i32 noundef %call5, %struct.cpumask* noundef %cpumask) #18
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %queued.0.off0.lcssa = phi i1 [ false, %entry ], [ %spec.select, %do.body ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  store i1 false, i1* @stop_cpus_in_progress, align 1
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret i1 %queued.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @completion_done(%struct.completion* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpu_stop_queue_work(%struct.cpu_stopper* noundef %stopper, %struct.cpu_stop_work* noundef %work, %struct.wake_q_head* noundef %wakeq) unnamed_addr #0 {
entry:
  %list = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %work, i64 0, i32 0
  %works = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %stopper, i64 0, i32 3
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %works) #14
  %thread = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %stopper, i64 0, i32 0
  %0 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  call void @wake_q_add(%struct.wake_q_head* noundef %wakeq, %struct.task_struct* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_stop_signal_done(%struct.cpu_stop_done* noundef %done) unnamed_addr #0 {
entry:
  %nr_todo = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_todo) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  call void @complete(%struct.completion* noundef %completion) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(%struct.wake_q_head* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !18

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #11 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !31
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !33
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit() #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #2 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !15

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ack_state(%struct.multi_stop_data* noundef %msdata) unnamed_addr #0 {
entry:
  %thread_ack = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 5
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %thread_ack) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.multi_stop_data, %struct.multi_stop_data* %msdata, i64 0, i32 4
  %0 = load i32, i32* %state, align 8
  %add = add i32 %0, 1
  call fastcc void @set_state(%struct.multi_stop_data* noundef %msdata, i32 noundef %add) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_momentary_dyntick_idle() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i64 noundef 256) #17
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !36
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !18

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !39
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cpu_stop_should_run(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %lock = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #14
  %works = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 3
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %works) #14
  %tobool.not = icmp eq i32 %call6, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #14
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_stopper_thread(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %lock = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 1
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #14
  %works = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 3
  %call106 = call fastcc i32 @list_empty(%struct.list_head* noundef %works) #14
  %tobool.not107 = icmp eq i32 %call106, 0
  br i1 %tobool.not107, label %if.end.lr.ph, label %if.end.thread

if.end.lr.ph:                                     ; preds = %entry
  %2 = bitcast %struct.list_head* %works to %struct.cpu_stop_work**
  %caller13 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 5
  %fn14 = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 6
  br label %if.end

if.end.thread:                                    ; preds = %if.end62, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #14
  br label %if.end71

if.end:                                           ; preds = %if.end.lr.ph, %if.end62
  %3 = load %struct.cpu_stop_work*, %struct.cpu_stop_work** %2, align 8
  %list = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %3, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #14
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #14
  %tobool8.not = icmp eq %struct.cpu_stop_work* %3, null
  br i1 %tobool8.not, label %if.end71, label %if.then9

if.then9:                                         ; preds = %if.end
  %fn10 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %3, i64 0, i32 1
  %4 = load i32 (i8*)*, i32 (i8*)** %fn10, align 8
  %arg11 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %3, i64 0, i32 3
  %5 = load i8*, i8** %arg11, align 8
  %done12 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %3, i64 0, i32 4
  %6 = load %struct.cpu_stop_done*, %struct.cpu_stop_done** %done12, align 8
  %caller = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %3, i64 0, i32 2
  %7 = load i64, i64* %caller, align 8
  store i64 %7, i64* %caller13, align 8
  store i32 (i8*)* %4, i32 (i8*)** %fn14, align 8
  call fastcc void @__preempt_count_add() #14
  %call15 = call i32 %4(i8* noundef %5) #17
  %tobool16.not = icmp eq %struct.cpu_stop_done* %6, null
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.then9
  %tobool18.not = icmp eq i32 %call15, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %ret20 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %6, i64 0, i32 1
  store i32 %call15, i32* %ret20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17
  call fastcc void @cpu_stop_signal_done(%struct.cpu_stop_done* noundef nonnull %6) #14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  call fastcc void @__preempt_count_sub() #14
  store i32 (i8*)* null, i32 (i8*)** %fn14, align 8
  store i64 0, i64* %caller13, align 8
  %call25 = call fastcc i32 @preempt_count() #14
  %tobool26 = icmp ne i32 %call25, 0
  %.b102 = load i1, i1* @cpu_stopper_thread.__already_done, align 1
  %lnot30 = xor i1 %.b102, true
  %8 = select i1 %tobool26, i1 %lnot30, i1 false
  br i1 %8, label %if.then34, label %if.end62, !prof !15

if.then34:                                        ; preds = %if.end22
  store i1 true, i1* @cpu_stopper_thread.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 (i8*)* noundef %4, i8* noundef %5) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/stop_machine.c\22; .popsection; .long 14472b - 14470b; .short 521; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !40
  br label %if.end62

if.end62:                                         ; preds = %if.then34, %if.end22
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #14
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %works) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end71:                                         ; preds = %if.end, %if.end.thread
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_stop_create(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  call void @sched_set_stop_task(i32 noundef %cpu, %struct.task_struct* noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_stop_park(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpu_stopper* @cpu_stopper to i64)
  %1 = inttoptr i64 %add to %struct.cpu_stopper*
  %works = getelementptr inbounds %struct.cpu_stopper, %struct.cpu_stopper* %1, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %works) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !15

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/stop_machine.c\22; .popsection; .long 14472b - 14470b; .short 549; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #11 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !42
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 1
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_sub() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !42
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %sub = add i32 %3, -1
  store volatile i32 %sub, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !42
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #11 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #11 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_stop_task(i32 noundef, %struct.task_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !43
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__stop_cpus(i8* noundef %arg) unnamed_addr #0 {
entry:
  %done = alloca %struct.cpu_stop_done, align 8
  %0 = bitcast %struct.cpu_stop_done* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !8
  %call = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef nonnull @__cpu_online_mask) #14
  call fastcc void @cpu_stop_init_done(%struct.cpu_stop_done* noundef nonnull %done, i32 noundef %call) #14
  %call1 = call fastcc i1 @queue_stop_cpus_work(%struct.cpumask* noundef nonnull @__cpu_online_mask, i8* noundef %arg, %struct.cpu_stop_done* noundef nonnull %done) #14
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 2
  call void @wait_for_completion(%struct.completion* noundef %completion) #17
  %ret = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %done, i64 0, i32 1
  %1 = load i32, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 2153362150}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153362788}
!12 = !{i64 1721540}
!13 = !{i64 2153365030}
!14 = !{i64 2153372714}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153373227}
!17 = !{i64 2153373275}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153395975}
!20 = !{i64 2153402273}
!21 = !{i64 2148944383, i64 2148944430, i64 2148944436, i64 2148944473, i64 2148944491, i64 2148949863, i64 2148949911, i64 2148949959, i64 2148950022, i64 2148950071, i64 2148944569, i64 2148944594, i64 2148944620, i64 2148944626, i64 2148949529, i64 2148949569, i64 2148949587, i64 2148949619, i64 2148949647, i64 2148949701, i64 2148949721, i64 2148949818, i64 2148944649, i64 2148944663, i64 2148944669, i64 2148944719, i64 2148944765, i64 2148944798}
!22 = !{i64 2153405942}
!23 = !{i64 2148960689, i64 2148960736, i64 2148960742, i64 2148960779, i64 2148960797, i64 2148961724, i64 2148961772, i64 2148961820, i64 2148961883, i64 2148961932, i64 2148960875, i64 2148960900, i64 2148960926, i64 2148960932, i64 2148960969, i64 2148960975, i64 2148961025, i64 2148961071, i64 2148961104}
!24 = !{i64 2153377609}
!25 = !{i64 2153377647}
!26 = !{i64 2153380783}
!27 = !{i64 2153380831}
!28 = !{i64 2149372543}
!29 = !{i64 2149398386}
!30 = !{i64 2147880329, i64 2147880362, i64 2147880415, i64 2147880474, i64 2147880508, i64 2147880563, i64 2147880592, i64 2147880612}
!31 = !{i64 2147795040, i64 2147795688, i64 2147795718, i64 2147795750, i64 2147795784, i64 2147795820, i64 2147795845}
!32 = !{i64 2149187055}
!33 = !{i64 2148938370, i64 2148938417, i64 2148938423, i64 2148938460, i64 2148938478, i64 2148939789, i64 2148939837, i64 2148939885, i64 2148939948, i64 2148939997, i64 2148938556, i64 2148938581, i64 2148938607, i64 2148938613, i64 2148939455, i64 2148939495, i64 2148939513, i64 2148939545, i64 2148939573, i64 2148939627, i64 2148939647, i64 2148939744, i64 2148938636, i64 2148938650, i64 2148938656, i64 2148938706, i64 2148938752, i64 2148938785}
!34 = !{i64 2148932667, i64 2148932714, i64 2148932720, i64 2148932757, i64 2148932775, i64 2148934116, i64 2148934164, i64 2148934212, i64 2148934275, i64 2148934324, i64 2148932853, i64 2148932878, i64 2148932904, i64 2148932910, i64 2148933782, i64 2148933822, i64 2148933840, i64 2148933872, i64 2148933900, i64 2148933954, i64 2148933974, i64 2148934071, i64 2148932933, i64 2148932947, i64 2148932953, i64 2148933003, i64 2148933049, i64 2148933082}
!35 = !{i64 2149376836}
!36 = !{i64 2149387544}
!37 = !{i64 2149394825}
!38 = !{i64 2149401689}
!39 = !{i64 2148923211, i64 2148923258, i64 2148923264, i64 2148923301, i64 2148923319, i64 2148924659, i64 2148924707, i64 2148924755, i64 2148924818, i64 2148924867, i64 2148923397, i64 2148923422, i64 2148923448, i64 2148923454, i64 2148924325, i64 2148924365, i64 2148924383, i64 2148924415, i64 2148924443, i64 2148924497, i64 2148924517, i64 2148924614, i64 2148923477, i64 2148923491, i64 2148923497, i64 2148923547, i64 2148923593, i64 2148923626}
!40 = !{i64 2153387975}
!41 = !{i64 2153392141}
!42 = !{i64 1198809}
!43 = !{i64 2148940549, i64 2148940596, i64 2148940602, i64 2148940639, i64 2148940657, i64 2148941600, i64 2148941648, i64 2148941696, i64 2148941759, i64 2148941808, i64 2148940735, i64 2148940760, i64 2148940786, i64 2148940792, i64 2148940829, i64 2148940835, i64 2148940885, i64 2148940931, i64 2148940964}
