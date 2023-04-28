; ModuleID = 'kernel/kthread.c'
source_filename = "kernel/kthread.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.5, %union.anon.45, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
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
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.71 = type { %struct.callback_head }
%union.anon.72 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.23 }
%union.anon.23 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.29 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.29 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.45 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.58, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.58 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.65, %union.anon.66, i32 }
%struct.request_queue = type opaque
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
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
%struct.sched_param = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kthread = type { i64, i32, i32 (i8*)*, i8*, %struct.mm_segment_t, %struct.completion, %struct.completion }
%struct.mm_segment_t = type {}
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.kthread_create_info = type { i32 (i8*)*, i8*, i32, %struct.task_struct*, %struct.completion*, %struct.list_head }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, {}*, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_flush_work = type { %struct.kthread_work, %struct.completion }

@.str = private unnamed_addr constant [9 x i8] c"kthreadd\00", align 1
@kthread_create_list = internal global %struct.list_head { %struct.list_head* @kthread_create_list, %struct.list_head* @kthread_create_list }, align 8
@kthread_create_lock = internal global %struct.spinlock zeroinitializer, align 4
@kthreadd_task = dso_local local_unnamed_addr global %struct.task_struct* null, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__kthread_create_on_node.param = internal constant %struct.sched_param zeroinitializer, align 4
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_kthread_struct(%struct.task_struct* nocapture noundef %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @__to_kthread(%struct.task_struct* noundef %p) #12
  %tobool.not = icmp eq %struct.kthread* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc(i64 noundef 96) #12
  %set_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 64
  %0 = bitcast i32** %set_child_tid to i8**
  store i8* %call1, i8** %0, align 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kthread* @__to_kthread(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %set_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 64
  %0 = bitcast i32** %set_child_tid to i8**
  %1 = load i8*, i8** %0, align 16
  %tobool.not = icmp eq i8* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2097152
  %tobool1.not = icmp eq i32 %and, 0
  %3 = bitcast i8* %1 to %struct.kthread*
  %phi.cast = select i1 %tobool1.not, %struct.kthread* null, %struct.kthread* %3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %kthread.0 = phi %struct.kthread* [ null, %entry ], [ %phi.cast, %land.lhs.true ]
  ret %struct.kthread* %kthread.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #13
  ret i8* %call10.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_kthread_struct(%struct.task_struct* nocapture noundef readonly %k) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %0 = bitcast %struct.kthread* %call to i8*
  call void @kfree(i8* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kthread* @to_kthread(%struct.task_struct* nocapture noundef readonly %k) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %k, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 73; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %set_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %k, i64 0, i32 64
  %1 = bitcast i32** %set_child_tid to %struct.kthread**
  %2 = load %struct.kthread*, %struct.kthread** %1, align 16
  ret %struct.kthread* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_should_stop() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %1) #12
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags, align 8
  %3 = and i64 %2, 2
  %tobool = icmp ne i64 %3, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__kthread_should_park(%struct.task_struct* nocapture noundef readonly %k) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 4
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_should_park() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call i1 @__kthread_should_park(%struct.task_struct* noundef %1) #12
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_freezable_should_stop(i8* noundef writeonly %was_frozen) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %tobool7.not = icmp eq i8* %was_frozen, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %entry
  store i8 0, i8* %was_frozen, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %entry
  %call12 = call i1 @kthread_should_stop() #12
  ret i1 %call12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @kthread_func(%struct.task_struct* nocapture noundef readonly %task) local_unnamed_addr #2 {
entry:
  %call = call fastcc %struct.kthread* @__to_kthread(%struct.task_struct* noundef %task) #12
  %tobool.not = icmp eq %struct.kthread* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %threadfn = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 2
  %0 = bitcast i32 (i8*)** %threadfn to i8**
  %1 = load i8*, i8** %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kthread_data(%struct.task_struct* nocapture noundef readonly %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %task) #12
  %data = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 3
  %0 = load i8*, i8** %data, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kthread_probe_data(%struct.task_struct* nocapture noundef readonly %task) local_unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %call = call fastcc %struct.kthread* @__to_kthread(%struct.task_struct* noundef %task) #12
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %data, align 8
  %tobool.not = icmp eq %struct.kthread* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %data1 = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 3
  %1 = bitcast i8** %data1 to i8*
  %call2 = call i64 @copy_from_kernel_nofault(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #13
  %.pre = load i8*, i8** %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i8* [ %.pre, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_from_kernel_nofault(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_parkme() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %1) #12
  call fastcc void @__kthread_parkme(%struct.kthread* noundef %call1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kthread_parkme(%struct.kthread* noundef %self) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  %call250 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #12
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 64, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call250) #12
  %flags28 = getelementptr inbounds %struct.kthread, %struct.kthread* %self, i64 0, i32 0
  %2 = load volatile i64, i64* %flags28, align 8
  %3 = and i64 %2, 4
  %tobool.not51 = icmp eq i64 %3, 0
  br i1 %tobool.not51, label %do.body38, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %parked = getelementptr inbounds %struct.kthread, %struct.kthread* %self, i64 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  call void @complete(%struct.completion* noundef %parked) #13
  call void @schedule_preempt_disabled() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #12
  store volatile i32 64, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call2) #12
  %4 = load volatile i64, i64* %flags28, align 8
  %5 = and i64 %4, 4
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %do.body38, label %if.end

do.body38:                                        ; preds = %if.end, %entry
  store volatile i32 0, i32* %__state, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @tsk_fork_get_node(%struct.task_struct* nocapture noundef readnone %tsk) local_unnamed_addr #4 {
entry:
  ret i32 -1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef %threadfn, i8* noundef %data, i32 noundef %node, i8* noundef %namefmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !12
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.task_struct* @__kthread_create_on_node(i32 (i8*)* noundef %threadfn, i8* noundef %data, i32 noundef %node, i8* noundef %namefmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  ret %struct.task_struct* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @__kthread_create_on_node(i32 (i8*)* noundef %threadfn, i8* noundef %data, i32 noundef %node, i8* noundef %namefmt, %"struct.std::__va_list"* nocapture noundef readonly %args) unnamed_addr #0 {
entry:
  %done = alloca %struct.completion, align 8
  %name = alloca [16 x i8], align 1
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.completion* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %1 = bitcast %struct.completion* %done to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #13
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %3 = bitcast i8* %call6 to %struct.task_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %threadfn7 = bitcast i8* %call.i.i to i32 (i8*)**
  store i32 (i8*)* %threadfn, i32 (i8*)** %threadfn7, align 8
  %data8 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %4 = bitcast i8* %data8 to i8**
  store i8* %data, i8** %4, align 8
  %node9 = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %5 = bitcast i8* %node9 to i32*
  store i32 %node, i32* %5, align 8
  %done10 = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %6 = bitcast i8* %done10 to %struct.completion**
  store %struct.completion* %done, %struct.completion** %6, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  %list = getelementptr inbounds i8, i8* %call.i.i, i64 40
  %7 = bitcast i8* %list to %struct.list_head*
  call fastcc void @list_add_tail(%struct.list_head* noundef %7, %struct.list_head* noundef nonnull @kthread_create_list) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  %8 = load %struct.task_struct*, %struct.task_struct** @kthreadd_task, align 8
  %call11 = call i32 @wake_up_process(%struct.task_struct* noundef %8) #13
  %call12 = call i32 @wait_for_completion_killable(%struct.completion* noundef nonnull %done) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end24, label %if.then16, !prof !13

if.then16:                                        ; preds = %if.end
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %done10) #13
  %tobool20.not = icmp eq i64 %call11.i, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then16
  %call22 = call fastcc i8* @ERR_PTR(i64 noundef -4) #12
  %9 = bitcast i8* %call22 to %struct.task_struct*
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  call void @wait_for_completion(%struct.completion* noundef nonnull %done) #13
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  %result = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %10 = bitcast i8* %result to %struct.task_struct**
  %11 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %12 = bitcast %struct.task_struct* %11 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef %12) #12
  br i1 %call25, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end24
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %13, i8 0, i64 16, i1 false), !annotation !12
  %14 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #14
  %15 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef align 8 dereferenceable(32) %15, i64 32, i1 false)
  %call27 = call i32 @vsnprintf(i8* noundef nonnull %13, i64 noundef 16, i8* noundef %namefmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #14
  call fastcc void @set_task_comm(%struct.task_struct* noundef %11, i8* noundef nonnull %13) #12
  %call29 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef %11, i32 noundef 0, %struct.sched_param* noundef nonnull @__kthread_create_on_node.param) #13
  %call31 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %11, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end24
  call void @kfree(i8* noundef nonnull %call.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then21, %if.then
  %retval.0 = phi %struct.task_struct* [ %9, %if.then21 ], [ %11, %if.end32 ], [ %3, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  ret %struct.task_struct* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_bind_mask(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  call fastcc void @__kthread_bind_mask(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask, i32 noundef 2) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kthread_bind_mask(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask, i32 noundef %state) unnamed_addr #0 {
entry:
  %call = call i64 @wait_task_inactive(%struct.task_struct* noundef %p, i32 noundef %state) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 465; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  br label %cleanup

do.body:                                          ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #12
  call void @do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask) #13
  %flags16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags16, align 4
  %or = or i32 %0, 67108864
  store i32 %or, i32* %flags16, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_bind(%struct.task_struct* noundef %p, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call fastcc void @__kthread_bind(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef 2) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kthread_bind(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %state) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #12
  call fastcc void @__kthread_bind_mask(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %call, i32 noundef %state) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @kthread_create_on_cpu(i32 (i8*)* noundef %threadfn, i8* noundef %data, i32 noundef %cpu, i8* noundef %namefmt) local_unnamed_addr #0 {
entry:
  %call = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef %threadfn, i8* noundef %data, i32 noundef 0, i8* noundef %namefmt, i32 noundef %cpu) #12
  %0 = bitcast %struct.task_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #12
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kthread_bind(%struct.task_struct* noundef %call, i32 noundef %cpu) #12
  %call2 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %call) #12
  %cpu3 = getelementptr inbounds %struct.kthread, %struct.kthread* %call2, i64 0, i32 1
  store i32 %cpu, i32* %cpu3, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.task_struct* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_set_per_cpu(%struct.task_struct* nocapture noundef readonly %k, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %tobool.not = icmp eq %struct.kthread* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %k, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 67108864
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then10, label %if.end11, !prof !7

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 533; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %cmp = icmp slt i32 %cpu, 0
  br i1 %cmp, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end11
  %flags21 = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags21) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %cpu23 = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 1
  store i32 %cpu, i32* %cpu23, align 8
  %flags24 = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags24) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end22, %if.then20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @kthread_is_per_cpu(%struct.task_struct* nocapture noundef readonly %p) local_unnamed_addr #8 {
entry:
  %call = call fastcc %struct.kthread* @__to_kthread(%struct.task_struct* noundef %p) #12
  %tobool.not = icmp eq %struct.kthread* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %conv.i5 = and i64 %0, 1
  %tobool2 = icmp ne i64 %conv.i5, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_unpark(%struct.task_struct* noundef %k) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %conv.i9 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 1
  %1 = load i32, i32* %cpu, align 8
  call fastcc void @__kthread_bind(%struct.task_struct* noundef %k, i32 noundef %1, i32 noundef 64) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %flags) #12
  %call3 = call i32 @wake_up_state(%struct.task_struct* noundef %k, i32 noundef 64) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kthread_park(%struct.task_struct* noundef %k) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %k, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 596; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  br label %cleanup

if.end17:                                         ; preds = %entry
  %flags19 = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 0
  %1 = load volatile i64, i64* %flags19, align 8
  %2 = and i64 %1, 4
  %tobool21.not = icmp eq i64 %2, 0
  br i1 %tobool21.not, label %if.end46, label %if.then34, !prof !13

if.then34:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 599; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  br label %cleanup

if.end46:                                         ; preds = %if.end17
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags19) #12
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %4, %k
  br i1 %cmp.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %if.end46
  %call51 = call i32 @wake_up_process(%struct.task_struct* noundef %k) #13
  %parked = getelementptr inbounds %struct.kthread, %struct.kthread* %call, i64 0, i32 5
  call void @wait_for_completion(%struct.completion* noundef %parked) #13
  %call53 = call i64 @wait_task_inactive(%struct.task_struct* noundef %k, i32 noundef 64) #13
  %tobool54.not = icmp eq i64 %call53, 0
  br i1 %tobool54.not, label %if.then69, label %cleanup, !prof !7

if.then69:                                        ; preds = %if.then50
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 614; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then, %if.end46, %if.then69, %if.then50
  %retval.0 = phi i32 [ -38, %if.then ], [ -16, %if.then34 ], [ 0, %if.then50 ], [ 0, %if.then69 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_task_inactive(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kthread_stop(%struct.task_struct* noundef %k) local_unnamed_addr #0 {
entry:
  call fastcc void @get_task_struct(%struct.task_struct* noundef %k) #12
  %call1 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %k) #12
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call1, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags) #12
  call void @kthread_unpark(%struct.task_struct* noundef %k) #12
  %call2 = call i32 @wake_up_process(%struct.task_struct* noundef %k) #13
  %exited = getelementptr inbounds %struct.kthread, %struct.kthread* %call1, i64 0, i32 6
  call void @wait_for_completion(%struct.completion* noundef %exited) #13
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %k, i64 0, i32 40
  %0 = load i32, i32* %exit_code, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %k) #12
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local i32 @kthreadd(i8* nocapture noundef readnone %unused) local_unnamed_addr #9 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call fastcc void @set_task_comm(%struct.task_struct* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #12
  call void @ignore_signals(%struct.task_struct* noundef %1) #13
  %call2 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #13
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 32768
  store i32 %or, i32* %flags, align 4
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %call20 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @kthread_create_list) #12
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %do.body29, label %if.then

if.then:                                          ; preds = %for.cond
  call void @schedule() #13
  br label %do.body29

do.body29:                                        ; preds = %for.cond, %if.then
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  %call3848 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @kthread_create_list) #12
  %tobool39.not49 = icmp eq i32 %call3848, 0
  br i1 %tobool39.not49, label %while.body, label %while.end

while.body:                                       ; preds = %do.body29, %while.body
  %3 = load i8*, i8** bitcast (%struct.list_head* @kthread_create_list to i8**), align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -40
  %4 = bitcast i8* %add.ptr to %struct.kthread_create_info*
  %5 = bitcast i8* %3 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %5) #12
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  call fastcc void @create_kthread(%struct.kthread_create_info* noundef %4) #12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  %call38 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @kthread_create_list) #12
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %do.body29
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kthread_create_lock, i64 0, i32 0, i32 0)) #13
  br label %for.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from) unnamed_addr #0 {
entry:
  call void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from, i1 noundef false) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ignore_signals(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @create_kthread(%struct.kthread_create_info* noundef %create) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kthread_create_info* %create to i8*
  %call = call i32 @kernel_thread(i32 (i8*)* noundef nonnull @kthread, i8* noundef %0, i64 noundef 1553) #13
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup7

if.then:                                          ; preds = %entry
  %done1 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %create, i64 0, i32 4
  %1 = bitcast %struct.completion** %done1 to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %1) #13
  %tobool.not = icmp eq i64 %call11.i, 0
  br i1 %tobool.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @kfree(i8* noundef %0) #13
  br label %cleanup7

if.end:                                           ; preds = %if.then
  %2 = inttoptr i64 %call11.i to %struct.completion*
  %conv = sext i32 %call to i64
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #12
  %result = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %create, i64 0, i32 3
  %3 = bitcast %struct.task_struct** %result to i8**
  store i8* %call5, i8** %3, align 8
  call void @complete(%struct.completion* noundef nonnull %2) #13
  br label %cleanup7

cleanup7:                                         ; preds = %if.then4, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__kthread_init_worker(%struct.kthread_worker* noundef %worker, i8* nocapture readnone %name, %struct.lock_class_key* nocapture readnone %key) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kthread_worker* %worker to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 56) #13
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %work_list) #12
  %delayed_work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %delayed_work_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kthread_worker_fn(i8* noundef %worker_ptr) #0 {
entry:
  %task = getelementptr inbounds i8, i8* %worker_ptr, i64 40
  %0 = bitcast i8* %task to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  %tobool.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %1, %3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 731; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %5 = inttoptr i64 %4 to %struct.task_struct*
  store %struct.task_struct* %5, %struct.task_struct** %0, align 8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  %call37126 = call i1 @kthread_should_stop() #12
  br i1 %call37126, label %do.body47, label %if.end58.lr.ph

if.end58.lr.ph:                                   ; preds = %if.end
  %lock59 = getelementptr inbounds i8, i8* %worker_ptr, i64 4
  %6 = bitcast i8* %lock59 to %struct.raw_spinlock*
  %work_list = getelementptr inbounds i8, i8* %worker_ptr, i64 8
  %7 = bitcast i8* %work_list to %struct.list_head*
  %current_work124 = getelementptr inbounds i8, i8* %worker_ptr, i64 48
  %8 = bitcast i8* %current_work124 to %struct.kthread_work**
  %9 = bitcast i8* %work_list to %struct.kthread_work**
  br label %if.end58

do.body47:                                        ; preds = %if.end95, %if.end
  store volatile i32 0, i32* %__state, align 16
  %lock = getelementptr inbounds i8, i8* %worker_ptr, i64 4
  %10 = bitcast i8* %lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %10) #12
  store %struct.task_struct* null, %struct.task_struct** %0, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %10) #12
  ret i32 0

if.end58:                                         ; preds = %if.end58.lr.ph, %if.end95
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %6) #12
  %call60 = call fastcc i32 @list_empty(%struct.list_head* noundef %7) #12
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end68, label %if.end68.thread

if.end68.thread:                                  ; preds = %if.end58
  store %struct.kthread_work* null, %struct.kthread_work** %8, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %6) #12
  br label %if.else

if.end68:                                         ; preds = %if.end58
  %11 = load %struct.kthread_work*, %struct.kthread_work** %9, align 8
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %11, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #12
  store %struct.kthread_work* %11, %struct.kthread_work** %8, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %6) #12
  %tobool70.not = icmp eq %struct.kthread_work* %11, null
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end68
  %func72 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %11, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  %12 = load void (%struct.kthread_work*)*, void (%struct.kthread_work*)** %func72, align 8
  call void %12(%struct.kthread_work* noundef nonnull %11) #13
  br label %if.end95

if.else:                                          ; preds = %if.end68.thread, %if.end68
  call void @schedule() #13
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.then71
  call fastcc void @_cond_resched() #12
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !21
  %call37 = call i1 @kthread_should_stop() #12
  br i1 %call37, label %do.body47, label %if.end58
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kthread_worker* @kthread_create_worker(i32 noundef %flags, i8* noundef %namefmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !12
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.kthread_worker* @__kthread_create_worker(i32 noundef -1, i32 noundef %flags, i8* noundef %namefmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  ret %struct.kthread_worker* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kthread_worker* @__kthread_create_worker(i32 noundef %cpu, i32 noundef %flags, i8* noundef %namefmt, %"struct.std::__va_list"* nocapture noundef readonly %args) unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %call = call fastcc i8* @kzalloc(i64 noundef 56) #12
  %0 = bitcast i8* %call to %struct.kthread_worker*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %1 = bitcast i8* %call1 to %struct.kthread_worker*
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__kthread_init_worker(%struct.kthread_worker* noundef nonnull %0, i8* undef, %struct.lock_class_key* undef) #12
  %cmp = icmp sgt i32 %cpu, -1
  %not.cmp = xor i1 %cmp, true
  %spec.select = sext i1 %not.cmp to i32
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #14
  %3 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef align 8 dereferenceable(32) %3, i64 32, i1 false)
  %call4 = call fastcc %struct.task_struct* @__kthread_create_on_node(i32 (i8*)* noundef nonnull @kthread_worker_fn, i8* noundef nonnull %call, i32 noundef %spec.select, i8* noundef %namefmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #14
  %4 = bitcast %struct.task_struct* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %4) #12
  br i1 %call5, label %fail_task, label %if.end7

if.end7:                                          ; preds = %do.body
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @kthread_bind(%struct.task_struct* noundef %call4, i32 noundef %cpu) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %flags11 = bitcast i8* %call to i32*
  store i32 %flags, i32* %flags11, align 8
  %task12 = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %task12 to %struct.task_struct**
  store %struct.task_struct* %call4, %struct.task_struct** %5, align 8
  %call13 = call i32 @wake_up_process(%struct.task_struct* noundef %call4) #13
  br label %cleanup

fail_task:                                        ; preds = %do.body
  call void @kfree(i8* noundef nonnull %call) #13
  %6 = bitcast %struct.task_struct* %call4 to %struct.kthread_worker*
  br label %cleanup

cleanup:                                          ; preds = %fail_task, %if.end10, %if.then
  %retval.0 = phi %struct.kthread_worker* [ %6, %fail_task ], [ %0, %if.end10 ], [ %1, %if.then ]
  ret %struct.kthread_worker* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kthread_worker* @kthread_create_worker_on_cpu(i32 noundef %cpu, i32 noundef %flags, i8* noundef %namefmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !12
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.kthread_worker* @__kthread_create_worker(i32 noundef %cpu, i32 noundef %flags, i8* noundef %namefmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  ret %struct.kthread_worker* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_queue_work(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  %call1 = call fastcc i1 @queuing_blocked(%struct.kthread_work* noundef %work) #12
  br i1 %call1, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  %work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 2
  call fastcc void @kthread_insert_work(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work, %struct.list_head* noundef %work_list) #12
  br label %do.body2

do.body2:                                         ; preds = %entry, %if.then
  %0 = xor i1 %call1, true
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #12
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @queuing_blocked(%struct.kthread_work* noundef %work) unnamed_addr #8 {
entry:
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %canceling = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 3
  %0 = load i32, i32* %canceling, align 8
  %tobool1 = icmp ne i32 %0, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kthread_insert_work(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work, %struct.list_head* noundef %pos) unnamed_addr #0 {
entry:
  call fastcc void @kthread_insert_work_sanity_check(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work) #12
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef %pos) #12
  %worker1 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 2
  store %struct.kthread_worker* %worker, %struct.kthread_worker** %worker1, align 8
  %current_work = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 5
  %0 = load %struct.kthread_work*, %struct.kthread_work** %current_work, align 8
  %tobool.not = icmp eq %struct.kthread_work* %0, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %task = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 4
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool2.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_delayed_work_timer_fn(%struct.timer_list* noundef %t) #0 {
entry:
  %add.ptr115 = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1
  %work1 = bitcast %struct.timer_list* %add.ptr115 to %struct.kthread_work*
  %worker2 = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1, i32 2
  %0 = bitcast {}** %worker2 to %struct.kthread_worker**
  %1 = load %struct.kthread_worker*, %struct.kthread_worker** %0, align 8
  %tobool.not = icmp eq %struct.kthread_worker* %1, null
  br i1 %tobool.not, label %if.then, label %do.body22, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 969; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !26
  br label %cleanup

do.body22:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %1, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  %2 = load %struct.kthread_worker*, %struct.kthread_worker** %0, align 8
  %cmp29.not = icmp eq %struct.kthread_worker* %2, %1
  br i1 %cmp29.not, label %if.end44, label %if.then43, !prof !13

if.then43:                                        ; preds = %do.body22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 974; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !27
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.body22
  %node = bitcast %struct.timer_list* %add.ptr115 to %struct.list_head*
  %call54 = call fastcc i32 @list_empty(%struct.list_head* noundef %node) #12
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end69, label %if.then68, !prof !13

if.then68:                                        ; preds = %if.end44
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 977; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !28
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end44
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #12
  %3 = getelementptr %struct.timer_list, %struct.timer_list* %t, i64 -1, i32 3
  %4 = load i32, i32* %3, align 8
  %tobool79.not = icmp eq i32 %4, 0
  br i1 %tobool79.not, label %if.then80, label %do.body82

if.then80:                                        ; preds = %if.end69
  %work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %1, i64 0, i32 2
  call fastcc void @kthread_insert_work(%struct.kthread_worker* noundef nonnull %1, %struct.kthread_work* noundef %work1, %struct.list_head* noundef %work_list) #12
  br label %do.body82

do.body82:                                        ; preds = %if.end69, %if.then80
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body82
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_queue_delayed_work(%struct.kthread_worker* noundef %worker, %struct.kthread_delayed_work* noundef %dwork, i64 noundef %delay) local_unnamed_addr #0 {
entry:
  %work1 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  %call2 = call fastcc i1 @queuing_blocked(%struct.kthread_work* noundef %work1) #12
  br i1 %call2, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__kthread_queue_delayed_work(%struct.kthread_worker* noundef %worker, %struct.kthread_delayed_work* noundef %dwork, i64 noundef %delay) #12
  br label %do.body3

do.body3:                                         ; preds = %entry, %if.then
  %0 = xor i1 %call2, true
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #12
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kthread_queue_delayed_work(%struct.kthread_worker* noundef %worker, %struct.kthread_delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #0 {
entry:
  %timer1 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 1
  %work2 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0
  %function = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 1, i32 2
  %function3 = bitcast {}** %function to void (%struct.timer_list*)**
  %0 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function3, align 8
  %cmp.not = icmp eq void (%struct.timer_list*)* %0, @kthread_delayed_work_timer_fn
  br i1 %cmp.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 994; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool17.not = icmp eq i64 %delay, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  %work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 2
  call fastcc void @kthread_insert_work(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work2, %struct.list_head* noundef %work_list) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call fastcc void @kthread_insert_work_sanity_check(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef %work2) #12
  %node = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0, i32 0
  %delayed_work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %node, %struct.list_head* noundef %delayed_work_list) #12
  %worker20 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0, i32 2
  store %struct.kthread_worker* %worker, %struct.kthread_worker** %worker20, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %1, %delay
  %expires = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 1, i32 1
  store i64 %add, i64* %expires, align 8
  call void @add_timer(%struct.timer_list* noundef %timer1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_flush_work(%struct.kthread_work* noundef %work) local_unnamed_addr #0 {
entry:
  %fwork = alloca %struct.kthread_flush_work, align 8
  %0 = bitcast %struct.kthread_flush_work* %fwork to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #14
  %1 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 3
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 40, i1 false), !annotation !12
  %work1 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0
  %node = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0
  %next = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0, i32 0
  store %struct.list_head* %node, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0, i32 1
  store %struct.list_head* %node, %struct.list_head** %prev, align 8
  %func = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 1
  store void (%struct.kthread_work*)* @kthread_flush_work_fn, void (%struct.kthread_work*)** %func, align 8
  %worker = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 2
  store %struct.kthread_worker* null, %struct.kthread_worker** %worker, align 8
  %done = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 1
  call fastcc void @init_completion(%struct.completion* noundef %done) #12
  %worker9 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 2
  %3 = load %struct.kthread_worker*, %struct.kthread_worker** %worker9, align 8
  %tobool.not = icmp eq %struct.kthread_worker* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %3, i64 0, i32 1
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #12
  %4 = load %struct.kthread_worker*, %struct.kthread_worker** %worker9, align 8
  %cmp.not = icmp eq %struct.kthread_worker* %4, %3
  br i1 %cmp.not, label %if.end19, label %if.then18, !prof !13

if.then18:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1084; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !30
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %node28 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node28) #12
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end19
  %next33 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0, i32 0
  br label %if.then44

if.else:                                          ; preds = %if.end19
  %current_work = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %3, i64 0, i32 5
  %5 = load %struct.kthread_work*, %struct.kthread_work** %current_work, align 8
  %cmp34 = icmp eq %struct.kthread_work* %5, %work
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.else
  %next38 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %3, i64 0, i32 2, i32 0
  br label %if.then44

if.end41:                                         ; preds = %if.else
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  br label %cleanup

if.then44:                                        ; preds = %if.then30, %if.then36
  %next33.sink = phi %struct.list_head** [ %next33, %if.then30 ], [ %next38, %if.then36 ]
  %6 = load %struct.list_head*, %struct.list_head** %next33.sink, align 8
  call fastcc void @kthread_insert_work(%struct.kthread_worker* noundef nonnull %3, %struct.kthread_work* noundef nonnull %work1, %struct.list_head* noundef %6) #12
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #12
  call void @wait_for_completion(%struct.completion* noundef %done) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end41, %entry
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kthread_flush_work_fn(%struct.kthread_work* noundef %work) #0 {
entry:
  %done = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 1
  %0 = bitcast %struct.kthread_work* %done to %struct.completion*
  call void @complete(%struct.completion* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_mod_delayed_work(%struct.kthread_worker* noundef %worker, %struct.kthread_delayed_work* noundef %dwork, i64 noundef %delay) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %work1 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  store i64 %call, i64* %flags, align 8
  %worker2 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0, i32 2
  %1 = load %struct.kthread_worker*, %struct.kthread_worker** %worker2, align 8
  %tobool.not = icmp eq %struct.kthread_worker* %1, null
  br i1 %tobool.not, label %fast_queue, label %if.end

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq %struct.kthread_worker* %1, %worker
  br i1 %cmp4.not, label %if.end15, label %if.then14, !prof !13

if.then14:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1195; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !31
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  call fastcc void @kthread_cancel_delayed_work_timer(%struct.kthread_work* noundef %work1, i64* noundef nonnull %flags) #12
  %canceling = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0, i32 3
  %2 = load i32, i32* %canceling, align 8
  %tobool24.not = icmp eq i32 %2, 0
  br i1 %tobool24.not, label %if.end26, label %do.body29

if.end26:                                         ; preds = %if.end15
  %call27 = call fastcc i1 @__kthread_cancel_work(%struct.kthread_work* noundef %work1) #12
  %conv28 = zext i1 %call27 to i32
  br label %fast_queue

fast_queue:                                       ; preds = %entry, %if.end26
  %ret.0 = phi i32 [ %conv28, %if.end26 ], [ 0, %entry ]
  call fastcc void @__kthread_queue_delayed_work(%struct.kthread_worker* noundef %worker, %struct.kthread_delayed_work* noundef %dwork, i64 noundef %delay) #12
  br label %do.body29

do.body29:                                        ; preds = %if.end15, %fast_queue
  %ret.1 = phi i32 [ %ret.0, %fast_queue ], [ 1, %if.end15 ]
  %3 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %3) #12
  %tobool38 = icmp ne i32 %ret.1, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i1 %tobool38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kthread_cancel_delayed_work_timer(%struct.kthread_work* noundef %work, i64* nocapture noundef %flags) unnamed_addr #0 {
entry:
  %worker1 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 2
  %0 = load %struct.kthread_worker*, %struct.kthread_worker** %worker1, align 8
  %canceling = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 3
  %1 = load i32, i32* %canceling, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %canceling, align 8
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %0, i64 0, i32 1
  %2 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %2) #12
  %timer = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 1
  %3 = bitcast %struct.kthread_work* %timer to %struct.timer_list*
  %call = call i32 @del_timer_sync(%struct.timer_list* noundef %3) #13
  %call13 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  store i64 %call13, i64* %flags, align 8
  %4 = load i32, i32* %canceling, align 8
  %dec = add i32 %4, -1
  store i32 %dec, i32* %canceling, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @__kthread_cancel_work(%struct.kthread_work* noundef %work) unnamed_addr #10 {
entry:
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @list_del_init(%struct.list_head* noundef %node) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_cancel_work_sync(%struct.kthread_work* noundef %work) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__kthread_cancel_work_sync(%struct.kthread_work* noundef %work, i1 noundef false) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__kthread_cancel_work_sync(%struct.kthread_work* noundef %work, i1 noundef %is_dwork) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %worker1 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 2
  %0 = load %struct.kthread_worker*, %struct.kthread_worker** %worker1, align 8
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %tobool.not = icmp eq %struct.kthread_worker* %0, null
  br i1 %tobool.not, label %out, label %do.body

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %0, i64 0, i32 1
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  store i64 %call, i64* %flags, align 8
  %2 = load %struct.kthread_worker*, %struct.kthread_worker** %worker1, align 8
  %cmp3.not = icmp eq %struct.kthread_worker* %2, %0
  br i1 %cmp3.not, label %if.end14, label %if.then13, !prof !13

if.then13:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1236; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !32
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.body
  br i1 %is_dwork, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end14
  call fastcc void @kthread_cancel_delayed_work_timer(%struct.kthread_work* noundef %work, i64* noundef nonnull %flags) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end14
  %call26 = call fastcc i1 @__kthread_cancel_work(%struct.kthread_work* noundef %work) #12
  %current_work = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %0, i64 0, i32 5
  %3 = load %struct.kthread_work*, %struct.kthread_work** %current_work, align 8
  %cmp28.not = icmp eq %struct.kthread_work* %3, %work
  br i1 %cmp28.not, label %if.end31, label %if.end25.do.body52_crit_edge

if.end25.do.body52_crit_edge:                     ; preds = %if.end25
  %.pre = load i64, i64* %flags, align 8
  br label %do.body52

if.end31:                                         ; preds = %if.end25
  %canceling = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 3
  %4 = load i32, i32* %canceling, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %canceling, align 8
  %5 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %5) #12
  call void @kthread_flush_work(%struct.kthread_work* noundef %work) #12
  %call48 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #12
  %6 = load i32, i32* %canceling, align 8
  %dec = add i32 %6, -1
  store i32 %dec, i32* %canceling, align 8
  br label %do.body52

do.body52:                                        ; preds = %if.end25.do.body52_crit_edge, %if.end31
  %7 = phi i64 [ %.pre, %if.end25.do.body52_crit_edge ], [ %call48, %if.end31 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %7) #12
  br label %out

out:                                              ; preds = %entry, %do.body52
  %ret.0 = phi i1 [ %call26, %do.body52 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  ret i1 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kthread_cancel_delayed_work_sync(%struct.kthread_delayed_work* noundef %dwork) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %dwork, i64 0, i32 0
  %call = call fastcc i1 @__kthread_cancel_work_sync(%struct.kthread_work* noundef %work, i1 noundef true) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_flush_worker(%struct.kthread_worker* noundef %worker) local_unnamed_addr #0 {
entry:
  %fwork = alloca %struct.kthread_flush_work, align 8
  %0 = bitcast %struct.kthread_flush_work* %fwork to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #14
  %1 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 3
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 40, i1 false), !annotation !12
  %work = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0
  %node = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0
  %next = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0, i32 0
  store %struct.list_head* %node, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 0, i32 1
  store %struct.list_head* %node, %struct.list_head** %prev, align 8
  %func = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 1
  store void (%struct.kthread_work*)* @kthread_flush_work_fn, void (%struct.kthread_work*)** %func, align 8
  %worker5 = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 0, i32 2
  store %struct.kthread_worker* null, %struct.kthread_worker** %worker5, align 8
  %done = getelementptr inbounds %struct.kthread_flush_work, %struct.kthread_flush_work* %fwork, i64 0, i32 1
  call fastcc void @init_completion(%struct.completion* noundef %done) #12
  %call = call i1 @kthread_queue_work(%struct.kthread_worker* noundef %worker, %struct.kthread_work* noundef nonnull %work) #12
  call void @wait_for_completion(%struct.completion* noundef %done) #13
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_destroy_worker(%struct.kthread_worker* noundef %worker) local_unnamed_addr #0 {
entry:
  %task1 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 4
  %0 = load %struct.task_struct*, %struct.task_struct** %task1, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %if.then, label %if.end19, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1331; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !33
  br label %cleanup

if.end19:                                         ; preds = %entry
  call void @kthread_flush_worker(%struct.kthread_worker* noundef %worker) #12
  %call = call i32 @kthread_stop(%struct.task_struct* noundef nonnull %0) #12
  %work_list = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %worker, i64 0, i32 2
  %call21 = call fastcc i32 @list_empty(%struct.list_head* noundef %work_list) #12
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then37, label %if.end38, !prof !7

if.then37:                                        ; preds = %if.end19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1336; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !34
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end19
  %1 = bitcast %struct.kthread_worker* %worker to i8*
  call void @kfree(i8* noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_use_mm(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1350; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !35
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mm17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm17, align 8
  %tobool18.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool18.not, label %if.end32, label %if.then31, !prof !13

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !36
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #12
  call fastcc void @arch_local_irq_disable() #12
  %active_mm41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %4 = load %struct.mm_struct*, %struct.mm_struct** %active_mm41, align 16
  %cmp.not = icmp eq %struct.mm_struct* %4, %mm
  br i1 %cmp.not, label %if.else.critedge, label %if.then43

if.then43:                                        ; preds = %if.end32
  call fastcc void @mmgrab(%struct.mm_struct* noundef %mm) #12
  store %struct.mm_struct* %mm, %struct.mm_struct** %active_mm41, align 16
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm17, align 8
  call void @membarrier_update_current_mm(%struct.mm_struct* noundef %mm) #13
  call fastcc void @switch_mm(%struct.mm_struct* noundef %4, %struct.mm_struct* noundef %mm) #12
  call fastcc void @arch_local_irq_enable() #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #12
  call fastcc void @mmdrop(%struct.mm_struct* noundef %4) #12
  br label %if.end53

if.else.critedge:                                 ; preds = %if.end32
  store %struct.mm_struct* %mm, %struct.mm_struct** %mm17, align 8
  call void @membarrier_update_current_mm(%struct.mm_struct* noundef %mm) #13
  call fastcc void @switch_mm(%struct.mm_struct* noundef %mm, %struct.mm_struct* noundef %mm) #12
  call fastcc void @arch_local_irq_enable() #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  br label %if.end53

if.end53:                                         ; preds = %if.else.critedge, %if.then43
  %call54 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_count) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @switch_mm(%struct.mm_struct* noundef readnone %prev, %struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.mm_struct* %prev, %next
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__switch_mm(%struct.mm_struct* noundef %next) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #14, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kthread_unuse_mm(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mm17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm17, align 8
  %tobool18.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool18.not, label %if.then33, label %if.end34, !prof !7

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 1397; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !41
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  %call43 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %1) #12
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !42
  call void @sync_mm_rss(%struct.mm_struct* noundef %mm) #13
  call fastcc void @arch_local_irq_disable() #12
  store %struct.mm_struct* null, %struct.mm_struct** %mm17, align 8
  call void @membarrier_update_current_mm(%struct.mm_struct* noundef null) #13
  call fastcc void @arch_local_irq_enable() #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef, i32 noundef, %struct.sched_param* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #14, !srcloc !43
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_cpus_allowed(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #4 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #13
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !7

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !13

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #13
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !46
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #13
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #14, !srcloc !47
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !13

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !48
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(%struct.task_struct* noundef, i8* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !49
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !50
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal i32 @kthread(i8* noundef %_create) #9 {
entry:
  %threadfn1 = bitcast i8* %_create to i32 (i8*)**
  %0 = load i32 (i8*)*, i32 (i8*)** %threadfn1, align 8
  %data2 = getelementptr inbounds i8, i8* %_create, i64 8
  %1 = bitcast i8* %data2 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !9
  %4 = inttoptr i64 %3 to %struct.task_struct*
  call void @set_kthread_struct(%struct.task_struct* noundef %4) #12
  %call4 = call fastcc %struct.kthread* @to_kthread(%struct.task_struct* noundef %4) #12
  %done5 = getelementptr inbounds i8, i8* %_create, i64 32
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %done5) #13
  %5 = inttoptr i64 %call11.i to %struct.completion*
  %tobool.not = icmp eq i64 %call11.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @kfree(i8* noundef %_create) #13
  call void @do_exit(i64 noundef -4) #16
  unreachable

if.end:                                           ; preds = %entry
  %tobool8.not = icmp eq %struct.kthread* %call4, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -12) #12
  %result = getelementptr inbounds i8, i8* %_create, i64 24
  %6 = bitcast i8* %result to i8**
  store i8* %call10, i8** %6, align 8
  call void @complete(%struct.completion* noundef nonnull %5) #13
  call void @do_exit(i64 noundef -12) #16
  unreachable

if.end11:                                         ; preds = %if.end
  %threadfn12 = getelementptr inbounds %struct.kthread, %struct.kthread* %call4, i64 0, i32 2
  store i32 (i8*)* %0, i32 (i8*)** %threadfn12, align 8
  %data13 = getelementptr inbounds %struct.kthread, %struct.kthread* %call4, i64 0, i32 3
  store i8* %2, i8** %data13, align 8
  %exited = getelementptr inbounds %struct.kthread, %struct.kthread* %call4, i64 0, i32 6
  call fastcc void @init_completion(%struct.completion* noundef %exited) #12
  %parked = getelementptr inbounds %struct.kthread, %struct.kthread* %call4, i64 0, i32 5
  call fastcc void @init_completion(%struct.completion* noundef %parked) #12
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 63
  store %struct.completion* %exited, %struct.completion** %vfork_done, align 8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  %result30 = getelementptr inbounds i8, i8* %_create, i64 24
  %7 = bitcast i8* %result30 to %struct.task_struct**
  store %struct.task_struct* %4, %struct.task_struct** %7, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  call void @complete(%struct.completion* noundef nonnull %5) #13
  call void @schedule_preempt_disabled() #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %flags = getelementptr inbounds %struct.kthread, %struct.kthread* %call4, i64 0, i32 0
  %8 = load volatile i64, i64* %flags, align 8
  %9 = and i64 %8, 2
  %tobool32.not = icmp eq i64 %9, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end11
  call fastcc void @__kthread_parkme(%struct.kthread* noundef nonnull %call4) #12
  %call34 = call i32 %0(i8* noundef %2) #13
  %phi.cast = sext i32 %call34 to i64
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end11
  %ret.0 = phi i64 [ -4, %if.end11 ], [ %phi.cast, %if.then33 ]
  call void @do_exit(i64 noundef %ret.0) #16
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #12
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !55
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !56
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kthread_insert_work_sanity_check(%struct.kthread_worker* noundef readnone %worker, %struct.kthread_work* noundef %work) unnamed_addr #0 {
entry:
  %node = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 902; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %worker17 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %work, i64 0, i32 2
  %0 = load %struct.kthread_worker*, %struct.kthread_worker** %worker17, align 8
  %tobool18.not = icmp ne %struct.kthread_worker* %0, null
  %cmp = icmp ne %struct.kthread_worker* %0, %worker
  %spec.select = and i1 %tobool18.not, %cmp
  br i1 %spec.select, label %if.then33, label %if.end34, !prof !7

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kthread.c\22; .popsection; .long 14472b - 14470b; .short 904; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !58
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !59
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(%struct.timer_list* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__switch_mm(%struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.mm_struct* %next, @init_mm
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @check_and_switch_context(%struct.mm_struct* noundef %next) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #14, !srcloc !61
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !63
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 2154808832}
!9 = !{i64 1394821}
!10 = !{i64 2154813515}
!11 = !{i64 2154813563}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2154822300}
!15 = !{i64 2154828765}
!16 = !{i64 2154830511}
!17 = !{i64 2154832218}
!18 = !{i64 2154833922}
!19 = !{i64 2154836941}
!20 = !{i64 2154843524}
!21 = !{i64 2154846333}
!22 = !{i64 2149570539}
!23 = !{i64 2149595392}
!24 = !{i64 2149566246}
!25 = !{i64 2149592089}
!26 = !{i64 2154862465}
!27 = !{i64 2154864417}
!28 = !{i64 2154866089}
!29 = !{i64 2154868288}
!30 = !{i64 2154877094}
!31 = !{i64 2154881904}
!32 = !{i64 2154884281}
!33 = !{i64 2154887344}
!34 = !{i64 2154888946}
!35 = !{i64 2154890744}
!36 = !{i64 2154892405}
!37 = !{i64 2154892899}
!38 = !{i64 2149126370, i64 2149126417, i64 2149126423, i64 2149126460, i64 2149126478, i64 2149127819, i64 2149127867, i64 2149127915, i64 2149127978, i64 2149128027, i64 2149126556, i64 2149126581, i64 2149126607, i64 2149126613, i64 2149127485, i64 2149127525, i64 2149127543, i64 2149127575, i64 2149127603, i64 2149127657, i64 2149127677, i64 2149127774, i64 2149126636, i64 2149126650, i64 2149126656, i64 2149126706, i64 2149126752, i64 2149126785}
!39 = !{i64 2149116914, i64 2149116961, i64 2149116967, i64 2149117004, i64 2149117022, i64 2149118362, i64 2149118410, i64 2149118458, i64 2149118521, i64 2149118570, i64 2149117100, i64 2149117125, i64 2149117151, i64 2149117157, i64 2149118028, i64 2149118068, i64 2149118086, i64 2149118118, i64 2149118146, i64 2149118200, i64 2149118220, i64 2149118317, i64 2149117180, i64 2149117194, i64 2149117200, i64 2149117250, i64 2149117296, i64 2149117329}
!40 = !{i64 2154894415}
!41 = !{i64 2154896077}
!42 = !{i64 2154896438}
!43 = !{i64 2148126479, i64 2148126511, i64 2148126555, i64 2148126602, i64 2148126628}
!44 = !{i64 2148071251, i64 2148071772, i64 2148071802, i64 2148071828, i64 2148071860, i64 2148071889}
!45 = !{i64 2148060681, i64 2148061192, i64 2148061222, i64 2148061248, i64 2148061280, i64 2148061309}
!46 = !{i64 2147997565, i64 2147998229, i64 2147998259, i64 2147998291, i64 2147998325, i64 2147998360, i64 2147998385}
!47 = !{i64 2150260728}
!48 = !{i64 2148009347, i64 2148010021, i64 2148010051, i64 2148010083, i64 2148010117, i64 2148010153, i64 2148010178}
!49 = !{i64 2149581247}
!50 = !{i64 2148091524, i64 2148091557, i64 2148091610, i64 2148091669, i64 2148091703, i64 2148091758, i64 2148091787, i64 2148091807}
!51 = !{i64 2149588528}
!52 = !{i64 2149380758}
!53 = !{i64 2154818883}
!54 = !{i64 2154818931}
!55 = !{i64 2149132073, i64 2149132120, i64 2149132126, i64 2149132163, i64 2149132181, i64 2149133492, i64 2149133540, i64 2149133588, i64 2149133651, i64 2149133700, i64 2149132259, i64 2149132284, i64 2149132310, i64 2149132316, i64 2149133158, i64 2149133198, i64 2149133216, i64 2149133248, i64 2149133276, i64 2149133330, i64 2149133350, i64 2149133447, i64 2149132339, i64 2149132353, i64 2149132359, i64 2149132409, i64 2149132455, i64 2149132488}
!56 = !{i64 2149134252, i64 2149134299, i64 2149134305, i64 2149134342, i64 2149134360, i64 2149135303, i64 2149135351, i64 2149135399, i64 2149135462, i64 2149135511, i64 2149134438, i64 2149134463, i64 2149134489, i64 2149134495, i64 2149134532, i64 2149134538, i64 2149134588, i64 2149134634, i64 2149134667}
!57 = !{i64 2154856385}
!58 = !{i64 2154858072}
!59 = !{i64 2149138086, i64 2149138133, i64 2149138139, i64 2149138176, i64 2149138194, i64 2149139505, i64 2149139553, i64 2149139601, i64 2149139664, i64 2149139713, i64 2149138272, i64 2149138297, i64 2149138323, i64 2149138329, i64 2149139171, i64 2149139211, i64 2149139229, i64 2149139261, i64 2149139289, i64 2149139343, i64 2149139363, i64 2149139460, i64 2149138352, i64 2149138366, i64 2149138372, i64 2149138422, i64 2149138468, i64 2149138501}
!60 = !{i64 2147991601, i64 2147992117, i64 2147992147, i64 2147992174, i64 2147992208, i64 2147992238}
!61 = !{i64 2153663079}
!62 = !{i64 2153663225}
!63 = !{i64 2148002174, i64 2148002822, i64 2148002852, i64 2148002884, i64 2148002918, i64 2148002954, i64 2148002979}
