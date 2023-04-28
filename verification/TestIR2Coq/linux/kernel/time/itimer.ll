; ModuleID = 'kernel/time/itimer.c'
source_filename = "kernel/time/itimer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__kernel_old_itimerval = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, {}*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.page = type { i64, %union.anon.11, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i64 }
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
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.31 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.47 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.wake_q_node = type { %struct.wake_q_node* }
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
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.67, i32, [12 x i8] }
%union.anon.67 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.68 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.69, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.69 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
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
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }

@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@__do_sys_setitimer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"\014%s calls setitimer() with new_value NULL pointer. Misfeature support will be removed\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getitimer(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getitimer(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getitimer(i64 noundef %which, i64 noundef %value) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %0 = inttoptr i64 %value to %struct.__kernel_old_itimerval*
  %call = call fastcc i64 @__do_sys_getitimer(i32 noundef %conv, %struct.__kernel_old_itimerval* noundef %0) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @it_real_fn(%struct.hrtimer* nocapture noundef readonly %timer) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -3, i32 3
  %arrayidx = getelementptr %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %add.ptr, i64 45
  %0 = bitcast %struct.hrtimer_clock_base** %arrayidx to %struct.pid**
  %1 = load %struct.pid*, %struct.pid** %0, align 8
  %call = call i32 @kill_pid_info(i32 noundef 14, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.pid* noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.pid* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setitimer(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_setitimer(i64 noundef %0, i64 noundef %1, i64 noundef %2) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setitimer(i64 noundef %which, i64 noundef %value, i64 noundef %ovalue) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %0 = inttoptr i64 %value to %struct.__kernel_old_itimerval*
  %1 = inttoptr i64 %ovalue to %struct.__kernel_old_itimerval*
  %call = call fastcc i64 @__do_sys_setitimer(i32 noundef %conv, %struct.__kernel_old_itimerval* noundef %0, %struct.__kernel_old_itimerval* noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getitimer(i32 noundef %which, %struct.__kernel_old_itimerval* noundef %value) unnamed_addr #0 {
entry:
  %get_buffer = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %get_buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %call = call fastcc i32 @do_getitimer(i32 noundef %which, %struct.itimerspec64* noundef nonnull %get_buffer) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @put_itimerval(%struct.__kernel_old_itimerval* noundef %value, %struct.itimerspec64* noundef nonnull %get_buffer) #8
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %error.0 = phi i32 [ %call, %entry ], [ %spec.select, %land.lhs.true ]
  %conv = sext i32 %error.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i64 %conv
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_getitimer(i32 noundef %which, %struct.itimerspec64* nocapture noundef writeonly %value) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  switch i32 %which, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %real_timer = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 16
  %call1 = call fastcc [2 x i64] @itimer_get_remtime(%struct.hrtimer* noundef %real_timer) #8
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx13 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx13, align 8
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 17
  %5 = load i64, i64* %it_real_incr, align 8
  %call4 = call [2 x i64] @ns_to_timespec64(i64 noundef %5) #9
  %call4.fca.0.extract = extractvalue [2 x i64] %call4, 0
  %call4.fca.1.extract = extractvalue [2 x i64] %call4, 1
  %tmp2.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 0
  store i64 %call4.fca.0.extract, i64* %tmp2.sroa.0.0..sroa_idx, align 8
  %tmp2.sroa.4.0..sroa_idx10 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 1
  store i64 %call4.fca.1.extract, i64* %tmp2.sroa.4.0..sroa_idx10, align 8
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i24 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i24) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call fastcc void @get_cpu_itimer(%struct.task_struct* noundef %1, i32 noundef 1, %struct.itimerspec64* noundef %value) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call fastcc void @get_cpu_itimer(%struct.task_struct* noundef %1, i32 noundef 0, %struct.itimerspec64* noundef %value) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb7, %sw.bb8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_itimerval(%struct.__kernel_old_itimerval* noundef %o, %struct.itimerspec64* nocapture noundef readonly %i) unnamed_addr #0 {
entry:
  %v = alloca %struct.__kernel_old_itimerval, align 8
  %0 = bitcast %struct.__kernel_old_itimerval* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %tv_sec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %i, i64 0, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %tv_sec2 = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 0, i32 0
  store i64 %1, i64* %tv_sec2, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %i, i64 0, i32 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %div = sdiv i64 %2, 1000
  %tv_usec = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 0, i32 1
  store i64 %div, i64* %tv_usec, align 8
  %tv_sec5 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %i, i64 0, i32 1, i32 0
  %3 = load i64, i64* %tv_sec5, align 8
  %tv_sec7 = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 1, i32 0
  store i64 %3, i64* %tv_sec7, align 8
  %tv_nsec9 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %i, i64 0, i32 1, i32 1
  %4 = load i64, i64* %tv_nsec9, align 8
  %div10 = sdiv i64 %4, 1000
  %tv_usec12 = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 1, i32 1
  store i64 %div10, i64* %tv_usec12, align 8
  %5 = bitcast %struct.__kernel_old_itimerval* %o to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %5, i8* noundef nonnull %0) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @itimer_get_remtime(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  %call = call i64 @__hrtimer_get_remaining(%struct.hrtimer* noundef %timer, i1 noundef true) #9
  %call1 = call i1 @hrtimer_active(%struct.hrtimer* noundef %timer) #9
  %cmp = icmp slt i64 %call, 1
  %spec.store.select = select i1 %cmp, i64 1000, i64 %call
  %rem.0 = select i1 %call1, i64 %spec.store.select, i64 0
  %call4 = call [2 x i64] @ns_to_timespec64(i64 noundef %rem.0) #9
  ret [2 x i64] %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_cpu_itimer(%struct.task_struct* noundef %tsk, i32 noundef %clock_id, %struct.itimerspec64* nocapture noundef writeonly %value) unnamed_addr #0 {
entry:
  %samples = alloca [3 x i64], align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %clock_id to i64
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %expires = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 18, i64 %idxprom, i32 0
  %2 = load i64, i64* %expires, align 8
  %incr = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 18, i64 %idxprom, i32 1
  %3 = load i64, i64* %incr, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %4 = bitcast [3 x i64]* %samples to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !7
  %arraydecay = getelementptr inbounds [3 x i64], [3 x i64]* %samples, i64 0, i64 0
  call void @thread_group_sample_cputime(%struct.task_struct* noundef %tsk, i64* noundef nonnull %arraydecay) #9
  %arrayidx3 = getelementptr [3 x i64], [3 x i64]* %samples, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx3, align 8
  %cmp = icmp ult i64 %2, %5
  %sub = sub i64 %2, %5
  %val.0 = select i1 %cmp, i64 4000000, i64 %sub
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %val.1 = phi i64 [ %val.0, %if.then ], [ 0, %entry ]
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i31 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i31) #9
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %val.1) #9
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx14 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx14, align 8
  %call9 = call [2 x i64] @ns_to_timespec64(i64 noundef %3) #9
  %call9.fca.0.extract = extractvalue [2 x i64] %call9, 0
  %call9.fca.1.extract = extractvalue [2 x i64] %call9, 1
  %tmp8.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 0
  store i64 %call9.fca.0.extract, i64* %tmp8.sroa.0.0..sroa_idx, align 8
  %tmp8.sroa.4.0..sroa_idx11 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 1
  store i64 %call9.fca.1.extract, i64* %tmp8.sroa.4.0..sroa_idx11, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #9
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__hrtimer_get_remaining(%struct.hrtimer* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @hrtimer_active(%struct.hrtimer* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_enable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_sample_cputime(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #8
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 32) #9
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 32, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 32, i8* %addr, i64 549755813887) #10, !srcloc !17
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #10, !srcloc !18
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !19
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setitimer(i32 noundef %which, %struct.__kernel_old_itimerval* noundef %value, %struct.__kernel_old_itimerval* noundef %ovalue) unnamed_addr #0 {
entry:
  %set_buffer = alloca %struct.itimerspec64, align 8
  %get_buffer = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %set_buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.itimerspec64* %get_buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.__kernel_old_itimerval* %value, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @get_itimerval(%struct.itimerspec64* noundef nonnull %set_buffer, %struct.__kernel_old_itimerval* noundef nonnull %value) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end23, label %if.then2

if.then2:                                         ; preds = %if.then
  %conv = sext i32 %call to i64
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 32) #9
  %.b45 = load i1, i1* @__do_sys_setitimer.__already_done, align 1
  br i1 %.b45, label %if.end23, label %if.then11, !prof !12

if.then11:                                        ; preds = %if.else
  store i1 true, i1* @__do_sys_setitimer.__already_done, align 1
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay) #12
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then11, %if.then
  %tobool24 = icmp ne %struct.__kernel_old_itimerval* %ovalue, null
  %get_buffer. = select i1 %tobool24, %struct.itimerspec64* %get_buffer, %struct.itimerspec64* null
  %call25 = call fastcc i32 @do_setitimer(i32 noundef %which, %struct.itimerspec64* noundef nonnull %set_buffer, %struct.itimerspec64* noundef %get_buffer.) #8
  %tobool26 = icmp eq i32 %call25, 0
  %or.cond = and i1 %tobool24, %tobool26
  br i1 %or.cond, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end23
  %conv29 = sext i32 %call25 to i64
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call31 = call fastcc i32 @put_itimerval(%struct.__kernel_old_itimerval* noundef nonnull %ovalue, %struct.itimerspec64* noundef nonnull %get_buffer) #8
  %tobool32.not = icmp eq i32 %call31, 0
  %. = select i1 %tobool32.not, i64 0, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %conv29, %if.then28 ], [ %., %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_itimerval(%struct.itimerspec64* nocapture noundef writeonly %o, %struct.__kernel_old_itimerval* noundef %i) unnamed_addr #0 {
entry:
  %v = alloca %struct.__kernel_old_itimerval, align 8
  %0 = bitcast %struct.__kernel_old_itimerval* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.__kernel_old_itimerval* %i to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 1, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %cmp = icmp sgt i64 %2, -1
  %tv_usec = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 1, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %cmp2 = icmp ult i64 %3, 1000000
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  %tv_sec3 = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 0, i32 0
  %4 = load i64, i64* %tv_sec3, align 8
  %cmp4 = icmp sgt i64 %4, -1
  %or.cond27 = select i1 %or.cond, i1 %cmp4, i1 false
  %tv_usec7 = getelementptr inbounds %struct.__kernel_old_itimerval, %struct.__kernel_old_itimerval* %v, i64 0, i32 0, i32 1
  %5 = load i64, i64* %tv_usec7, align 8
  %cmp8 = icmp ult i64 %5, 1000000
  %or.cond28 = select i1 %or.cond27, i1 %cmp8, i1 false
  br i1 %or.cond28, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end
  %tv_sec14 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %o, i64 0, i32 0, i32 0
  store i64 %4, i64* %tv_sec14, align 8
  %mul = mul nuw nsw i64 %5, 1000
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %o, i64 0, i32 0, i32 1
  store i64 %mul, i64* %tv_nsec, align 8
  %tv_sec21 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %o, i64 0, i32 1, i32 0
  store i64 %2, i64* %tv_sec21, align 8
  %mul24 = mul nuw nsw i64 %3, 1000
  %tv_nsec26 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %o, i64 0, i32 1, i32 1
  store i64 %mul24, i64* %tv_nsec26, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -14, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_setitimer(i32 noundef %which, %struct.itimerspec64* nocapture noundef readonly %value, %struct.itimerspec64* noundef %ovalue) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  switch i32 %which, label %cleanup [
    i32 0, label %again.preheader
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
  ]

again.preheader:                                  ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %tobool.not = icmp eq %struct.itimerspec64* %ovalue, null
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 1, i32 0
  %tmp.sroa.4.0..sroa_idx31 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 1, i32 1
  %tmp2.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 0, i32 0
  %tmp2.sroa.4.0..sroa_idx28 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 0, i32 1
  br label %again

again:                                            ; preds = %again.preheader, %if.then6
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %real_timer = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 16
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %again
  %call1 = call fastcc [2 x i64] @itimer_get_remtime(%struct.hrtimer* noundef %real_timer) #8
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx31, align 8
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 17
  %5 = load i64, i64* %it_real_incr, align 8
  %call4 = call [2 x i64] @ns_to_timespec64(i64 noundef %5) #9
  %call4.fca.0.extract = extractvalue [2 x i64] %call4, 0
  %call4.fca.1.extract = extractvalue [2 x i64] %call4, 1
  store i64 %call4.fca.0.extract, i64* %tmp2.sroa.0.0..sroa_idx, align 8
  store i64 %call4.fca.1.extract, i64* %tmp2.sroa.4.0..sroa_idx28, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %again
  %call5 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %real_timer) #9
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i62 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i62) #9
  call fastcc void @hrtimer_cancel_wait_running() #8
  br label %again

if.end9:                                          ; preds = %if.end
  %.elt = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %7 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %8 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1, i32 1
  %.unpack57 = load i64, i64* %8, align 8
  %9 = insertvalue [2 x i64] %7, i64 %.unpack57, 1
  %call11 = call fastcc i64 @timespec64_to_ktime([2 x i64] %9) #8
  %cmp12.not = icmp eq i64 %call11, 0
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %.elt58 = getelementptr %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 0
  %.unpack59 = load i64, i64* %.elt58, align 8
  %10 = insertvalue [2 x i64] undef, i64 %.unpack59, 0
  %11 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0, i32 1
  %.unpack61 = load i64, i64* %11, align 8
  %12 = insertvalue [2 x i64] %10, i64 %.unpack61, 1
  %call15 = call fastcc i64 @timespec64_to_ktime([2 x i64] %12) #8
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr17 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 17
  store i64 %call15, i64* %it_real_incr17, align 8
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %real_timer, i64 noundef %call11) #8
  br label %if.end20

if.else:                                          ; preds = %if.end9
  %14 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr19 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %14, i64 0, i32 17
  store i64 0, i64* %it_real_incr19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i63 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i63) #9
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call fastcc void @set_cpu_itimer(%struct.task_struct* noundef %1, i32 noundef 1, %struct.itimerspec64* noundef %value, %struct.itimerspec64* noundef %ovalue) #8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call fastcc void @set_cpu_itimer(%struct.task_struct* noundef %1, i32 noundef 0, %struct.itimerspec64* noundef %value, %struct.itimerspec64* noundef %ovalue) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.bb23, %sw.bb24, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %sw.bb24 ], [ 0, %sw.bb23 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #8
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 32) #9
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !12

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 32, %entry ]
  %sub = sub i64 32, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_cancel_wait_running() unnamed_addr #0 {
entry:
  call fastcc void @cpu_relax() #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #6 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer, i64 noundef %tim) unnamed_addr #0 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef 0, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_itimer(%struct.task_struct* noundef %tsk, i32 noundef %clock_id, %struct.itimerspec64* nocapture noundef readonly %value, %struct.itimerspec64* noundef writeonly %ovalue) unnamed_addr #0 {
entry:
  %oval = alloca i64, align 8
  %nval = alloca i64, align 8
  %0 = bitcast i64* %oval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast i64* %nval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %clock_id to i64
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 1
  %call = call fastcc i64 @timespec64_to_ns(%struct.timespec64* noundef %it_value) #8
  store i64 %call, i64* %nval, align 8
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %value, i64 0, i32 0
  %call2 = call fastcc i64 @timespec64_to_ns(%struct.timespec64* noundef %it_interval) #8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #9
  %expires = getelementptr %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 18, i64 %idxprom, i32 0
  %4 = load i64, i64* %expires, align 8
  store i64 %4, i64* %oval, align 8
  %incr = getelementptr %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 18, i64 %idxprom, i32 1
  %5 = load i64, i64* %incr, align 8
  %tobool = icmp ne i64 %4, 0
  %tobool3 = icmp ne i64 %call, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool3
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %add = add i64 %call, 4000000
  store i64 %add, i64* %nval, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  call void @set_process_cpu_timer(%struct.task_struct* noundef %tsk, i32 noundef %clock_id, i64* noundef nonnull %nval, i64* noundef nonnull %oval) #9
  %.pre = load i64, i64* %nval, align 8
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %6 = phi i64 [ 0, %entry ], [ %.pre, %if.end ]
  store i64 %6, i64* %expires, align 8
  store i64 %call2, i64* %incr, align 8
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i40 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i40) #9
  %tobool11.not = icmp eq %struct.itimerspec64* %ovalue, null
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end5
  %8 = load i64, i64* %oval, align 8
  %call14 = call [2 x i64] @ns_to_timespec64(i64 noundef %8) #9
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  %call14.fca.1.extract = extractvalue [2 x i64] %call14, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 1, i32 0
  store i64 %call14.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx23 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 1, i32 1
  store i64 %call14.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx23, align 8
  %call17 = call [2 x i64] @ns_to_timespec64(i64 noundef %5) #9
  %call17.fca.0.extract = extractvalue [2 x i64] %call17, 0
  %call17.fca.1.extract = extractvalue [2 x i64] %call17, 1
  %tmp16.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 0, i32 0
  store i64 %call17.fca.0.extract, i64* %tmp16.sroa.0.0..sroa_idx, align 8
  %tmp16.sroa.4.0..sroa_idx20 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %ovalue, i64 0, i32 0, i32 1
  store i64 %call17.fca.1.extract, i64* %tmp16.sroa.4.0..sroa_idx20, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #10, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #6 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @timespec64_to_ns(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #7 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp sgt i64 %0, 9223372035
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i64 %0, -9223372035
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %mul = mul nsw i64 %0, 1000000000
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %add = add i64 %1, %mul
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i64 [ %add, %if.end4 ], [ 9223372036854775807, %entry ], [ -9223372036854775808, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_process_cpu_timer(%struct.task_struct* noundef, i32 noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{i64 1359477}
!9 = !{i64 2149535195}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149091026, i64 2149091073, i64 2149091079, i64 2149091116, i64 2149091134, i64 2149092475, i64 2149092523, i64 2149092571, i64 2149092634, i64 2149092683, i64 2149091212, i64 2149091237, i64 2149091263, i64 2149091269, i64 2149092141, i64 2149092181, i64 2149092199, i64 2149092231, i64 2149092259, i64 2149092313, i64 2149092333, i64 2149092430, i64 2149091292, i64 2149091306, i64 2149091312, i64 2149091362, i64 2149091408, i64 2149091441}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148056180, i64 2148056213, i64 2148056266, i64 2148056325, i64 2148056359, i64 2148056414, i64 2148056443, i64 2148056463}
!14 = !{i64 2149560048}
!15 = !{i64 2149345414}
!16 = !{i64 2149081570, i64 2149081617, i64 2149081623, i64 2149081660, i64 2149081678, i64 2149083018, i64 2149083066, i64 2149083114, i64 2149083177, i64 2149083226, i64 2149081756, i64 2149081781, i64 2149081807, i64 2149081813, i64 2149082684, i64 2149082724, i64 2149082742, i64 2149082774, i64 2149082802, i64 2149082856, i64 2149082876, i64 2149082973, i64 2149081836, i64 2149081850, i64 2149081856, i64 2149081906, i64 2149081952, i64 2149081985}
!17 = !{i64 4590943, i64 4591026, i64 4591250, i64 4591470, i64 4591493}
!18 = !{i64 4595645, i64 4595669}
!19 = !{i64 2152110484}
!20 = !{i64 1879899}
