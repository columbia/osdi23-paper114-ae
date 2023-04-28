; ModuleID = 'kernel/futex.c'
source_filename = "kernel/futex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_futex__430_4272_futex_init1:\09\09\09"
module asm ".long\09futex_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [40 x i8] }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.72, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
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
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.25 }
%union.anon.25 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
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
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
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
%struct.robust_list_head = type { %struct.robust_list, i64, %struct.robust_list* }
%struct.robust_list = type { %struct.robust_list* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.71, i32, [12 x i8] }
%union.anon.71 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.73, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.73 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.anon.70 = type { i64, i64, i32 }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, %struct.task_struct*, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%union.futex_key = type { %struct.anon.67 }
%struct.anon.67 = type { i64, i64, i32 }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, %struct.task_struct*, %struct.rt_mutex_base*, i32, i32, i64, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, %struct.task_struct* }
%struct.futex_q = type { %struct.plist_node, %struct.task_struct*, %struct.spinlock*, %union.futex_key, %struct.futex_pi_state*, %struct.rt_mutex_waiter*, %union.futex_key*, i32, %struct.atomic_t }
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }
%struct.__kernel_timespec = type { i64, i64 }
%struct.rt_wake_q_head = type { %struct.wake_q_head, %struct.task_struct* }

@__UNIQUE_ID___addressable_futex_init431 = internal global i8* bitcast (i32 ()* @futex_init to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__futex_data.0 = internal unnamed_addr global %struct.futex_hash_bucket* null, section ".data..read_mostly", align 16
@__futex_data.1 = internal unnamed_addr global i64 0, section ".data..read_mostly", align 16
@futex_q_init = internal unnamed_addr constant { %struct.plist_node, %struct.task_struct*, %struct.spinlock*, { %struct.anon.70 }, %struct.futex_pi_state*, %struct.rt_mutex_waiter*, %union.futex_key*, i32, %struct.atomic_t } { %struct.plist_node zeroinitializer, %struct.task_struct* null, %struct.spinlock* null, { %struct.anon.70 } zeroinitializer, %struct.futex_pi_state* null, %struct.rt_mutex_waiter* null, %union.futex_key* null, i32 -1, %struct.atomic_t zeroinitializer }, align 8
@get_inode_sequence_number.i_seq = internal global %struct.atomic64_t zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"refusing to wake PI futex\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@futex_atomic_op_inuser._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.futex_atomic_op_inuser = private unnamed_addr constant [23 x i8] c"futex_atomic_op_inuser\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\016futex_wake_op: %s tries to shift op by %d; fix this program\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"futex\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_futex_init431 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_set_robust_list(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_set_robust_list(i64 noundef %0, i64 noundef %1) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc i64 @__se_sys_set_robust_list(i64 noundef %head, i64 noundef %len) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %head to %struct.robust_list_head*
  %call = call fastcc i64 @__do_sys_set_robust_list(%struct.robust_list_head* noundef %0, i64 noundef %len) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_get_robust_list(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_get_robust_list(i64 noundef %0, i64 noundef %1, i64 noundef %2) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_get_robust_list(i64 noundef %pid, i64 noundef %head_ptr, i64 noundef %len_ptr) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %head_ptr to %struct.robust_list_head**
  %1 = inttoptr i64 %len_ptr to i64*
  %call = call fastcc i64 @__do_sys_get_robust_list(i32 noundef %conv, %struct.robust_list_head** noundef %0, i64* noundef %1) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @futex_exit_recursive(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 120
  %0 = load i32, i32* %futex_state, align 8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 119
  call void @mutex_unlock(%struct.mutex* noundef %futex_exit_mutex) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 2, i32* %futex_state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @futex_exec_release(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  call fastcc void @futex_cleanup_begin(%struct.task_struct* noundef %tsk) #18
  call fastcc void @futex_cleanup(%struct.task_struct* noundef %tsk) #18
  call fastcc void @futex_cleanup_end(%struct.task_struct* noundef %tsk, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_cleanup_begin(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 119
  call void @mutex_lock(%struct.mutex* noundef %futex_exit_mutex) #19
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 102
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 120
  store i32 1, i32* %futex_state, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_cleanup(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %robust_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 116
  %0 = load %struct.robust_list_head*, %struct.robust_list_head** %robust_list, align 8
  %tobool.not = icmp eq %struct.robust_list_head* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call fastcc void @exit_robust_list(%struct.task_struct* noundef %tsk) #18
  store %struct.robust_list_head* null, %struct.robust_list_head** %robust_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pi_state_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 117
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pi_state_list) #18
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then14, label %if.end15, !prof !8

if.then14:                                        ; preds = %if.end
  call fastcc void @exit_pi_state_list(%struct.task_struct* noundef %tsk) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_cleanup_end(%struct.task_struct* noundef %tsk, i32 noundef %state) unnamed_addr #0 {
entry:
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 120
  store i32 %state, i32* %futex_state, align 8
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 119
  call void @mutex_unlock(%struct.mutex* noundef %futex_exit_mutex) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @futex_exit_release(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  call fastcc void @futex_cleanup_begin(%struct.task_struct* noundef %tsk) #18
  call fastcc void @futex_cleanup(%struct.task_struct* noundef %tsk) #18
  call fastcc void @futex_cleanup_end(%struct.task_struct* noundef %tsk, i32 noundef 2) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_futex(i32* noundef %uaddr, i32 noundef %op, i32 noundef %val, i64* noundef %timeout, i32* noundef %uaddr2, i32 noundef %val2, i32 noundef %val3) local_unnamed_addr #0 {
entry:
  %val3.addr = alloca i32, align 4
  store i32 %val3, i32* %val3.addr, align 4
  %and = and i32 %op, -385
  %and1 = lshr i32 %op, 7
  %and1.lobit = and i32 %and1, 1
  %0 = xor i32 %and1.lobit, 1
  %and2 = and i32 %op, 256
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %entry
  %or5 = or i32 %0, 2
  %1 = and i32 %op, -387
  %2 = icmp ne i32 %1, 9
  %cmp8 = icmp ne i32 %and, 13
  %or.cond46 = and i1 %2, %cmp8
  br i1 %or.cond46, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then4, %entry
  %flags.1 = phi i32 [ %or5, %if.then4 ], [ %0, %entry ]
  switch i32 %and, label %cleanup [
    i32 0, label %sw.bb12
    i32 9, label %sw.bb13
    i32 1, label %sw.bb14
    i32 10, label %sw.bb15
    i32 3, label %sw.bb18
    i32 4, label %sw.bb21
    i32 5, label %sw.bb24
    i32 6, label %sw.bb27
    i32 13, label %sw.bb29
    i32 7, label %sw.bb32
    i32 8, label %sw.bb35
    i32 11, label %sw.bb38
    i32 12, label %sw.bb41
  ]

sw.bb12:                                          ; preds = %if.end11
  store i32 -1, i32* %val3.addr, align 4
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.end11, %sw.bb12
  %3 = phi i32 [ %val3, %if.end11 ], [ -1, %sw.bb12 ]
  %call = call fastcc i32 @futex_wait(i32* noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, i64* noundef %timeout, i32 noundef %3) #18
  %conv = sext i32 %call to i64
  br label %cleanup

sw.bb14:                                          ; preds = %if.end11
  store i32 -1, i32* %val3.addr, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end11, %sw.bb14
  %4 = phi i32 [ %val3, %if.end11 ], [ -1, %sw.bb14 ]
  %call16 = call fastcc i32 @futex_wake(i32* noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, i32 noundef %4) #18
  %conv17 = sext i32 %call16 to i64
  br label %cleanup

sw.bb18:                                          ; preds = %if.end11
  %call19 = call fastcc i32 @futex_requeue(i32* noundef %uaddr, i32 noundef %flags.1, i32* noundef %uaddr2, i32 noundef %val, i32 noundef %val2, i32* noundef null, i32 noundef 0) #18
  %conv20 = sext i32 %call19 to i64
  br label %cleanup

sw.bb21:                                          ; preds = %if.end11
  %call22 = call fastcc i32 @futex_requeue(i32* noundef %uaddr, i32 noundef %flags.1, i32* noundef %uaddr2, i32 noundef %val, i32 noundef %val2, i32* noundef nonnull %val3.addr, i32 noundef 0) #18
  %conv23 = sext i32 %call22 to i64
  br label %cleanup

sw.bb24:                                          ; preds = %if.end11
  %call25 = call fastcc i32 @futex_wake_op(i32* noundef %uaddr, i32 noundef %flags.1, i32* noundef %uaddr2, i32 noundef %val, i32 noundef %val2, i32 noundef %val3) #18
  %conv26 = sext i32 %call25 to i64
  br label %cleanup

sw.bb27:                                          ; preds = %if.end11
  %or28 = or i32 %flags.1, 2
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end11, %sw.bb27
  %flags.2 = phi i32 [ %flags.1, %if.end11 ], [ %or28, %sw.bb27 ]
  %call30 = call fastcc i32 @futex_lock_pi(i32* noundef %uaddr, i32 noundef %flags.2, i64* noundef %timeout, i32 noundef 0) #18
  %conv31 = sext i32 %call30 to i64
  br label %cleanup

sw.bb32:                                          ; preds = %if.end11
  %call33 = call fastcc i32 @futex_unlock_pi(i32* noundef %uaddr, i32 noundef %flags.1) #18
  %conv34 = sext i32 %call33 to i64
  br label %cleanup

sw.bb35:                                          ; preds = %if.end11
  %call36 = call fastcc i32 @futex_lock_pi(i32* noundef %uaddr, i32 noundef %flags.1, i64* noundef null, i32 noundef 1) #18
  %conv37 = sext i32 %call36 to i64
  br label %cleanup

sw.bb38:                                          ; preds = %if.end11
  store i32 -1, i32* %val3.addr, align 4
  %call39 = call fastcc i32 @futex_wait_requeue_pi(i32* noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, i64* noundef %timeout, i32* noundef %uaddr2) #18
  %conv40 = sext i32 %call39 to i64
  br label %cleanup

sw.bb41:                                          ; preds = %if.end11
  %call42 = call fastcc i32 @futex_requeue(i32* noundef %uaddr, i32 noundef %flags.1, i32* noundef %uaddr2, i32 noundef %val, i32 noundef %val2, i32* noundef nonnull %val3.addr, i32 noundef 1) #18
  %conv43 = sext i32 %call42 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb13
  %retval.0 = phi i64 [ %conv43, %sw.bb41 ], [ %conv40, %sw.bb38 ], [ %conv37, %sw.bb35 ], [ %conv34, %sw.bb32 ], [ %conv31, %sw.bb29 ], [ %conv26, %sw.bb24 ], [ %conv23, %sw.bb21 ], [ %conv20, %sw.bb18 ], [ %conv17, %sw.bb15 ], [ %conv, %sw.bb13 ], [ -38, %if.then4 ], [ -38, %if.end11 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_wait(i32* noundef %uaddr, i32 noundef %flags, i32 noundef %val, i64* noundef %abs_time, i32 noundef %bitset) unnamed_addr #0 {
entry:
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %hb = alloca %struct.futex_hash_bucket*, align 8
  %q = alloca %struct.futex_q, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !9
  %1 = bitcast %struct.futex_hash_bucket** %hb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store %struct.futex_hash_bucket* null, %struct.futex_hash_bucket** %hb, align 8, !annotation !9
  %2 = bitcast %struct.futex_q* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %2, i8* noundef align 8 dereferenceable(112) bitcast ({ %struct.plist_node, %struct.task_struct*, %struct.spinlock*, { %struct.anon.70 }, %struct.futex_pi_state*, %struct.rt_mutex_waiter*, %union.futex_key*, i32, %struct.atomic_t }* @futex_q_init to i8*), i64 112, i1 false)
  %tobool.not = icmp eq i32 %bitset, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bitset1 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 7
  store i32 %bitset, i32* %bitset1, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 131
  %5 = load i64, i64* %timer_slack_ns, align 64
  %call2 = call fastcc %struct.hrtimer_sleeper* @futex_setup_timer(i64* noundef %abs_time, %struct.hrtimer_sleeper* noundef nonnull %timeout, i32 noundef %flags, i64 noundef %5) #18
  %tobool11.not = icmp eq %struct.hrtimer_sleeper* %call2, null
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %call2, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %if.end14, %if.end
  %call3 = call fastcc i32 @futex_wait_setup(i32* noundef %uaddr, i32 noundef %val, i32 noundef %flags, %struct.futex_q* noundef nonnull %q, %struct.futex_hash_bucket** noundef nonnull %hb) #18
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %out

if.end6:                                          ; preds = %retry
  %6 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %hb, align 8
  call fastcc void @futex_wait_queue_me(%struct.futex_hash_bucket* noundef %6, %struct.futex_q* noundef nonnull %q, %struct.hrtimer_sleeper* noundef %call2) #18
  %call7 = call fastcc i32 @unqueue_me(%struct.futex_q* noundef nonnull %q) #18
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %out, label %if.end10

if.end10:                                         ; preds = %if.end6
  br i1 %tobool11.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %7 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool12.not = icmp eq %struct.task_struct* %7, null
  br i1 %tobool12.not, label %if.then34, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end10
  %call16 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %4) #18
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %retry, label %if.end19

if.end19:                                         ; preds = %if.end14
  %tobool20.not = icmp eq i64* %abs_time, null
  br i1 %tobool20.not, label %out, label %if.end22

if.end22:                                         ; preds = %if.end19
  %restart_block = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49
  %uaddr24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49, i32 2, i32 0, i32 0
  store i32* %uaddr, i32** %uaddr24, align 8
  %val26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49, i32 2, i32 0, i32 1
  store i32 %val, i32* %val26, align 8
  %8 = load i64, i64* %abs_time, align 8
  %time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49, i32 2, i32 0, i32 4
  store i64 %8, i64* %time, align 8
  %bitset29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49, i32 2, i32 0, i32 3
  store i32 %bitset, i32* %bitset29, align 8
  %or = or i32 %flags, 4
  %flags31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 49, i32 2, i32 0, i32 2
  store i32 %or, i32* %flags31, align 4
  call fastcc void @set_restart_fn(%struct.restart_block* noundef %restart_block) #18
  br label %out

out:                                              ; preds = %if.end6, %retry, %if.end19, %if.end22
  %ret.0 = phi i32 [ -516, %if.end22 ], [ -512, %if.end19 ], [ 0, %if.end6 ], [ %call3, %retry ]
  br i1 %tobool11.not, label %cleanup, label %if.then34

if.then34:                                        ; preds = %land.lhs.true, %out
  %ret.067 = phi i32 [ %ret.0, %out ], [ -110, %land.lhs.true ]
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %call2, i64 0, i32 0
  %call35 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %timer) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then34, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %ret.067, %if.then34 ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_wake(i32* noundef %uaddr, i32 noundef %flags, i32 noundef %nr_wake, i32 noundef %bitset) unnamed_addr #0 {
entry:
  %key = alloca %union.futex_key, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %union.futex_key* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %1 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #20
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %tobool.not = icmp eq i32 %bitset, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  %tobool2 = icmp ne i32 %and, 0
  %call = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %tobool2, %union.futex_key* noundef nonnull %key, i32 noundef 0) #18
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end6, label %cleanup, !prof !7

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key) #18
  %call8 = call fastcc i32 @hb_waiters_pending(%struct.futex_hash_bucket* noundef %call7) #18
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call7, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %node_list = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call7, i64 0, i32 2, i32 0
  %2 = bitcast %struct.list_head* %node_list to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to %struct.list_head*
  %cmp25.not91 = icmp eq %struct.list_head* %node_list, %4
  br i1 %cmp25.not91, label %for.end, label %for.body

for.body:                                         ; preds = %if.end11, %for.inc
  %.pn.in.in93 = phi i8* [ %.pn95, %for.inc ], [ %3, %if.end11 ]
  %ret.092 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end11 ]
  %this.094.in = getelementptr i8, i8* %.pn.in.in93, i64 -24
  %this.094 = bitcast i8* %this.094.in to %struct.futex_q*
  %.pn95.in = bitcast i8* %.pn.in.in93 to i8**
  %.pn95 = load i8*, i8** %.pn95.in, align 8
  %key29 = getelementptr i8, i8* %.pn.in.in93, i64 32
  %5 = bitcast i8* %key29 to %union.futex_key*
  %call30 = call fastcc i32 @match_futex(%union.futex_key* noundef %5, %union.futex_key* noundef nonnull %key) #18
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %for.body
  %pi_state = getelementptr i8, i8* %.pn.in.in93, i64 56
  %6 = bitcast i8* %pi_state to %struct.futex_pi_state**
  %7 = load %struct.futex_pi_state*, %struct.futex_pi_state** %6, align 8
  %tobool33.not = icmp eq %struct.futex_pi_state* %7, null
  br i1 %tobool33.not, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %if.then32
  %rt_waiter = getelementptr i8, i8* %.pn.in.in93, i64 64
  %8 = bitcast i8* %rt_waiter to %struct.rt_mutex_waiter**
  %9 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %8, align 8
  %tobool34.not = icmp eq %struct.rt_mutex_waiter* %9, null
  br i1 %tobool34.not, label %if.end36, label %for.end

if.end36:                                         ; preds = %lor.lhs.false
  %bitset37 = getelementptr i8, i8* %.pn.in.in93, i64 80
  %10 = bitcast i8* %bitset37 to i32*
  %11 = load i32, i32* %10, align 8
  %and38 = and i32 %11, %bitset
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %for.inc, label %if.end41

if.end41:                                         ; preds = %if.end36
  call fastcc void @mark_wake_futex(%struct.wake_q_head* noundef nonnull %wake_q, %struct.futex_q* noundef %this.094) #18
  %inc = add i32 %ret.092, 1
  %cmp42.not = icmp slt i32 %inc, %nr_wake
  br i1 %cmp42.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %if.end41, %if.end36
  %ret.1 = phi i32 [ %inc, %if.end41 ], [ %ret.092, %if.end36 ], [ %ret.092, %for.body ]
  %12 = bitcast i8* %.pn95 to %struct.list_head*
  %cmp25.not = icmp eq %struct.list_head* %node_list, %12
  br i1 %cmp25.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end41, %lor.lhs.false, %if.then32, %if.end11
  %ret.2 = phi i32 [ 0, %if.end11 ], [ -22, %if.then32 ], [ -22, %lor.lhs.false ], [ %inc, %if.end41 ], [ %ret.1, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %for.end
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ -22, %entry ], [ %call, %if.end ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_requeue(i32* noundef %uaddr1, i32 noundef %flags, i32* noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_requeue, i32* noundef readonly %cmpval, i32 noundef %requeue_pi) unnamed_addr #0 {
entry:
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %pi_state = alloca %struct.futex_pi_state*, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %curval = alloca i32, align 4
  %exiting = alloca %struct.task_struct*, align 8
  %0 = bitcast %union.futex_key* %key1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %1 = bitcast %union.futex_key* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %2 = bitcast %struct.futex_pi_state** %pi_state to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store %struct.futex_pi_state* null, %struct.futex_pi_state** %pi_state, align 8
  %3 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #20
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %4 = or i32 %nr_requeue, %nr_wake
  %.not = icmp sgt i32 %4, -1
  br i1 %.not, label %if.end, label %cleanup189

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %requeue_pi, 0
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp ne i32* %uaddr1, %uaddr2
  %cmp7.not = icmp eq i32 %nr_wake, 1
  %or.cond298 = and i1 %cmp4, %cmp7.not
  br i1 %or.cond298, label %if.end9, label %cleanup189

if.end9:                                          ; preds = %if.then3
  %call = call fastcc i32 @refill_pi_state_cache() #18
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end13, label %cleanup189

if.end13:                                         ; preds = %if.end9, %if.end
  %and = and i32 %flags, 1
  %tobool14 = icmp ne i32 %and, 0
  %call15371 = call fastcc i32 @get_futex_key(i32* noundef %uaddr1, i1 noundef %tobool14, %union.futex_key* noundef nonnull %key1, i32 noundef 0) #18
  %cmp16.not372 = icmp eq i32 %call15371, 0
  br i1 %cmp16.not372, label %if.end20.lr.ph, label %cleanup189, !prof !7

if.end20.lr.ph:                                   ; preds = %if.end13
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %cmp43.not = icmp eq i32* %cmpval, null
  %5 = bitcast i32* %curval to i8*
  %6 = bitcast i32* %uaddr1 to i8*
  %7 = bitcast %struct.task_struct** %exiting to i8*
  br label %if.end20

if.end20:                                         ; preds = %if.end20.lr.ph, %retry.backedge
  %call24 = call fastcc i32 @get_futex_key(i32* noundef %uaddr2, i1 noundef %tobool14, %union.futex_key* noundef nonnull %key2, i32 noundef %cond) #18
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end35, label %cleanup189, !prof !7

if.end35:                                         ; preds = %if.end20
  br i1 %tobool.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %call37 = call fastcc i32 @match_futex(%union.futex_key* noundef nonnull %key1, %union.futex_key* noundef nonnull %key2) #18
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup189

if.end40:                                         ; preds = %land.lhs.true, %if.end35
  %call41 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key1) #18
  %call42 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key2) #18
  br label %retry_private

retry_private:                                    ; preds = %if.end80, %if.end40
  call fastcc void @hb_waiters_inc(%struct.futex_hash_bucket* noundef %call42) #18
  call fastcc void @double_lock_hb(%struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42) #18
  br i1 %cmp43.not, label %if.end90, label %if.then52, !prof !8

if.then52:                                        ; preds = %retry_private
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20
  store i32 0, i32* %curval, align 4, !annotation !9
  %call53 = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr1) #18
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end85, label %if.then62, !prof !7

if.then62:                                        ; preds = %if.then52
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42) #18
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %call42) #18
  %call63 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4) #18
  %tobool64.not = icmp eq i64 %call63, 0
  br i1 %tobool64.not, label %cleanup.thread, label %if.end75

if.end75:                                         ; preds = %if.then62
  %call66 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #18
  %8 = bitcast i8* %call66 to i32*
  %9 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %8, i32 -14, i32 0) #20, !srcloc !11
  %asmresult = extractvalue { i32, i64 } %9, 0
  %tobool78.not = icmp eq i32 %asmresult, 0
  br i1 %tobool78.not, label %if.end80, label %cleanup.thread.loopexit

if.end80:                                         ; preds = %if.end75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20
  br i1 %tobool14, label %retry.backedge, label %retry_private

if.end85:                                         ; preds = %if.then52
  %10 = load i32, i32* %curval, align 4
  %11 = load i32, i32* %cmpval, align 4
  %cmp86.not = icmp eq i32 %10, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20
  br i1 %cmp86.not, label %if.end90, label %out_unlock

cleanup.thread.loopexit:                          ; preds = %if.end75
  %asmresult.le = extractvalue { i32, i64 } %9, 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then62, %cleanup.thread.loopexit
  %retval.2.ph = phi i32 [ %asmresult.le, %cleanup.thread.loopexit ], [ -14, %if.then62 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20
  br label %cleanup189

if.end90:                                         ; preds = %retry_private, %if.end85
  br i1 %tobool.not, label %if.end105, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20
  store %struct.task_struct* null, %struct.task_struct** %exiting, align 8
  %call93 = call fastcc i32 @futex_proxy_trylock_atomic(i32* noundef %uaddr2, %struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42, %union.futex_key* noundef nonnull %key1, %union.futex_key* noundef nonnull %key2, %struct.futex_pi_state** noundef nonnull %pi_state, %struct.task_struct** noundef nonnull %exiting, i32 noundef %nr_requeue) #18
  switch i32 %call93, label %cleanup102.thread323 [
    i32 0, label %cleanup102.thread318
    i32 1, label %cleanup102.thread318
    i32 -14, label %sw.bb94
    i32 -16, label %sw.bb99
    i32 -11, label %sw.bb99
  ]

cleanup102.thread323:                             ; preds = %if.then92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20
  br label %out_unlock

sw.bb94:                                          ; preds = %if.then92
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42) #18
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %call42) #18
  %call95 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr2) #18
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %cleanup102, label %cleanup102.thread

cleanup102.thread:                                ; preds = %sw.bb94
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20
  br label %cleanup189

sw.bb99:                                          ; preds = %if.then92, %if.then92
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42) #18
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %call42) #18
  %12 = load %struct.task_struct*, %struct.task_struct** %exiting, align 8
  call fastcc void @wait_for_owner_exiting(i32 noundef %call93, %struct.task_struct* noundef %12) #18
  call fastcc void @_cond_resched() #18
  br label %cleanup102

cleanup102.thread318:                             ; preds = %if.then92, %if.then92
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20
  br label %if.end105

cleanup102:                                       ; preds = %sw.bb94, %sw.bb99
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end80, %cleanup102
  %call15 = call fastcc i32 @get_futex_key(i32* noundef %uaddr1, i1 noundef %tobool14, %union.futex_key* noundef nonnull %key1, i32 noundef 0) #18
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end20, label %cleanup189, !prof !7

if.end105:                                        ; preds = %if.end90, %cleanup102.thread318
  %task_count.3 = phi i32 [ %call93, %cleanup102.thread318 ], [ 0, %if.end90 ]
  %node_list = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call41, i64 0, i32 2, i32 0
  %13 = bitcast %struct.list_head* %node_list to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.list_head*
  %cmp123.not379 = icmp ne %struct.list_head* %node_list, %15
  %sub380 = sub i32 %task_count.3, %nr_wake
  %cmp127.not381 = icmp slt i32 %sub380, %nr_requeue
  %or.cond382 = and i1 %cmp123.not379, %cmp127.not381
  %16 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  br i1 %or.cond382, label %if.end130.lr.ph, label %for.end

if.end130.lr.ph:                                  ; preds = %if.end105
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %16, i64 0, i32 1
  br label %if.end130

if.end130:                                        ; preds = %if.end130.lr.ph, %for.inc
  %task_count.4385 = phi i32 [ %task_count.3, %if.end130.lr.ph ], [ %task_count.5, %for.inc ]
  %ret.6384 = phi i32 [ 0, %if.end130.lr.ph ], [ %ret.7, %for.inc ]
  %.pn.in.in383 = phi i8* [ %14, %if.end130.lr.ph ], [ %.pn388, %for.inc ]
  %this.0.in386 = getelementptr i8, i8* %.pn.in.in383, i64 -24
  %this.0387 = bitcast i8* %this.0.in386 to %struct.futex_q*
  %.pn388.in = bitcast i8* %.pn.in.in383 to i8**
  %.pn388 = load i8*, i8** %.pn388.in, align 8
  %key = getelementptr i8, i8* %.pn.in.in383, i64 32
  %17 = bitcast i8* %key to %union.futex_key*
  %call131 = call fastcc i32 @match_futex(%union.futex_key* noundef %17, %union.futex_key* noundef nonnull %key1) #18
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %for.inc, label %if.end134

if.end134:                                        ; preds = %if.end130
  %rt_waiter141 = getelementptr i8, i8* %.pn.in.in383, i64 64
  %18 = bitcast i8* %rt_waiter141 to %struct.rt_mutex_waiter**
  %19 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %18, align 8
  %tobool142.not = icmp eq %struct.rt_mutex_waiter* %19, null
  br i1 %tobool.not, label %land.lhs.true140, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end134
  br i1 %tobool142.not, label %for.end, label %lor.lhs.false143.thread

land.lhs.true140:                                 ; preds = %if.end134
  br i1 %tobool142.not, label %lor.lhs.false143, label %for.end

lor.lhs.false143:                                 ; preds = %land.lhs.true140
  %pi_state144 = getelementptr i8, i8* %.pn.in.in383, i64 56
  %20 = bitcast i8* %pi_state144 to %struct.futex_pi_state**
  %21 = load %struct.futex_pi_state*, %struct.futex_pi_state** %20, align 8
  %tobool145.not = icmp eq %struct.futex_pi_state* %21, null
  br i1 %tobool145.not, label %if.then149, label %for.end

lor.lhs.false143.thread:                          ; preds = %land.lhs.true136
  %pi_state144328 = getelementptr i8, i8* %.pn.in.in383, i64 56
  %22 = bitcast i8* %pi_state144328 to %struct.futex_pi_state**
  %23 = load %struct.futex_pi_state*, %struct.futex_pi_state** %22, align 8
  %tobool145.not329 = icmp eq %struct.futex_pi_state* %23, null
  br i1 %tobool145.not329, label %if.end156, label %for.end

if.then149:                                       ; preds = %lor.lhs.false143
  %inc150 = add i32 %task_count.4385, 1
  %cmp151.not = icmp sgt i32 %inc150, %nr_wake
  br i1 %cmp151.not, label %if.else154, label %if.then153

if.then153:                                       ; preds = %if.then149
  call fastcc void @mark_wake_futex(%struct.wake_q_head* noundef nonnull %wake_q, %struct.futex_q* noundef %this.0387) #18
  br label %for.inc

if.else154:                                       ; preds = %if.then149
  call fastcc void @requeue_futex(%struct.futex_q* noundef %this.0387, %struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42, %union.futex_key* noundef nonnull %key2) #18
  br label %for.inc

if.end156:                                        ; preds = %lor.lhs.false143.thread
  %requeue_pi_key = getelementptr i8, i8* %.pn.in.in383, i64 72
  %24 = bitcast i8* %requeue_pi_key to %union.futex_key**
  %25 = load %union.futex_key*, %union.futex_key** %24, align 8
  %call157 = call fastcc i32 @match_futex(%union.futex_key* noundef %25, %union.futex_key* noundef nonnull %key2) #18
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %for.end, label %if.end160

if.end160:                                        ; preds = %if.end156
  call fastcc void @get_pi_state(%struct.futex_pi_state* noundef %16) #18
  %call161 = call fastcc i1 @futex_requeue_pi_prepare(%struct.futex_q* noundef %this.0387, %struct.futex_pi_state* noundef %16) #18
  br i1 %call161, label %if.end163, label %if.then162

if.then162:                                       ; preds = %if.end160
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %16) #18
  br label %for.inc

if.end163:                                        ; preds = %if.end160
  %26 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %18, align 8
  %task = getelementptr i8, i8* %.pn.in.in383, i64 16
  %27 = bitcast i8* %task to %struct.task_struct**
  %28 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %call165 = call i32 @rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex, %struct.rt_mutex_waiter* noundef %26, %struct.task_struct* noundef %28) #19
  switch i32 %call165, label %if.else174 [
    i32 1, label %if.then168
    i32 0, label %if.then172
  ]

if.then168:                                       ; preds = %if.end163
  call fastcc void @requeue_pi_wake_futex(%struct.futex_q* noundef %this.0387, %union.futex_key* noundef nonnull %key2, %struct.futex_hash_bucket* noundef %call42) #18
  %inc169 = add i32 %task_count.4385, 1
  br label %for.inc

if.then172:                                       ; preds = %if.end163
  call fastcc void @requeue_futex(%struct.futex_q* noundef %this.0387, %struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42, %union.futex_key* noundef nonnull %key2) #18
  call fastcc void @futex_requeue_pi_complete(%struct.futex_q* noundef %this.0387, i32 noundef 0) #18
  %inc173 = add i32 %task_count.4385, 1
  br label %for.inc

if.else174:                                       ; preds = %if.end163
  %this.0387.le = bitcast i8* %this.0.in386 to %struct.futex_q*
  %29 = bitcast i8* %pi_state144328 to %struct.futex_pi_state**
  store %struct.futex_pi_state* null, %struct.futex_pi_state** %29, align 8
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %16) #18
  call fastcc void @futex_requeue_pi_complete(%struct.futex_q* noundef %this.0387.le, i32 noundef %call165) #18
  br label %for.end

for.inc:                                          ; preds = %if.then168, %if.then172, %if.then153, %if.else154, %if.end130, %if.then162
  %ret.7 = phi i32 [ 1, %if.then168 ], [ 0, %if.then172 ], [ %ret.6384, %if.then162 ], [ %ret.6384, %if.then153 ], [ %ret.6384, %if.else154 ], [ %ret.6384, %if.end130 ]
  %task_count.5 = phi i32 [ %inc169, %if.then168 ], [ %inc173, %if.then172 ], [ %task_count.4385, %if.then162 ], [ %inc150, %if.then153 ], [ %inc150, %if.else154 ], [ %task_count.4385, %if.end130 ]
  %30 = bitcast i8* %.pn388 to %struct.list_head*
  %cmp123.not = icmp ne %struct.list_head* %node_list, %30
  %sub = sub i32 %task_count.5, %nr_wake
  %cmp127.not = icmp slt i32 %sub, %nr_requeue
  %or.cond = select i1 %cmp123.not, i1 %cmp127.not, i1 false
  br i1 %or.cond, label %if.end130, label %for.end

for.end:                                          ; preds = %for.inc, %lor.lhs.false143, %land.lhs.true140, %land.lhs.true136, %if.end156, %lor.lhs.false143.thread, %if.end105, %if.else174
  %task_count.4333 = phi i32 [ %task_count.4385, %if.else174 ], [ %task_count.3, %if.end105 ], [ %task_count.5, %for.inc ], [ %task_count.4385, %lor.lhs.false143 ], [ %task_count.4385, %land.lhs.true140 ], [ %task_count.4385, %land.lhs.true136 ], [ %task_count.4385, %if.end156 ], [ %task_count.4385, %lor.lhs.false143.thread ]
  %ret.8 = phi i32 [ %call165, %if.else174 ], [ 0, %if.end105 ], [ %ret.7, %for.inc ], [ -22, %lor.lhs.false143 ], [ -22, %land.lhs.true140 ], [ -22, %land.lhs.true136 ], [ -22, %if.end156 ], [ -22, %lor.lhs.false143.thread ]
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %16) #18
  br label %out_unlock

out_unlock:                                       ; preds = %if.end85, %cleanup102.thread323, %for.end
  %ret.9 = phi i32 [ %ret.8, %for.end ], [ %call93, %cleanup102.thread323 ], [ -11, %if.end85 ]
  %task_count.6 = phi i32 [ %task_count.4333, %for.end ], [ 0, %cleanup102.thread323 ], [ 0, %if.end85 ]
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call41, %struct.futex_hash_bucket* noundef %call42) #18
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #19
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %call42) #18
  %tobool187.not = icmp eq i32 %ret.9, 0
  %spec.select = select i1 %tobool187.not, i32 %task_count.6, i32 %ret.9
  br label %cleanup189

cleanup189:                                       ; preds = %retry.backedge, %if.end20, %land.lhs.true, %out_unlock, %if.end13, %cleanup102.thread, %cleanup.thread, %if.end9, %if.then3, %entry
  %retval.5 = phi i32 [ -22, %entry ], [ -22, %if.then3 ], [ -12, %if.end9 ], [ %retval.2.ph, %cleanup.thread ], [ %call95, %cleanup102.thread ], [ %call15371, %if.end13 ], [ %spec.select, %out_unlock ], [ %call15, %retry.backedge ], [ %call24, %if.end20 ], [ -22, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i32 %retval.5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_wake_op(i32* noundef %uaddr1, i32 noundef %flags, i32* noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_wake2, i32 noundef %op) unnamed_addr #0 {
entry:
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %wake_q = alloca %struct.wake_q_head, align 8
  %0 = bitcast %union.futex_key* %key1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %1 = bitcast %union.futex_key* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %2 = bitcast %struct.wake_q_head* %wake_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %wake_q, i64 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %and = and i32 %flags, 1
  %tobool = icmp ne i32 %and, 0
  %call231 = call fastcc i32 @get_futex_key(i32* noundef %uaddr1, i1 noundef %tobool, %union.futex_key* noundef nonnull %key1, i32 noundef 0) #18
  %cmp.not232 = icmp eq i32 %call231, 0
  br i1 %cmp.not232, label %if.end, label %cleanup, !prof !7

retry.loopexit:                                   ; preds = %if.end51
  %call = call fastcc i32 @get_futex_key(i32* noundef %uaddr1, i1 noundef true, %union.futex_key* noundef nonnull %key1, i32 noundef 0) #18
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !7

if.end:                                           ; preds = %entry, %retry.loopexit
  %call6 = call fastcc i32 @get_futex_key(i32* noundef %uaddr2, i1 noundef %tobool, %union.futex_key* noundef nonnull %key2, i32 noundef 1) #18
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end17, label %cleanup, !prof !7

if.end17:                                         ; preds = %if.end
  %call18 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key1) #18
  %call19 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key2) #18
  br label %retry_private

retry_private:                                    ; preds = %if.end51, %if.end17
  call fastcc void @double_lock_hb(%struct.futex_hash_bucket* noundef %call18, %struct.futex_hash_bucket* noundef %call19) #18
  %call20 = call fastcc i32 @futex_atomic_op_inuser(i32 noundef %op, i32* noundef %uaddr2) #18
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then30, label %if.end57, !prof !8

if.then30:                                        ; preds = %retry_private
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call18, %struct.futex_hash_bucket* noundef %call19) #18
  switch i32 %call20, label %cleanup [
    i32 -14, label %if.then46
    i32 -11, label %if.end51
  ]

if.then46:                                        ; preds = %if.then30
  %call47 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr2) #18
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end51, label %cleanup

if.end51:                                         ; preds = %if.then30, %if.then46
  call fastcc void @_cond_resched() #18
  br i1 %tobool, label %retry.loopexit, label %retry_private

if.end57:                                         ; preds = %retry_private
  %node_list = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call18, i64 0, i32 2, i32 0
  %3 = bitcast %struct.list_head* %node_list to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.list_head*
  %cmp72.not238 = icmp eq %struct.list_head* %node_list, %5
  br i1 %cmp72.not238, label %for.end, label %for.body

for.body:                                         ; preds = %if.end57, %for.inc
  %.pn.in.in240 = phi i8* [ %.pn242, %for.inc ], [ %4, %if.end57 ]
  %ret.2239 = phi i32 [ %ret.3, %for.inc ], [ 0, %if.end57 ]
  %this.0241.in = getelementptr i8, i8* %.pn.in.in240, i64 -24
  %this.0241 = bitcast i8* %this.0241.in to %struct.futex_q*
  %.pn242.in = bitcast i8* %.pn.in.in240 to i8**
  %.pn242 = load i8*, i8** %.pn242.in, align 8
  %key = getelementptr i8, i8* %.pn.in.in240, i64 32
  %6 = bitcast i8* %key to %union.futex_key*
  %call76 = call fastcc i32 @match_futex(%union.futex_key* noundef %6, %union.futex_key* noundef nonnull %key1) #18
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.inc, label %if.then78

if.then78:                                        ; preds = %for.body
  %pi_state = getelementptr i8, i8* %.pn.in.in240, i64 56
  %7 = bitcast i8* %pi_state to %struct.futex_pi_state**
  %8 = load %struct.futex_pi_state*, %struct.futex_pi_state** %7, align 8
  %tobool79.not = icmp eq %struct.futex_pi_state* %8, null
  br i1 %tobool79.not, label %lor.lhs.false, label %out_unlock

lor.lhs.false:                                    ; preds = %if.then78
  %rt_waiter = getelementptr i8, i8* %.pn.in.in240, i64 64
  %9 = bitcast i8* %rt_waiter to %struct.rt_mutex_waiter**
  %10 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %9, align 8
  %tobool80.not = icmp eq %struct.rt_mutex_waiter* %10, null
  br i1 %tobool80.not, label %if.end82, label %out_unlock

if.end82:                                         ; preds = %lor.lhs.false
  call fastcc void @mark_wake_futex(%struct.wake_q_head* noundef nonnull %wake_q, %struct.futex_q* noundef %this.0241) #18
  %inc = add i32 %ret.2239, 1
  %cmp83.not = icmp slt i32 %inc, %nr_wake
  br i1 %cmp83.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %if.end82
  %ret.3 = phi i32 [ %inc, %if.end82 ], [ %ret.2239, %for.body ]
  %11 = bitcast i8* %.pn242 to %struct.list_head*
  %cmp72.not = icmp eq %struct.list_head* %node_list, %11
  br i1 %cmp72.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end82, %if.end57
  %ret.4 = phi i32 [ 0, %if.end57 ], [ %inc, %if.end82 ], [ %ret.3, %for.inc ]
  %cmp97 = icmp sgt i32 %call20, 0
  br i1 %cmp97, label %if.then99, label %out_unlock

if.then99:                                        ; preds = %for.end
  %node_list102 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call19, i64 0, i32 2, i32 0
  %12 = bitcast %struct.list_head* %node_list102 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.list_head*
  %cmp123.not249 = icmp eq %struct.list_head* %node_list102, %14
  br i1 %cmp123.not249, label %for.end155, label %for.body127

for.body127:                                      ; preds = %if.then99, %for.inc145
  %.pn219.in.in251 = phi i8* [ %.pn219253, %for.inc145 ], [ %13, %if.then99 ]
  %op_ret.0250 = phi i32 [ %op_ret.1, %for.inc145 ], [ 0, %if.then99 ]
  %this.1252.in = getelementptr i8, i8* %.pn219.in.in251, i64 -24
  %this.1252 = bitcast i8* %this.1252.in to %struct.futex_q*
  %.pn219253.in = bitcast i8* %.pn219.in.in251 to i8**
  %.pn219253 = load i8*, i8** %.pn219253.in, align 8
  %key128 = getelementptr i8, i8* %.pn219.in.in251, i64 32
  %15 = bitcast i8* %key128 to %union.futex_key*
  %call129 = call fastcc i32 @match_futex(%union.futex_key* noundef %15, %union.futex_key* noundef nonnull %key2) #18
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %for.inc145, label %if.then131

if.then131:                                       ; preds = %for.body127
  %pi_state132 = getelementptr i8, i8* %.pn219.in.in251, i64 56
  %16 = bitcast i8* %pi_state132 to %struct.futex_pi_state**
  %17 = load %struct.futex_pi_state*, %struct.futex_pi_state** %16, align 8
  %tobool133.not = icmp eq %struct.futex_pi_state* %17, null
  br i1 %tobool133.not, label %lor.lhs.false134, label %out_unlock

lor.lhs.false134:                                 ; preds = %if.then131
  %rt_waiter135 = getelementptr i8, i8* %.pn219.in.in251, i64 64
  %18 = bitcast i8* %rt_waiter135 to %struct.rt_mutex_waiter**
  %19 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %18, align 8
  %tobool136.not = icmp eq %struct.rt_mutex_waiter* %19, null
  br i1 %tobool136.not, label %if.end138, label %out_unlock

if.end138:                                        ; preds = %lor.lhs.false134
  call fastcc void @mark_wake_futex(%struct.wake_q_head* noundef nonnull %wake_q, %struct.futex_q* noundef %this.1252) #18
  %inc139 = add i32 %op_ret.0250, 1
  %cmp140.not = icmp slt i32 %inc139, %nr_wake2
  br i1 %cmp140.not, label %for.inc145, label %for.end155

for.inc145:                                       ; preds = %for.body127, %if.end138
  %op_ret.1 = phi i32 [ %inc139, %if.end138 ], [ %op_ret.0250, %for.body127 ]
  %20 = bitcast i8* %.pn219253 to %struct.list_head*
  %cmp123.not = icmp eq %struct.list_head* %node_list102, %20
  br i1 %cmp123.not, label %for.end155, label %for.body127

for.end155:                                       ; preds = %for.inc145, %if.end138, %if.then99
  %op_ret.2 = phi i32 [ 0, %if.then99 ], [ %inc139, %if.end138 ], [ %op_ret.1, %for.inc145 ]
  %add = add i32 %op_ret.2, %ret.4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then78, %lor.lhs.false, %if.then131, %lor.lhs.false134, %for.end, %for.end155
  %ret.5 = phi i32 [ %add, %for.end155 ], [ %ret.4, %for.end ], [ -22, %lor.lhs.false134 ], [ -22, %if.then131 ], [ -22, %lor.lhs.false ], [ -22, %if.then78 ]
  call fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %call18, %struct.futex_hash_bucket* noundef %call19) #18
  call void @wake_up_q(%struct.wake_q_head* noundef nonnull %wake_q) #19
  br label %cleanup

cleanup:                                          ; preds = %retry.loopexit, %if.end, %if.then46, %if.then30, %entry, %out_unlock
  %retval.0 = phi i32 [ %ret.5, %out_unlock ], [ %call231, %entry ], [ %call47, %if.then46 ], [ %call20, %if.then30 ], [ %call, %retry.loopexit ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_lock_pi(i32* noundef %uaddr, i32 noundef %flags, i64* noundef %time, i32 noundef %trylock) unnamed_addr #0 {
entry:
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %exiting = alloca %struct.task_struct*, align 8
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %q = alloca %struct.futex_q, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !9
  %1 = bitcast %struct.task_struct** %exiting to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store %struct.task_struct* null, %struct.task_struct** %exiting, align 8
  %2 = bitcast %struct.rt_mutex_waiter* %rt_waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false), !annotation !9
  %3 = bitcast %struct.futex_q* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %3) #20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %3, i8* noundef align 8 dereferenceable(112) bitcast ({ %struct.plist_node, %struct.task_struct*, %struct.spinlock*, { %struct.anon.70 }, %struct.futex_pi_state*, %struct.rt_mutex_waiter*, %union.futex_key*, i32, %struct.atomic_t }* @futex_q_init to i8*), i64 112, i1 false)
  %call = call fastcc i32 @refill_pi_state_cache() #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup123

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.hrtimer_sleeper* @futex_setup_timer(i64* noundef %time, %struct.hrtimer_sleeper* noundef nonnull %timeout, i32 noundef %flags, i64 noundef 0) #18
  %and = and i32 %flags, 1
  %tobool2 = icmp ne i32 %and, 0
  %key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %call3202 = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %tobool2, %union.futex_key* noundef %key, i32 noundef 1) #18
  %cmp.not203 = icmp eq i32 %call3202, 0
  br i1 %cmp.not203, label %retry_private.preheader.lr.ph, label %out, !prof !7

retry_private.preheader.lr.ph:                    ; preds = %if.end
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  br label %retry_private

retry_private:                                    ; preds = %retry_private.backedge, %retry_private.preheader.lr.ph
  %call8 = call fastcc %struct.futex_hash_bucket* @queue_lock(%struct.futex_q* noundef nonnull %q) #18
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call11 = call fastcc i32 @futex_lock_pi_atomic(i32* noundef %uaddr, %struct.futex_hash_bucket* noundef %call8, %union.futex_key* noundef %key, %struct.futex_pi_state** noundef %pi_state, %struct.task_struct* noundef %5, %struct.task_struct** noundef nonnull %exiting, i32 noundef 0) #18
  switch i32 %call11, label %out_unlock_put_key.loopexit [
    i32 0, label %if.end24
    i32 1, label %out_unlock_put_key
    i32 -14, label %uaddr_faulted
    i32 -16, label %sw.bb22
    i32 -11, label %sw.bb22
  ], !prof !12

sw.bb22:                                          ; preds = %retry_private, %retry_private
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %call8) #18
  %6 = load %struct.task_struct*, %struct.task_struct** %exiting, align 8
  call fastcc void @wait_for_owner_exiting(i32 noundef %call11, %struct.task_struct* noundef %6) #18
  call fastcc void @_cond_resched() #18
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end118, %sw.bb22
  %call3 = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %tobool2, %union.futex_key* noundef %key, i32 noundef 1) #18
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %retry_private.backedge, label %out, !prof !7

if.end24:                                         ; preds = %retry_private
  %7 = inttoptr i64 %4 to %struct.task_struct*
  %8 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool26.not = icmp eq %struct.futex_pi_state* %8, null
  br i1 %tobool26.not, label %if.then41, label %if.end42, !prof !8

if.then41:                                        ; preds = %if.end24
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 3080; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !13
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end24
  call fastcc void @__queue_me(%struct.futex_q* noundef nonnull %q, %struct.futex_hash_bucket* noundef %call8) #18
  %tobool51.not = icmp eq i32 %trylock, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.end42
  %9 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %9, i64 0, i32 1
  %call54 = call i32 @rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef %pi_mutex) #19
  %tobool55.not = icmp eq i32 %call54, 0
  %cond = select i1 %tobool55.not, i32 -11, i32 0
  br label %no_block

if.end56:                                         ; preds = %if.end42
  call fastcc void @rt_mutex_init_waiter(%struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #18
  %10 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %wait_lock = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %10, i64 0, i32 1, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %11 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %12 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %pi_mutex60 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %12, i64 0, i32 1
  %call62 = call i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex60, %struct.rt_mutex_waiter* noundef nonnull %rt_waiter, %struct.task_struct* noundef %7) #19
  %13 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %wait_lock65 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %13, i64 0, i32 1, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock65) #18
  switch i32 %call62, label %cleanup.thread169 [
    i32 0, label %if.end72
    i32 1, label %cleanup.thread
  ]

cleanup.thread169:                                ; preds = %if.end56
  %14 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i164171 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i164171) #19
  br label %land.lhs.true

cleanup.thread:                                   ; preds = %if.end56
  %15 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i164167 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i164167) #19
  br label %no_block

if.end72:                                         ; preds = %if.end56
  %tobool73.not = icmp eq %struct.hrtimer_sleeper* %call1, null
  br i1 %tobool73.not, label %cleanup, label %if.then81, !prof !7

if.then81:                                        ; preds = %if.end72
  call void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef nonnull %call1, i32 noundef 0) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then81
  %16 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %pi_mutex84 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %16, i64 0, i32 1
  %call85 = call i32 @rt_mutex_wait_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex84, %struct.hrtimer_sleeper* noundef %call1, %struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #19
  %17 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i164 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i164) #19
  %tobool87.not = icmp eq i32 %call85, 0
  br i1 %tobool87.not, label %no_block, label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.thread169, %cleanup
  %ret.0173 = phi i32 [ %call62, %cleanup.thread169 ], [ %call85, %cleanup ]
  %18 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %pi_mutex89 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %18, i64 0, i32 1
  %call90 = call i1 @rt_mutex_cleanup_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex89, %struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #19
  %spec.select = select i1 %call90, i32 %ret.0173, i32 0
  br label %no_block

no_block:                                         ; preds = %cleanup.thread, %land.lhs.true, %cleanup, %if.then52
  %ret.1 = phi i32 [ %cond, %if.then52 ], [ 0, %cleanup ], [ %spec.select, %land.lhs.true ], [ 0, %cleanup.thread ]
  %tobool93.not = icmp eq i32 %ret.1, 0
  %lnot.ext95 = zext i1 %tobool93.not to i32
  %call96 = call fastcc i32 @fixup_owner(i32* noundef %uaddr, %struct.futex_q* noundef nonnull %q, i32 noundef %lnot.ext95) #18
  %tobool97.not = icmp eq i32 %call96, 0
  %cmp99 = icmp slt i32 %call96, 0
  %cond101 = select i1 %cmp99, i32 %call96, i32 0
  %ret.2 = select i1 %tobool97.not, i32 %ret.1, i32 %cond101
  call fastcc void @unqueue_me_pi(%struct.futex_q* noundef nonnull %q) #18
  %lock_ptr103 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %19 = load %struct.spinlock*, %struct.spinlock** %lock_ptr103, align 8
  %rlock.i165 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i165) #19
  br label %out

out_unlock_put_key.loopexit:                      ; preds = %retry_private
  br label %out_unlock_put_key

out_unlock_put_key:                               ; preds = %retry_private, %out_unlock_put_key.loopexit
  %ret.3 = phi i32 [ %call11, %out_unlock_put_key.loopexit ], [ 0, %retry_private ]
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %call8) #18
  br label %out

out:                                              ; preds = %retry.backedge, %uaddr_faulted, %if.end, %out_unlock_put_key, %no_block
  %ret.4 = phi i32 [ %ret.3, %out_unlock_put_key ], [ %ret.2, %no_block ], [ %call3202, %if.end ], [ %call3, %retry.backedge ], [ %call115, %uaddr_faulted ]
  %tobool104.not = icmp eq %struct.hrtimer_sleeper* %call1, null
  br i1 %tobool104.not, label %if.end108, label %if.then105

if.then105:                                       ; preds = %out
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %call1, i64 0, i32 0
  %call106 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %timer) #19
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %out
  %cmp109.not = icmp eq i32 %ret.4, -4
  %cond114 = select i1 %cmp109.not, i32 -513, i32 %ret.4
  br label %cleanup123

uaddr_faulted:                                    ; preds = %retry_private
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %call8) #18
  %call115 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr) #18
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %out

if.end118:                                        ; preds = %uaddr_faulted
  br i1 %tobool2, label %retry.backedge, label %retry_private.backedge

retry_private.backedge:                           ; preds = %if.end118, %retry.backedge
  br label %retry_private

cleanup123:                                       ; preds = %entry, %if.end108
  %retval.0 = phi i32 [ %cond114, %if.end108 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_unlock_pi(i32* noundef %uaddr, i32 noundef %flags) unnamed_addr #0 {
entry:
  %curval = alloca i32, align 4
  %key = alloca %union.futex_key, align 8
  %0 = bitcast i32* %curval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %curval, align 4, !annotation !9
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #18
  %3 = bitcast %union.futex_key* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = bitcast i32* %uaddr to i8*
  %call2156 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 4) #18
  %tobool.not157 = icmp eq i64 %call2156, 0
  br i1 %tobool.not157, label %cleanup81, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %and19 = and i32 %flags, 1
  %tobool20 = icmp ne i32 %and19, 0
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %retry.backedge
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #18
  %5 = bitcast i8* %call3 to i32*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %5, i32 -14, i32 0) #20, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %6, 0
  %asmresult7 = extractvalue { i32, i64 } %6, 1
  %conv = trunc i64 %asmresult7 to i32
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup81

if.end15:                                         ; preds = %if.end
  %and = and i32 %conv, 1073741823
  %cmp.not = icmp eq i32 %and, %call1
  br i1 %cmp.not, label %if.end18, label %cleanup81

if.end18:                                         ; preds = %if.end15
  %call21 = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %tobool20, %union.futex_key* noundef nonnull %key, i32 noundef 1) #18
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup81

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key) #18
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call25, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call26 = call fastcc %struct.futex_q* @futex_top_waiter(%struct.futex_hash_bucket* noundef %call25, %union.futex_key* noundef nonnull %key) #18
  %tobool27.not = icmp eq %struct.futex_q* %call26, null
  br i1 %tobool27.not, label %if.end51, label %if.then28

if.then28:                                        ; preds = %if.end24
  %pi_state29 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call26, i64 0, i32 4
  %7 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state29, align 8
  %tobool30.not = icmp eq %struct.futex_pi_state* %7, null
  br i1 %tobool30.not, label %out_unlock, label %if.end32

if.end32:                                         ; preds = %if.then28
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %7, i64 0, i32 2
  %8 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %cmp34.not = icmp eq %struct.task_struct* %8, %2
  br i1 %cmp34.not, label %if.end37, label %out_unlock

if.end37:                                         ; preds = %if.end32
  call fastcc void @get_pi_state(%struct.futex_pi_state* noundef nonnull %7) #18
  %wait_lock = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %7, i64 0, i32 1, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call39 = call fastcc i32 @wake_futex_pi(i32* noundef %uaddr, i32 noundef %conv, %struct.futex_pi_state* noundef nonnull %7) #18
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef nonnull %7) #18
  switch i32 %call39, label %cleanup81 [
    i32 -11, label %pi_retry
    i32 -14, label %pi_faulted
  ]

if.end51:                                         ; preds = %if.end24
  %call52 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr, i32 noundef %conv, i32 noundef 0) #18
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end71, label %if.then54

if.then54:                                        ; preds = %if.end51
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  switch i32 %call52, label %if.then61 [
    i32 -14, label %pi_faulted
    i32 -11, label %pi_retry
  ]

if.then61:                                        ; preds = %if.then54
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 3296; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !15
  br label %cleanup81

if.end71:                                         ; preds = %if.end51
  %asmresult7.le = extractvalue { i32, i64 } %6, 1
  %conv.le = trunc i64 %asmresult7.le to i32
  %9 = load i32, i32* %curval, align 4
  %cmp72 = icmp eq i32 %9, %conv.le
  %cond = select i1 %cmp72, i32 0, i32 -11
  br label %out_unlock

out_unlock:                                       ; preds = %if.end32, %if.then28, %if.end71
  %ret.1 = phi i32 [ %cond, %if.end71 ], [ -22, %if.then28 ], [ -22, %if.end32 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %cleanup81

pi_retry:                                         ; preds = %if.end37, %if.then54
  call fastcc void @_cond_resched() #18
  br label %retry.backedge

retry.backedge:                                   ; preds = %pi_retry, %pi_faulted
  %call2 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup81, label %if.end

pi_faulted:                                       ; preds = %if.end37, %if.then54
  %call77 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr) #18
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %retry.backedge, label %cleanup81

cleanup81:                                        ; preds = %if.end37, %if.end, %if.end15, %if.end18, %pi_faulted, %retry.backedge, %entry, %out_unlock, %if.then61
  %retval.4 = phi i32 [ %ret.1, %out_unlock ], [ %call52, %if.then61 ], [ -14, %entry ], [ %call39, %if.end37 ], [ -14, %retry.backedge ], [ %call77, %pi_faulted ], [ %call21, %if.end18 ], [ -1, %if.end15 ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_wait_requeue_pi(i32* noundef %uaddr, i32 noundef %flags, i32 noundef %val, i64* noundef %abs_time, i32* noundef %uaddr2) unnamed_addr #0 {
entry:
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %hb = alloca %struct.futex_hash_bucket*, align 8
  %key2 = alloca %union.futex_key, align 8
  %q = alloca %struct.futex_q, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !9
  %1 = bitcast %struct.rt_mutex_waiter* %rt_waiter to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false), !annotation !9
  %2 = bitcast %struct.futex_hash_bucket** %hb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store %struct.futex_hash_bucket* null, %struct.futex_hash_bucket** %hb, align 8, !annotation !9
  %3 = bitcast %union.futex_key* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = bitcast %struct.futex_q* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %4, i8* noundef align 8 dereferenceable(112) bitcast ({ %struct.plist_node, %struct.task_struct*, %struct.spinlock*, { %struct.anon.70 }, %struct.futex_pi_state*, %struct.rt_mutex_waiter*, %union.futex_key*, i32, %struct.atomic_t }* @futex_q_init to i8*), i64 112, i1 false)
  %cmp = icmp eq i32* %uaddr, %uaddr2
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 131
  %7 = load i64, i64* %timer_slack_ns, align 64
  %call3 = call fastcc %struct.hrtimer_sleeper* @futex_setup_timer(i64* noundef %abs_time, %struct.hrtimer_sleeper* noundef nonnull %timeout, i32 noundef %flags, i64 noundef %7) #18
  call fastcc void @rt_mutex_init_waiter(%struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #18
  %and = and i32 %flags, 1
  %tobool4 = icmp ne i32 %and, 0
  %call5 = call fastcc i32 @get_futex_key(i32* noundef %uaddr2, i1 noundef %tobool4, %union.futex_key* noundef nonnull %key2, i32 noundef 1) #18
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end10, label %out, !prof !7

if.end10:                                         ; preds = %if.end2
  %bitset11 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 7
  store i32 -1, i32* %bitset11, align 8
  %rt_waiter12 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 5
  store %struct.rt_mutex_waiter* %rt_waiter, %struct.rt_mutex_waiter** %rt_waiter12, align 8
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 6
  store %union.futex_key* %key2, %union.futex_key** %requeue_pi_key, align 8
  %call13 = call fastcc i32 @futex_wait_setup(i32* noundef %uaddr, i32 noundef %val, i32 noundef %flags, %struct.futex_q* noundef nonnull %q, %struct.futex_hash_bucket** noundef nonnull %hb) #18
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out

if.end16:                                         ; preds = %if.end10
  %key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %call17 = call fastcc i32 @match_futex(%union.futex_key* noundef %key, %union.futex_key* noundef nonnull %key2) #18
  %tobool18.not = icmp eq i32 %call17, 0
  %8 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %hb, align 8
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %8) #18
  br label %out

if.end20:                                         ; preds = %if.end16
  call fastcc void @futex_wait_queue_me(%struct.futex_hash_bucket* noundef %8, %struct.futex_q* noundef nonnull %q, %struct.hrtimer_sleeper* noundef %call3) #18
  %call21 = call fastcc i32 @futex_requeue_pi_wakeup_sync(%struct.futex_q* noundef nonnull %q) #18
  switch i32 %call21, label %do.body [
    i32 1, label %sw.bb
    i32 5, label %sw.bb24
    i32 4, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end20
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %8, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %call22 = call fastcc i32 @handle_early_requeue_pi_wakeup(%struct.futex_hash_bucket* noundef %8, %struct.futex_q* noundef nonnull %q, %struct.hrtimer_sleeper* noundef %call3) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %out

sw.bb24:                                          ; preds = %if.end20
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %9 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool25.not = icmp eq %struct.futex_pi_state* %9, null
  br i1 %tobool25.not, label %out, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb24
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %9, i64 0, i32 2
  %10 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %cmp28.not = icmp eq %struct.task_struct* %10, %6
  br i1 %cmp28.not, label %out, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %11 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i3) #19
  %call31 = call fastcc i32 @fixup_owner(i32* noundef %uaddr2, %struct.futex_q* noundef nonnull %q, i32 noundef 1) #18
  %12 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %12) #18
  %13 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i4) #19
  %cmp34 = icmp slt i32 %call31, 0
  %cond = select i1 %cmp34, i32 %call31, i32 0
  br label %out

sw.bb37:                                          ; preds = %if.end20
  %pi_state38 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %14 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state38, align 8
  %pi_mutex39 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %14, i64 0, i32 1
  %call40 = call i32 @rt_mutex_wait_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex39, %struct.hrtimer_sleeper* noundef %call3, %struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #19
  %lock_ptr41 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %15 = load %struct.spinlock*, %struct.spinlock** %lock_ptr41, align 8
  %rlock.i5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i5) #19
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end46, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %sw.bb37
  %call44 = call i1 @rt_mutex_cleanup_proxy_lock(%struct.rt_mutex_base* noundef %pi_mutex39, %struct.rt_mutex_waiter* noundef nonnull %rt_waiter) #19
  %spec.select = select i1 %call44, i32 %call40, i32 0
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true43, %sw.bb37
  %ret.0 = phi i32 [ 0, %sw.bb37 ], [ %spec.select, %land.lhs.true43 ]
  %tobool47.not = icmp eq i32 %ret.0, 0
  %lnot.ext49 = zext i1 %tobool47.not to i32
  %call50 = call fastcc i32 @fixup_owner(i32* noundef %uaddr2, %struct.futex_q* noundef nonnull %q, i32 noundef %lnot.ext49) #18
  %tobool51.not = icmp eq i32 %call50, 0
  %cmp53 = icmp slt i32 %call50, 0
  %cond58 = select i1 %cmp53, i32 %call50, i32 0
  %ret.1 = select i1 %tobool51.not, i32 %ret.0, i32 %cond58
  call fastcc void @unqueue_me_pi(%struct.futex_q* noundef nonnull %q) #18
  %16 = load %struct.spinlock*, %struct.spinlock** %lock_ptr41, align 8
  %rlock.i6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i6) #19
  %cmp61 = icmp eq i32 %ret.1, -4
  %spec.select1 = select i1 %cmp61, i32 -11, i32 %ret.1
  br label %out

do.body:                                          ; preds = %if.end20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 3531; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !16
  unreachable

out:                                              ; preds = %if.end46, %sw.bb, %if.then30, %land.lhs.true, %sw.bb24, %if.end10, %if.end2, %if.then19
  %ret.2 = phi i32 [ %call5, %if.end2 ], [ %call13, %if.end10 ], [ -22, %if.then19 ], [ %cond, %if.then30 ], [ 0, %land.lhs.true ], [ 0, %sw.bb24 ], [ %call22, %sw.bb ], [ %spec.select1, %if.end46 ]
  %tobool68.not = icmp eq %struct.hrtimer_sleeper* %call3, null
  br i1 %tobool68.not, label %cleanup, label %if.then69

if.then69:                                        ; preds = %out
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %call3, i64 0, i32 0
  %call70 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %timer) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then69, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %ret.2, %if.then69 ], [ %ret.2, %out ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_futex(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_futex(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_futex(i64 noundef %uaddr, i64 noundef %op, i64 noundef %val, i64 noundef %utime, i64 noundef %uaddr2, i64 noundef %val3) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %uaddr to i32*
  %conv = trunc i64 %op to i32
  %conv1 = trunc i64 %val to i32
  %1 = inttoptr i64 %utime to %struct.__kernel_timespec*
  %2 = inttoptr i64 %uaddr2 to i32*
  %conv2 = trunc i64 %val3 to i32
  %call = call fastcc i64 @__do_sys_futex(i32* noundef %0, i32 noundef %conv, i32 noundef %conv1, %struct.__kernel_timespec* noundef %1, i32* noundef %2, i32 noundef %conv2) #18
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @futex_init() #4 section ".init.text" {
entry:
  %futex_shift = alloca i32, align 4
  %0 = bitcast i32* %futex_shift to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %futex_shift, align 4, !annotation !9
  %call = call fastcc i32 @cpumask_weight() #18
  %mul = shl i32 %call, 8
  %conv = zext i32 %mul to i64
  %call1 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv) #22
  store i64 %call1, i64* @__futex_data.1, align 16
  %cmp = icmp ult i64 %call1, 256
  %cond = select i1 %cmp, i32 2, i32 0
  %call3 = call i8* @alloc_large_system_hash(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 noundef 64, i64 noundef %call1, i32 noundef 0, i32 noundef %cond, i32* noundef nonnull %futex_shift, i32* noundef null, i64 noundef %call1, i64 noundef %call1) #19
  store i8* %call3, i8** bitcast (%struct.futex_hash_bucket** @__futex_data.0 to i8**), align 16
  %1 = load i32, i32* %futex_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl nuw i64 1, %sh_prom
  store i64 %shl, i64* @__futex_data.1, align 16
  %.cast = bitcast i8* %call3 to %struct.futex_hash_bucket*
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.017 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %counter.i = getelementptr %struct.futex_hash_bucket, %struct.futex_hash_bucket* %.cast, i64 %i.017, i32 0, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %chain = getelementptr %struct.futex_hash_bucket, %struct.futex_hash_bucket* %.cast, i64 %i.017, i32 2
  call fastcc void @plist_head_init(%struct.plist_head* noundef %chain) #18
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr %struct.futex_hash_bucket, %struct.futex_hash_bucket* %.cast, i64 %i.017, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %inc = add nuw i64 %i.017, 1
  %exitcond.not = icmp eq i64 %inc, %shl
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc i64 @__do_sys_set_robust_list(%struct.robust_list_head* noundef %head, i64 noundef %len) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i64 %len, 24
  br i1 %cmp.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %robust_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 116
  store %struct.robust_list_head* %head, %struct.robust_list_head** %robust_list, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_get_robust_list(i32 noundef %pid, %struct.robust_list_head** noundef %head_ptr, i64* noundef %len_ptr) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #19
  %tobool2.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool2.not, label %err_unlock, label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %p.0 = phi %struct.task_struct* [ %call1, %if.else ], [ %1, %if.then ]
  %call5 = call i1 @ptrace_may_access(%struct.task_struct* noundef %p.0, i32 noundef 17) #19
  br i1 %call5, label %if.end7, label %err_unlock

if.end7:                                          ; preds = %if.end4
  %robust_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.0, i64 0, i32 116
  %2 = load %struct.robust_list_head*, %struct.robust_list_head** %robust_list, align 8
  call fastcc void @rcu_read_unlock() #18
  %3 = bitcast i64* %len_ptr to i8*
  %call8 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 8) #18
  %tobool9.not = icmp eq i64 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #18
  %4 = bitcast i8* %call11 to i64*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 24, i64* %4, i32 -14, i32 0) #20, !srcloc !17
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.then10
  %6 = bitcast %struct.robust_list_head** %head_ptr to i8*
  %call28 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 8) #18
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.end24
  %call31 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #18
  %7 = bitcast i8* %call31 to %struct.robust_list_head**
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(%struct.robust_list_head* %2, %struct.robust_list_head** %7, i32 -14, i32 0) #20, !srcloc !18
  %phi.cast = sext i32 %8 to i64
  br label %cleanup

err_unlock:                                       ; preds = %if.end4, %if.else
  %ret.0 = phi i64 [ -1, %if.end4 ], [ -3, %if.else ]
  call fastcc void @rcu_read_unlock() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then30, %if.end24, %if.then10, %err_unlock
  %retval.0 = phi i64 [ %ret.0, %err_unlock ], [ -14, %if.then10 ], [ %phi.cast, %if.then30 ], [ -14, %if.end24 ], [ -14, %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #20, !srcloc !19
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #20, !srcloc !20
  call void asm sideeffect "hint #20", "~{memory}"() #20, !srcloc !21
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !23
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_enable() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #20, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #20, !srcloc !29
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @exit_robust_list(%struct.task_struct* noundef %curr) unnamed_addr #0 {
entry:
  %entry1 = alloca %struct.robust_list*, align 8
  %next_entry = alloca %struct.robust_list*, align 8
  %pending = alloca %struct.robust_list*, align 8
  %pi = alloca i32, align 4
  %pip = alloca i32, align 4
  %next_pi = alloca i32, align 4
  %robust_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %curr, i64 0, i32 116
  %0 = load %struct.robust_list_head*, %struct.robust_list_head** %robust_list, align 8
  %1 = bitcast %struct.robust_list** %entry1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store %struct.robust_list* null, %struct.robust_list** %entry1, align 8, !annotation !9
  %2 = bitcast %struct.robust_list** %next_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  %3 = bitcast %struct.robust_list** %pending to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  store %struct.robust_list* null, %struct.robust_list** %pending, align 8, !annotation !9
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #20
  store i32 0, i32* %pi, align 4, !annotation !9
  %5 = bitcast i32* %pip to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20
  store i32 0, i32* %pip, align 4, !annotation !9
  %6 = bitcast i32* %next_pi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20
  store i32 0, i32* %next_pi, align 4, !annotation !9
  %list = getelementptr inbounds %struct.robust_list_head, %struct.robust_list_head* %0, i64 0, i32 0
  %next = getelementptr inbounds %struct.robust_list_head, %struct.robust_list_head* %0, i64 0, i32 0, i32 0
  %call = call fastcc i32 @fetch_robust_entry(%struct.robust_list** noundef nonnull %entry1, %struct.robust_list** noundef %next, i32* noundef nonnull %pi) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %futex_offset2 = getelementptr inbounds %struct.robust_list_head, %struct.robust_list_head* %0, i64 0, i32 1
  %7 = bitcast i64* %futex_offset2 to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %7, i64 noundef 8) #18
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %7) #18
  %8 = bitcast i8* %call6 to i64*
  %9 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %8, i32 -14, i32 0) #20, !srcloc !30
  %asmresult = extractvalue { i32, i64 } %9, 0
  %asmresult10 = extractvalue { i32, i64 } %9, 1
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end14
  %list_op_pending = getelementptr inbounds %struct.robust_list_head, %struct.robust_list_head* %0, i64 0, i32 2
  %call20 = call fastcc i32 @fetch_robust_entry(%struct.robust_list** noundef nonnull %pending, %struct.robust_list** noundef %list_op_pending, i32* noundef nonnull %pip) #18
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end19
  store %struct.robust_list* null, %struct.robust_list** %next_entry, align 8
  %entry1.promoted = load %struct.robust_list*, %struct.robust_list** %entry1, align 8
  %pi.promoted = load i32, i32* %pi, align 4
  %cmp.not79 = icmp eq %struct.robust_list* %entry1.promoted, %list
  %.pre = load %struct.robust_list*, %struct.robust_list** %pending, align 8
  br i1 %cmp.not79, label %while.end, label %while.body

while.body:                                       ; preds = %if.end23, %if.end40
  %limit.080 = phi i32 [ %dec, %if.end40 ], [ 2048, %if.end23 ]
  %10 = phi %struct.robust_list* [ %14, %if.end40 ], [ %entry1.promoted, %if.end23 ]
  %11 = phi i32 [ %15, %if.end40 ], [ %pi.promoted, %if.end23 ]
  %next25 = getelementptr inbounds %struct.robust_list, %struct.robust_list* %10, i64 0, i32 0
  %call26 = call fastcc i32 @fetch_robust_entry(%struct.robust_list** noundef nonnull %next_entry, %struct.robust_list** noundef %next25, i32* noundef nonnull %next_pi) #18
  %cmp27.not = icmp eq %struct.robust_list* %10, %.pre
  br i1 %cmp27.not, label %if.end34, label %if.then28

if.then28:                                        ; preds = %while.body
  %12 = bitcast %struct.robust_list* %10 to i8*
  %add.ptr = getelementptr i8, i8* %12, i64 %asmresult10
  %13 = bitcast i8* %add.ptr to i32*
  %tobool29 = icmp ne i32 %11, 0
  %call30 = call fastcc i32 @handle_futex_death(i32* noundef %13, %struct.task_struct* noundef %curr, i1 noundef %tobool29, i1 noundef false) #18
  %tobool31.not = icmp eq i32 %call30, 0
  %tobool35.not = icmp eq i32 %call26, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool35.not, i1 false
  br i1 %or.cond, label %if.end37, label %cleanup.loopexit

if.end34:                                         ; preds = %while.body
  %tobool35.not.old = icmp eq i32 %call26, 0
  br i1 %tobool35.not.old, label %if.end37, label %cleanup.loopexit

if.end37:                                         ; preds = %if.then28, %if.end34
  %14 = load %struct.robust_list*, %struct.robust_list** %next_entry, align 8
  %15 = load i32, i32* %next_pi, align 4
  %dec = add nsw i32 %limit.080, -1
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %while.end, label %if.end40

if.end40:                                         ; preds = %if.end37
  call fastcc void @_cond_resched() #18
  %cmp.not = icmp eq %struct.robust_list* %14, %list
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end40, %if.end37, %if.end23
  %16 = phi i32 [ %pi.promoted, %if.end23 ], [ %15, %if.end37 ], [ %15, %if.end40 ]
  %17 = phi %struct.robust_list* [ %list, %if.end23 ], [ %list, %if.end40 ], [ %14, %if.end37 ]
  store %struct.robust_list* %17, %struct.robust_list** %entry1, align 8
  store i32 %16, i32* %pi, align 4
  %tobool43.not = icmp eq %struct.robust_list* %.pre, null
  br i1 %tobool43.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %while.end
  %18 = bitcast %struct.robust_list* %.pre to i8*
  %add.ptr45 = getelementptr i8, i8* %18, i64 %asmresult10
  %19 = bitcast i8* %add.ptr45 to i32*
  %20 = load i32, i32* %pip, align 4
  %tobool46 = icmp ne i32 %20, 0
  %call47 = call fastcc i32 @handle_futex_death(i32* noundef %19, %struct.task_struct* noundef %curr, i1 noundef %tobool46, i1 noundef true) #18
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then28, %if.end34
  %.lcssa85 = phi %struct.robust_list* [ %10, %if.then28 ], [ %.pre, %if.end34 ]
  store %struct.robust_list* %.lcssa85, %struct.robust_list** %entry1, align 8
  store i32 %11, i32* %pi, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %while.end, %if.then44, %if.end19, %if.end14, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @exit_pi_state_list(%struct.task_struct* noundef %curr) unnamed_addr #0 {
entry:
  %key = alloca %union.futex_key, align 8
  %pi_state_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %curr, i64 0, i32 117
  %0 = bitcast %union.futex_key* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %curr, i64 0, i32 102
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  %call104 = call fastcc i32 @list_empty(%struct.list_head* noundef %pi_state_list) #18
  %tobool.not105 = icmp eq i32 %call104, 0
  br i1 %tobool.not105, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %pi_state_list, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %2 = bitcast %struct.list_head* %1 to %struct.futex_pi_state*
  %key2 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 4
  %3 = bitcast %struct.list_head* %key2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %3, i64 24, i1 false)
  %call3 = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef nonnull %key) #18
  %refcount = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 3, i32 1
  %4 = bitcast %struct.list_head** %refcount to %struct.refcount_struct*
  %call4 = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %4) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @cpu_relax() #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %if.then10, %if.end50
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %pi_state_list) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

if.end:                                           ; preds = %while.body
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call3, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %pi_mutex = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 1
  %5 = bitcast %struct.list_head* %pi_mutex to %struct.rt_mutex_base*
  %wait_lock = bitcast %struct.list_head* %pi_mutex to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #18
  %6 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %cmp.not = icmp eq %struct.list_head* %6, %1
  br i1 %cmp.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %wait_lock) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %2) #18
  br label %while.cond.backedge

if.end14:                                         ; preds = %if.end
  %owner = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 3
  %7 = bitcast %struct.list_head* %owner to %struct.task_struct**
  %8 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %cmp15.not = icmp eq %struct.task_struct* %8, %curr
  br i1 %cmp15.not, label %if.end25, label %if.then24, !prof !7

if.then24:                                        ; preds = %if.end14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 951; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !31
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end14
  %call35 = call fastcc i32 @list_empty(%struct.list_head* noundef %1) #18
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end50, label %if.then49, !prof !7

if.then49:                                        ; preds = %if.end25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 952; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !32
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end25
  call fastcc void @list_del_init(%struct.list_head* noundef %1) #18
  store %struct.task_struct* null, %struct.task_struct** %7, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef %5) #19
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef %2) #18
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fetch_robust_entry(%struct.robust_list** nocapture noundef writeonly %entry1, %struct.robust_list** noundef %head, i32* nocapture noundef writeonly %pi) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.robust_list** %head to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 8) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %1 = bitcast i8* %call2 to i64*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %1, i32 -14, i32 0) #20, !srcloc !33
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult6 = extractvalue { i32, i64 } %2, 1
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end
  %and = and i64 %asmresult6, -2
  %3 = inttoptr i64 %and to %struct.robust_list*
  store %struct.robust_list* %3, %struct.robust_list** %entry1, align 8
  %4 = trunc i64 %asmresult6 to i32
  %conv = and i32 %4, 1
  store i32 %conv, i32* %pi, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -14, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_futex_death(i32* noundef %uaddr, %struct.task_struct* noundef %curr, i1 noundef %pi, i1 noundef %pending_op) unnamed_addr #0 {
entry:
  %nval = alloca i32, align 4
  %0 = bitcast i32* %nval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %nval, align 4, !annotation !9
  %1 = ptrtoint i32* %uaddr to i64
  %rem = and i64 %1, 3
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %retry.preheader, label %cleanup

retry.preheader:                                  ; preds = %entry
  %2 = bitcast i32* %uaddr to i8*
  %call100 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #18
  %tobool.not101 = icmp eq i64 %call100, 0
  br i1 %tobool.not101, label %cleanup, label %if.end11

if.end11:                                         ; preds = %retry.preheader, %retry.backedge
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #18
  %3 = bitcast i8* %call3 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #20, !srcloc !34
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult7 = extractvalue { i32, i64 } %4, 1
  %conv = trunc i64 %asmresult7 to i32
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end11
  br i1 %pending_op, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %tobool21 = icmp ne i32 %conv, 0
  %or.cond = select i1 %pi, i1 true, i1 %tobool21
  br i1 %or.cond, label %if.end24, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  %call23 = call fastcc i32 @futex_wake(i32* noundef %uaddr, i32 noundef 1, i32 noundef 1, i32 noundef -1) #18
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %if.end16
  %and = and i32 %conv, 1073741823
  %call25 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %curr) #18
  %cmp26.not = icmp eq i32 %and, %call25
  br i1 %cmp26.not, label %if.end29, label %cleanup

if.end29:                                         ; preds = %if.end24
  %and30 = and i32 %conv, -2147483648
  %or = or i32 %and30, 1073741824
  %call31 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %nval, i32* noundef %uaddr, i32 noundef %conv, i32 noundef %or) #18
  switch i32 %call31, label %if.then45 [
    i32 0, label %if.end55
    i32 -14, label %sw.bb
    i32 -11, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end29
  %call34 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr) #18
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %retry.backedge, label %cleanup

sw.bb38:                                          ; preds = %if.end29
  call fastcc void @_cond_resched() #18
  br label %retry.backedge

retry.backedge:                                   ; preds = %sw.bb38, %sw.bb, %if.end55
  %call = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.then45:                                        ; preds = %if.end29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 3717; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !35
  br label %cleanup

if.end55:                                         ; preds = %if.end29
  %5 = load i32, i32* %nval, align 4
  %cmp56.not = icmp eq i32 %5, %conv
  br i1 %cmp56.not, label %if.end59, label %retry.backedge

if.end59:                                         ; preds = %if.end55
  %tobool63.not = icmp eq i32 %and30, 0
  %or.cond93 = select i1 %pi, i1 true, i1 %tobool63.not
  br i1 %or.cond93, label %cleanup, label %if.then64

if.then64:                                        ; preds = %if.end59
  %call65 = call fastcc i32 @futex_wake(i32* noundef %uaddr, i32 noundef 1, i32 noundef 1, i32 noundef -1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end24, %sw.bb, %retry.backedge, %retry.preheader, %if.end59, %if.then64, %entry, %if.then45, %if.then22
  %retval.0 = phi i32 [ %call31, %if.then45 ], [ 0, %if.then22 ], [ -1, %entry ], [ 0, %if.then64 ], [ 0, %if.end59 ], [ -1, %retry.preheader ], [ -1, %if.end11 ], [ 0, %if.end24 ], [ -1, %sw.bb ], [ -1, %retry.backedge ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cmpxchg_futex_value_locked(i32* nocapture noundef writeonly %curval, i32* noundef %uaddr, i32 noundef %uval, i32 noundef %newval) unnamed_addr #0 {
entry:
  call fastcc void @pagefault_disable() #18
  %call = call fastcc i32 @futex_atomic_cmpxchg_inatomic(i32* noundef %curval, i32* noundef %uaddr, i32 noundef %uval, i32 noundef %newval) #18
  call fastcc void @pagefault_enable() #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #18
  %3 = ptrtoint i32* %uaddr to i64
  %call2 = call i32 @fixup_user_fault(%struct.mm_struct* noundef %2, i64 noundef %3, i32 noundef 1, i8* noundef null) #19
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #18
  %cmp = icmp slt i32 %call2, 0
  %cond = select i1 %cmp, i32 %call2, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_disable() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %inc.i = add i32 %2, 1
  store i32 %inc.i, i32* %pagefault_disabled.i, align 16
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_atomic_cmpxchg_inatomic(i32* nocapture noundef writeonly %uval, i32* noundef %_uaddr, i32 noundef %oldval, i32 noundef %newval) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %_uaddr to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %1 = bitcast i8* %call1 to i32*
  call fastcc void @uaccess_enable_privileged() #18
  %2 = call { i32, i32, i32, i32 } asm sideeffect "// futex_atomic_cmpxchg_inatomic\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09sub\09${3:w}, ${1:w}, ${5:w}\0A\09cbnz\09${3:w}, 4f\0A2:\09stlxr\09${3:w}, ${6:w}, $2\0A\09cbz\09${3:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${3:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${8:w}\0A3:\0A\09dmb\09ish\0A4:\0A\09.pushsection .fixup,\22ax\22\0A5:\09mov\09${0:w}, ${7:w}\0A\09b\094b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (5b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (5b - .)\0A\09.popsection\0A", "=r,=&r,=*Q,=&r,=r,r,r,Ir,Ir,0,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %oldval, i32 %newval, i32 -14, i32 -11, i32 0, i32* elementtype(i32) %1, i32 128) #20, !srcloc !37
  %asmresult = extractvalue { i32, i32, i32, i32 } %2, 0
  call fastcc void @uaccess_disable_privileged() #18
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %2, 1
  store i32 %asmresult2, i32* %uval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ 0, %if.then6 ], [ %asmresult, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagefault_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !38
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled.i, align 16
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %pagefault_disabled.i, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @uaccess_enable_privileged() unnamed_addr #0 {
entry:
  call fastcc void @__uaccess_enable_tco() #18
  call fastcc void @__uaccess_disable_hw_pan() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @uaccess_disable_privileged() unnamed_addr #0 {
entry:
  call fastcc void @__uaccess_disable_tco() #18
  call fastcc void @__uaccess_enable_hw_pan() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__uaccess_enable_tco() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 0 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 35\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09.inst (0xd500401f | ((3) << 16 | (4) << 5) | ((!!1) << 8))\0A\09\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #20, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__uaccess_disable_hw_pan() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 0 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 24\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09.inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!0) << 8))\0A\09\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #20, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__uaccess_disable_tco() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 0 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 35\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09.inst (0xd500401f | ((3) << 16 | (4) << 5) | ((!!0) << 8))\0A\09\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #20, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__uaccess_enable_hw_pan() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 0 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 24\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09.inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8))\0A\09\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #20, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_user_fault(%struct.mm_struct* noundef, i64 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* nocapture noundef readonly %key) unnamed_addr #8 {
entry:
  %0 = bitcast %union.futex_key* %key to i32*
  %1 = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 2
  %2 = load i32, i32* %1, align 8
  %call = call fastcc i32 @jhash2(i32* noundef %0, i32 noundef %2) #18
  %3 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** @__futex_data.0, align 16
  %conv = zext i32 %call to i64
  %4 = load i64, i64* @__futex_data.1, align 16
  %sub = add i64 %4, 4294967295
  %and = and i64 %sub, %conv
  %arrayidx = getelementptr %struct.futex_hash_bucket, %struct.futex_hash_bucket* %3, i64 %and
  ret %struct.futex_hash_bucket* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #20, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !44
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_pi_state(%struct.futex_pi_state* noundef %pi_state) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.futex_pi_state* %pi_state, null
  br i1 %tobool.not, label %if.end25, label %if.end

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #18
  br i1 %call, label %if.end2, label %if.end25

if.end2:                                          ; preds = %if.end
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 2
  %0 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %tobool3.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool3.not, label %if.end17, label %if.then4

if.then4:                                         ; preds = %if.end2
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 1
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %pi_mutex, i64 0, i32 0
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %wait_lock) #18
  call fastcc void @pi_state_update_owner(%struct.futex_pi_state* noundef nonnull %pi_state, %struct.task_struct* noundef null) #18
  call void @rt_mutex_proxy_unlock(%struct.rt_mutex_base* noundef %pi_mutex) #19
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %wait_lock, i64 noundef %call5) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %if.end2
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %pi_state_cache = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 118
  %3 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state_cache, align 64
  %tobool19.not = icmp eq %struct.futex_pi_state* %3, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  %4 = bitcast %struct.futex_pi_state* %pi_state to i8*
  call void @kfree(i8* noundef nonnull %4) #19
  br label %if.end25

if.else:                                          ; preds = %if.end17
  store %struct.task_struct* null, %struct.task_struct** %owner, align 8
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #18
  store %struct.futex_pi_state* %pi_state, %struct.futex_pi_state** %pi_state_cache, align 64
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry, %if.else, %if.then20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #18
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @jhash2(i32* nocapture noundef readonly %k, i32 noundef %initval) unnamed_addr #8 {
entry:
  %add1 = add i32 %initval, -559038721
  %0 = load i32, i32* %k, align 4
  %add2 = add i32 %0, %add1
  %arrayidx3 = getelementptr i32, i32* %k, i64 1
  %1 = load i32, i32* %arrayidx3, align 4
  %add4 = add i32 %1, %add1
  %arrayidx5 = getelementptr i32, i32* %k, i64 2
  %2 = load i32, i32* %arrayidx5, align 4
  %add6 = add i32 %2, %add1
  %sub = sub i32 %add2, %add6
  %call = call fastcc i32 @rol32(i32 noundef %add6, i32 noundef 4) #18
  %xor = xor i32 %sub, %call
  %add7 = add i32 %add6, %add4
  %sub8 = sub i32 %add4, %xor
  %call9 = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 6) #18
  %xor10 = xor i32 %sub8, %call9
  %add11 = add i32 %xor, %add7
  %sub12 = sub i32 %add7, %xor10
  %call13 = call fastcc i32 @rol32(i32 noundef %xor10, i32 noundef 8) #18
  %xor14 = xor i32 %sub12, %call13
  %add15 = add i32 %xor10, %add11
  %sub16 = sub i32 %add11, %xor14
  %call17 = call fastcc i32 @rol32(i32 noundef %xor14, i32 noundef 16) #18
  %xor18 = xor i32 %sub16, %call17
  %add19 = add i32 %xor14, %add15
  %sub20 = sub i32 %add15, %xor18
  %call21 = call fastcc i32 @rol32(i32 noundef %xor18, i32 noundef 19) #18
  %xor22 = xor i32 %sub20, %call21
  %add23 = add i32 %xor18, %add19
  %sub24 = sub i32 %add19, %xor22
  %call25 = call fastcc i32 @rol32(i32 noundef %xor22, i32 noundef 4) #18
  %xor26 = xor i32 %sub24, %call25
  %add27 = add i32 %xor22, %add23
  %add.ptr = getelementptr i32, i32* %k, i64 3
  %3 = load i32, i32* %add.ptr, align 4
  %add36 = add i32 %3, %add23
  %xor37 = xor i32 %xor26, %add27
  %call38 = call fastcc i32 @rol32(i32 noundef %add27, i32 noundef 14) #18
  %sub39 = sub i32 %xor37, %call38
  %xor40 = xor i32 %sub39, %add36
  %call41 = call fastcc i32 @rol32(i32 noundef %sub39, i32 noundef 11) #18
  %sub42 = sub i32 %xor40, %call41
  %xor43 = xor i32 %sub42, %add27
  %call44 = call fastcc i32 @rol32(i32 noundef %sub42, i32 noundef 25) #18
  %sub45 = sub i32 %xor43, %call44
  %xor46 = xor i32 %sub45, %sub39
  %call47 = call fastcc i32 @rol32(i32 noundef %sub45, i32 noundef 16) #18
  %sub48 = sub i32 %xor46, %call47
  %xor49 = xor i32 %sub48, %sub42
  %call50 = call fastcc i32 @rol32(i32 noundef %sub48, i32 noundef 4) #18
  %sub51 = sub i32 %xor49, %call50
  %xor52 = xor i32 %sub51, %sub45
  %call53 = call fastcc i32 @rol32(i32 noundef %sub51, i32 noundef 14) #18
  %sub54 = sub i32 %xor52, %call53
  %xor55 = xor i32 %sub54, %sub48
  %call56 = call fastcc i32 @rol32(i32 noundef %sub54, i32 noundef 24) #18
  %sub57 = sub i32 %xor55, %call56
  ret i32 %sub57
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rol32(i32 noundef %word, i32 noundef %shift) unnamed_addr #10 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 %shift)
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #18
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #19
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !7

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !7

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #19
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #20, !srcloc !46
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #20, !srcloc !47
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !48
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #18
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pi_state_update_owner(%struct.futex_pi_state* noundef %pi_state, %struct.task_struct* noundef %new_owner) unnamed_addr #0 {
entry:
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 2
  %0 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #18
  %list = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then9, !prof !7

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 832; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock) #18
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  %tobool20.not = icmp eq %struct.task_struct* %new_owner, null
  br i1 %tobool20.not, label %if.end54, label %if.then21

if.then21:                                        ; preds = %if.end19
  %pi_lock22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %new_owner, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock22) #18
  %list24 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 0
  %call25 = call fastcc i32 @list_empty(%struct.list_head* noundef %list24) #18
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then41, label %if.end42, !prof !8

if.then41:                                        ; preds = %if.then21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 839; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !50
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then21
  %pi_state_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %new_owner, i64 0, i32 117
  call fastcc void @list_add(%struct.list_head* noundef %list24, %struct.list_head* noundef %pi_state_list) #18
  store %struct.task_struct* %new_owner, %struct.task_struct** %owner, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %pi_lock22) #18
  br label %if.end54

if.end54:                                         ; preds = %if.end42, %if.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_proxy_unlock(%struct.rt_mutex_base* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #18
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #19
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #20, !srcloc !52
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !7

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !53
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #18
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #20, !srcloc !54
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #20, !srcloc !55
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #20, !srcloc !56
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.hrtimer_sleeper* @futex_setup_timer(i64* noundef readonly %time, %struct.hrtimer_sleeper* noundef %timeout, i32 noundef %flags, i64 noundef %range_ns) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64* %time, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and = lshr i32 %flags, 1
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef %timeout, i32 noundef %0) #18
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %timeout, i64 0, i32 0
  %1 = load i64, i64* %time, align 8
  call fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %1, i64 noundef %range_ns) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.hrtimer_sleeper* [ %timeout, %if.end ], [ null, %entry ]
  ret %struct.hrtimer_sleeper* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_wait_setup(i32* noundef %uaddr, i32 noundef %val, i32 noundef %flags, %struct.futex_q* nocapture noundef %q, %struct.futex_hash_bucket** nocapture noundef %hb) unnamed_addr #0 {
entry:
  %uval = alloca i32, align 4
  %0 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %uval, align 4, !annotation !9
  %and = and i32 %flags, 1
  %tobool = icmp ne i32 %and, 0
  %key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %call60 = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %tobool, %union.futex_key* noundef %key, i32 noundef 0) #18
  %cmp.not61 = icmp eq i32 %call60, 0
  br i1 %cmp.not61, label %retry_private.preheader.lr.ph, label %cleanup, !prof !7

retry_private.preheader.lr.ph:                    ; preds = %entry
  %1 = bitcast i32* %uaddr to i8*
  br label %retry_private

retry.loopexit:                                   ; preds = %if.end24
  %call = call fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef true, %union.futex_key* noundef %key, i32 noundef 0) #18
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %retry_private.backedge, label %cleanup, !prof !7

retry_private:                                    ; preds = %retry_private.backedge, %retry_private.preheader.lr.ph
  %call3 = call fastcc %struct.futex_hash_bucket* @queue_lock(%struct.futex_q* noundef %q) #18
  store %struct.futex_hash_bucket* %call3, %struct.futex_hash_bucket** %hb, align 8
  %call4 = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %uval, i32* noundef %uaddr) #18
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end29, label %if.then6

if.then6:                                         ; preds = %retry_private
  %2 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %hb, align 8
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %2) #18
  %call7 = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #18
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then6
  %call10 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #18
  %3 = bitcast i8* %call10 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #20, !srcloc !57
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult14 = extractvalue { i32, i64 } %4, 1
  %conv15 = trunc i64 %asmresult14 to i32
  store i32 %conv15, i32* %uval, align 4
  %tobool22.not = icmp eq i32 %asmresult, 0
  br i1 %tobool22.not, label %if.end24, label %cleanup.loopexit

if.end24:                                         ; preds = %if.end19
  br i1 %tobool, label %retry.loopexit, label %retry_private.backedge

retry_private.backedge:                           ; preds = %if.end24, %retry.loopexit
  br label %retry_private

if.end29:                                         ; preds = %retry_private
  %5 = load i32, i32* %uval, align 4
  %cmp30.not = icmp eq i32 %5, %val
  br i1 %cmp30.not, label %cleanup, label %if.then32

if.then32:                                        ; preds = %if.end29
  %6 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %hb, align 8
  call fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %6) #18
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end19
  %asmresult.le = extractvalue { i32, i64 } %4, 0
  br label %cleanup

cleanup:                                          ; preds = %retry.loopexit, %if.then6, %cleanup.loopexit, %entry, %if.end29, %if.then32
  %retval.0 = phi i32 [ -11, %if.then32 ], [ 0, %if.end29 ], [ %call60, %entry ], [ %asmresult.le, %cleanup.loopexit ], [ %call, %retry.loopexit ], [ -14, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_wait_queue_me(%struct.futex_hash_bucket* noundef %hb, %struct.futex_q* noundef %q, %struct.hrtimer_sleeper* noundef %timeout) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !58
  call fastcc void @queue_me(%struct.futex_q* noundef %q, %struct.futex_hash_bucket* noundef %hb) #18
  %tobool.not = icmp eq %struct.hrtimer_sleeper* %timeout, null
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  %call11 = call fastcc i32 @plist_node_empty(%struct.plist_node* noundef %list) #18
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then19, label %do.body28, !prof !7

if.end.thread:                                    ; preds = %entry
  call void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef nonnull %timeout, i32 noundef 0) #19
  %list38 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  %call1139 = call fastcc i32 @plist_node_empty(%struct.plist_node* noundef %list38) #18
  %tobool12.not40 = icmp eq i32 %call1139, 0
  br i1 %tobool12.not40, label %lor.lhs.false, label %do.body28, !prof !7

lor.lhs.false:                                    ; preds = %if.end.thread
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %timeout, i64 0, i32 1
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool18.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool18.not, label %do.body28, label %if.then19

if.then19:                                        ; preds = %if.end, %lor.lhs.false
  call void @schedule() #19
  br label %do.body28

do.body28:                                        ; preds = %if.end.thread, %if.end, %if.then19, %lor.lhs.false
  store volatile i32 0, i32* %__state, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @unqueue_me(%struct.futex_q* noundef %q) unnamed_addr #0 {
entry:
  %lock_ptr1 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %0 = load volatile %struct.spinlock*, %struct.spinlock** %lock_ptr1, align 8
  %cmp.not37 = icmp eq %struct.spinlock* %0, null
  br i1 %cmp.not37, label %if.end25, label %if.then

if.then:                                          ; preds = %entry, %if.then5
  %1 = phi %struct.spinlock* [ %3, %if.then5 ], [ %0, %entry ]
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %2 = load %struct.spinlock*, %struct.spinlock** %lock_ptr1, align 8
  %cmp3.not = icmp eq %struct.spinlock* %1, %2
  br i1 %cmp3.not, label %if.end, label %if.then5, !prof !7

if.then5:                                         ; preds = %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %3 = load volatile %struct.spinlock*, %struct.spinlock** %lock_ptr1, align 8
  %cmp.not = icmp eq %struct.spinlock* %3, null
  br i1 %cmp.not, label %if.end25, label %if.then

if.end:                                           ; preds = %if.then
  call fastcc void @__unqueue_futex(%struct.futex_q* noundef %q) #18
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %4 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool7.not = icmp eq %struct.futex_pi_state* %4, null
  br i1 %tobool7.not, label %do.end24, label %do.body16, !prof !7

do.body16:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 2558; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !59
  unreachable

do.end24:                                         ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end25

if.end25:                                         ; preds = %if.then5, %entry, %do.end24
  %ret.0 = phi i32 [ 1, %do.end24 ], [ 0, %entry ], [ 0, %if.then5 ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_restart_fn(%struct.restart_block* nocapture noundef writeonly %restart) unnamed_addr #11 {
entry:
  %fn1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 1
  store i64 (%struct.restart_block*)* @futex_wait_restart, i64 (%struct.restart_block*)** %fn1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @futex_wait_restart(%struct.restart_block* nocapture noundef %restart) #0 {
entry:
  %t = alloca i64, align 8
  %uaddr1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 0
  %0 = load i32*, i32** %uaddr1, align 8
  %1 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %t, align 8, !annotation !9
  %flags = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %time = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 4
  %3 = load i64, i64* %time, align 8
  store i64 %3, i64* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tp.0 = phi i64* [ %t, %if.then ], [ null, %entry ]
  %fn = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 1
  store i64 (%struct.restart_block*)* @do_no_restart_syscall, i64 (%struct.restart_block*)** %fn, align 8
  %val = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 1
  %4 = load i32, i32* %val, align 8
  %bitset = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 3
  %5 = load i32, i32* %bitset, align 8
  %call = call fastcc i32 @futex_wait(i32* noundef %0, i32 noundef %2, i32 noundef %4, i64* noundef %tp.0, i32 noundef %5) #18
  %conv = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id) unnamed_addr #0 {
entry:
  call void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time, i64 noundef %delta) unnamed_addr #0 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  %call1 = call i64 @ktime_add_safe(i64 noundef %time, i64 noundef %delta) #19
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %call1, i64* %expires, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_futex_key(i32* noundef %uaddr, i1 noundef %fshared, %union.futex_key* nocapture noundef %key, i32 noundef %rw) unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %0 = ptrtoint i32* %uaddr to i64
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %4 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  store %struct.page* null, %struct.page** %page, align 8, !annotation !9
  %5 = trunc i64 %0 to i32
  %conv = and i32 %5, 4095
  %6 = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 2
  store i32 %conv, i32* %6, align 8
  %rem2 = and i64 %0, 3
  %cmp.not = icmp eq i64 %rem2, 0
  br i1 %cmp.not, label %if.end, label %cleanup128, !prof !7

if.end:                                           ; preds = %entry
  %conv8 = zext i32 %conv to i64
  %sub = sub i64 %0, %conv8
  %7 = bitcast i32* %uaddr to i8*
  %call9 = call fastcc i64 @__range_ok(i8* noundef %7, i64 noundef 4) #18
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %cleanup128, label %if.end21, !prof !8

if.end21:                                         ; preds = %if.end
  br i1 %fshared, label %again.preheader, label %if.then34

again.preheader:                                  ; preds = %if.end21
  %cmp52 = icmp eq i32 %rw, 0
  br label %again

if.then34:                                        ; preds = %if.end21
  %mm35 = bitcast %union.futex_key* %key to %struct.mm_struct**
  store %struct.mm_struct* %3, %struct.mm_struct** %mm35, align 8
  %8 = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 1
  store i64 %sub, i64* %8, align 8
  br label %cleanup128

again:                                            ; preds = %again.backedge, %again.preheader
  %ro.0 = phi i32 [ 0, %again.preheader ], [ %ro.1, %again.backedge ]
  %call49 = call i32 @get_user_pages_fast(i64 noundef %sub, i32 noundef 1, i32 noundef 1, %struct.page** noundef nonnull %page) #19
  %cmp50 = icmp eq i32 %call49, -14
  %or.cond = and i1 %cmp52, %cmp50
  br i1 %or.cond, label %if.then54, label %if.end56

if.then54:                                        ; preds = %again
  %call55 = call i32 @get_user_pages_fast(i64 noundef %sub, i32 noundef 1, i32 noundef 0, %struct.page** noundef nonnull %page) #19
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %again
  %err.0 = phi i32 [ %call55, %if.then54 ], [ %call49, %again ]
  %ro.1 = phi i32 [ 1, %if.then54 ], [ %ro.0, %again ]
  %cmp57 = icmp slt i32 %err.0, 0
  br i1 %cmp57, label %cleanup128, label %if.else

if.else:                                          ; preds = %if.end56
  %9 = load %struct.page*, %struct.page** %page, align 8
  %call61 = call fastcc i64 @_compound_head(%struct.page* noundef %9) #18
  %10 = inttoptr i64 %call61 to %struct.page*
  store %struct.page* %10, %struct.page** %page, align 8
  %mapping62 = getelementptr inbounds %struct.page, %struct.page* %10, i64 0, i32 1, i32 0, i32 1
  %11 = load volatile %struct.address_space*, %struct.address_space** %mapping62, align 8
  %tobool63.not = icmp eq %struct.address_space* %11, null
  br i1 %tobool63.not, label %if.then73, label %if.end81, !prof !8

if.then73:                                        ; preds = %if.else
  call fastcc void @lock_page(%struct.page* noundef %10) #18
  %12 = load %struct.page*, %struct.page** %page, align 8
  %mapping76 = getelementptr inbounds %struct.page, %struct.page* %12, i64 0, i32 1, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %mapping76, align 8
  %tobool77.not = icmp eq %struct.address_space* %13, null
  call void @unlock_page(%struct.page* noundef %12) #19
  %14 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %14) #18
  br i1 %tobool77.not, label %cleanup128, label %again.backedge

again.backedge.sink.split:                        ; preds = %do.end114, %if.else102
  call fastcc void @rcu_read_unlock() #18
  %.sink = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %.sink) #18
  br label %again.backedge

again.backedge:                                   ; preds = %again.backedge.sink.split, %if.then73
  br label %again

if.end81:                                         ; preds = %if.else
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %10) #19
  %15 = inttoptr i64 %call.i to %struct.page*
  %mapping.i = getelementptr inbounds %struct.page, %struct.page* %15, i64 0, i32 1, i32 0, i32 1
  %16 = load %struct.address_space*, %struct.address_space** %mapping.i, align 8
  %17 = ptrtoint %struct.address_space* %16 to i64
  %18 = and i64 %17, 1
  %tobool83.not = icmp eq i64 %18, 0
  br i1 %tobool83.not, label %if.else102, label %if.then84

if.then84:                                        ; preds = %if.end81
  %tobool93.not = icmp eq i32 %ro.1, 0
  br i1 %tobool93.not, label %if.end95, label %out, !prof !60

if.end95:                                         ; preds = %if.then84
  %19 = load i32, i32* %6, align 8
  %or = or i32 %19, 2
  store i32 %or, i32* %6, align 8
  %mm99 = bitcast %union.futex_key* %key to %struct.mm_struct**
  store %struct.mm_struct* %3, %struct.mm_struct** %mm99, align 8
  %20 = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 1
  store i64 %sub, i64* %20, align 8
  br label %out

if.else102:                                       ; preds = %if.end81
  call fastcc void @__rcu_read_lock() #19
  %21 = load %struct.page*, %struct.page** %page, align 8
  %mapping107 = getelementptr inbounds %struct.page, %struct.page* %21, i64 0, i32 1, i32 0, i32 1
  %22 = load volatile %struct.address_space*, %struct.address_space** %mapping107, align 8
  %cmp108.not = icmp eq %struct.address_space* %22, %11
  br i1 %cmp108.not, label %do.end114, label %again.backedge.sink.split

do.end114:                                        ; preds = %if.else102
  %host = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i64 0, i32 0
  %23 = load volatile %struct.inode*, %struct.inode** %host, align 8
  %tobool116.not = icmp eq %struct.inode* %23, null
  br i1 %tobool116.not, label %again.backedge.sink.split, label %cleanup125.thread

cleanup125.thread:                                ; preds = %do.end114
  %24 = load i32, i32* %6, align 8
  %or121 = or i32 %24, 1
  store i32 %or121, i32* %6, align 8
  %call122 = call fastcc i64 @get_inode_sequence_number(%struct.inode* noundef nonnull %23) #18
  %i_seq = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 0
  store i64 %call122, i64* %i_seq, align 8
  %call123 = call fastcc i64 @page_to_pgoff(%struct.page* noundef %9) #18
  %pgoff = getelementptr inbounds %union.futex_key, %union.futex_key* %key, i64 0, i32 0, i32 1
  store i64 %call123, i64* %pgoff, align 8
  call fastcc void @rcu_read_unlock() #18
  br label %out

out:                                              ; preds = %cleanup125.thread, %if.then84, %if.end95
  %err.1 = phi i32 [ 0, %if.end95 ], [ -14, %if.then84 ], [ 0, %cleanup125.thread ]
  %25 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %25) #18
  br label %cleanup128

cleanup128:                                       ; preds = %if.end56, %if.then73, %if.end, %entry, %out, %if.then34
  %retval.2 = phi i32 [ %err.1, %out ], [ 0, %if.then34 ], [ -22, %entry ], [ -14, %if.end ], [ %err.0, %if.end56 ], [ -14, %if.then73 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.futex_hash_bucket* @queue_lock(%struct.futex_q* nocapture noundef %q) unnamed_addr #0 {
entry:
  %key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %call = call fastcc %struct.futex_hash_bucket* @hash_futex(%union.futex_key* noundef %key) #18
  call fastcc void @hb_waiters_inc(%struct.futex_hash_bucket* noundef %call) #18
  %lock = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %call, i64 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  store %struct.spinlock* %lock, %struct.spinlock** %lock_ptr, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret %struct.futex_hash_bucket* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_futex_value_locked(i32* nocapture noundef writeonly %dest, i32* noundef %from) unnamed_addr #0 {
entry:
  call fastcc void @pagefault_disable() #18
  %0 = bitcast i32* %from to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #20, !srcloc !61
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  store i32 %conv, i32* %dest, align 4
  %phi.cmp = icmp eq i32 %asmresult, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %dest, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__gu_err.0 = phi i32 [ %phi.sel, %if.then ], [ -14, %if.else ]
  call fastcc void @pagefault_enable() #18
  ret i32 %__gu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_unlock(%struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %hb) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.7* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_inode_sequence_number(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_sequence = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 31
  %counter.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %i_sequence, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup36, !prof !8

for.cond.preheader:                               ; preds = %entry
  %call.i.i49 = call fastcc i64 @__ll_sc_atomic64_add_return() #19
  %tobool4.not50 = icmp eq i64 %call.i.i49, 0
  br i1 %tobool4.not50, label %cleanup, label %cleanup.thread, !prof !8

cleanup.thread:                                   ; preds = %cleanup, %for.cond.preheader
  %call.i.i.lcssa = phi i64 [ %call.i.i49, %for.cond.preheader ], [ %call.i.i, %cleanup ]
  %1 = bitcast %struct.atomic64_t* %i_sequence to i8*
  %call14.i.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef 0, i64 noundef %call.i.i.lcssa) #19
  %tobool33.not = icmp eq i64 %call14.i.i, 0
  %call3.call32 = select i1 %tobool33.not, i64 %call.i.i.lcssa, i64 %call14.i.i
  br label %cleanup36

cleanup:                                          ; preds = %for.cond.preheader, %cleanup
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 505; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !62
  %call.i.i = call fastcc i64 @__ll_sc_atomic64_add_return() #19
  %tobool4.not = icmp eq i64 %call.i.i, 0
  br i1 %tobool4.not, label %cleanup, label %cleanup.thread, !prof !8

cleanup36:                                        ; preds = %cleanup.thread, %entry
  %retval.2 = phi i64 [ %0, %entry ], [ %call3.call32, %cleanup.thread ]
  ret i64 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_pgoff(%struct.page* nocapture noundef readonly %page) unnamed_addr #12 {
entry:
  %call4 = call fastcc i64 @page_to_index(%struct.page* noundef %page) #18
  ret i64 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #18
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #19
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #20, !srcloc !63
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !64
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return() unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @get_inode_sequence_number.i_seq, i64 0, i32 0), i64 1, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @get_inode_sequence_number.i_seq, i64 0, i32 0)) #20, !srcloc !65
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @page_to_index(%struct.page* nocapture noundef readonly %page) unnamed_addr #12 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hb_waiters_inc(%struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  %waiters = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %waiters) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !66
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !67
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  %waiters = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %waiters) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !68
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_me(%struct.futex_q* noundef %q, %struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  call fastcc void @__queue_me(%struct.futex_q* noundef %q, %struct.futex_hash_bucket* noundef %hb) #18
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @plist_node_empty(%struct.plist_node* noundef %node) unnamed_addr #5 {
entry:
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node_list) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__queue_me(%struct.futex_q* noundef %q, %struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 17
  %2 = load i32, i32* %normal_prio, align 4
  %cmp = icmp slt i32 %2, 100
  %cond = select i1 %cmp, i32 %2, i32 100
  %list = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  call fastcc void @plist_node_init(%struct.plist_node* noundef %list, i32 noundef %cond) #18
  %chain = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 2
  call void @plist_add(%struct.plist_node* noundef %list, %struct.plist_head* noundef %chain) #19
  %task = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 1
  store %struct.task_struct* %1, %struct.task_struct** %task, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_node_init(%struct.plist_node* noundef %node, i32 noundef %prio) unnamed_addr #9 {
entry:
  %prio1 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  store i32 %prio, i32* %prio1, align 8
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %prio_list) #18
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__unqueue_futex(%struct.futex_q* noundef %q) unnamed_addr #0 {
entry:
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %0 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %tobool.not = icmp eq %struct.spinlock* %0, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !69
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %list = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  %call = call fastcc i32 @plist_node_empty(%struct.plist_node* noundef %list) #18
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %do.body, label %if.then31, !prof !7

if.then31:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !70
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %1 = bitcast %struct.spinlock** %lock_ptr to i8**
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -4
  %3 = bitcast i8* %add.ptr to %struct.futex_hash_bucket*
  %chain = getelementptr i8, i8* %2, i64 4
  %4 = bitcast i8* %chain to %struct.plist_head*
  call void @plist_del(%struct.plist_node* noundef %list, %struct.plist_head* noundef %4) #19
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #18
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #18
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #18
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #13 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_no_restart_syscall(%struct.restart_block* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @hb_waiters_pending(%struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !71
  %counter.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @match_futex(%union.futex_key* noundef readonly %key1, %union.futex_key* noundef readonly %key2) unnamed_addr #12 {
entry:
  %tobool = icmp ne %union.futex_key* %key1, null
  %tobool1 = icmp ne %union.futex_key* %key2, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %entry
  %0 = getelementptr inbounds %union.futex_key, %union.futex_key* %key1, i64 0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds %union.futex_key, %union.futex_key* %key2, i64 0, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %ptr = getelementptr %union.futex_key, %union.futex_key* %key1, i64 0, i32 0, i32 0
  %4 = load i64, i64* %ptr, align 8
  %ptr8 = getelementptr %union.futex_key, %union.futex_key* %key2, i64 0, i32 0, i32 0
  %5 = load i64, i64* %ptr8, align 8
  %cmp9 = icmp eq i64 %4, %5
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  %6 = getelementptr inbounds %union.futex_key, %union.futex_key* %key1, i64 0, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %union.futex_key, %union.futex_key* %key2, i64 0, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %cmp13 = icmp eq i32 %7, %9
  %phi.cast = zext i1 %cmp13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true2, %entry
  %10 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true2 ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_wake_futex(%struct.wake_q_head* noundef %wake_q, %struct.futex_q* noundef %q) unnamed_addr #0 {
entry:
  %task = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 1
  %0 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %1 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool.not = icmp eq %struct.futex_pi_state* %1, null
  br i1 %tobool.not, label %lor.rhs, label %do.end

lor.rhs:                                          ; preds = %entry
  %rt_waiter = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 5
  %2 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %rt_waiter, align 8
  %tobool1.not = icmp eq %struct.rt_mutex_waiter* %2, null
  br i1 %tobool1.not, label %if.end24, label %do.end, !prof !7

do.end:                                           ; preds = %entry, %lor.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1529; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !72
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call fastcc void @get_task_struct(%struct.task_struct* noundef %0) #18
  call fastcc void @__unqueue_futex(%struct.futex_q* noundef %q) #18
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.spinlock** elementtype(%struct.spinlock*) %lock_ptr, i64 0) #20, !srcloc !73
  call void @wake_q_add_safe(%struct.wake_q_head* noundef %wake_q, %struct.task_struct* noundef %0) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(%struct.wake_q_head* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(%struct.wake_q_head* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #19
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !8

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #19
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #20, !srcloc !74
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @refill_pi_state_cache() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_state_cache = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 118
  %2 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state_cache, align 64
  %tobool.not = icmp eq %struct.futex_pi_state* %2, null
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @kzalloc() #18
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %list = bitcast i8* %call3 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %list) #18
  %owner = getelementptr inbounds i8, i8* %call3, i64 48
  %3 = bitcast i8* %owner to %struct.task_struct**
  store %struct.task_struct* null, %struct.task_struct** %3, align 8
  %refcount = getelementptr inbounds i8, i8* %call3, i64 56
  %4 = bitcast i8* %refcount to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %4) #18
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call3, i64 64
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(24) %.compoundliteral.sroa.0.0..sroa_idx, i8 0, i64 24, i1 false)
  %5 = bitcast %struct.futex_pi_state** %pi_state_cache to i8**
  store i8* %call3, i8** %5, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_lock_hb(%struct.futex_hash_bucket* noundef %hb1, %struct.futex_hash_bucket* noundef %hb2) unnamed_addr #0 {
entry:
  %cmp.not = icmp ugt %struct.futex_hash_bucket* %hb1, %hb2
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %cmp1 = icmp ult %struct.futex_hash_bucket* %hb1, %hb2
  br i1 %cmp1, label %if.end9.sink.split, label %if.end9

if.else:                                          ; preds = %entry
  %rlock.i17 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i17) #19
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then, %if.else
  %hb2.sink = phi %struct.futex_hash_bucket* [ %hb1, %if.else ], [ %hb2, %if.then ]
  %rlock.i16 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb2.sink, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i16) #18
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_unlock_hb(%struct.futex_hash_bucket* noundef %hb1, %struct.futex_hash_bucket* noundef %hb2) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  %cmp.not = icmp eq %struct.futex_hash_bucket* %hb1, %hb2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i4 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i4) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_proxy_trylock_atomic(i32* noundef %pifutex, %struct.futex_hash_bucket* noundef %hb1, %struct.futex_hash_bucket* noundef %hb2, %union.futex_key* noundef %key1, %union.futex_key* noundef %key2, %struct.futex_pi_state** nocapture noundef writeonly %ps, %struct.task_struct** nocapture noundef writeonly %exiting, i32 noundef %set_waiters) unnamed_addr #0 {
entry:
  %curval = alloca i32, align 4
  %0 = bitcast i32* %curval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  %call = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %pifutex) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call fastcc %struct.futex_q* @futex_top_waiter(%struct.futex_hash_bucket* noundef %hb1, %union.futex_key* noundef %key1) #18
  %tobool7.not = icmp eq %struct.futex_q* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %rt_waiter = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call6, i64 0, i32 5
  %1 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %rt_waiter, align 8
  %tobool10.not = icmp eq %struct.rt_mutex_waiter* %1, null
  br i1 %tobool10.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call6, i64 0, i32 4
  %2 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool11.not = icmp eq %struct.futex_pi_state* %2, null
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call6, i64 0, i32 6
  %3 = load %union.futex_key*, %union.futex_key** %requeue_pi_key, align 8
  %call14 = call fastcc i32 @match_futex(%union.futex_key* noundef %3, %union.futex_key* noundef %key2) #18
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = call fastcc i1 @futex_requeue_pi_prepare(%struct.futex_q* noundef nonnull %call6, %struct.futex_pi_state* noundef null) #18
  br i1 %call18, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end17
  %task = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call6, i64 0, i32 1
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call21 = call fastcc i32 @futex_lock_pi_atomic(i32* noundef %pifutex, %struct.futex_hash_bucket* noundef %hb2, %union.futex_key* noundef %key2, %struct.futex_pi_state** noundef %ps, %struct.task_struct* noundef %4, %struct.task_struct** noundef %exiting, i32 noundef %set_waiters) #18
  %cmp = icmp eq i32 %call21, 1
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call fastcc void @requeue_pi_wake_futex(%struct.futex_q* noundef nonnull %call6, %union.futex_key* noundef %key2, %struct.futex_hash_bucket* noundef %hb2) #18
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %cmp24 = icmp slt i32 %call21, 0
  br i1 %cmp24, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.else
  call fastcc void @futex_requeue_pi_complete(%struct.futex_q* noundef nonnull %call6, i32 noundef %call21) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.else, %if.then26, %if.end17, %if.end13, %if.end9, %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ 0, %if.end ], [ -22, %lor.lhs.false ], [ -22, %if.end9 ], [ -22, %if.end13 ], [ -11, %if.end17 ], [ %call21, %if.then26 ], [ %call21, %if.else ], [ 1, %if.then23 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_for_owner_exiting(i32 noundef %ret, %struct.task_struct* noundef %exiting) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %ret, -16
  %tobool20.not = icmp eq %struct.task_struct* %exiting, null
  br i1 %cmp.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool20.not, label %return, label %if.then8, !prof !7

if.then8:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1189; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !75
  br label %return

if.end16:                                         ; preds = %entry
  br i1 %tobool20.not, label %if.then35, label %if.end47, !prof !8

if.then35:                                        ; preds = %if.end16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1193; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !76
  br label %return

if.end47:                                         ; preds = %if.end16
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, %struct.task_struct* %exiting, i64 0, i32 119
  call void @mutex_lock(%struct.mutex* noundef %futex_exit_mutex) #19
  call void @mutex_unlock(%struct.mutex* noundef %futex_exit_mutex) #19
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %exiting) #18
  br label %return

return:                                           ; preds = %if.then35, %if.then, %if.then8, %if.end47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @requeue_futex(%struct.futex_q* noundef %q, %struct.futex_hash_bucket* noundef %hb1, %struct.futex_hash_bucket* noundef %hb2, %union.futex_key* nocapture noundef readonly %key2) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.futex_hash_bucket* %hb1, %hb2
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %chain1 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb2, i64 0, i32 2
  %chain = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb1, i64 0, i32 2
  %list = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  call void @plist_del(%struct.plist_node* noundef %list, %struct.plist_head* noundef %chain) #19
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %hb1) #18
  call fastcc void @hb_waiters_inc(%struct.futex_hash_bucket* noundef %hb2) #18
  call void @plist_add(%struct.plist_node* noundef %list, %struct.plist_head* noundef %chain1) #19
  %lock = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb2, i64 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  store %struct.spinlock* %lock, %struct.spinlock** %lock_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %key = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %0 = bitcast %union.futex_key* %key to i8*
  %1 = bitcast %union.futex_key* %key2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_pi_state(%struct.futex_pi_state* noundef %pi_state) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 3
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %refcount) #18
  br i1 %call, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 848; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @futex_requeue_pi_prepare(%struct.futex_q* noundef %q, %struct.futex_pi_state* noundef %pi_state) unnamed_addr #0 {
entry:
  %requeue_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 8
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %requeue_state, i64 0, i32 0
  %0 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i) #20, !srcloc !78
  %1 = bitcast %struct.atomic_t* %requeue_state to i8*
  br label %do.body

do.body:                                          ; preds = %if.end3, %entry
  %old.0 = phi i32 [ %0, %entry ], [ %call11.i.i.i, %if.end3 ]
  %cmp = icmp eq i32 %old.0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %cmp1.not = icmp eq i32 %old.0, 0
  br i1 %cmp1.not, label %if.end3, label %do.end

if.end3:                                          ; preds = %if.end
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef 0, i32 noundef 2) #19
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end, label %do.body, !prof !7

do.end:                                           ; preds = %if.end3, %if.end
  %pi_state6 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  store %struct.futex_pi_state* %pi_state, %struct.futex_pi_state** %pi_state6, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end
  %2 = xor i1 %cmp, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef, %struct.rt_mutex_waiter* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @requeue_pi_wake_futex(%struct.futex_q* noundef %q, %union.futex_key* nocapture noundef readonly %key, %struct.futex_hash_bucket* noundef %hb) unnamed_addr #0 {
entry:
  %key1 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 3
  %0 = bitcast %union.futex_key* %key1 to i8*
  %1 = bitcast %union.futex_key* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  call fastcc void @__unqueue_futex(%struct.futex_q* noundef %q) #18
  %rt_waiter = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 5
  %2 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %rt_waiter, align 8
  %tobool.not = icmp eq %struct.rt_mutex_waiter* %2, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1993; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.rt_mutex_waiter* null, %struct.rt_mutex_waiter** %rt_waiter, align 8
  %lock = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  store %struct.spinlock* %lock, %struct.spinlock** %lock_ptr, align 8
  call fastcc void @futex_requeue_pi_complete(%struct.futex_q* noundef %q, i32 noundef 1) #18
  %task = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 1
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call = call i32 @wake_up_state(%struct.task_struct* noundef %3, i32 noundef 3) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_requeue_pi_complete(%struct.futex_q* noundef %q, i32 noundef %locked) unnamed_addr #0 {
entry:
  %requeue_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 8
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %requeue_state, i64 0, i32 0
  %0 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i) #20, !srcloc !78
  %cmp1 = icmp sgt i32 %locked, -1
  %add = add nuw i32 %locked, 4
  %1 = bitcast %struct.atomic_t* %requeue_state to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %old.0 = phi i32 [ %0, %entry ], [ %call11.i.i.i, %do.cond ]
  %cmp = icmp eq i32 %old.0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = and i32 %old.0, -2
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %do.cond, label %if.then11, !prof !7

if.then11:                                        ; preds = %if.then2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1900; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !80
  br label %do.cond

if.else:                                          ; preds = %if.end
  switch i32 %old.0, label %if.then39 [
    i32 2, label %do.cond
    i32 3, label %if.end40
  ], !prof !81

if.then39:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1907; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !82
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  br label %do.cond

do.cond:                                          ; preds = %if.then2, %if.then11, %if.else, %if.end40
  %new.0 = phi i32 [ 1, %if.end40 ], [ 0, %if.else ], [ %add, %if.then11 ], [ %add, %if.then2 ]
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %old.0, i32 noundef %new.0) #19
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %cleanup, label %do.body, !prof !7

cleanup:                                          ; preds = %do.cond, %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #19
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.futex_q* @futex_top_waiter(%struct.futex_hash_bucket* noundef readonly %hb, %union.futex_key* noundef readonly %key) unnamed_addr #15 {
entry:
  %node_list = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 2, i32 0
  %0 = bitcast %struct.list_head* %node_list to i8**
  %.pn23 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn23 to %struct.list_head*
  %cmp.not24 = icmp eq %struct.list_head* %node_list, %1
  br i1 %cmp.not24, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn25 = phi i8* [ %.pn, %for.inc ], [ %.pn23, %entry ]
  %key4 = getelementptr i8, i8* %.pn25, i64 32
  %2 = bitcast i8* %key4 to %union.futex_key*
  %call = call fastcc i32 @match_futex(%union.futex_key* noundef %2, %union.futex_key* noundef %key) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup.split.loop.exit21

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn25 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %node_list, %4
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.split.loop.exit21:                        ; preds = %for.body
  %this.0.in.le = getelementptr i8, i8* %.pn25, i64 -24
  %this.0.le = bitcast i8* %this.0.in.le to %struct.futex_q*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %cleanup.split.loop.exit21
  %retval.0 = phi %struct.futex_q* [ %this.0.le, %cleanup.split.loop.exit21 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.futex_q* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_lock_pi_atomic(i32* noundef %uaddr, %struct.futex_hash_bucket* noundef readonly %hb, %union.futex_key* noundef readonly %key, %struct.futex_pi_state** nocapture noundef writeonly %ps, %struct.task_struct* noundef %task, %struct.task_struct** nocapture noundef writeonly %exiting, i32 noundef %set_waiters) unnamed_addr #0 {
entry:
  %uval = alloca i32, align 4
  %0 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %uval, align 4, !annotation !9
  %call = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %task) #18
  %call1 = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %uval, i32* noundef %uaddr) #18
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %uval, align 4
  %and = and i32 %1, 1073741823
  %cmp = icmp eq i32 %and, %call
  br i1 %cmp, label %cleanup, label %if.end16, !prof !8

if.end16:                                         ; preds = %if.end
  %call27 = call fastcc %struct.futex_q* @futex_top_waiter(%struct.futex_hash_bucket* noundef %hb, %union.futex_key* noundef %key) #18
  %tobool28.not = icmp eq %struct.futex_q* %call27, null
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end16
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %call27, i64 0, i32 4
  %2 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %call30 = call fastcc i32 @attach_to_pi_state(i32* noundef %uaddr, i32 noundef %1, %struct.futex_pi_state* noundef %2, %struct.futex_pi_state** noundef %ps) #18
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.then34, label %if.end48

if.then34:                                        ; preds = %if.end31
  %and35 = and i32 %1, 1073741824
  %or = or i32 %and35, %call
  %tobool36.not = icmp eq i32 %set_waiters, 0
  %or38 = or i32 %or, -2147483648
  %spec.select = select i1 %tobool36.not, i32 %or, i32 %or38
  %call40 = call fastcc i32 @lock_pi_update_atomic(i32* noundef %uaddr, i32 noundef %1, i32 noundef %spec.select) #18
  %tobool41.not = icmp ne i32 %call40, 0
  %brmerge = or i1 %tobool36.not, %tobool41.not
  %call40.mux = select i1 %tobool41.not, i32 %call40, i32 1
  br i1 %brmerge, label %cleanup, label %if.then45

if.then45:                                        ; preds = %if.then34
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 102
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  call fastcc void @__attach_to_pi_owner(%struct.task_struct* noundef %task, %union.futex_key* noundef %key, %struct.futex_pi_state** noundef %ps) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  br label %cleanup

if.end48:                                         ; preds = %if.end31
  %or49 = or i32 %1, -2147483648
  %call50 = call fastcc i32 @lock_pi_update_atomic(i32* noundef %uaddr, i32 noundef %1, i32 noundef %or49) #18
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %cleanup

if.end53:                                         ; preds = %if.end48
  %call54 = call fastcc i32 @attach_to_pi_owner(i32* noundef %uaddr, i32 noundef %or49, %union.futex_key* noundef %key, %struct.futex_pi_state** noundef %ps, %struct.task_struct** noundef %exiting) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end48, %if.then45, %if.end, %entry, %if.end53, %if.then29
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ %call54, %if.end53 ], [ -14, %entry ], [ -35, %if.end ], [ %call40.mux, %if.then34 ], [ 1, %if.then45 ], [ %call50, %if.end48 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @attach_to_pi_state(i32* noundef %uaddr, i32 noundef %uval, %struct.futex_pi_state* noundef %pi_state, %struct.futex_pi_state** nocapture noundef writeonly %ps) unnamed_addr #0 {
entry:
  %uval2 = alloca i32, align 4
  %and = and i32 %uval, 1073741823
  %0 = bitcast i32* %uval2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %uval2, align 4, !annotation !9
  %tobool.not = icmp eq %struct.futex_pi_state* %pi_state, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 3
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %refcount) #18
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then19, label %if.end20, !prof !8

if.then19:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1087; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !83
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  %wait_lock = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 1, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %call28 = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %uval2, i32* noundef %uaddr) #18
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %out_error

if.end31:                                         ; preds = %if.end20
  %1 = load i32, i32* %uval2, align 4
  %cmp.not = icmp eq i32 %1, %uval
  br i1 %cmp.not, label %if.end34, label %out_error

if.end34:                                         ; preds = %if.end31
  %and35 = and i32 %uval, 1073741824
  %tobool36.not = icmp eq i32 %and35, 0
  %owner47 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 2
  %2 = load %struct.task_struct*, %struct.task_struct** %owner47, align 8
  %tobool48.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end34
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.then37
  br i1 %tobool40.not, label %out_attach, label %out_error

if.end43:                                         ; preds = %if.then37
  br i1 %tobool40.not, label %out_attach, label %if.end51

if.else:                                          ; preds = %if.end34
  br i1 %tobool48.not, label %out_error, label %if.end51

if.end51:                                         ; preds = %if.else, %if.end43
  %call53 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef nonnull %2) #18
  %cmp54.not = icmp eq i32 %and, %call53
  br i1 %cmp54.not, label %out_attach, label %out_error

out_attach:                                       ; preds = %if.end51, %if.end43, %if.then39
  call fastcc void @get_pi_state(%struct.futex_pi_state* noundef nonnull %pi_state) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  store %struct.futex_pi_state* %pi_state, %struct.futex_pi_state** %ps, align 8
  br label %cleanup

out_error:                                        ; preds = %if.end20, %if.end31, %if.then39, %if.else, %if.end51
  %ret.0 = phi i32 [ -22, %if.end51 ], [ -22, %if.else ], [ -22, %if.then39 ], [ -11, %if.end31 ], [ -14, %if.end20 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_error, %out_attach
  %retval.0 = phi i32 [ %ret.0, %out_error ], [ 0, %out_attach ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @lock_pi_update_atomic(i32* noundef %uaddr, i32 noundef %uval, i32 noundef %newval) unnamed_addr #0 {
entry:
  %curval = alloca i32, align 4
  %0 = bitcast i32* %curval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %curval, align 4, !annotation !9
  %call2 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr, i32 noundef %uval, i32 noundef %newval) #18
  %tobool3.not = icmp eq i32 %call2, 0
  %1 = load i32, i32* %curval, align 4
  %cmp.not = icmp eq i32 %1, %uval
  %cond = select i1 %cmp.not, i32 0, i32 -11
  %retval.0 = select i1 %tobool3.not, i32 %cond, i32 %call2, !prof !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__attach_to_pi_owner(%struct.task_struct* noundef %p, %union.futex_key* nocapture noundef readonly %key, %struct.futex_pi_state** nocapture noundef writeonly %ps) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.futex_pi_state* @alloc_pi_state() #18
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %call, i64 0, i32 1
  call void @rt_mutex_init_proxy_locked(%struct.rt_mutex_base* noundef %pi_mutex, %struct.task_struct* noundef %p) #19
  %key1 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %call, i64 0, i32 4
  %0 = bitcast %union.futex_key* %key1 to i8*
  %1 = bitcast %union.futex_key* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(24) %0, i8* noundef align 8 dereferenceable(24) %1, i64 24, i1 false)
  %list = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %call, i64 0, i32 0
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1286; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pi_state_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 117
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %pi_state_list) #18
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %call, i64 0, i32 2
  store %struct.task_struct* %p, %struct.task_struct** %owner, align 8
  store %struct.futex_pi_state* %call, %struct.futex_pi_state** %ps, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @attach_to_pi_owner(i32* noundef %uaddr, i32 noundef %uval, %union.futex_key* nocapture noundef readonly %key, %struct.futex_pi_state** nocapture noundef writeonly %ps, %struct.task_struct** nocapture noundef writeonly %exiting) unnamed_addr #0 {
entry:
  %and = and i32 %uval, 1073741823
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.task_struct* @find_get_task_by_vpid(i32 noundef %and) #19
  %tobool1.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @handle_exit_race(i32* noundef %uaddr, i32 noundef %uval, %struct.task_struct* noundef null) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and5 = and i32 %0, 2097152
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end10, label %if.then9, !prof !7

if.then9:                                         ; preds = %if.end4
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 102
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 120
  %1 = load i32, i32* %futex_state, align 8
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end26, label %if.then19, !prof !7

if.then19:                                        ; preds = %if.end10
  %call20 = call fastcc i32 @handle_exit_race(i32* noundef %uaddr, i32 noundef %uval, %struct.task_struct* noundef nonnull %call) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  %cmp22 = icmp eq i32 %call20, -16
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then19
  store %struct.task_struct* %call, %struct.task_struct** %exiting, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then19
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #18
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  call fastcc void @__attach_to_pi_owner(%struct.task_struct* noundef nonnull %call, %union.futex_key* noundef %key, %struct.futex_pi_state** noundef %ps) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %pi_lock) #18
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else, %entry, %if.end26, %if.then9, %if.then2
  %retval.0 = phi i32 [ -1, %if.then9 ], [ 0, %if.end26 ], [ %call3, %if.then2 ], [ -11, %entry ], [ %call20, %if.else ], [ -16, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.futex_pi_state* @alloc_pi_state() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_state_cache = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 118
  %2 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state_cache, align 64
  %tobool.not = icmp eq %struct.futex_pi_state* %2, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 817; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.futex_pi_state* null, %struct.futex_pi_state** %pi_state_cache, align 64
  ret %struct.futex_pi_state* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_init_proxy_locked(%struct.rt_mutex_base* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_exit_race(i32* noundef %uaddr, i32 noundef %uval, %struct.task_struct* noundef readonly %tsk) unnamed_addr #0 {
entry:
  %uval2 = alloca i32, align 4
  %0 = bitcast i32* %uval2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #20
  store i32 0, i32* %uval2, align 4, !annotation !9
  %tobool.not = icmp eq %struct.task_struct* %tsk, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 120
  %1 = load i32, i32* %futex_state, align 8
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %uval2, i32* noundef %uaddr) #18
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %uval2, align 4
  %cmp4.not = icmp eq i32 %2, %uval
  %. = select i1 %cmp4.not, i32 -3, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ -16, %land.lhs.true ], [ -14, %if.end ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #20, !srcloc !86
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_atomic_op_inuser(i32 noundef %encoded_op, i32* noundef %uaddr) unnamed_addr #0 {
entry:
  %oldval = alloca i32, align 4
  %comm = alloca [16 x i8], align 1
  %and = lshr i32 %encoded_op, 28
  %shr = and i32 %and, 7
  %and1 = lshr i32 %encoded_op, 24
  %shr2 = and i32 %and1, 15
  %0 = shl i32 %encoded_op, 8
  %shr4 = ashr i32 %0, 20
  %and5 = shl i32 %encoded_op, 20
  %shr.i70 = ashr exact i32 %and5, 20
  %1 = bitcast i32* %oldval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #20
  store i32 0, i32* %oldval, align 4, !annotation !9
  %tobool.not = icmp sgt i32 %encoded_op, -1
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %2 = icmp ugt i32 %0, 33554431
  br i1 %2, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.then
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !9
  %call11 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @futex_atomic_op_inuser._rs, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.futex_atomic_op_inuser, i64 0, i64 0)) #19
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %if.then10
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call19 = call i8* @__get_task_comm(i8* noundef nonnull %3, i64 noundef 16, %struct.task_struct* noundef %5) #19
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call19, i32 noundef %shr4) #23
  br label %if.end

if.end:                                           ; preds = %do.end16, %if.then10
  %and21 = and i32 %shr4, 31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #20
  br label %if.end22

if.end22:                                         ; preds = %if.then, %if.end
  %oparg.0 = phi i32 [ %and21, %if.end ], [ %shr4, %if.then ]
  %shl = shl nuw i32 1, %oparg.0
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %oparg.1 = phi i32 [ %shl, %if.end22 ], [ %shr4, %entry ]
  call fastcc void @pagefault_disable() #18
  %call24 = call fastcc i32 @arch_futex_atomic_op_inuser(i32 noundef %shr, i32 noundef %oparg.1, i32* noundef nonnull %oldval, i32* noundef %uaddr) #18
  call fastcc void @pagefault_enable() #18
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end23
  switch i32 %shr2, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb32
    i32 5, label %sw.bb35
    i32 3, label %sw.bb38
    i32 4, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end27
  %6 = load i32, i32* %oldval, align 4
  %cmp28 = icmp eq i32 %6, %shr.i70
  %conv = zext i1 %cmp28 to i32
  br label %cleanup

sw.bb29:                                          ; preds = %if.end27
  %7 = load i32, i32* %oldval, align 4
  %cmp30 = icmp ne i32 %7, %shr.i70
  %conv31 = zext i1 %cmp30 to i32
  br label %cleanup

sw.bb32:                                          ; preds = %if.end27
  %8 = load i32, i32* %oldval, align 4
  %cmp33 = icmp slt i32 %8, %shr.i70
  %conv34 = zext i1 %cmp33 to i32
  br label %cleanup

sw.bb35:                                          ; preds = %if.end27
  %9 = load i32, i32* %oldval, align 4
  %cmp36 = icmp sge i32 %9, %shr.i70
  %conv37 = zext i1 %cmp36 to i32
  br label %cleanup

sw.bb38:                                          ; preds = %if.end27
  %10 = load i32, i32* %oldval, align 4
  %cmp39 = icmp sle i32 %10, %shr.i70
  %conv40 = zext i1 %cmp39 to i32
  br label %cleanup

sw.bb41:                                          ; preds = %if.end27
  %11 = load i32, i32* %oldval, align 4
  %cmp42 = icmp sgt i32 %11, %shr.i70
  %conv43 = zext i1 %cmp42 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb
  %retval.0 = phi i32 [ %conv43, %sw.bb41 ], [ %conv40, %sw.bb38 ], [ %conv37, %sw.bb35 ], [ %conv34, %sw.bb32 ], [ %conv31, %sw.bb29 ], [ %conv, %sw.bb ], [ %call24, %if.end23 ], [ -38, %if.end27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__get_task_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_futex_atomic_op_inuser(i32 noundef %op, i32 noundef %oparg, i32* nocapture noundef writeonly %oval, i32* noundef %_uaddr) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %_uaddr to i8*
  %call = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #18
  %1 = bitcast i8* %call to i32*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #18
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %op, label %cleanup [
    i32 0, label %do.body
    i32 1, label %do.body6
    i32 2, label %do.body15
    i32 3, label %do.body24
    i32 4, label %do.body33
  ]

do.body:                                          ; preds = %if.end
  call fastcc void @uaccess_enable_privileged() #18
  %2 = call { i32, i32, i32, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0Amov\09${3:w}, ${5:w}\0A2:\09stlxr\09${0:w}, ${3:w}, $2\0A\09cbz\09${0:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${0:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${7:w}\0A3:\0A\09dmb\09ish\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09${0:w}, ${6:w}\0A\09b\093b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (4b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (4b - .)\0A\09.popsection\0A", "=&r,=&r,=*Q,=&r,=r,r,Ir,Ir,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %oparg, i32 -14, i32 -11, i32* elementtype(i32) %1, i32 128) #20, !srcloc !87
  br label %sw.epilog

do.body6:                                         ; preds = %if.end
  call fastcc void @uaccess_enable_privileged() #18
  %3 = call { i32, i32, i32, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0Aadd\09${3:w}, ${1:w}, ${5:w}\0A2:\09stlxr\09${0:w}, ${3:w}, $2\0A\09cbz\09${0:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${0:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${7:w}\0A3:\0A\09dmb\09ish\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09${0:w}, ${6:w}\0A\09b\093b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (4b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (4b - .)\0A\09.popsection\0A", "=&r,=&r,=*Q,=&r,=r,r,Ir,Ir,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %oparg, i32 -14, i32 -11, i32* elementtype(i32) %1, i32 128) #20, !srcloc !88
  br label %sw.epilog

do.body15:                                        ; preds = %if.end
  call fastcc void @uaccess_enable_privileged() #18
  %4 = call { i32, i32, i32, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0Aorr\09${3:w}, ${1:w}, ${5:w}\0A2:\09stlxr\09${0:w}, ${3:w}, $2\0A\09cbz\09${0:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${0:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${7:w}\0A3:\0A\09dmb\09ish\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09${0:w}, ${6:w}\0A\09b\093b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (4b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (4b - .)\0A\09.popsection\0A", "=&r,=&r,=*Q,=&r,=r,r,Ir,Ir,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %oparg, i32 -14, i32 -11, i32* elementtype(i32) %1, i32 128) #20, !srcloc !89
  br label %sw.epilog

do.body24:                                        ; preds = %if.end
  call fastcc void @uaccess_enable_privileged() #18
  %neg = xor i32 %oparg, -1
  %5 = call { i32, i32, i32, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0Aand\09${3:w}, ${1:w}, ${5:w}\0A2:\09stlxr\09${0:w}, ${3:w}, $2\0A\09cbz\09${0:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${0:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${7:w}\0A3:\0A\09dmb\09ish\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09${0:w}, ${6:w}\0A\09b\093b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (4b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (4b - .)\0A\09.popsection\0A", "=&r,=&r,=*Q,=&r,=r,r,Ir,Ir,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %neg, i32 -14, i32 -11, i32* elementtype(i32) %1, i32 128) #20, !srcloc !90
  br label %sw.epilog

do.body33:                                        ; preds = %if.end
  call fastcc void @uaccess_enable_privileged() #18
  %6 = call { i32, i32, i32, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0Aeor\09${3:w}, ${1:w}, ${5:w}\0A2:\09stlxr\09${0:w}, ${3:w}, $2\0A\09cbz\09${0:w}, 3f\0A\09sub\09${4:w}, ${4:w}, ${0:w}\0A\09cbnz\09${4:w}, 1b\0A\09mov\09${0:w}, ${7:w}\0A3:\0A\09dmb\09ish\0A\09.pushsection .fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09${0:w}, ${6:w}\0A\09b\093b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (4b - .)\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(2b - .), (4b - .)\0A\09.popsection\0A", "=&r,=&r,=*Q,=&r,=r,r,Ir,Ir,*Q,4,~{memory}"(i32* elementtype(i32) %1, i32 %oparg, i32 -14, i32 -11, i32* elementtype(i32) %1, i32 128) #20, !srcloc !91
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body33, %do.body24, %do.body15, %do.body6, %do.body
  %.pn = phi { i32, i32, i32, i32 } [ %6, %do.body33 ], [ %5, %do.body24 ], [ %4, %do.body15 ], [ %3, %do.body6 ], [ %2, %do.body ]
  call fastcc void @uaccess_disable_privileged() #18
  %ret.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  %tobool41.not = icmp eq i32 %ret.0, 0
  br i1 %tobool41.not, label %if.then42, label %cleanup

if.then42:                                        ; preds = %sw.epilog
  %oldval.0 = extractvalue { i32, i32, i32, i32 } %.pn, 1
  store i32 %oldval.0, i32* %oval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog, %if.then42, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ 0, %if.then42 ], [ %ret.0, %sw.epilog ], [ -38, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rt_mutex_init_waiter(%struct.rt_mutex_waiter* noundef %waiter) unnamed_addr #11 {
entry:
  %pi_tree_entry = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 1
  %0 = ptrtoint %struct.rb_node* %pi_tree_entry to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pi_tree_entry, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %1 = ptrtoint %struct.rt_mutex_waiter* %waiter to i64
  %__rb_parent_color3 = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 0, i32 0
  store i64 %1, i64* %__rb_parent_color3, align 8
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 4
  store i32 3, i32* %wake_state, align 8
  %task = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %waiter, i64 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_start_proxy_lock(%struct.rt_mutex_base* noundef, %struct.rt_mutex_waiter* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_wait_proxy_lock(%struct.rt_mutex_base* noundef, %struct.hrtimer_sleeper* noundef, %struct.rt_mutex_waiter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rt_mutex_cleanup_proxy_lock(%struct.rt_mutex_base* noundef, %struct.rt_mutex_waiter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fixup_owner(i32* noundef %uaddr, %struct.futex_q* nocapture noundef readonly %q, i32 noundef %locked) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %locked, 0
  %pi_state5 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %0 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state5, align 8
  %owner6 = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %0, i64 0, i32 2
  %1 = load %struct.task_struct*, %struct.task_struct** %owner6, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp8 = icmp eq %struct.task_struct* %1, %3
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp8, label %return, label %return.sink.split

if.end4:                                          ; preds = %entry
  br i1 %cmp8, label %return.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end4
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %0, i64 0, i32 1
  %call13 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %pi_mutex) #18
  %cmp15 = icmp eq %struct.task_struct* %call13, %3
  br i1 %cmp15, label %if.then23, label %return, !prof !8

if.then23:                                        ; preds = %if.end11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 2814; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !92
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end4, %if.then, %if.then23
  %.sink = phi %struct.task_struct* [ %3, %if.then23 ], [ %3, %if.then ], [ null, %if.end4 ]
  %call35 = call fastcc i32 @fixup_pi_state_owner(i32* noundef %uaddr, %struct.futex_q* noundef %q, %struct.task_struct* noundef %.sink) #18
  br label %return

return:                                           ; preds = %return.sink.split, %if.end11, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end11 ], [ %call35, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unqueue_me_pi(%struct.futex_q* noundef %q) unnamed_addr #0 {
entry:
  call fastcc void @__unqueue_futex(%struct.futex_q* noundef %q) #18
  %pi_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %0 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state, align 8
  %tobool.not = icmp eq %struct.futex_pi_state* %0, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 2575; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !93
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @put_pi_state(%struct.futex_pi_state* noundef nonnull %0) #18
  store %struct.futex_pi_state* null, %struct.futex_pi_state** %pi_state, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fixup_pi_state_owner(i32* noundef %uaddr, %struct.futex_q* nocapture noundef readonly %q, %struct.task_struct* noundef %argowner) unnamed_addr #0 {
entry:
  %pi_state1 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %0 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state1, align 8
  %wait_lock = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %0, i64 0, i32 1, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %call = call fastcc i32 @__fixup_pi_state_owner(i32* noundef %uaddr, %struct.futex_q* noundef %q, %struct.task_struct* noundef %argowner) #18
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %lock) unnamed_addr #5 {
entry:
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 2
  %0 = load volatile %struct.task_struct*, %struct.task_struct** %owner1, align 8
  %1 = ptrtoint %struct.task_struct* %0 to i64
  %and = and i64 %1, -2
  %2 = inttoptr i64 %and to %struct.task_struct*
  ret %struct.task_struct* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__fixup_pi_state_owner(i32* noundef %uaddr, %struct.futex_q* nocapture noundef readonly %q, %struct.task_struct* noundef %argowner) unnamed_addr #0 {
entry:
  %uval = alloca i32, align 4
  %curval = alloca i32, align 4
  %pi_state1 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 4
  %0 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state1, align 8
  %1 = bitcast i32* %uval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #20
  store i32 0, i32* %uval, align 4, !annotation !9
  %2 = bitcast i32* %curval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #20
  store i32 0, i32* %curval, align 4, !annotation !9
  %owner = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %0, i64 0, i32 2
  %3 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %tobool.not = icmp eq %struct.task_struct* %argowner, null
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %0, i64 0, i32 1
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %pi_mutex, i64 0, i32 0
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #21
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %cmp16.not = icmp eq %struct.task_struct* %5, %argowner
  %cmp40 = icmp eq %struct.task_struct* %3, %5
  %cmp.not = icmp eq %struct.task_struct* %3, %5
  br label %retry

retry:                                            ; preds = %if.end101, %entry
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %retry
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = call i32 @__rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef %pi_mutex) #19
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %pi_mutex) #18
  %tobool9.not = icmp eq %struct.task_struct* %call8, null
  br i1 %tobool9.not, label %handle_err.thread, label %if.end44, !prof !8

handle_err.thread:                                ; preds = %if.end6
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %6 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i155 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i155) #19
  br label %sw.bb69

if.else:                                          ; preds = %retry
  br i1 %cmp16.not, label %if.end31, label %if.then30, !prof !7

if.then30:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 2646; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !94
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else
  br i1 %cmp40, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end31, %if.end6
  %newowner.0 = phi %struct.task_struct* [ %call8, %if.end6 ], [ %argowner, %if.end31 ]
  %call45 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef nonnull %newowner.0) #18
  %7 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %tobool47.not = icmp eq %struct.task_struct* %7, null
  %spec.select.v = select i1 %tobool47.not, i32 -1073741824, i32 -2147483648
  %spec.select = or i32 %spec.select.v, %call45
  %call51 = call fastcc i32 @get_futex_value_locked(i32* noundef nonnull %uval, i32* noundef %uaddr) #18
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond.preheader, label %handle_err

for.cond.preheader:                               ; preds = %if.end44
  %uval.promoted = load i32, i32* %uval, align 4
  %and166 = and i32 %uval.promoted, 1073741824
  %or55167 = or i32 %spec.select, %and166
  %call56168 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr, i32 noundef %uval.promoted, i32 noundef %or55167) #18
  %tobool57.not169 = icmp eq i32 %call56168, 0
  br i1 %tobool57.not169, label %if.end59, label %handle_err.loopexit

for.cond:                                         ; preds = %if.end59
  %and = and i32 %9, 1073741824
  %or55 = or i32 %spec.select, %and
  %call56 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr, i32 noundef %9, i32 noundef %or55) #18
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %handle_err.loopexit

if.end59:                                         ; preds = %for.cond.preheader, %for.cond
  %8 = phi i32 [ %9, %for.cond ], [ %uval.promoted, %for.cond.preheader ]
  %9 = load i32, i32* %curval, align 4
  %cmp60 = icmp eq i32 %9, %8
  br i1 %cmp60, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end59
  call fastcc void @pi_state_update_owner(%struct.futex_pi_state* noundef %0, %struct.task_struct* noundef %newowner.0) #18
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %11 = inttoptr i64 %10 to %struct.task_struct*
  %cmp65 = icmp eq %struct.task_struct* %11, %argowner
  %conv66 = zext i1 %cmp65 to i32
  br label %cleanup

handle_err.loopexit:                              ; preds = %for.cond, %for.cond.preheader
  %.lcssa = phi i32 [ %uval.promoted, %for.cond.preheader ], [ %9, %for.cond ]
  %call56.lcssa = phi i32 [ %call56168, %for.cond.preheader ], [ %call56, %for.cond ]
  store i32 %.lcssa, i32* %uval, align 4
  br label %handle_err

handle_err:                                       ; preds = %handle_err.loopexit, %if.end44
  %err.0 = phi i32 [ %call51, %if.end44 ], [ %call56.lcssa, %handle_err.loopexit ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %12 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  switch i32 %err.0, label %if.then81 [
    i32 -14, label %sw.bb
    i32 -11, label %sw.bb69
  ]

sw.bb:                                            ; preds = %handle_err
  %call68 = call fastcc i32 @fault_in_user_writeable(i32* noundef %uaddr) #18
  br label %sw.epilog

sw.bb69:                                          ; preds = %handle_err.thread, %handle_err
  call fastcc void @_cond_resched() #18
  br label %sw.epilog

if.then81:                                        ; preds = %handle_err
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 2714; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !95
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then81, %sw.bb69, %sw.bb
  %err.1 = phi i32 [ %err.0, %if.then81 ], [ 0, %sw.bb69 ], [ %call68, %sw.bb ]
  %13 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %rlock.i150 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i150) #19
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  %14 = load %struct.task_struct*, %struct.task_struct** %owner, align 8
  %cmp95.not = icmp eq %struct.task_struct* %14, %3
  br i1 %cmp95.not, label %if.end101, label %if.then97

if.then97:                                        ; preds = %sw.epilog
  %15 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %16 = inttoptr i64 %15 to %struct.task_struct*
  %cmp99 = icmp eq %struct.task_struct* %16, %argowner
  %conv100 = zext i1 %cmp99 to i32
  br label %cleanup

if.end101:                                        ; preds = %sw.epilog
  %tobool102.not = icmp eq i32 %err.1, 0
  br i1 %tobool102.not, label %retry, label %if.end104

if.end104:                                        ; preds = %if.end101
  %call106 = call fastcc %struct.task_struct* @rt_mutex_owner(%struct.rt_mutex_base* noundef %pi_mutex) #18
  call fastcc void @pi_state_update_owner(%struct.futex_pi_state* noundef %0, %struct.task_struct* noundef %call106) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end, %if.then, %if.end104, %if.then97, %for.end
  %retval.0 = phi i32 [ %conv100, %if.then97 ], [ %err.1, %if.end104 ], [ %conv66, %for.end ], [ 1, %if.end31 ], [ 1, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_futex_trylock(%struct.rt_mutex_base* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wake_futex_pi(i32* noundef %uaddr, i32 noundef %uval, %struct.futex_pi_state* noundef %pi_state) unnamed_addr #0 {
entry:
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %curval = alloca i32, align 4
  %0 = bitcast %struct.rt_wake_q_head* %wqh to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  %first = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 0
  store %struct.wake_q_node* inttoptr (i64 1 to %struct.wake_q_node*), %struct.wake_q_node** %first, align 8
  %lastp = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 0, i32 1
  store %struct.wake_q_node** %first, %struct.wake_q_node*** %lastp, align 8
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, %struct.rt_wake_q_head* %wqh, i64 0, i32 1
  store %struct.task_struct* null, %struct.task_struct** %rtlock_task, align 8
  %1 = bitcast i32* %curval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #20
  store i32 0, i32* %curval, align 4, !annotation !9
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, %struct.futex_pi_state* %pi_state, i64 0, i32 1
  %call = call fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef %pi_mutex) #18
  %tobool.not = icmp eq %struct.rt_mutex_waiter* %call, null
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 1563; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !96
  br label %out_unlock.thread

if.end20:                                         ; preds = %entry
  %task = getelementptr inbounds %struct.rt_mutex_waiter, %struct.rt_mutex_waiter* %call, i64 0, i32 2
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call21 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #18
  %or = or i32 %call21, -2147483648
  %call32 = call fastcc i32 @cmpxchg_futex_value_locked(i32* noundef nonnull %curval, i32* noundef %uaddr, i32 noundef %uval, i32 noundef %or) #18
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %out_unlock.thread

land.lhs.true:                                    ; preds = %if.end20
  %3 = load i32, i32* %curval, align 4
  %cmp.not = icmp eq i32 %3, %uval
  br i1 %cmp.not, label %out_unlock, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %and = and i32 %3, 1073741823
  %cmp36 = icmp eq i32 %and, %uval
  %. = select i1 %cmp36, i32 -11, i32 -22
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %if.then, %if.end20, %if.then35
  %ret.1.ph = phi i32 [ -11, %if.then ], [ %., %if.then35 ], [ %call32, %if.end20 ]
  %wait_lock69 = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %pi_mutex, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock69) #18
  br label %if.end49

out_unlock:                                       ; preds = %land.lhs.true
  call fastcc void @pi_state_update_owner(%struct.futex_pi_state* noundef %pi_state, %struct.task_struct* noundef %2) #18
  %call44 = call i1 @__rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef %pi_mutex, %struct.rt_wake_q_head* noundef nonnull %wqh) #19
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %pi_mutex, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %wait_lock) #18
  br i1 %call44, label %if.then48, label %if.end49

if.then48:                                        ; preds = %out_unlock
  call void @rt_mutex_postunlock(%struct.rt_wake_q_head* noundef nonnull %wqh) #19
  br label %if.end49

if.end49:                                         ; preds = %out_unlock.thread, %if.then48, %out_unlock
  %ret.170 = phi i32 [ %ret.1.ph, %out_unlock.thread ], [ 0, %if.then48 ], [ 0, %out_unlock ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i32 %ret.170
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rt_mutex_waiter* @rt_mutex_top_waiter(%struct.rt_mutex_base* noundef readonly %lock) unnamed_addr #0 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rt_mutex_base, %struct.rt_mutex_base* %lock, i64 0, i32 1, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.rb_node* %0 to %struct.rt_mutex_waiter*
  %lock2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i64 2, i32 1
  %2 = bitcast %struct.rb_node** %lock2 to %struct.rt_mutex_base**
  %3 = load %struct.rt_mutex_base*, %struct.rt_mutex_base** %2, align 8
  %cmp.not = icmp eq %struct.rt_mutex_base* %3, %lock
  br i1 %cmp.not, label %if.end14, label %do.body6, !prof !7

do.body6:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/locking/rtmutex_common.h\22; .popsection; .long 14472b - 14470b; .short 118; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !97
  unreachable

if.end14:                                         ; preds = %if.then, %entry
  %w.0 = phi %struct.rt_mutex_waiter* [ %1, %if.then ], [ null, %entry ]
  ret %struct.rt_mutex_waiter* %w.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__rt_mutex_futex_unlock(%struct.rt_mutex_base* noundef, %struct.rt_wake_q_head* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_postunlock(%struct.rt_wake_q_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @futex_requeue_pi_wakeup_sync(%struct.futex_q* noundef %q) unnamed_addr #0 {
entry:
  %requeue_state = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 8
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %requeue_state, i64 0, i32 0
  %0 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i) #20, !srcloc !78
  %1 = bitcast %struct.atomic_t* %requeue_state to i8*
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %old.0 = phi i32 [ %0, %entry ], [ %call11.i.i.i, %if.end ]
  %cmp = icmp sgt i32 %old.0, 3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %cmp1 = icmp eq i32 %old.0, 0
  %spec.store.select = select i1 %cmp1, i32 1, i32 3
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %old.0, i32 noundef %spec.store.select) #19
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %do.end, label %do.body, !prof !7

do.end:                                           ; preds = %if.end
  %cmp6 = icmp eq i32 %old.0, 2
  br i1 %cmp6, label %for.cond.preheader, label %if.end16

for.cond.preheader:                               ; preds = %do.end
  %2 = load volatile i32, i32* %counter.i.i, align 4
  %cmp12.not36 = icmp eq i32 %2, 3
  br i1 %cmp12.not36, label %if.end14, label %if.end16

if.end14:                                         ; preds = %for.cond.preheader, %if.end14
  call fastcc void @__cmpwait_case_32(i8* noundef %1) #19
  %3 = load volatile i32, i32* %counter.i.i, align 4
  %cmp12.not = icmp eq i32 %3, 3
  br i1 %cmp12.not, label %if.end14, label %if.end16

if.end16:                                         ; preds = %if.end14, %for.cond.preheader, %do.end
  %4 = load volatile i32, i32* %counter.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end16
  %retval.0 = phi i32 [ %4, %if.end16 ], [ %old.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_early_requeue_pi_wakeup(%struct.futex_hash_bucket* noundef %hb, %struct.futex_q* noundef %q, %struct.hrtimer_sleeper* noundef readonly %timeout) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 2
  %0 = load %struct.spinlock*, %struct.spinlock** %lock_ptr, align 8
  %cmp.not = icmp eq %struct.spinlock* %lock, %0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/futex.c\22; .popsection; .long 14472b - 14470b; .short 3348; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !98
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.futex_q, %struct.futex_q* %q, i64 0, i32 0
  %chain = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %hb, i64 0, i32 2
  call void @plist_del(%struct.plist_node* noundef %list, %struct.plist_head* noundef %chain) #19
  call fastcc void @hb_waiters_dec(%struct.futex_hash_bucket* noundef %hb) #18
  %tobool14.not = icmp eq %struct.hrtimer_sleeper* %timeout, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %timeout, i64 0, i32 1
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool15.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool15.not, label %if.end21, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call17 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %3) #18
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 -11, i32 -513
  br label %if.end21

if.end21:                                         ; preds = %if.else, %land.lhs.true
  %ret.0 = phi i32 [ -110, %land.lhs.true ], [ %spec.select, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 3, i64* elementtype(i64) %0) #20, !srcloc !99
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_futex(i32* noundef %uaddr, i32 noundef %op, i32 noundef %val, %struct.__kernel_timespec* noundef %utime, i32* noundef %uaddr2, i32 noundef %val3) unnamed_addr #0 {
entry:
  %t = alloca i64, align 8
  %ts = alloca %struct.timespec64, align 8
  %and = and i32 %op, -385
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64 0, i64* %t, align 8, !annotation !9
  %1 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.__kernel_timespec* %utime, null
  br i1 %tobool.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  switch i32 %and, label %if.end17 [
    i32 0, label %if.then
    i32 6, label %if.then
    i32 13, label %if.then
    i32 9, label %if.then
    i32 11, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %call8 = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %utime) #19
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.then
  %call.i = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef nonnull %ts) #19
  br i1 %call.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %if.end11
  %.elt.i = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %.unpack.i = load i64, i64* %.elt.i, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack.i, 0
  %3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %.unpack17.i = load i64, i64* %3, align 8
  %4 = insertvalue [2 x i64] %2, i64 %.unpack17.i, 1
  %call1.i = call fastcc i64 @timespec64_to_ktime([2 x i64] %4) #19
  store i64 %call1.i, i64* %t, align 8
  %cond.i = icmp eq i32 %and, 0
  br i1 %cond.i, label %if.then2.i, label %if.end17

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call i64 @ktime_get() #19
  %call4.i = call i64 @ktime_add_safe(i64 noundef %call3.i, i64 noundef %call1.i) #19
  store i64 %call4.i, i64* %t, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end.i, %if.then2.i, %land.lhs.true, %entry
  %tp.0 = phi i64* [ null, %entry ], [ null, %land.lhs.true ], [ %t, %if.then2.i ], [ %t, %if.end.i ]
  %5 = ptrtoint %struct.__kernel_timespec* %utime to i64
  %conv18 = trunc i64 %5 to i32
  %call19 = call i64 @do_futex(i32* noundef %uaddr, i32 noundef %op, i32 noundef %val, i64* noundef %tp.0, i32* noundef %uaddr2, i32 noundef %conv18, i32 noundef %val3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then, %if.end17
  %retval.0 = phi i64 [ %call19, %if.end17 ], [ -14, %if.then ], [ -22, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #12 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp1 = icmp ult i64 %1, 1000000000
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #13 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #18
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #13 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !8
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #10 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #18
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #19
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @alloc_large_system_hash(i8* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_head_init(%struct.plist_head* noundef %head) unnamed_addr #9 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #10 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #20, !range !100
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 1553256}
!11 = !{i64 2155259396, i64 2155259433, i64 2155259450, i64 2155259485, i64 2155259507, i64 2155259533, i64 2155259556, i64 2155259574, i64 2155259733, i64 2155259774, i64 2155259796, i64 2155259842}
!12 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!13 = !{i64 2155298244}
!14 = !{i64 2155301946, i64 2155301983, i64 2155302000, i64 2155302035, i64 2155302057, i64 2155302083, i64 2155302106, i64 2155302124, i64 2155302283, i64 2155302324, i64 2155302346, i64 2155302392}
!15 = !{i64 2155305037}
!16 = !{i64 2155308923}
!17 = !{i64 2155331810, i64 2155331848, i64 2155331865, i64 2155331899, i64 2155331921, i64 2155331947, i64 2155331965, i64 2155332123, i64 2155332164, i64 2155332186, i64 2155332232}
!18 = !{i64 2155335735, i64 2155335773, i64 2155335790, i64 2155335824, i64 2155335846, i64 2155335872, i64 2155335890, i64 2155336048, i64 2155336089, i64 2155336111, i64 2155336157}
!19 = !{i64 4106465, i64 4106548, i64 4106772, i64 4106992, i64 4107015}
!20 = !{i64 4111167, i64 4111191}
!21 = !{i64 2151663951}
!22 = !{i64 2149830025}
!23 = !{i64 2149830242}
!24 = !{i64 2149552971}
!25 = !{i64 2149577824}
!26 = !{i64 2149315355, i64 2149315402, i64 2149315408, i64 2149315445, i64 2149315463, i64 2149316804, i64 2149316852, i64 2149316900, i64 2149316963, i64 2149317012, i64 2149315541, i64 2149315566, i64 2149315592, i64 2149315598, i64 2149316470, i64 2149316510, i64 2149316528, i64 2149316560, i64 2149316588, i64 2149316642, i64 2149316662, i64 2149316759, i64 2149315621, i64 2149315635, i64 2149315641, i64 2149315691, i64 2149315737, i64 2149315770}
!27 = !{i64 2148024998, i64 2148025031, i64 2148025084, i64 2148025143, i64 2148025177, i64 2148025232, i64 2148025261, i64 2148025281}
!28 = !{i64 2149367251}
!29 = !{i64 2149305899, i64 2149305946, i64 2149305952, i64 2149305989, i64 2149306007, i64 2149307347, i64 2149307395, i64 2149307443, i64 2149307506, i64 2149307555, i64 2149306085, i64 2149306110, i64 2149306136, i64 2149306142, i64 2149307013, i64 2149307053, i64 2149307071, i64 2149307103, i64 2149307131, i64 2149307185, i64 2149307205, i64 2149307302, i64 2149306165, i64 2149306179, i64 2149306185, i64 2149306235, i64 2149306281, i64 2149306314}
!30 = !{i64 2155350162, i64 2155350199, i64 2155350216, i64 2155350251, i64 2155350273, i64 2155350299, i64 2155350322, i64 2155350340, i64 2155350499, i64 2155350540, i64 2155350562, i64 2155350608}
!31 = !{i64 2155188277}
!32 = !{i64 2155189860}
!33 = !{i64 2155345966, i64 2155346003, i64 2155346020, i64 2155346055, i64 2155346077, i64 2155346103, i64 2155346126, i64 2155346144, i64 2155346303, i64 2155346344, i64 2155346366, i64 2155346412}
!34 = !{i64 2155339309, i64 2155339346, i64 2155339363, i64 2155339398, i64 2155339420, i64 2155339446, i64 2155339469, i64 2155339487, i64 2155339646, i64 2155339687, i64 2155339709, i64 2155339755}
!35 = !{i64 2155342385}
!36 = !{i64 2151669144}
!37 = !{i64 7614374, i64 7614412, i64 7614436, i64 7614456, i64 7614479, i64 7614497, i64 7614523, i64 7614540, i64 7614563, i64 7614581, i64 7614599, i64 7614606, i64 7614619, i64 7614626, i64 7614658, i64 7614678, i64 7614688, i64 2155112660, i64 2155112701, i64 2155112723, i64 2155112769, i64 2155112796, i64 2155112837, i64 2155112859, i64 2155112905}
!38 = !{i64 2151669351}
!39 = !{i64 2151661162, i64 2151661209, i64 2151661215, i64 2151661252, i64 2151661270, i64 2151662509, i64 2151662557, i64 2151662605, i64 2151662668, i64 2151662717, i64 2151661348, i64 2151661373, i64 2151661399, i64 2151661405, i64 2151662478, i64 2151661442, i64 2151661448, i64 2151661498, i64 2151661544, i64 2151661577}
!40 = !{i64 2151653831, i64 2151653878, i64 2151653884, i64 2151653921, i64 2151653939, i64 2151655126, i64 2151655174, i64 2151655222, i64 2151655285, i64 2151655334, i64 2151654017, i64 2151654042, i64 2151654068, i64 2151654074, i64 2151655095, i64 2151654111, i64 2151654117, i64 2151654167, i64 2151654213, i64 2151654246}
!41 = !{i64 2151658682, i64 2151658729, i64 2151658735, i64 2151658772, i64 2151658790, i64 2151660029, i64 2151660077, i64 2151660125, i64 2151660188, i64 2151660237, i64 2151658868, i64 2151658893, i64 2151658919, i64 2151658925, i64 2151659998, i64 2151658962, i64 2151658968, i64 2151659018, i64 2151659064, i64 2151659097}
!42 = !{i64 2151656254, i64 2151656301, i64 2151656307, i64 2151656344, i64 2151656362, i64 2151657549, i64 2151657597, i64 2151657645, i64 2151657708, i64 2151657757, i64 2151656440, i64 2151656465, i64 2151656491, i64 2151656497, i64 2151657518, i64 2151656534, i64 2151656540, i64 2151656590, i64 2151656636, i64 2151656669}
!43 = !{i64 1901736}
!44 = !{i64 2149563679}
!45 = !{i64 2149570960}
!46 = !{i64 2148014399, i64 2148014432, i64 2148014484, i64 2148014543, i64 2148014577, i64 2148014632, i64 2148014661, i64 2148014681}
!47 = !{i64 2148016017, i64 2148016050, i64 2148016101, i64 2148016157, i64 2148016190, i64 2148016244, i64 2148016273, i64 2148016293}
!48 = !{i64 2149548678}
!49 = !{i64 2155179724}
!50 = !{i64 2155181478}
!51 = !{i64 2149574521}
!52 = !{i64 2149871973}
!53 = !{i64 2147942821, i64 2147943495, i64 2147943525, i64 2147943557, i64 2147943591, i64 2147943627, i64 2147943652}
!54 = !{i64 2149321058, i64 2149321105, i64 2149321111, i64 2149321148, i64 2149321166, i64 2149322477, i64 2149322525, i64 2149322573, i64 2149322636, i64 2149322685, i64 2149321244, i64 2149321269, i64 2149321295, i64 2149321301, i64 2149322143, i64 2149322183, i64 2149322201, i64 2149322233, i64 2149322261, i64 2149322315, i64 2149322335, i64 2149322432, i64 2149321324, i64 2149321338, i64 2149321344, i64 2149321394, i64 2149321440, i64 2149321473}
!55 = !{i64 2149323237, i64 2149323284, i64 2149323290, i64 2149323327, i64 2149323345, i64 2149324288, i64 2149324336, i64 2149324384, i64 2149324447, i64 2149324496, i64 2149323423, i64 2149323448, i64 2149323474, i64 2149323480, i64 2149323517, i64 2149323523, i64 2149323573, i64 2149323619, i64 2149323652}
!56 = !{i64 2149331132, i64 2149331179, i64 2149331185, i64 2149331222, i64 2149331240, i64 2149332551, i64 2149332599, i64 2149332647, i64 2149332710, i64 2149332759, i64 2149331318, i64 2149331343, i64 2149331369, i64 2149331375, i64 2149332217, i64 2149332257, i64 2149332275, i64 2149332307, i64 2149332335, i64 2149332389, i64 2149332409, i64 2149332506, i64 2149331398, i64 2149331412, i64 2149331418, i64 2149331468, i64 2149331514, i64 2149331547}
!57 = !{i64 2155290476, i64 2155290513, i64 2155290530, i64 2155290565, i64 2155290587, i64 2155290613, i64 2155290636, i64 2155290654, i64 2155290813, i64 2155290854, i64 2155290876, i64 2155290922}
!58 = !{i64 2155285527}
!59 = !{i64 2155275529}
!60 = !{!"branch_weights", i32 2000, i32 2002}
!61 = !{i64 2155170706, i64 2155170743, i64 2155170760, i64 2155170795, i64 2155170817, i64 2155170843, i64 2155170866, i64 2155170884, i64 2155171043, i64 2155171084, i64 2155171106, i64 2155171152}
!62 = !{i64 2155153788}
!63 = !{i64 2147997043, i64 2147997713, i64 2147997743, i64 2147997775, i64 2147997807, i64 2147997841, i64 2147997866}
!64 = !{i64 2147935648, i64 2147936296, i64 2147936326, i64 2147936358, i64 2147936392, i64 2147936428, i64 2147936453}
!65 = !{i64 2147966609, i64 2147971318, i64 2147971348, i64 2147971379, i64 2147971411, i64 2147971446, i64 2147971471}
!66 = !{i64 2155151477}
!67 = !{i64 2147925075, i64 2147925591, i64 2147925621, i64 2147925648, i64 2147925682, i64 2147925712}
!68 = !{i64 2147934796, i64 2147935312, i64 2147935342, i64 2147935369, i64 2147935403, i64 2147935433}
!69 = !{i64 2155199621}
!70 = !{i64 2155201208}
!71 = !{i64 2155151882}
!72 = !{i64 2155205269}
!73 = !{i64 2155206432}
!74 = !{i64 2147931039, i64 2147931703, i64 2147931733, i64 2147931765, i64 2147931799, i64 2147931834, i64 2147931859}
!75 = !{i64 2155193880}
!76 = !{i64 2155195550}
!77 = !{i64 2155183236}
!78 = !{i64 2148204833}
!79 = !{i64 2155255449}
!80 = !{i64 2155248050}
!81 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!82 = !{i64 2155249718}
!83 = !{i64 2155191876}
!84 = !{i64 2155197161}
!85 = !{i64 2155173913}
!86 = !{i64 2148038145, i64 2148038178, i64 2148038230, i64 2148038289, i64 2148038323, i64 2148038379, i64 2148038408, i64 2148038435}
!87 = !{i64 2155107033, i64 2155107066, i64 2155107682, i64 2155107112, i64 2155107145, i64 2155107169, i64 2155107198, i64 2155107223, i64 2155107248, i64 2155107265, i64 2155107286, i64 2155107324, i64 2155107346, i64 2155107373, i64 2155107391, i64 2155107728, i64 2155107769, i64 2155107791, i64 2155107837, i64 2155107864, i64 2155107905, i64 2155107927, i64 2155107973}
!88 = !{i64 2155108136, i64 2155108169, i64 2155108785, i64 2155108215, i64 2155108248, i64 2155108272, i64 2155108301, i64 2155108326, i64 2155108351, i64 2155108368, i64 2155108389, i64 2155108427, i64 2155108449, i64 2155108476, i64 2155108494, i64 2155108836, i64 2155108877, i64 2155108899, i64 2155108945, i64 2155108972, i64 2155109013, i64 2155109035, i64 2155109081}
!89 = !{i64 2155109244, i64 2155109277, i64 2155109893, i64 2155109323, i64 2155109356, i64 2155109380, i64 2155109409, i64 2155109434, i64 2155109459, i64 2155109476, i64 2155109497, i64 2155109535, i64 2155109557, i64 2155109584, i64 2155109602, i64 2155109944, i64 2155109985, i64 2155110007, i64 2155110053, i64 2155110080, i64 2155110121, i64 2155110143, i64 2155110189}
!90 = !{i64 2155110352, i64 2155110385, i64 2155111001, i64 2155110431, i64 2155110464, i64 2155110488, i64 2155110517, i64 2155110542, i64 2155110567, i64 2155110584, i64 2155110605, i64 2155110643, i64 2155110665, i64 2155110692, i64 2155110710, i64 2155111053, i64 2155111094, i64 2155111116, i64 2155111162, i64 2155111189, i64 2155111230, i64 2155111252, i64 2155111298}
!91 = !{i64 2155111461, i64 2155111494, i64 2155112110, i64 2155111540, i64 2155111573, i64 2155111597, i64 2155111626, i64 2155111651, i64 2155111676, i64 2155111693, i64 2155111714, i64 2155111752, i64 2155111774, i64 2155111801, i64 2155111819, i64 2155112161, i64 2155112202, i64 2155112224, i64 2155112270, i64 2155112297, i64 2155112338, i64 2155112360, i64 2155112406}
!92 = !{i64 2155282708}
!93 = !{i64 2155276874}
!94 = !{i64 2155278627}
!95 = !{i64 2155280550}
!96 = !{i64 2155211250}
!97 = !{i64 2155131312}
!98 = !{i64 2155306973}
!99 = !{i64 2148087761, i64 2148087781, i64 2148087799, i64 2148087842, i64 2148087895, i64 2148087928, i64 2148087946}
!100 = !{i64 0, i64 65}
