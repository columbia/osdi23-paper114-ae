; ModuleID = 'kernel/time/hrtimer.c'
source_filename = "kernel/time/hrtimer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.workqueue_struct = type opaque
%struct.hrtimer_sleeper = type { %struct.hrtimer, %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.66, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.3 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.4, [0 x i64] }
%struct.anon.4 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.5, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.5 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.6, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.7, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.6 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.7 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.8, %union.anon.45, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.23 }
%union.anon.23 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.45 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.51, %union.anon.52, i32 }
%struct.request_queue = type opaque
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.65, i32, [12 x i8] }
%union.anon.65 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.67, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.67 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.anon.48 = type { i32, i32, %union.anon.49, i64 }
%union.anon.49 = type { %struct.__kernel_timespec* }
%struct.__kernel_timespec = type { i64, i64 }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.softirq_action = type { {}* }

@hrtimer_bases = dso_local global %struct.hrtimer_cpu_base { %struct.raw_spinlock zeroinitializer, i32 0, i32 0, i32 0, i8 0, i64 0, %struct.hrtimer* null, i64 0, %struct.hrtimer* null, [8 x i8] undef, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 0, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 1, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 2, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 3, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_clocktai, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 4, i32 1, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 5, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_real, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 6, i32 7, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_boottime, i64 0 }, %struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* null, i32 7, i32 11, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* @ktime_get_clocktai, i64 0 }] }, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@hrtimer_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @hrtimer_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @hrtimer_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @clock_was_set_work }, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@migration_cpu_base = internal global %struct.hrtimer_cpu_base { %struct.raw_spinlock zeroinitializer, i32 0, i32 0, i32 0, i8 0, i64 0, %struct.hrtimer* null, i64 0, %struct.hrtimer* null, [8 x i8] undef, [8 x %struct.hrtimer_clock_base] [%struct.hrtimer_clock_base { %struct.hrtimer_cpu_base* @migration_cpu_base, i32 0, i32 0, %struct.seqcount_raw_spinlock zeroinitializer, %struct.hrtimer* null, %struct.timerqueue_head zeroinitializer, i64 ()* null, i64 0 }, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer, %struct.hrtimer_clock_base zeroinitializer] }, align 64
@hrtimer_clock_to_base_table = internal unnamed_addr constant [16 x i32] [i32 1, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 3, i32 8, i32 8, i32 8, i32 8], align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid clockid %d. Using MONOTONIC\0A\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ktime_get_real() #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 0) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ktime_get_boottime() #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @ktime_get_clocktai() #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 2) #15
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @ktime_add_safe(i64 noundef %lhs, i64 noundef %rhs) local_unnamed_addr #2 {
entry:
  %add = add i64 %rhs, %lhs
  %cmp = icmp slt i64 %add, 0
  %cmp1 = icmp slt i64 %add, %lhs
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i64 %add, %rhs
  %or.cond10 = or i1 %cmp3, %or.cond
  br i1 %or.cond10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @ktime_set(i64 noundef 9223372036, i64 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %res.0 = phi i64 [ %call, %if.then ], [ %add, %entry ]
  ret i64 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #2 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !8
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clock_was_set(i32 %bases) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  call void @timerfd_clock_was_set() #15
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #17, !srcloc !9
  ret i64 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @retrigger_next_event() unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_clock_was_set() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clock_was_set_delayed() local_unnamed_addr #1 {
entry:
  call fastcc void @schedule_work() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #16
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local void @hrtimers_resume_local() local_unnamed_addr #4 {
entry:
  call fastcc void @retrigger_next_event() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @hrtimer_forward(%struct.hrtimer* nocapture noundef %timer, i64 noundef %now, i64 noundef %interval) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #16
  %sub = sub i64 %now, %call
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup43, label %if.end

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %0 = load i8, i8* %state, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end20, label %if.then9, !prof !12

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 1047; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  br label %cleanup43

if.end20:                                         ; preds = %if.end
  %2 = icmp sgt i64 %interval, 4000000
  %spec.store.select = select i1 %2, i64 %interval, i64 4000000
  %cmp25.not = icmp ult i64 %sub, %spec.store.select
  br i1 %cmp25.not, label %if.end42, label %if.then34, !prof !12

if.then34:                                        ; preds = %if.end20
  %call36 = call fastcc i64 @ktime_divns(i64 noundef %sub, i64 noundef %spec.store.select) #16
  %mul = mul i64 %call36, %spec.store.select
  call fastcc void @hrtimer_add_expires_ns(%struct.hrtimer* noundef %timer, i64 noundef %mul) #16
  %call37 = call fastcc i64 @hrtimer_get_expires_tv64(%struct.hrtimer* noundef %timer) #16
  %cmp38 = icmp sgt i64 %call37, %now
  %inc = add i64 %call36, 1
  br i1 %cmp38, label %cleanup43, label %if.end42

if.end42:                                         ; preds = %if.then34, %if.end20
  %orun.1 = phi i64 [ %inc, %if.then34 ], [ 1, %if.end20 ]
  call fastcc void @hrtimer_add_expires(%struct.hrtimer* noundef %timer, i64 noundef %spec.store.select) #16
  br label %cleanup43

cleanup43:                                        ; preds = %if.then9, %entry, %if.then34, %if.end42
  %retval.1 = phi i64 [ %orun.1, %if.end42 ], [ %call36, %if.then34 ], [ 0, %entry ], [ 0, %if.then9 ]
  ret i64 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #6 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) unnamed_addr #1 {
entry:
  %cmp = icmp slt i64 %div, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/ktime.h\22; .popsection; .long 14472b - 14470b; .short 154; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %div14 = sdiv i64 %kt, %div
  ret i64 %div14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hrtimer_add_expires_ns(%struct.hrtimer* nocapture noundef %timer, i64 noundef %ns) unnamed_addr #7 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %add = add i64 %0, %ns
  store i64 %add, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %1 = load i64, i64* %_softexpires, align 8
  %add3 = add i64 %1, %ns
  store i64 %add3, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires_tv64(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #6 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hrtimer_add_expires(%struct.hrtimer* nocapture noundef %timer, i64 noundef %time) unnamed_addr #7 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %call = call i64 @ktime_add_safe(i64 noundef %0, i64 noundef %time) #16
  store i64 %call, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %1 = load i64, i64* %_softexpires, align 8
  %call3 = call i64 @ktime_add_safe(i64 noundef %1, i64 noundef %time) #16
  store i64 %call3, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef %delta_ns, i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %flags, align 8, !annotation !15
  %and = lshr i32 %mode, 2
  %and.lobit = and i32 %and, 1
  %is_soft = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 6
  %1 = load i8, i8* %is_soft, align 2
  %tobool1.not = icmp eq i8 %1, 0
  %lnot.ext3 = zext i1 %tobool1.not to i32
  %2 = xor i32 %and.lobit, %lnot.ext3
  %tobool4.not = icmp eq i32 %2, 1
  br i1 %tobool4.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 1292; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  %call22 = call fastcc i32 @__hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef %delta_ns, i32 noundef %mode, %struct.hrtimer_clock_base* noundef %call) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end
  call fastcc void @hrtimer_reprogram(%struct.hrtimer* noundef %timer) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end
  call fastcc void @unlock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* nocapture noundef %flags) unnamed_addr #1 {
entry:
  %base1 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %0 = load volatile %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base1, align 8
  %cmp.not = icmp eq %struct.hrtimer_clock_base* %0, getelementptr inbounds (%struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* @migration_cpu_base, i64 0, i32 10, i64 0)
  br i1 %cmp.not, label %if.end30, label %do.body3, !prof !8

do.body3:                                         ; preds = %for.cond
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 0
  %1 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  store i64 %call, i64* %flags, align 8
  %2 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base1, align 8
  %cmp10 = icmp eq %struct.hrtimer_clock_base* %0, %2
  br i1 %cmp10, label %if.then19, label %do.body20, !prof !12

if.then19:                                        ; preds = %do.body3
  ret %struct.hrtimer_clock_base* %0

do.body20:                                        ; preds = %do.body3
  %3 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock27 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %3, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock27, i64 noundef %call) #16
  br label %if.end30

if.end30:                                         ; preds = %do.body20, %for.cond
  call fastcc void @cpu_relax() #16
  br label %for.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim, i64 noundef %delta_ns, i32 noundef %mode, %struct.hrtimer_clock_base* noundef %base) unnamed_addr #1 {
entry:
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %0 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %1 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %cmp = icmp eq %struct.hrtimer_cpu_base* %0, %1
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 6
  %2 = load %struct.hrtimer*, %struct.hrtimer** %next_timer, align 32
  %cmp3 = icmp eq %struct.hrtimer* %2, %timer
  %and52 = and i1 %cmp3, %cmp
  %call8 = call fastcc i32 @remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base, i1 noundef true, i1 noundef %and52) #16
  %and9 = and i32 %mode, 1
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 6
  %3 = load i64 ()*, i64 ()** %get_time, align 16
  %call11 = call i64 %3() #15
  %call12 = call i64 @ktime_add_safe(i64 noundef %tim, i64 noundef %call11) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tim.addr.0 = phi i64 [ %call12, %if.then ], [ %tim, %entry ]
  call fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %tim.addr.0, i64 noundef %delta_ns) #16
  br i1 %and52, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end
  %call17 = call fastcc %struct.hrtimer_clock_base* @switch_hrtimer_base(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base) #16
  %call19 = call fastcc i32 @enqueue_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %call17) #16
  %tobool20 = icmp ne i32 %call19, 0
  %conv25 = zext i1 %tobool20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call1954 = call fastcc i32 @enqueue_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base) #16
  %4 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  call fastcc void @hrtimer_force_reprogram(%struct.hrtimer_cpu_base* noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %conv25, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_reprogram(%struct.hrtimer* noundef %timer) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %0 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %base2 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %1 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base2, align 8
  %call3 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #16
  %offset = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %1, i64 0, i32 7
  %2 = load i64, i64* %offset, align 8
  %sub = sub i64 %call3, %2
  %call4 = call fastcc i64 @hrtimer_get_expires_tv64(%struct.hrtimer* noundef %timer) #16
  %cmp = icmp slt i64 %call4, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 814; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = icmp sgt i64 %sub, 0
  %spec.store.select = select i1 %3, i64 %sub, i64 0
  %is_soft = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 6
  %4 = load i8, i8* %is_soft, align 2
  %tobool23.not = icmp eq i8 %4, 0
  br i1 %tobool23.not, label %if.end37, label %if.then24

if.then24:                                        ; preds = %if.end
  %cpu_base25 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %1, i64 0, i32 0
  %5 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base25, align 64
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %5, i64 0, i32 4
  %bf.load = load i8, i8* %softirq_activated, align 16
  %6 = and i8 %bf.load, 8
  %tobool26.not = icmp eq i8 %6, 0
  br i1 %tobool26.not, label %if.end28, label %cleanup55

if.end28:                                         ; preds = %if.then24
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %5, i64 0, i32 7
  %7 = load i64, i64* %softirq_expires_next, align 8
  %call29 = call fastcc i1 @ktime_before(i64 noundef %spec.store.select, i64 noundef %7) #16
  br i1 %call29, label %if.end31, label %cleanup55

if.end31:                                         ; preds = %if.end28
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %5, i64 0, i32 8
  store %struct.hrtimer* %timer, %struct.hrtimer** %softirq_next_timer, align 16
  store i64 %spec.store.select, i64* %softirq_expires_next, align 8
  %expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %5, i64 0, i32 5
  %8 = load i64, i64* %expires_next, align 8
  %call33 = call fastcc i1 @ktime_before(i64 noundef %spec.store.select, i64 noundef %8) #16
  br i1 %call33, label %if.end37, label %cleanup55

if.end37:                                         ; preds = %if.end31, %if.end
  %cpu_base38 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %1, i64 0, i32 0
  %9 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base38, align 64
  %cmp39.not = icmp eq %struct.hrtimer_cpu_base* %9, %0
  br i1 %cmp39.not, label %if.end42, label %cleanup55

if.end42:                                         ; preds = %if.end37
  %expires_next43 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 5
  %10 = load i64, i64* %expires_next43, align 8
  %cmp44.not = icmp slt i64 %spec.store.select, %10
  br i1 %cmp44.not, label %if.end47, label %cleanup55

if.end47:                                         ; preds = %if.end42
  %in_hrtirq = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 4
  %bf.load48 = load i8, i8* %in_hrtirq, align 16
  %11 = and i8 %bf.load48, 2
  %tobool52.not = icmp eq i8 %11, 0
  br i1 %tobool52.not, label %if.end54, label %cleanup55

if.end54:                                         ; preds = %if.end47
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 6
  store %struct.hrtimer* %timer, %struct.hrtimer** %next_timer, align 32
  call fastcc void @__hrtimer_reprogram(%struct.hrtimer_cpu_base* noundef %0, i64 noundef %spec.store.select) #16
  br label %cleanup55

cleanup55:                                        ; preds = %if.end47, %if.end42, %if.end37, %if.then24, %if.end28, %if.end31, %if.end54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_hrtimer_base(%struct.hrtimer* nocapture noundef readonly %timer, i64* nocapture noundef readonly %flags) unnamed_addr #1 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 0
  %1 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 0
  %2 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %timer) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %flags, align 8, !annotation !15
  %call = call i1 @hrtimer_active(%struct.hrtimer* noundef %timer) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  %call2 = call fastcc i32 @hrtimer_callback_running(%struct.hrtimer* noundef %timer) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %call1, i1 noundef false, i1 noundef false) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %ret.0 = phi i32 [ -1, %if.end ], [ %call4, %if.then3 ]
  call fastcc void @unlock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @hrtimer_active(%struct.hrtimer* noundef %timer) local_unnamed_addr #1 {
entry:
  %base2 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = load volatile %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base2, align 8
  %seq3 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 3
  %sequence.i = getelementptr inbounds %struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* %seq3, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %sequence.i, align 4
  %and33 = and i32 %1, 1
  %tobool.not34 = icmp eq i32 %and33, 0
  br i1 %tobool.not34, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #16
  %2 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %1, %do.body ], [ %2, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !18
  %3 = load i8, i8* %state, align 8
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  %running = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 4
  %4 = load %struct.hrtimer*, %struct.hrtimer** %running, align 8
  %cmp7 = icmp eq %struct.hrtimer* %4, %timer
  br i1 %cmp7, label %cleanup, label %do.cond9

do.cond9:                                         ; preds = %lor.lhs.false
  %seqcount.i = getelementptr inbounds %struct.seqcount_raw_spinlock, %struct.seqcount_raw_spinlock* %seq3, i64 0, i32 0
  %call12 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %.lcssa) #16
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.rhs, label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond9
  %5 = load volatile %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base2, align 8
  %cmp19.not = icmp eq %struct.hrtimer_clock_base* %0, %5
  br i1 %cmp19.not, label %cleanup, label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs, %do.cond9
  br label %do.body

cleanup:                                          ; preds = %lor.rhs, %while.end, %lor.lhs.false
  %retval.0 = phi i1 [ true, %lor.lhs.false ], [ true, %while.end ], [ false, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hrtimer_callback_running(%struct.hrtimer* noundef readonly %timer) unnamed_addr #6 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %running = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 4
  %1 = load %struct.hrtimer*, %struct.hrtimer** %running, align 8
  %cmp = icmp eq %struct.hrtimer* %1, %timer
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base, i1 noundef %restart, i1 noundef %keep_local) unnamed_addr #1 {
entry:
  %state2 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %0 = load i8, i8* %state2, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %2 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %3 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %cmp = icmp eq %struct.hrtimer_cpu_base* %2, %3
  br i1 %restart, label %if.else, label %if.end

if.else:                                          ; preds = %if.then
  %lnot = xor i1 %keep_local, true
  %and1124 = and i1 %cmp, %lnot
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %reprogram.0.in = phi i1 [ %and1124, %if.else ], [ %cmp, %if.then ]
  %state.0 = phi i8 [ %0, %if.else ], [ 0, %if.then ]
  %conv15 = zext i1 %reprogram.0.in to i32
  call fastcc void @__remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base, i8 noundef %state.0, i32 noundef %conv15) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef %timer) local_unnamed_addr #1 {
entry:
  %call6 = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %timer) #16
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %do.end

if.then:                                          ; preds = %entry, %if.then
  call fastcc void @hrtimer_cancel_wait_running() #16
  %call = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %timer) #16
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.lcssa = phi i32 [ %call6, %entry ], [ %call, %if.then ]
  ret i32 %call.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_cancel_wait_running() unnamed_addr #1 {
entry:
  call fastcc void @cpu_relax() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__hrtimer_get_remaining(%struct.hrtimer* noundef %timer, i1 noundef %adjust) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %flags, align 8, !annotation !15
  %call = call fastcc %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  %call1 = call fastcc i64 @hrtimer_expires_remaining(%struct.hrtimer* noundef %timer) #16
  call fastcc void @unlock_hrtimer_base(%struct.hrtimer* noundef %timer, i64* noundef nonnull %flags) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_expires_remaining(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #1 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %1 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %1, i64 0, i32 6
  %2 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %2() #15
  %sub = sub i64 %0, %call
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %clock_id, i32 noundef %mode) local_unnamed_addr #1 {
entry:
  call fastcc void @__hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %clock_id, i32 noundef %mode) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %clock_id, i32 noundef %mode) unnamed_addr #1 {
entry:
  %and = and i32 %mode, 4
  %0 = bitcast %struct.hrtimer* %timer to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 64) #15
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #16
  %cmp = icmp eq i32 %clock_id, 0
  %and4 = and i32 %mode, 1
  %clock_id.addr.0 = select i1 %cmp, i32 %and4, i32 %clock_id
  %add = add i64 %call3, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %1 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %and.lobit = lshr exact i32 %and, 2
  %2 = trunc i32 %and.lobit to i8
  %call7 = call fastcc i32 @hrtimer_clockid_to_base(i32 noundef %clock_id.addr.0) #16
  %add8 = add i32 %call7, %and
  %is_soft = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 6
  store i8 %2, i8* %is_soft, align 2
  %3 = trunc i32 %mode to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  %is_hard = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 7
  store i8 %5, i8* %is_hard, align 1
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 %idxprom
  %base15 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  store %struct.hrtimer_clock_base* %arrayidx, %struct.hrtimer_clock_base** %base15, align 8
  %node = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0
  call fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #18, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !20
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hrtimer_run_queues() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %0 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 0
  %call11 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %call14 = call fastcc i64 @hrtimer_update_base(%struct.hrtimer_cpu_base* noundef %0) #16
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 7
  %1 = load i64, i64* %softirq_expires_next, align 8
  %call15 = call fastcc i1 @ktime_before(i64 noundef %call14, i64 noundef %1) #16
  br i1 %call15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %entry
  store i64 9223372036854775807, i64* %softirq_expires_next, align 8
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 4
  %bf.load = load i8, i8* %softirq_activated, align 16
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, i8* %softirq_activated, align 16
  call void @raise_softirq_irqoff(i32 noundef 8) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %entry
  call fastcc void @__hrtimer_run_queues(%struct.hrtimer_cpu_base* noundef %0, i64 noundef %call14, i64 noundef %call11, i32 noundef 15) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call11) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_update_base(%struct.hrtimer_cpu_base* noundef %base) unnamed_addr #1 {
entry:
  %offset = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 1, i32 7
  %offset3 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 2, i32 7
  %offset6 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 3, i32 7
  %clock_was_set_seq = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 3
  %call = call i64 @ktime_get_update_offsets_now(i32* noundef %clock_was_set_seq, i64* noundef %offset, i64* noundef %offset3, i64* noundef %offset6) #15
  %0 = load i64, i64* %offset, align 8
  %offset9 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 5, i32 7
  store i64 %0, i64* %offset9, align 8
  %1 = load i64, i64* %offset3, align 8
  %offset12 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 6, i32 7
  store i64 %1, i64* %offset12, align 8
  %2 = load i64, i64* %offset6, align 8
  %offset15 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %base, i64 0, i32 10, i64 7, i32 7
  store i64 %2, i64* %offset15, align 8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @ktime_before(i64 noundef %cmp1, i64 noundef %cmp2) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @ktime_compare(i64 noundef %cmp1, i64 noundef %cmp2) #16
  %cmp = icmp slt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__hrtimer_run_queues(%struct.hrtimer_cpu_base* noundef %cpu_base, i64 noundef %now, i64 noundef %flags, i32 noundef %active_mask) unnamed_addr #1 {
entry:
  %active = alloca i32, align 4
  %0 = bitcast i32* %active to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 2
  %1 = load i32, i32* %active_bases, align 8
  %and = and i32 %1, %active_mask
  store i32 %and, i32* %active, align 4
  %call29 = call fastcc %struct.hrtimer_clock_base* @__next_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32* noundef nonnull %active) #16
  %tobool.not30 = icmp eq %struct.hrtimer_clock_base* %call29, null
  br i1 %tobool.not30, label %while.end10, label %while.body

while.body:                                       ; preds = %entry, %while.end
  %call31 = phi %struct.hrtimer_clock_base* [ %call, %while.end ], [ %call29, %entry ]
  %offset = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %call31, i64 0, i32 7
  %2 = load i64, i64* %offset, align 8
  %add = add i64 %2, %now
  %active2 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %call31, i64 0, i32 5
  %call326 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %active2) #16
  %tobool4.not27 = icmp eq %struct.timerqueue_node* %call326, null
  br i1 %tobool4.not27, label %while.end, label %while.body5

while.body5:                                      ; preds = %while.body, %if.end
  %call328 = phi %struct.timerqueue_node* [ %call3, %if.end ], [ %call326, %while.body ]
  %3 = bitcast %struct.timerqueue_node* %call328 to %struct.hrtimer*
  %call6 = call fastcc i64 @hrtimer_get_softexpires_tv64(%struct.hrtimer* noundef nonnull %3) #16
  %cmp = icmp slt i64 %add, %call6
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.body5
  call fastcc void @__run_hrtimer(%struct.hrtimer_cpu_base* noundef %cpu_base, %struct.hrtimer_clock_base* noundef nonnull %call31, %struct.hrtimer* noundef nonnull %3, i64 noundef %flags) #16
  %call3 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %active2) #16
  %tobool4.not = icmp eq %struct.timerqueue_node* %call3, null
  br i1 %tobool4.not, label %while.end, label %while.body5

while.end:                                        ; preds = %if.end, %while.body5, %while.body
  %call = call fastcc %struct.hrtimer_clock_base* @__next_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32* noundef nonnull %active) #16
  %tobool.not = icmp eq %struct.hrtimer_clock_base* %call, null
  br i1 %tobool.not, label %while.end10, label %while.body

while.end10:                                      ; preds = %while.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %sl, i64 0, i32 0
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer, i32 noundef %mode) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer, i32 noundef %mode) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #16
  %call1 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #16
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %sub, i32 noundef %mode) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef %mode) local_unnamed_addr #1 {
entry:
  call fastcc void @__hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef %mode) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef %mode) unnamed_addr #1 {
entry:
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %sl, i64 0, i32 0
  call fastcc void @__hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %clock_id, i32 noundef %mode) #16
  %function = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %sl, i64 0, i32 0, i32 2
  store i32 (%struct.hrtimer*)* @hrtimer_wakeup, i32 (%struct.hrtimer*)** %function, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %sl, i64 0, i32 1
  store %struct.task_struct* %1, %struct.task_struct** %task, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nanosleep_copyout(%struct.restart_block* nocapture noundef readonly %restart, %struct.timespec64* noundef %ts) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2
  %nanosleep = bitcast %union.anon.46* %0 to %struct.anon.48*
  %type = getelementptr inbounds %struct.anon.48, %struct.anon.48* %nanosleep, i64 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  %2 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 1
  %rmtp = bitcast i32* %2 to %struct.__kernel_timespec**
  %3 = load %struct.__kernel_timespec*, %struct.__kernel_timespec** %rmtp, align 8
  %call = call i32 @put_timespec64(%struct.timespec64* noundef %ts, %struct.__kernel_timespec* noundef %3) #15
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -516, i32 -14
  ret i32 %.

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 2030; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !22
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @hrtimer_nanosleep(i64 noundef %rqtp, i32 noundef %mode, i32 noundef %clockid) local_unnamed_addr #1 {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !15
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call2 = call fastcc i32 @dl_task(%struct.task_struct* noundef %2) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 131
  %3 = load i64, i64* %timer_slack_ns, align 64
  %call4 = call fastcc i32 @rt_task(%struct.task_struct* noundef %2) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %slack.0 = phi i64 [ 0, %if.then ], [ %3, %lor.lhs.false ]
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef %clockid, i32 noundef %mode) #16
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 0
  call fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* noundef nonnull %timer, i64 noundef %rqtp, i64 noundef %slack.0) #16
  %call6 = call fastcc i32 @do_nanosleep(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef %mode) #16
  %cmp.not = icmp eq i32 %call6, -516
  br i1 %cmp.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq i32 %mode, 0
  br i1 %cmp9, label %out, label %if.end11

if.end11:                                         ; preds = %if.end8
  %restart_block = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 49
  %base = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 0, i32 3
  %4 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %clockid14 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %4, i64 0, i32 2
  %5 = load i32, i32* %clockid14, align 4
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 49, i32 2
  %clockid15 = bitcast %union.anon.46* %6 to i32*
  store i32 %5, i32* %clockid15, align 8
  %call17 = call fastcc i64 @hrtimer_get_expires_tv64(%struct.hrtimer* noundef nonnull %timer) #16
  %expires = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 49, i32 2, i32 0, i32 3
  %7 = bitcast i32* %expires to i64*
  store i64 %call17, i64* %7, align 8
  call fastcc void @set_restart_fn(%struct.restart_block* noundef %restart_block) #16
  br label %out

out:                                              ; preds = %if.end8, %if.end, %if.end11
  %ret.0 = phi i32 [ %call6, %if.end ], [ -516, %if.end11 ], [ -514, %if.end8 ]
  %conv = sext i32 %ret.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #18
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @dl_prio(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef %mode) unnamed_addr #1 {
entry:
  call void @hrtimer_init_sleeper(%struct.hrtimer_sleeper* noundef %sl, i32 noundef %clock_id, i32 noundef %mode) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time, i64 noundef %delta) unnamed_addr #8 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  %call1 = call i64 @ktime_add_safe(i64 noundef %time, i64 noundef %delta) #16
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %call1, i64* %expires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_nanosleep(%struct.hrtimer_sleeper* noundef %t, i32 noundef %mode) unnamed_addr #1 section ".sched.text" {
entry:
  %rmt = alloca %struct.timespec64, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 1
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %mode.addr.0 = phi i32 [ %mode, %entry ], [ 0, %land.rhs ]
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  call void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef %t, i32 noundef %mode.addr.0) #16
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %do.body
  call void @schedule() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %call19 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %timer) #16
  %3 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool22.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool22.not, label %do.body37, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call24 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #16
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body, label %do.body37

do.body37:                                        ; preds = %if.end, %land.rhs
  store volatile i32 0, i32* %__state, align 16
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool47.not = icmp eq %struct.task_struct* %4, null
  br i1 %tobool47.not, label %cleanup63, label %if.end49

if.end49:                                         ; preds = %do.body37
  %restart_block = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49, i32 2
  %nanosleep = bitcast %union.anon.46* %5 to %struct.anon.48*
  %type = getelementptr inbounds %struct.anon.48, %struct.anon.48* %nanosleep, i64 0, i32 1
  %6 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %cleanup63, label %if.then52

if.then52:                                        ; preds = %if.end49
  %call54 = call fastcc i64 @hrtimer_expires_remaining(%struct.hrtimer* noundef %timer) #16
  %7 = bitcast %struct.timespec64* %rmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #18
  %cmp55 = icmp slt i64 %call54, 1
  br i1 %cmp55, label %cleanup, label %if.end58

if.end58:                                         ; preds = %if.then52
  %call59 = call [2 x i64] @ns_to_timespec64(i64 noundef %call54) #15
  %call59.fca.0.extract = extractvalue [2 x i64] %call59, 0
  %call59.fca.1.extract = extractvalue [2 x i64] %call59, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rmt, i64 0, i32 0
  store i64 %call59.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx65 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rmt, i64 0, i32 1
  store i64 %call59.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx65, align 8
  %call60 = call i32 @nanosleep_copyout(%struct.restart_block* noundef %restart_block, %struct.timespec64* noundef nonnull %rmt) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end58
  %retval.0 = phi i32 [ %call60, %if.end58 ], [ 0, %if.then52 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #18
  br label %cleanup63

cleanup63:                                        ; preds = %if.end49, %do.body37, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %do.body37 ], [ -516, %if.end49 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_restart_fn(%struct.restart_block* nocapture noundef writeonly %restart) unnamed_addr #8 {
entry:
  %fn1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 1
  store i64 (%struct.restart_block*)* @hrtimer_nanosleep_restart, i64 (%struct.restart_block*)** %fn1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @hrtimer_nanosleep_restart(%struct.restart_block* nocapture noundef readonly %restart) #1 section ".sched.text" {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !15
  %1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2
  %clockid = bitcast %union.anon.46* %1 to i32*
  %2 = load i32, i32* %clockid, align 8
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef %2, i32 noundef 0) #16
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 0
  %expires = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 2, i32 0, i32 3
  %3 = bitcast i32* %expires to i64*
  %4 = load i64, i64* %3, align 8
  call fastcc void @hrtimer_set_expires_tv64(%struct.hrtimer* noundef nonnull %timer, i64 noundef %4) #16
  %call = call fastcc i32 @do_nanosleep(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef 0) #16
  %conv = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #18
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_nanosleep(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_nanosleep(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_nanosleep(i64 noundef %rqtp, i64 noundef %rmtp) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %rqtp to %struct.__kernel_timespec*
  %1 = inttoptr i64 %rmtp to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_nanosleep(%struct.__kernel_timespec* noundef %0, %struct.__kernel_timespec* noundef %1) #16
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @hrtimers_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #9 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %1 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %cpu_base4 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 0, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4, align 64
  %seqcount = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 0, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount) #16
  %active = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 0, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active) #16
  %cpu_base4.1 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 1, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.1, align 64
  %seqcount.1 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 1, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.1) #16
  %active.1 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 1, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.1) #16
  %cpu_base4.2 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 2, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.2, align 64
  %seqcount.2 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 2, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.2) #16
  %active.2 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 2, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.2) #16
  %cpu_base4.3 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 3, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.3, align 64
  %seqcount.3 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 3, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.3) #16
  %active.3 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 3, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.3) #16
  %cpu_base4.4 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 4, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.4, align 64
  %seqcount.4 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 4, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.4) #16
  %active.4 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 4, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.4) #16
  %cpu_base4.5 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 5, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.5, align 64
  %seqcount.5 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 5, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.5) #16
  %active.5 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 5, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.5) #16
  %cpu_base4.6 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 6, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.6, align 64
  %seqcount.6 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 6, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.6) #16
  %active.6 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 6, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.6) #16
  %cpu_base4.7 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 7, i32 0
  store %struct.hrtimer_cpu_base* %1, %struct.hrtimer_cpu_base** %cpu_base4.7, align 64
  %seqcount.7 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 7, i32 3, i32 0
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount.7) #16
  %active.7 = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 7, i32 5
  call fastcc void @timerqueue_init_head(%struct.timerqueue_head* noundef %active.7) #16
  %cpu8 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 1
  store i32 %cpu, i32* %cpu8, align 4
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 2
  store i32 0, i32* %active_bases, align 8
  %hres_active = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 4
  %bf.load = load i8, i8* %hres_active, align 16
  %bf.clear10 = and i8 %bf.load, -6
  store i8 %bf.clear10, i8* %hres_active, align 16
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 6
  store %struct.hrtimer* null, %struct.hrtimer** %next_timer, align 32
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 8
  store %struct.hrtimer* null, %struct.hrtimer** %softirq_next_timer, align 16
  %expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 5
  store i64 9223372036854775807, i64* %expires_next, align 8
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 7
  store i64 9223372036854775807, i64* %softirq_expires_next, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__seqcount_init(%struct.seqcount* nocapture noundef writeonly %s) unnamed_addr #8 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  store i32 0, i32* %sequence, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @timerqueue_init_head(%struct.timerqueue_head* nocapture noundef writeonly %head) unnamed_addr #8 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.2.0..sroa_idx2, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @hrtimers_init() local_unnamed_addr #10 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i32 @hrtimers_prepare_cpu(i32 noundef %1) #16
  call void @open_softirq(i32 noundef 8, void (%struct.softirq_action*)* noundef nonnull @hrtimer_run_softirq) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, void (%struct.softirq_action*)* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @hrtimer_run_softirq(%struct.softirq_action* nocapture noundef readnone %h) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %0 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #16
  %call7 = call fastcc i64 @hrtimer_update_base(%struct.hrtimer_cpu_base* noundef %0) #16
  call fastcc void @__hrtimer_run_queues(%struct.hrtimer_cpu_base* noundef %0, i64 noundef %call7, i64 noundef %call4, i32 noundef 240) #16
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 4
  %bf.load = load i8, i8* %softirq_activated, align 16
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %softirq_activated, align 16
  call fastcc void @hrtimer_update_softirq_timer(%struct.hrtimer_cpu_base* noundef %0) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call4) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @schedule_hrtimeout_range_clock(i64* noundef readonly %expires, i64 noundef %delta, i32 noundef %mode, i32 noundef %clock_id) local_unnamed_addr #1 section ".sched.text" {
entry:
  %t = alloca %struct.hrtimer_sleeper, align 8
  %0 = bitcast %struct.hrtimer_sleeper* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !15
  %tobool.not = icmp eq i64* %expires, null
  br i1 %tobool.not, label %if.then14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %expires, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %do.body6, label %if.end15

do.body6:                                         ; preds = %land.lhs.true
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  br label %cleanup

if.then14:                                        ; preds = %entry
  call void @schedule() #15
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  call fastcc void @hrtimer_init_sleeper_on_stack(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef %clock_id, i32 noundef %mode) #16
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 0
  %4 = load i64, i64* %expires, align 8
  call fastcc void @hrtimer_set_expires_range_ns(%struct.hrtimer* noundef nonnull %timer, i64 noundef %4, i64 noundef %delta) #16
  call void @hrtimer_sleeper_start_expires(%struct.hrtimer_sleeper* noundef nonnull %t, i32 noundef %mode) #16
  %task = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %t, i64 0, i32 1
  %5 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool16.not = icmp eq %struct.task_struct* %5, null
  br i1 %tobool16.not, label %if.end20, label %if.then19, !prof !8

if.then19:                                        ; preds = %if.end15
  call void @schedule() #15
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15
  %call22 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef nonnull %timer) #16
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %__state34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 1
  store volatile i32 0, i32* %__state34, align 16
  %8 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool42.not = icmp eq %struct.task_struct* %8, null
  %cond = select i1 %tobool42.not, i32 0, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14, %do.body6
  %retval.0 = phi i32 [ 0, %do.body6 ], [ %cond, %if.end20 ], [ -4, %if.then14 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @schedule_hrtimeout_range(i64* noundef %expires, i64 noundef %delta, i32 noundef %mode) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call i32 @schedule_hrtimeout_range_clock(i64* noundef %expires, i64 noundef %delta, i32 noundef %mode, i32 noundef 1) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @schedule_hrtimeout(i64* noundef %expires, i32 noundef %mode) local_unnamed_addr #1 section ".sched.text" {
entry:
  %call = call i32 @schedule_hrtimeout_range(i64* noundef %expires, i64 noundef 0, i32 noundef %mode) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_force_reprogram(%struct.hrtimer_cpu_base* noundef %cpu_base) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @hrtimer_update_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base) #16
  %expires_next1 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 5
  %0 = load i64, i64* %expires_next1, align 8
  %cmp = icmp eq i64 %call, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__hrtimer_reprogram(%struct.hrtimer_cpu_base* noundef %cpu_base, i64 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_update_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base) unnamed_addr #1 {
entry:
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 4
  %bf.load = load i8, i8* %softirq_activated, align 16
  %0 = and i8 %bf.load, 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  %call115 = call fastcc i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef 15) #16
  br label %if.end3

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef 240) #16
  %softirq_expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 7
  store i64 %call, i64* %softirq_expires_next, align 8
  %call1 = call fastcc i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef 15) #16
  %cmp = icmp sgt i64 %call1, %call
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 8
  %1 = load %struct.hrtimer*, %struct.hrtimer** %softirq_next_timer, align 16
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 6
  store %struct.hrtimer* %1, %struct.hrtimer** %next_timer, align 32
  br label %if.end3

if.end3:                                          ; preds = %if.end.thread, %if.then2, %if.end
  %expires_next.0 = phi i64 [ %call, %if.then2 ], [ %call1, %if.end ], [ %call115, %if.end.thread ]
  ret i64 %expires_next.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !26
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__hrtimer_reprogram(%struct.hrtimer_cpu_base* nocapture noundef writeonly %cpu_base, i64 noundef %expires_next) unnamed_addr #8 {
entry:
  %expires_next1 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 5
  store i64 %expires_next, i64* %expires_next1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef %active_mask) unnamed_addr #1 {
entry:
  %softirq_activated = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 4
  %bf.load = load i8, i8* %softirq_activated, align 16
  %0 = and i8 %bf.load, 8
  %tobool.not = icmp ne i8 %0, 0
  %and = and i32 %active_mask, 240
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 2
  %1 = load i32, i32* %active_bases, align 8
  %and2 = and i32 %1, 240
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 8
  store %struct.hrtimer* null, %struct.hrtimer** %softirq_next_timer, align 16
  %call = call fastcc i64 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef %and2, i64 noundef 9223372036854775807) #16
  %2 = load %struct.hrtimer*, %struct.hrtimer** %softirq_next_timer, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next_timer.0 = phi %struct.hrtimer* [ null, %entry ], [ %2, %if.then ]
  %expires_next.0 = phi i64 [ 9223372036854775807, %entry ], [ %call, %if.then ]
  %and4 = and i32 %active_mask, 15
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %active_bases7 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 2
  %3 = load i32, i32* %active_bases7, align 8
  %and8 = and i32 %3, 15
  %next_timer9 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 6
  store %struct.hrtimer* %next_timer.0, %struct.hrtimer** %next_timer9, align 32
  %call10 = call fastcc i64 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef %and8, i64 noundef %expires_next.0) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end
  %expires_next.1 = phi i64 [ %call10, %if.then6 ], [ %expires_next.0, %if.end ]
  ret i64 %expires_next.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef %active, i64 noundef %expires_next) unnamed_addr #1 {
entry:
  %active.addr = alloca i32, align 4
  store i32 %active, i32* %active.addr, align 4
  %call1 = call fastcc %struct.hrtimer_clock_base* @__next_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32* noundef nonnull %active.addr) #16
  %tobool.not2 = icmp eq %struct.hrtimer_clock_base* %call1, null
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 8
  %0 = bitcast %struct.hrtimer** %softirq_next_timer to %struct.timerqueue_node**
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 6
  %1 = bitcast %struct.hrtimer** %next_timer to %struct.timerqueue_node**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call4 = phi %struct.hrtimer_clock_base* [ %call1, %while.body.lr.ph ], [ %call, %cleanup ]
  %expires_next.addr.03 = phi i64 [ %expires_next, %while.body.lr.ph ], [ %expires_next.addr.2, %cleanup ]
  %active1 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %call4, i64 0, i32 5
  %call2 = call fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* noundef %active1) #16
  %cmp = icmp eq %struct.timerqueue_node* %call2, null
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %call3 = call %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* noundef null) #15
  %tobool4.not = icmp eq %struct.timerqueue_node* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then, %while.body
  %timer.0.in = phi %struct.timerqueue_node* [ %call2, %while.body ], [ %call3, %if.then ]
  %timer.0 = bitcast %struct.timerqueue_node* %timer.0.in to %struct.hrtimer*
  %call13 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer.0) #16
  %offset = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %call4, i64 0, i32 7
  %2 = load i64, i64* %offset, align 8
  %sub = sub i64 %call13, %2
  %cmp14 = icmp slt i64 %sub, %expires_next.addr.03
  br i1 %cmp14, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end12
  %is_soft = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer.0, i64 0, i32 6
  %3 = load i8, i8* %is_soft, align 2
  %tobool19.not = icmp eq i8 %3, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  store %struct.timerqueue_node* %timer.0.in, %struct.timerqueue_node** %0, align 16
  br label %cleanup

if.else:                                          ; preds = %if.end18
  store %struct.timerqueue_node* %timer.0.in, %struct.timerqueue_node** %1, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else, %if.then20, %if.then
  %expires_next.addr.2 = phi i64 [ %expires_next.addr.03, %if.then ], [ %sub, %if.then20 ], [ %sub, %if.else ], [ %expires_next.addr.03, %if.end12 ]
  %call = call fastcc %struct.hrtimer_clock_base* @__next_base(%struct.hrtimer_cpu_base* noundef %cpu_base, i32* noundef nonnull %active.addr) #16
  %tobool.not = icmp eq %struct.hrtimer_clock_base* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  %expires_next.addr.0.lcssa = phi i64 [ %expires_next, %entry ], [ %expires_next.addr.2, %cleanup ]
  %4 = icmp sgt i64 %expires_next.addr.0.lcssa, 0
  %spec.store.select = select i1 %4, i64 %expires_next.addr.0.lcssa, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.hrtimer_clock_base* @__next_base(%struct.hrtimer_cpu_base* noundef readnone %cpu_base, i32* nocapture noundef %active) unnamed_addr #12 {
entry:
  %0 = load i32, i32* %active, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = call i32 @llvm.cttz.i32(i32 %0, i1 true), !range !27
  %2 = zext i32 %1 to i64
  %shl = shl nuw i32 1, %1
  %neg = xor i32 %shl, -1
  %and = and i32 %0, %neg
  store i32 %and, i32* %active, align 4
  %arrayidx = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 10, i64 %2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.hrtimer_clock_base* [ %arrayidx, %if.end ], [ null, %entry ]
  ret %struct.hrtimer_clock_base* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.timerqueue_node* @timerqueue_getnext(%struct.timerqueue_head* nocapture noundef readonly %head) unnamed_addr #6 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.timerqueue_head, %struct.timerqueue_head* %head, i64 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %rb_leftmost to %struct.timerqueue_node**
  %1 = load %struct.timerqueue_node*, %struct.timerqueue_node** %0, align 8
  ret %struct.timerqueue_node* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.timerqueue_node* @timerqueue_iterate_next(%struct.timerqueue_node* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #16
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !29
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !30
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #13 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #1 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @hrtimer_work) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @clock_was_set_work(%struct.work_struct* nocapture noundef readnone %work) #1 {
entry:
  call void @clock_was_set(i32 undef) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.hrtimer_clock_base* @switch_hrtimer_base(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base) unnamed_addr #1 {
again:
  %index = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 1
  %0 = load i32, i32* %index, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.hrtimer_cpu_base* @hrtimer_bases to i64)
  %1 = inttoptr i64 %add to %struct.hrtimer_cpu_base*
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 10, i64 %idxprom
  %cmp.not = icmp eq %struct.hrtimer_clock_base* %arrayidx, %base
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %again
  %call3 = call fastcc i32 @hrtimer_callback_running(%struct.hrtimer* noundef %timer) #16
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body43, label %cleanup, !prof !12

do.body43:                                        ; preds = %if.then
  %base12 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  store volatile %struct.hrtimer_clock_base* getelementptr inbounds (%struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* @migration_cpu_base, i64 0, i32 10, i64 0), %struct.hrtimer_clock_base** %base12, align 8
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %2 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %lock = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %2, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  %cpu_base17 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %arrayidx, i64 0, i32 0
  %3 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base17, align 64
  %lock18 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock18) #16
  store volatile %struct.hrtimer_clock_base* %arrayidx, %struct.hrtimer_clock_base** %base12, align 8
  br label %cleanup

cleanup:                                          ; preds = %again, %do.body43, %if.then
  %retval.0 = phi %struct.hrtimer_clock_base* [ %base, %if.then ], [ %arrayidx, %do.body43 ], [ %base, %again ]
  ret %struct.hrtimer_clock_base* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @enqueue_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base) unnamed_addr #1 {
entry:
  %index = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 1
  %0 = load i32, i32* %index, align 8
  %shl = shl nuw i32 1, %0
  %cpu_base = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %1 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base, align 64
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %1, i64 0, i32 2
  %2 = load i32, i32* %active_bases, align 8
  %or = or i32 %2, %shl
  store i32 %or, i32* %active_bases, align 8
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  store volatile i8 1, i8* %state, align 8
  %active = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 5
  %node = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0
  %call = call i1 @timerqueue_add(%struct.timerqueue_head* noundef %active, %struct.timerqueue_node* noundef %node) #15
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_add(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base, i8 noundef %newstate, i32 noundef %reprogram) unnamed_addr #1 {
entry:
  %cpu_base1 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 0
  %0 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %cpu_base1, align 64
  %state2 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %1 = load i8, i8* %state2, align 8
  store volatile i8 %newstate, i8* %state2, align 8
  %2 = and i8 %1, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 5
  %node = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0
  %call = call i1 @timerqueue_del(%struct.timerqueue_head* noundef %active, %struct.timerqueue_node* noundef %node) #15
  br i1 %call, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %index = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 1
  %3 = load i32, i32* %index, align 8
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %active_bases = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 2
  %4 = load i32, i32* %active_bases, align 8
  %and11 = and i32 %4, %neg
  store i32 %and11, i32* %active_bases, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %tobool13.not = icmp eq i32 %reprogram, 0
  br i1 %tobool13.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %0, i64 0, i32 6
  %5 = load %struct.hrtimer*, %struct.hrtimer** %next_timer, align 32
  %cmp = icmp eq %struct.hrtimer* %5, %timer
  br i1 %cmp, label %if.then15, label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call fastcc void @hrtimer_force_reprogram(%struct.hrtimer_cpu_base* noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true, %if.then15, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @timerqueue_del(%struct.timerqueue_head* noundef, %struct.timerqueue_node* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @hrtimer_clockid_to_base(i32 noundef %clock_id) unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %clock_id, 16
  br i1 %cmp, label %if.then, label %do.end, !prof !12

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %clock_id to i64
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @hrtimer_clock_to_base_table, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %1 = and i64 %idxprom, 4611686018427387903
  %2 = lshr i64 63356, %1
  %3 = and i64 %2, 1
  %cmp2.not.not.not = icmp eq i64 %3, 0
  br i1 %cmp2.not.not.not, label %return, label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 noundef %clock_id) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 1537; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !33
  br label %return

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ %0, %if.then ], [ 0, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @timerqueue_init(%struct.timerqueue_node* noundef %node) unnamed_addr #8 {
entry:
  %0 = ptrtoint %struct.timerqueue_node* %node to i64
  %__rb_parent_color = getelementptr inbounds %struct.timerqueue_node, %struct.timerqueue_node* %node, i64 0, i32 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #13 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_update_offsets_now(i32* noundef, i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @ktime_compare(i64 noundef %cmp1, i64 noundef %cmp2) unnamed_addr #2 {
entry:
  %cmp = icmp slt i64 %cmp1, %cmp2
  %cmp3 = icmp sgt i64 %cmp1, %cmp2
  %. = zext i1 %cmp3 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires_tv64(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #6 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__run_hrtimer(%struct.hrtimer_cpu_base* noundef %cpu_base, %struct.hrtimer_clock_base* noundef %base, %struct.hrtimer* noundef %timer, i64 noundef %flags) unnamed_addr #1 {
entry:
  %running = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 4
  store %struct.hrtimer* %timer, %struct.hrtimer** %running, align 8
  %seqcount.i = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %base, i64 0, i32 3, i32 0
  call fastcc void @do_raw_write_seqcount_barrier(%struct.seqcount* noundef %seqcount.i) #16
  call fastcc void @__remove_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base, i8 noundef 0, i32 noundef 0) #16
  %function = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 2
  %0 = load i32 (%struct.hrtimer*)*, i32 (%struct.hrtimer*)** %function, align 8
  %lock2 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock2, i64 noundef %flags) #16
  %call5 = call i32 %0(%struct.hrtimer* noundef %timer) #15
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock2) #16
  %cmp10.not = icmp eq i32 %call5, 0
  br i1 %cmp10.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %1 = load i8, i8* %state, align 8
  %2 = and i8 %1, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = call fastcc i32 @enqueue_hrtimer(%struct.hrtimer* noundef %timer, %struct.hrtimer_clock_base* noundef %base) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @do_raw_write_seqcount_barrier(%struct.seqcount* noundef %seqcount.i) #16
  %4 = load %struct.hrtimer*, %struct.hrtimer** %running, align 8
  %cmp17.not = icmp eq %struct.hrtimer* %4, %timer
  br i1 %cmp17.not, label %if.end28, label %if.then27, !prof !12

if.then27:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/hrtimer.c\22; .popsection; .long 14472b - 14470b; .short 1713; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !34
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end
  store %struct.hrtimer* null, %struct.hrtimer** %running, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_barrier(%struct.seqcount* nocapture noundef %s) unnamed_addr #1 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !35
  %1 = load i32, i32* %sequence, align 4
  %inc2 = add i32 %1, 1
  store i32 %inc2, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #6 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @hrtimer_wakeup(%struct.hrtimer* nocapture noundef %timer) #1 {
entry:
  %task1 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 1
  %0 = bitcast %struct.hrtimer* %task1 to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  store %struct.task_struct* null, %struct.task_struct** %0, align 8
  %tobool.not = icmp eq %struct.task_struct* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_prio(i32 noundef %prio) unnamed_addr #2 {
entry:
  %prio.lobit = lshr i32 %prio, 31
  ret i32 %prio.lobit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #13 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !12

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #13 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #13 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #13 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #2 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires_tv64(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %tv64) unnamed_addr #8 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %tv64, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %tv64, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_nanosleep(%struct.__kernel_timespec* noundef %rqtp, %struct.__kernel_timespec* noundef %rmtp) unnamed_addr #1 {
entry:
  %tu = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %tu to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !15
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %tu, %struct.__kernel_timespec* noundef %rqtp) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef nonnull %tu) #16
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp ne %struct.__kernel_timespec* %rmtp, null
  %cond = zext i1 %tobool4.not to i32
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !21
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 49, i32 2
  %nanosleep = bitcast %union.anon.46* %3 to %struct.anon.48*
  %type = getelementptr inbounds %struct.anon.48, %struct.anon.48* %nanosleep, i64 0, i32 1
  store i32 %cond, i32* %type, align 4
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 49, i32 2, i32 0, i32 1
  %rmtp9 = bitcast i32* %4 to %struct.__kernel_timespec**
  store %struct.__kernel_timespec* %rmtp, %struct.__kernel_timespec** %rmtp9, align 8
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tu, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %5 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tu, i64 0, i32 1
  %.fca.1.load = load i64, i64* %5, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call10 = call fastcc i64 @timespec64_to_ktime([2 x i64] %.fca.1.insert) #16
  %call11 = call i64 @hrtimer_nanosleep(i64 noundef %call10, i32 noundef 1, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i64 [ %call11, %if.end3 ], [ -14, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #6 {
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
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #2 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_update_softirq_timer(%struct.hrtimer_cpu_base* noundef %cpu_base) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* noundef %cpu_base, i32 noundef 240) #16
  %cmp = icmp eq i64 %call, 9223372036854775807
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %softirq_next_timer = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %cpu_base, i64 0, i32 8
  %0 = load %struct.hrtimer*, %struct.hrtimer** %softirq_next_timer, align 16
  call fastcc void @hrtimer_reprogram(%struct.hrtimer* noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }

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
!9 = !{i64 2149184500, i64 2149184547, i64 2149184553, i64 2149184590, i64 2149184608, i64 2149185535, i64 2149185583, i64 2149185631, i64 2149185694, i64 2149185743, i64 2149184686, i64 2149184711, i64 2149184737, i64 2149184743, i64 2149184780, i64 2149184786, i64 2149184836, i64 2149184882, i64 2149184915}
!10 = !{i64 2149787375}
!11 = !{i64 2149813218}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155092760}
!14 = !{i64 2150106286}
!15 = !{!"auto-init"}
!16 = !{i64 2155101317}
!17 = !{i64 2155086685}
!18 = !{i64 2155113269}
!19 = !{i64 1929690}
!20 = !{i64 2150328520}
!21 = !{i64 387038}
!22 = !{i64 2155136698}
!23 = !{i64 2155139595}
!24 = !{i64 2149802376}
!25 = !{i64 2149809657}
!26 = !{i64 2148149471, i64 2148149504, i64 2148149557, i64 2148149616, i64 2148149650, i64 2148149705, i64 2148149734, i64 2148149754}
!27 = !{i32 0, i32 33}
!28 = !{i64 2149756505}
!29 = !{i64 2149041923, i64 2149041970, i64 2149041976, i64 2149042013, i64 2149042031, i64 2149043342, i64 2149043390, i64 2149043438, i64 2149043501, i64 2149043550, i64 2149042109, i64 2149042134, i64 2149042160, i64 2149042166, i64 2149043008, i64 2149043048, i64 2149043066, i64 2149043098, i64 2149043126, i64 2149043180, i64 2149043200, i64 2149043297, i64 2149042189, i64 2149042203, i64 2149042209, i64 2149042259, i64 2149042305, i64 2149042338}
!30 = !{i64 2149044102, i64 2149044149, i64 2149044155, i64 2149044192, i64 2149044210, i64 2149045153, i64 2149045201, i64 2149045249, i64 2149045312, i64 2149045361, i64 2149044288, i64 2149044313, i64 2149044339, i64 2149044345, i64 2149044382, i64 2149044388, i64 2149044438, i64 2149044484, i64 2149044517}
!31 = !{i64 2149036220, i64 2149036267, i64 2149036273, i64 2149036310, i64 2149036328, i64 2149037669, i64 2149037717, i64 2149037765, i64 2149037828, i64 2149037877, i64 2149036406, i64 2149036431, i64 2149036457, i64 2149036463, i64 2149037335, i64 2149037375, i64 2149037393, i64 2149037425, i64 2149037453, i64 2149037507, i64 2149037527, i64 2149037624, i64 2149036486, i64 2149036500, i64 2149036506, i64 2149036556, i64 2149036602, i64 2149036635}
!32 = !{i64 2149047936, i64 2149047983, i64 2149047989, i64 2149048026, i64 2149048044, i64 2149049355, i64 2149049403, i64 2149049451, i64 2149049514, i64 2149049563, i64 2149048122, i64 2149048147, i64 2149048173, i64 2149048179, i64 2149049021, i64 2149049061, i64 2149049079, i64 2149049111, i64 2149049139, i64 2149049193, i64 2149049213, i64 2149049310, i64 2149048202, i64 2149048216, i64 2149048222, i64 2149048272, i64 2149048318, i64 2149048351}
!33 = !{i64 2155107163}
!34 = !{i64 2155126304}
!35 = !{i64 2150336785}
!36 = !{i64 2149791668}
