; ModuleID = 'kernel/ptrace.c'
source_filename = "kernel/ptrace.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.27, %struct.qspinlock }
%union.anon.27 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.66, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.workqueue_struct = type opaque
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.24, %union.anon.25 }
%union.anon.24 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.29 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.29 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type opaque
%union.anon.45 = type { %struct.atomic_t }
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
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.siginfo = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73, [80 x i8] }
%struct.anon.73 = type { i32, i32, i32, %union.__sifields }
%struct.ptrace_peeksiginfo_args = type { i64, i32, i32 }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%struct.user_regset_view = type { i8*, %struct.user_regset*, i32, i32, i16, i8 }
%struct.user_regset = type { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])*, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)*, i32 (%struct.task_struct*, %struct.user_regset*)*, i32 (%struct.task_struct*, %struct.user_regset*, i32)*, i32, i32, i32, i32, i32 }
%struct.ptrace_syscall_info = type { i8, [3 x i8], i32, i64, i64, %union.anon.78 }
%union.anon.78 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, [6 x i64], i32 }
%struct.pt_regs = type { %union.anon.74, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.74 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.ptrace_rseq_configuration = type { i64, i32, i32, i32, i32 }
%struct.wait_bit_key = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [56 x i8] c"denying ptrace access check without PTRACE_MODE_*CREDS\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptrace_access_vm(%struct.task_struct* noundef %tsk, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %tsk) #10
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 53
  %3 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %cmp.not = icmp eq %struct.task_struct* %3, %2
  br i1 %cmp.not, label %lor.lhs.false3, label %cleanup.sink.split

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @get_dumpable(%struct.mm_struct* noundef nonnull %call) #12
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %user_ns = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call, i64 0, i32 0, i32 47
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call6 = call i1 @ptracer_capable(%struct.task_struct* noundef %tsk, %struct.user_namespace* noundef %4) #10
  br i1 %call6, label %if.end8, label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true, %lor.lhs.false3
  %call9 = call i32 @__access_remote_vm(%struct.mm_struct* noundef nonnull %call, i64 noundef %addr, i8* noundef %buf, i32 noundef %len, i32 noundef %gup_flags) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %lor.lhs.false, %land.lhs.true, %if.end8
  %retval.0.ph = phi i32 [ %call9, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_dumpable(%struct.mm_struct* nocapture noundef readonly %mm) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load i64, i64* %flags, align 8
  %call = call fastcc i32 @__get_dumpable(i64 noundef %0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptracer_capable(%struct.task_struct* noundef, %struct.user_namespace* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__access_remote_vm(%struct.mm_struct* noundef, i64 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__ptrace_link(%struct.task_struct* noundef %child, %struct.task_struct* noundef %new_parent, %struct.cred* noundef %ptracer_cred) local_unnamed_addr #0 {
entry:
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 58
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %ptrace_entry) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 71; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  unreachable

do.end7:                                          ; preds = %entry
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %new_parent, i64 0, i32 57
  call fastcc void @list_add(%struct.list_head* noundef %ptrace_entry, %struct.list_head* noundef %ptraced) #12
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  store %struct.task_struct* %new_parent, %struct.task_struct** %parent, align 16
  %call9 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %ptracer_cred) #12
  %ptracer_cred10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 78
  store %struct.cred* %call9, %struct.cred** %ptracer_cred10, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_cred(%struct.cred* noundef %cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %cred, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.31* %0 to i32*
  store i32 0, i32* %non_rcu, align 8
  %call = call fastcc %struct.cred* @get_new_cred(%struct.cred* noundef nonnull %cred) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__ptrace_unlink(%struct.task_struct* noundef %child) local_unnamed_addr #0 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 119; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !10
  unreachable

do.end9:                                          ; preds = %entry
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %child) #12
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 8) #12
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 12) #12
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 52
  %1 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  store %struct.task_struct* %1, %struct.task_struct** %parent, align 16
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 58
  call fastcc void @list_del_init(%struct.list_head* noundef %ptrace_entry) #12
  %ptracer_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 78
  %2 = load %struct.cred*, %struct.cred** %ptracer_cred, align 8
  store %struct.cred* null, %struct.cred** %ptracer_cred, align 8
  call fastcc void @put_cred(%struct.cred* noundef %2) #12
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  store i32 0, i32* %ptrace, align 8
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %child, i64 noundef 1572864) #10
  call void @task_clear_jobctl_trapping(%struct.task_struct* noundef %child) #10
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 4
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %do.end9
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags14 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 12
  %6 = load i32, i32* %flags14, align 4
  %and15 = and i32 %6, 1
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 11
  %7 = load i32, i32* %group_stop_count, align 8
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 43
  %8 = load i64, i64* %jobctl, align 8
  %or = or i64 %8, 131072
  store i64 %or, i64* %jobctl, align 8
  %and21 = and i64 %8, 65535
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then19
  %or25 = or i64 %8, 131091
  store i64 %or25, i64* %jobctl, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.then23, %lor.lhs.false, %do.end9
  %jobctl28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 43
  %9 = load i64, i64* %jobctl28, align 8
  %and29 = and i64 %9, 131072
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %do.end34, label %if.then37

do.end34:                                         ; preds = %if.end27
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 1
  %10 = load volatile i32, i32* %__state, align 16
  %and35 = and i32 %10, 8
  %cmp.not = icmp eq i32 %and35, 0
  br i1 %cmp.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %do.end34, %if.end27
  call fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %child, i1 noundef true) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end34
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i63 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i63) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef %0, i64* noundef %flags) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #5 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #10
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_trapping(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %t, i1 noundef %resume) unnamed_addr #0 {
entry:
  %cond = select i1 %resume, i32 8, i32 0
  call void @signal_wake_up_state(%struct.task_struct* noundef %t, i32 noundef %cond) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #12
  %call = call fastcc i32 @__ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef %mode) #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #12
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef %mode) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %and = and i32 %mode, 8
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 3
  %and2 = lshr i32 %mode, 4
  %and2.lobit = and i32 %and2, 1
  %cmp = icmp eq i32 %and.lobit, %and2.lobit
  br i1 %cmp, label %do.end16, label %if.end30

do.end16:                                         ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0)) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 300; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !11
  br label %cleanup

if.end30:                                         ; preds = %entry
  %call32 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %task, %struct.task_struct* noundef %1) #12
  br i1 %call32, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end30
  call fastcc void @__rcu_read_lock() #10
  %caller_uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %caller_gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %caller_uid.sroa.0.0..sroa_idx116 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %caller_gid.sroa.0.0..sroa_idx111 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %caller_uid.sroa.0.0.in = select i1 %tobool.not, i32* %caller_uid.sroa.0.0..sroa_idx116, i32* %caller_uid.sroa.0.0..sroa_idx
  %caller_gid.sroa.0.0.in = select i1 %tobool.not, i32* %caller_gid.sroa.0.0..sroa_idx111, i32* %caller_gid.sroa.0.0..sroa_idx
  %caller_gid.sroa.0.0 = load i32, i32* %caller_gid.sroa.0.0.in, align 8
  %caller_uid.sroa.0.0 = load i32, i32* %caller_uid.sroa.0.0.in, align 4
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.val.ii = zext i32 %caller_uid.sroa.0.0 to i64
  %coerce.dive47 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive47, align 4
  %coerce.val.ii48 = zext i32 %4 to i64
  %call49 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii48) #12
  br i1 %call49, label %land.lhs.true, label %if.end88

land.lhs.true:                                    ; preds = %if.end34
  %coerce.dive53 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 3, i32 0
  %5 = load i32, i32* %coerce.dive53, align 4
  %coerce.val.ii54 = zext i32 %5 to i64
  %call55 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii54) #12
  br i1 %call55, label %land.lhs.true57, label %if.end88

land.lhs.true57:                                  ; preds = %land.lhs.true
  %coerce.dive61 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive61, align 4
  %coerce.val.ii62 = zext i32 %6 to i64
  %call63 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii62) #12
  br i1 %call63, label %land.lhs.true65, label %if.end88

land.lhs.true65:                                  ; preds = %land.lhs.true57
  %coerce.val.ii67 = zext i32 %caller_gid.sroa.0.0 to i64
  %coerce.dive68 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 6, i32 0
  %7 = load i32, i32* %coerce.dive68, align 8
  %coerce.val.ii69 = zext i32 %7 to i64
  %call70 = call fastcc i1 @gid_eq(i64 %coerce.val.ii67, i64 %coerce.val.ii69) #12
  br i1 %call70, label %land.lhs.true72, label %if.end88

land.lhs.true72:                                  ; preds = %land.lhs.true65
  %coerce.dive75 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 4, i32 0
  %8 = load i32, i32* %coerce.dive75, align 8
  %coerce.val.ii76 = zext i32 %8 to i64
  %call77 = call fastcc i1 @gid_eq(i64 %coerce.val.ii67, i64 %coerce.val.ii76) #12
  br i1 %call77, label %land.lhs.true79, label %if.end88

land.lhs.true79:                                  ; preds = %land.lhs.true72
  %coerce.dive83 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 2, i32 0
  %9 = load i32, i32* %coerce.dive83, align 8
  %coerce.val.ii84 = zext i32 %9 to i64
  %call85 = call fastcc i1 @gid_eq(i64 %coerce.val.ii67, i64 %coerce.val.ii84) #12
  br i1 %call85, label %ok, label %if.end88

if.end88:                                         ; preds = %land.lhs.true79, %land.lhs.true72, %land.lhs.true65, %land.lhs.true57, %land.lhs.true, %if.end34
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %10 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call89 = call fastcc i1 @ptrace_has_cap(%struct.user_namespace* noundef %10, i32 noundef %mode) #12
  br i1 %call89, label %ok, label %if.end91

if.end91:                                         ; preds = %if.end88
  call fastcc void @rcu_read_unlock() #12
  br label %cleanup

ok:                                               ; preds = %if.end88, %land.lhs.true79
  call fastcc void @rcu_read_unlock() #12
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !12
  %mm92 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %11 = load %struct.mm_struct*, %struct.mm_struct** %mm92, align 8
  %tobool93.not = icmp eq %struct.mm_struct* %11, null
  br i1 %tobool93.not, label %if.end102, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %ok
  %call95 = call fastcc i32 @get_dumpable(%struct.mm_struct* noundef nonnull %11) #12
  %cmp96.not = icmp eq i32 %call95, 1
  br i1 %cmp96.not, label %if.end102, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true94
  %user_ns99 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i64 0, i32 0, i32 47
  %12 = load %struct.user_namespace*, %struct.user_namespace** %user_ns99, align 8
  %call100 = call fastcc i1 @ptrace_has_cap(%struct.user_namespace* noundef %12, i32 noundef %mode) #12
  br i1 %call100, label %if.end102, label %cleanup

if.end102:                                        ; preds = %land.lhs.true98, %land.lhs.true94, %ok
  %call103 = call fastcc i32 @security_ptrace_access_check(%struct.task_struct* noundef %task, i32 noundef %mode) #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true98, %if.end30, %if.end102, %if.end91, %do.end16
  %retval.0 = phi i32 [ -1, %do.end16 ], [ %call103, %if.end102 ], [ -1, %if.end91 ], [ 0, %if.end30 ], [ -1, %land.lhs.true98 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_ptrace(%struct.task_struct* noundef %tracer, %struct.list_head* noundef %dead) local_unnamed_addr #0 {
entry:
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tracer, i64 0, i32 57
  %0 = bitcast %struct.list_head* %ptraced to i8**
  %1 = load i8*, i8** %0, align 32
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not43 = icmp eq %struct.list_head* %ptraced, %2
  br i1 %cmp.not43, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %3 = phi %struct.list_head* [ %6, %for.inc ], [ %2, %entry ]
  %.pn.in.in44 = phi i8* [ %.pn47, %for.inc ], [ %1, %entry ]
  %p.045.in = getelementptr i8, i8* %.pn.in.in44, i64 -1008
  %p.045 = bitcast i8* %p.045.in to %struct.task_struct*
  %.pn47.in = bitcast i8* %.pn.in.in44 to i8**
  %.pn47 = load i8*, i8** %.pn47.in, align 16
  %ptrace = getelementptr i8, i8* %.pn.in.in44, i64 -968
  %4 = bitcast i8* %ptrace to i32*
  %5 = load i32, i32* %4, align 8
  %and = and i32 %5, 8388608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %for.body
  %call = call i32 @send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %p.045) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call13 = call fastcc i1 @__ptrace_detach(%struct.task_struct* noundef %tracer, %struct.task_struct* noundef %p.045) #12
  br i1 %call13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %if.end
  call fastcc void @list_add(%struct.list_head* noundef %3, %struct.list_head* noundef %dead) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then14
  %6 = bitcast i8* %.pn47 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %ptraced, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__ptrace_detach(%struct.task_struct* noundef %tracer, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  call void @__ptrace_unlink(%struct.task_struct* noundef %p) #12
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 39
  %0 = load i32, i32* %exit_state, align 4
  %cmp.not = icmp eq i32 %0, 32
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %p) #12
  br i1 %call, label %land.lhs.true, label %if.then15

land.lhs.true:                                    ; preds = %if.end
  %call1 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 52
  %1 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call4 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %1, %struct.task_struct* noundef %tracer) #12
  br i1 %call4, label %if.else, label %if.end13

if.else:                                          ; preds = %if.then3
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tracer, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %call8 = call fastcc i32 @ignoring_children(%struct.sighand_struct* noundef %2) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__wake_up_parent(%struct.task_struct* noundef %p, %struct.task_struct* noundef %tracer) #10
  br label %if.then15

if.end13:                                         ; preds = %if.then3
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %3 = load i32, i32* %exit_signal, align 4
  %call6 = call i1 @do_notify_parent(%struct.task_struct* noundef %p, i32 noundef %3) #10
  br i1 %call6, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.then10, %if.end, %if.end13
  store i32 16, i32* %exit_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.else, %if.end13, %if.then15, %entry
  %retval.0 = phi i1 [ false, %entry ], [ true, %if.then15 ], [ false, %if.end13 ], [ false, %if.else ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptrace_readdata(%struct.task_struct* noundef %tsk, i64 noundef %src, i8* noundef %dst, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %buf = alloca [128 x i8], align 1
  %cmp55 = icmp sgt i32 %len, 0
  br i1 %cmp55, label %while.body.lr.ph, label %cleanup19

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %copied.059 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  %len.addr.058 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup ]
  %dst.addr.057 = phi i8* [ %dst, %while.body.lr.ph ], [ %add.ptr, %cleanup ]
  %src.addr.056 = phi i64 [ %src, %while.body.lr.ph ], [ %add16, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !14
  %1 = icmp ult i32 %len.addr.058, 128
  %cond = select i1 %1, i32 %len.addr.058, i32 128
  %call = call i32 @ptrace_access_vm(%struct.task_struct* noundef %tsk, i64 noundef %src.addr.056, i8* noundef nonnull %0, i32 noundef %cond, i32 noundef 16) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  %tobool6.not = icmp eq i32 %copied.059, 0
  br i1 %tobool6.not, label %cleanup.thread, label %cleanup.thread43

cleanup.thread43:                                 ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  br label %cleanup19

if.end8:                                          ; preds = %while.body
  %conv10 = sext i32 %call to i64
  %cmp11.i.i = icmp slt i32 %call, 0
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !8

copy_to_user.exit.thread:                         ; preds = %if.end8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !15
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %dst.addr.057, i8* noundef nonnull %0, i64 noundef %conv10) #10
  %tobool12.not = icmp eq i64 %call2.i, 0
  br i1 %tobool12.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit, %copy_to_user.exit.thread, %if.then
  %retval.1.ph = phi i32 [ -14, %copy_to_user.exit.thread ], [ -5, %if.then ], [ -14, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  br label %cleanup19

cleanup:                                          ; preds = %copy_to_user.exit
  %add = add i32 %call, %copied.059
  %add16 = add i64 %src.addr.056, %conv10
  %add.ptr = getelementptr i8, i8* %dst.addr.057, i64 %conv10
  %sub = sub nsw i32 %len.addr.058, %call
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.body, label %cleanup19

cleanup19:                                        ; preds = %cleanup, %entry, %cleanup.thread43, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %copied.059, %cleanup.thread43 ], [ 0, %entry ], [ %add, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptrace_writedata(%struct.task_struct* noundef %tsk, i8* noundef %src, i64 noundef %dst, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %buf = alloca [128 x i8], align 1
  %cmp51 = icmp sgt i32 %len, 0
  br i1 %cmp51, label %while.body.lr.ph, label %cleanup19

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %copied.055 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  %len.addr.054 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup ]
  %dst.addr.053 = phi i64 [ %dst, %while.body.lr.ph ], [ %add16, %cleanup ]
  %src.addr.052 = phi i8* [ %src, %while.body.lr.ph ], [ %add.ptr, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !14
  %1 = icmp ult i32 %len.addr.054, 128
  %cond = select i1 %1, i32 %len.addr.054, i32 128
  %2 = zext i32 %cond to i64
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %src.addr.052, i64 noundef %2) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup.thread

if.end:                                           ; preds = %while.body
  %call8 = call i32 @ptrace_access_vm(%struct.task_struct* noundef %tsk, i64 noundef %dst.addr.053, i8* noundef nonnull %0, i32 noundef %cond, i32 noundef 17) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %tobool11.not = icmp eq i32 %copied.055, 0
  br i1 %tobool11.not, label %cleanup.thread, label %cleanup.thread41

cleanup.thread41:                                 ; preds = %if.then10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  br label %cleanup19

cleanup.thread:                                   ; preds = %while.body, %if.then10
  %retval.1.ph = phi i32 [ -5, %if.then10 ], [ -14, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  br label %cleanup19

cleanup:                                          ; preds = %if.end
  %add = add i32 %call8, %copied.055
  %idx.ext = sext i32 %call8 to i64
  %add.ptr = getelementptr i8, i8* %src.addr.052, i64 %idx.ext
  %add16 = add i64 %dst.addr.053, %idx.ext
  %sub = sub i32 %len.addr.054, %call8
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #13
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.body, label %cleanup19

cleanup19:                                        ; preds = %cleanup, %entry, %cleanup.thread41, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %copied.055, %cleanup.thread41 ], [ 0, %entry ], [ %add, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptrace_request(%struct.task_struct* noundef %child, i64 noundef %request, i64 noundef %addr, i64 noundef %data) local_unnamed_addr #0 {
entry:
  %siginfo = alloca %struct.kernel_siginfo, align 8
  %flags = alloca i64, align 8
  %new_set = alloca %struct.sigset_t, align 8
  %kiov = alloca %struct.iovec, align 8
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  %1 = bitcast %struct.kernel_siginfo* %siginfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false), !annotation !14
  %2 = inttoptr i64 %data to i8*
  %3 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store i64 0, i64* %flags, align 8, !annotation !14
  switch i64 %request, label %cleanup219 [
    i64 1, label %sw.bb
    i64 2, label %sw.bb
    i64 4, label %sw.bb1
    i64 5, label %sw.bb1
    i64 16896, label %sw.bb3
    i64 16897, label %sw.bb5
    i64 16905, label %sw.bb17
    i64 16898, label %sw.bb19
    i64 16899, label %sw.bb25
    i64 16906, label %sw.bb31
    i64 16907, label %sw.bb43
    i64 16903, label %sw.bb55
    i64 16904, label %sw.bb76
    i64 17, label %sw.bb111
    i64 9, label %sw.bb114
    i64 31, label %sw.bb114
    i64 32, label %sw.bb114
    i64 24, label %sw.bb114
    i64 7, label %sw.bb114
    i64 8, label %sw.bb116
    i64 16900, label %sw.bb121
    i64 16901, label %sw.bb121
    i64 16910, label %sw.bb208
    i64 16908, label %sw.bb210
    i64 16909, label %sw.bb213
    i64 16911, label %sw.bb216
  ]

sw.bb:                                            ; preds = %entry, %entry
  %call = call i32 @generic_ptrace_peekdata(%struct.task_struct* noundef %child, i64 noundef %addr, i64 noundef %data) #12
  br label %cleanup219

sw.bb1:                                           ; preds = %entry, %entry
  %call2 = call i32 @generic_ptrace_pokedata(%struct.task_struct* noundef %child, i64 noundef %addr, i64 noundef %data) #12
  br label %cleanup219

sw.bb3:                                           ; preds = %entry
  %call4 = call fastcc i32 @ptrace_setoptions(%struct.task_struct* noundef %child, i64 noundef %data) #12
  br label %cleanup219

sw.bb5:                                           ; preds = %entry
  %call6 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #12
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %cleanup219, label %if.then

if.then:                                          ; preds = %sw.bb5
  %call8 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #12
  %4 = bitcast i8* %call8 to i64*
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 113
  %5 = load i64, i64* %ptrace_message, align 8
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %5, i64* %4, i32 -14, i32 0) #13, !srcloc !16
  br label %cleanup219

sw.bb17:                                          ; preds = %entry
  %call18 = call fastcc i32 @ptrace_peek_siginfo(%struct.task_struct* noundef %child, i64 noundef %addr, i64 noundef %data) #12
  br label %cleanup219

sw.bb19:                                          ; preds = %entry
  %call20 = call fastcc i32 @ptrace_getsiginfo(%struct.task_struct* noundef %child, %struct.kernel_siginfo* noundef nonnull %siginfo) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %cleanup219

if.then22:                                        ; preds = %sw.bb19
  %7 = inttoptr i64 %data to %struct.siginfo*
  %call23 = call i32 @copy_siginfo_to_user(%struct.siginfo* noundef %7, %struct.kernel_siginfo* noundef nonnull %siginfo) #10
  br label %cleanup219

sw.bb25:                                          ; preds = %entry
  %8 = inttoptr i64 %data to %struct.siginfo*
  %call26 = call i32 @copy_siginfo_from_user(%struct.kernel_siginfo* noundef nonnull %siginfo, %struct.siginfo* noundef %8) #10
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %cleanup219

if.then28:                                        ; preds = %sw.bb25
  %call29 = call fastcc i32 @ptrace_setsiginfo(%struct.task_struct* noundef %child, %struct.kernel_siginfo* noundef nonnull %siginfo) #12
  br label %cleanup219

sw.bb31:                                          ; preds = %entry
  %cmp.not = icmp eq i64 %addr, 8
  br i1 %cmp.not, label %if.end33, label %cleanup219

if.end33:                                         ; preds = %sw.bb31
  %call34 = call fastcc i1 @test_tsk_restore_sigmask(%struct.task_struct* noundef %child) #12
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 91
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 89
  %mask.0 = select i1 %call34, %struct.sigset_t* %saved_sigmask, %struct.sigset_t* %blocked
  %9 = bitcast %struct.sigset_t* %mask.0 to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef %9, i64 noundef 8) #10
  %tobool39.not = icmp eq i64 %call2.i, 0
  %ret.0 = select i1 %tobool39.not, i32 0, i32 -14
  br label %cleanup219

sw.bb43:                                          ; preds = %entry
  %10 = bitcast %struct.sigset_t* %new_set to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #13
  %11 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %new_set, i64 0, i32 0, i64 0, !annotation !14
  store i64 0, i64* %11, align 8, !annotation !14
  %cmp44.not = icmp eq i64 %addr, 8
  br i1 %cmp44.not, label %if.end46, label %cleanup54

if.end46:                                         ; preds = %sw.bb43
  %call2.i328 = call fastcc i64 @_copy_from_user(i8* noundef nonnull %10, i8* noundef %2, i64 noundef 8) #10
  %tobool48.not = icmp eq i64 %call2.i328, 0
  br i1 %tobool48.not, label %if.end50, label %cleanup54

if.end50:                                         ; preds = %if.end46
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef nonnull %new_set) #12
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 88
  %12 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %12, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 89, i32 0, i64 0
  %14 = load i64, i64* %11, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i329 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i329) #10
  call fastcc void @clear_tsk_restore_sigmask(%struct.task_struct* noundef %child) #12
  br label %cleanup54

cleanup54:                                        ; preds = %if.end46, %sw.bb43, %if.end50
  %ret.2 = phi i32 [ 0, %if.end50 ], [ -22, %sw.bb43 ], [ -14, %if.end46 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #13
  br label %cleanup219

sw.bb55:                                          ; preds = %entry
  br i1 %tobool.not, label %cleanup219, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %sw.bb55
  %call57 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  %tobool58.not = icmp eq %struct.sighand_struct* %call57, null
  br i1 %tobool58.not, label %cleanup219, label %if.end63, !prof !8

if.end63:                                         ; preds = %lor.rhs
  %call64 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %child, i64 noundef 524288) #10
  br i1 %call64, label %if.then72, label %if.end75, !prof !13

if.then72:                                        ; preds = %if.end63
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 43
  %16 = load i64, i64* %jobctl, align 8
  %and73 = and i64 %16, 4194304
  %tobool74 = icmp ne i64 %and73, 0
  call fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %child, i1 noundef %tobool74) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end63
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  br label %cleanup219

sw.bb76:                                          ; preds = %entry
  br i1 %tobool.not, label %cleanup219, label %lor.rhs78, !prof !8

lor.rhs78:                                        ; preds = %sw.bb76
  %call79 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  %tobool80.not = icmp eq %struct.sighand_struct* %call79, null
  br i1 %tobool80.not, label %cleanup219, label %if.end92, !prof !8

if.end92:                                         ; preds = %lor.rhs78
  %last_siginfo = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 114
  %17 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %last_siginfo, align 32
  %tobool93.not = icmp eq %struct.kernel_siginfo* %17, null
  br i1 %tobool93.not, label %if.end110, label %land.rhs, !prof !8

land.rhs:                                         ; preds = %if.end92
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %17, i64 0, i32 0, i32 2
  %18 = load i32, i32* %si_code, align 8
  %shr.mask = and i32 %18, -256
  %cmp94 = icmp eq i32 %shr.mask, 32768
  br i1 %cmp94, label %if.then103, label %if.end110, !prof !13

if.then103:                                       ; preds = %land.rhs
  %jobctl104 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 43
  %19 = load i64, i64* %jobctl104, align 8
  %or = or i64 %19, 4194304
  store i64 %or, i64* %jobctl104, align 8
  %and106 = and i64 %19, 1048576
  %tobool107.not = icmp eq i64 %and106, 0
  br i1 %tobool107.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %if.then103
  call fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %child, i1 noundef true) #12
  br label %if.end110

if.end110:                                        ; preds = %if.end92, %if.then103, %if.then108, %land.rhs
  %ret.3 = phi i32 [ -5, %land.rhs ], [ 0, %if.then108 ], [ 0, %if.then103 ], [ -5, %if.end92 ]
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  br label %cleanup219

sw.bb111:                                         ; preds = %entry
  %conv112 = trunc i64 %data to i32
  %call113 = call fastcc i32 @ptrace_detach(%struct.task_struct* noundef %child, i32 noundef %conv112) #12
  br label %cleanup219

sw.bb114:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %call115 = call fastcc i32 @ptrace_resume(%struct.task_struct* noundef %child, i64 noundef %request, i64 noundef %data) #12
  br label %cleanup219

sw.bb116:                                         ; preds = %entry
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 39
  %20 = load i32, i32* %exit_state, align 4
  %tobool117.not = icmp eq i32 %20, 0
  br i1 %tobool117.not, label %if.end119, label %cleanup219

if.end119:                                        ; preds = %sw.bb116
  %call120 = call fastcc i32 @ptrace_resume(%struct.task_struct* noundef %child, i64 noundef 8, i64 noundef 9) #12
  br label %cleanup219

sw.bb121:                                         ; preds = %entry, %entry
  %21 = bitcast %struct.iovec* %kiov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #13
  %22 = inttoptr i64 %data to %struct.iovec*
  %call122 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 16) #12
  %tobool123.not = icmp eq i64 %call122, 0
  br i1 %tobool123.not, label %cleanup206.thread, label %if.end125

if.end125:                                        ; preds = %sw.bb121
  %call128 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #12
  %tobool129.not = icmp eq i64 %call128, 0
  br i1 %tobool129.not, label %cleanup206.thread, label %if.then130

if.then130:                                       ; preds = %if.end125
  %call131 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #12
  %23 = bitcast i8* %call131 to i8**
  %24 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8** %23, i32 -14, i32 0) #13, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %24, 0
  %asmresult135 = extractvalue { i32, i64 } %24, 1
  %25 = inttoptr i64 %asmresult135 to i8*
  %iov_base136 = getelementptr inbounds %struct.iovec, %struct.iovec* %kiov, i64 0, i32 0
  store i8* %25, i8** %iov_base136, align 8
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %lor.lhs.false, label %cleanup206.thread

lor.lhs.false:                                    ; preds = %if.then130
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0, i32 1
  %26 = bitcast i64* %iov_len to i8*
  %call152 = call fastcc i64 @__range_ok(i8* noundef %26, i64 noundef 8) #12
  %tobool153.not = icmp eq i64 %call152, 0
  br i1 %tobool153.not, label %cleanup206.thread, label %if.then154

if.then154:                                       ; preds = %lor.lhs.false
  %call155 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %26) #12
  %27 = bitcast i8* %call155 to i64*
  %28 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %27, i32 -14, i32 0) #13, !srcloc !18
  %asmresult160 = extractvalue { i32, i64 } %28, 0
  %asmresult161 = extractvalue { i32, i64 } %28, 1
  %iov_len162 = getelementptr inbounds %struct.iovec, %struct.iovec* %kiov, i64 0, i32 1
  store i64 %asmresult161, i64* %iov_len162, align 8
  %phi.cmp325 = icmp eq i32 %asmresult160, 0
  br i1 %phi.cmp325, label %if.end176, label %cleanup206.thread

if.end176:                                        ; preds = %if.then154
  %conv177 = trunc i64 %request to i32
  %conv178 = trunc i64 %addr to i32
  %call179 = call fastcc i32 @ptrace_regset(%struct.task_struct* noundef %child, i32 noundef %conv177, i32 noundef %conv178, %struct.iovec* noundef nonnull %kiov) #12
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then181, label %cleanup206

if.then181:                                       ; preds = %if.end176
  %call186 = call fastcc i64 @__range_ok(i8* noundef %26, i64 noundef 8) #12
  %tobool187.not = icmp eq i64 %call186, 0
  br i1 %tobool187.not, label %cleanup206, label %if.then188

if.then188:                                       ; preds = %if.then181
  %call189 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %26) #12
  %29 = bitcast i8* %call189 to i64*
  %30 = load i64, i64* %iov_len162, align 8
  %31 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %30, i64* %29, i32 -14, i32 0) #13, !srcloc !19
  br label %cleanup206

cleanup206.thread:                                ; preds = %lor.lhs.false, %if.end125, %sw.bb121, %if.then154, %if.then130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  br label %cleanup219

cleanup206:                                       ; preds = %if.end176, %if.then181, %if.then188
  %ret.5 = phi i32 [ %call179, %if.end176 ], [ %31, %if.then188 ], [ -14, %if.then181 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #13
  br label %cleanup219

sw.bb208:                                         ; preds = %entry
  %call209 = call fastcc i32 @ptrace_get_syscall_info(%struct.task_struct* noundef %child, i64 noundef %addr, i8* noundef %2) #12
  br label %cleanup219

sw.bb210:                                         ; preds = %entry
  br label %cleanup219

sw.bb213:                                         ; preds = %entry
  br label %cleanup219

sw.bb216:                                         ; preds = %entry
  %call217 = call fastcc i64 @ptrace_get_rseq_configuration(%struct.task_struct* noundef %child, i64 noundef %addr, i8* noundef %2) #12
  %conv218 = trunc i64 %call217 to i32
  br label %cleanup219

cleanup219:                                       ; preds = %sw.bb3, %sw.bb17, %cleanup54, %if.end75, %if.end110, %sw.bb111, %sw.bb208, %sw.bb210, %sw.bb213, %sw.bb216, %if.then22, %sw.bb19, %if.then28, %sw.bb25, %lor.rhs, %lor.rhs78, %entry, %sw.bb5, %if.then, %sw.bb31, %if.end33, %sw.bb55, %sw.bb76, %cleanup206, %cleanup206.thread, %sw.bb116, %if.end119, %sw.bb114, %sw.bb1, %sw.bb
  %retval.1 = phi i32 [ %call120, %if.end119 ], [ %call115, %sw.bb114 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %sw.bb116 ], [ -14, %cleanup206.thread ], [ -5, %entry ], [ %conv218, %sw.bb216 ], [ -22, %sw.bb213 ], [ -22, %sw.bb210 ], [ %call209, %sw.bb208 ], [ %ret.5, %cleanup206 ], [ %call113, %sw.bb111 ], [ -5, %lor.rhs78 ], [ %ret.3, %if.end110 ], [ -5, %lor.rhs ], [ 0, %if.end75 ], [ %ret.2, %cleanup54 ], [ %call26, %sw.bb25 ], [ %call29, %if.then28 ], [ %call20, %sw.bb19 ], [ %call23, %if.then22 ], [ %call18, %sw.bb17 ], [ %call4, %sw.bb3 ], [ %6, %if.then ], [ -14, %sw.bb5 ], [ %ret.0, %if.end33 ], [ -22, %sw.bb31 ], [ -5, %sw.bb55 ], [ -5, %sw.bb76 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #13
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_ptrace_peekdata(%struct.task_struct* noundef %tsk, i64 noundef %addr, i64 noundef %data) local_unnamed_addr #0 {
entry:
  %tmp = alloca i64, align 8
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %tmp, align 8, !annotation !14
  %call = call i32 @ptrace_access_vm(%struct.task_struct* noundef %tsk, i64 noundef %addr, i8* noundef nonnull %0, i32 noundef 8, i32 noundef 16) #12
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %data to i8*
  %call2 = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 8) #12
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #12
  %2 = bitcast i8* %call4 to i64*
  %3 = load i64, i64* %tmp, align 8
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %3, i64* %2, i32 -14, i32 0) #13, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end, %entry
  %retval.0 = phi i32 [ -5, %entry ], [ %4, %if.then3 ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_ptrace_pokedata(%struct.task_struct* noundef %tsk, i64 noundef %addr, i64 noundef %data) local_unnamed_addr #0 {
entry:
  %data.addr = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  %0 = bitcast i64* %data.addr to i8*
  %call = call i32 @ptrace_access_vm(%struct.task_struct* noundef %tsk, i64 noundef %addr, i8* noundef nonnull %0, i32 noundef 8, i32 noundef 17) #12
  %cmp = icmp eq i32 %call, 8
  %cond = select i1 %cmp, i32 0, i32 -5
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @ptrace_setoptions(%struct.task_struct* nocapture noundef %child, i64 noundef %data) unnamed_addr #8 {
entry:
  %0 = and i64 %data, -1048832
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %if.end6, label %cleanup, !prof !21

if.end6:                                          ; preds = %entry
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %and7 = and i32 %2, -25167865
  %data.tr = trunc i64 %data to i32
  %3 = shl nuw nsw i32 %data.tr, 3
  %conv9 = or i32 %and7, %3
  store i32 %conv9, i32* %ptrace, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !22
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !23
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !24
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_peek_siginfo(%struct.task_struct* noundef readonly %child, i64 noundef %addr, i64 noundef %data) unnamed_addr #0 {
entry:
  %arg = alloca %struct.ptrace_peeksiginfo_args, align 8
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.ptrace_peeksiginfo_args* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = inttoptr i64 %addr to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 16) #10
  %conv = trunc i64 %call2.i to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %cleanup68

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %arg, i64 0, i32 1
  %2 = load i32, i32* %flags, align 8
  %tobool1.not = icmp ult i32 %2, 2
  br i1 %tobool1.not, label %if.end3, label %cleanup68

if.end3:                                          ; preds = %if.end
  %nr = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %arg, i64 0, i32 2
  %3 = load i32, i32* %nr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %cleanup68, label %if.end6

if.end6:                                          ; preds = %if.end3
  %off = getelementptr inbounds %struct.ptrace_peeksiginfo_args, %struct.ptrace_peeksiginfo_args* %arg, i64 0, i32 0
  %tobool13.not = icmp eq i32 %2, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end6
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 6
  br label %if.end16

if.else:                                          ; preds = %if.end6
  %pending15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 92
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %pending.0 = phi %struct.sigpending* [ %shared_pending, %if.then14 ], [ %pending15, %if.else ]
  %5 = bitcast %struct.kernel_siginfo* %info to i8*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 88
  %list = getelementptr inbounds %struct.sigpending, %struct.sigpending* %pending.0, i64 0, i32 0
  %6 = bitcast %struct.sigpending* %pending.0 to %struct.sigqueue**
  %cmp18152 = icmp sgt i32 %3, 0
  br i1 %cmp18152, label %for.body, label %for.end63

for.body:                                         ; preds = %if.end16, %cleanup58.for.cond_crit_edge
  %data.addr.0154 = phi i64 [ %add50, %cleanup58.for.cond_crit_edge ], [ %data, %if.end16 ]
  %i.0153 = phi i32 [ %inc, %cleanup58.for.cond_crit_edge ], [ 0, %if.end16 ]
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false), !annotation !14
  %7 = load i64, i64* %off, align 8
  %8 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %q.0109 = load %struct.sigqueue*, %struct.sigqueue** %6, align 8
  %list24110 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.0109, i64 0, i32 0
  %cmp26.not111 = icmp eq %struct.list_head* %list24110, %list
  br i1 %cmp26.not111, label %if.then44.critedge, label %for.body28.preheader

for.body28.preheader:                             ; preds = %for.body
  %conv22 = sext i32 %i.0153 to i64
  %add = add i64 %7, %conv22
  br label %for.body28

for.body28:                                       ; preds = %for.body28.preheader, %for.inc
  %q.0113 = phi %struct.sigqueue* [ %q.0, %for.inc ], [ %q.0109, %for.body28.preheader ]
  %off20.0112 = phi i64 [ %dec, %for.inc ], [ %add, %for.body28.preheader ]
  %tobool29.not = icmp eq i64 %off20.0112, 0
  br i1 %tobool29.not, label %if.end45, label %for.inc

for.inc:                                          ; preds = %for.body28
  %dec = add i64 %off20.0112, -1
  %9 = bitcast %struct.sigqueue* %q.0113 to %struct.sigqueue**
  %q.0 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  %list24 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.0, i64 0, i32 0
  %cmp26.not = icmp eq %struct.list_head* %list24, %list
  br i1 %cmp26.not, label %if.then44.critedge, label %for.body28

if.then44.critedge:                               ; preds = %for.body, %for.inc
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i95 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i95) #10
  br label %cleanup58.thread

if.end45:                                         ; preds = %for.body28
  %info31 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.0113, i64 0, i32 2
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef nonnull %info, %struct.kernel_siginfo* noundef %info31) #12
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i94 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i94) #10
  %12 = inttoptr i64 %data.addr.0154 to %struct.siginfo*
  %call46 = call i32 @copy_siginfo_to_user(%struct.siginfo* noundef %12, %struct.kernel_siginfo* noundef nonnull %info) #10
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup.cont, label %cleanup58

cleanup.cont:                                     ; preds = %if.end45
  %inc = add i32 %i.0153, 1
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %14 = inttoptr i64 %13 to %struct.task_struct*
  %call52 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %14) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup58.for.cond_crit_edge, label %cleanup58.thread

cleanup58.thread:                                 ; preds = %cleanup.cont, %if.then44.critedge
  %i.1.ph = phi i32 [ %i.0153, %if.then44.critedge ], [ %inc, %cleanup.cont ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #13
  br label %for.end63

cleanup58:                                        ; preds = %if.end45
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #13
  br label %for.end63

cleanup58.for.cond_crit_edge:                     ; preds = %cleanup.cont
  %add50 = add i64 %data.addr.0154, 128
  call fastcc void @_cond_resched() #12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #13
  %.pre = load i32, i32* %nr, align 4
  %cmp18 = icmp slt i32 %inc, %.pre
  br i1 %cmp18, label %for.body, label %for.end63

for.end63:                                        ; preds = %cleanup58.for.cond_crit_edge, %if.end16, %cleanup58, %cleanup58.thread
  %i.2 = phi i32 [ %i.1.ph, %cleanup58.thread ], [ %i.0153, %cleanup58 ], [ 0, %if.end16 ], [ %inc, %cleanup58.for.cond_crit_edge ]
  %ret.3 = phi i32 [ 0, %cleanup58.thread ], [ -14, %cleanup58 ], [ 0, %if.end16 ], [ 0, %cleanup58.for.cond_crit_edge ]
  %cmp64 = icmp sgt i32 %i.2, 0
  %i.2.ret.3 = select i1 %cmp64, i32 %i.2, i32 %ret.3
  br label %cleanup68

cleanup68:                                        ; preds = %for.end63, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ -22, %if.end ], [ -22, %if.end3 ], [ %i.2.ret.3, %for.end63 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_getsiginfo(%struct.task_struct* noundef %child, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !14
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %last_siginfo = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 114
  %1 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %last_siginfo, align 32
  %cmp.not = icmp eq %struct.kernel_siginfo* %1, null
  br i1 %cmp.not, label %if.end, label %if.then3, !prof !8

if.then3:                                         ; preds = %if.then
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %info, %struct.kernel_siginfo* noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %error.0 = phi i32 [ 0, %if.then3 ], [ -22, %if.then ]
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %error.1 = phi i32 [ %error.0, %if.end ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(%struct.siginfo* noundef, %struct.kernel_siginfo* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_from_user(%struct.kernel_siginfo* noundef, %struct.siginfo* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_setsiginfo(%struct.task_struct* noundef %child, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %flags, align 8, !annotation !14
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %last_siginfo = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 114
  %1 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %last_siginfo, align 32
  %cmp.not = icmp eq %struct.kernel_siginfo* %1, null
  br i1 %cmp.not, label %if.end, label %if.then3, !prof !8

if.then3:                                         ; preds = %if.then
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef nonnull %1, %struct.kernel_siginfo* noundef %info) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %error.0 = phi i32 [ 0, %if.then3 ], [ -22, %if.then ]
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %child, i64* noundef nonnull %flags) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %error.1 = phi i32 [ %error.0, %if.end ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %error.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @test_tsk_restore_sigmask(%struct.task_struct* noundef %task) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %task, i32 noundef 20) #12
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigdelsetmask(%struct.sigset_t* nocapture noundef %set) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %and = and i64 %0, -262401
  store i64 %and, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_restore_sigmask(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %task) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #10
  ret %struct.sighand_struct* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @task_set_jobctl_pending(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_detach(%struct.task_struct* noundef %child, i32 noundef %data) unnamed_addr #0 {
entry:
  %conv = zext i32 %data to i64
  %call = call fastcc i32 @valid_signal(i64 noundef %conv) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @ptrace_disable(%struct.task_struct* noundef %child) #10
  call fastcc void @__raw_write_lock_irq() #12
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then11, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 39
  %1 = load i32, i32* %exit_state, align 4
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end12, label %if.then11, !prof !13

if.then11:                                        ; preds = %if.end, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 573; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !25
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.rhs
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 40
  store i32 %data, i32* %exit_code, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call21 = call fastcc i1 @__ptrace_detach(%struct.task_struct* noundef %3, %struct.task_struct* noundef %child) #12
  call fastcc void @__raw_write_unlock_irq() #12
  br label %return

return:                                           ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_resume(%struct.task_struct* noundef %child, i64 noundef %request, i64 noundef %data) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @valid_signal(i64 noundef %data) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i64 %request, 24
  %call2 = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %child) #12
  br i1 %cmp, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %if.end
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call2, i32 noundef 8) #12
  br label %if.else9

if.end4:                                          ; preds = %if.end
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call2, i32 noundef 8) #12
  %0 = add i64 %request, -31
  %1 = icmp ult i64 %0, 2
  br i1 %1, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end4
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call2, i32 noundef 12) #12
  br label %if.end11

if.else9:                                         ; preds = %if.end4.thread, %if.end4
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call2, i32 noundef 12) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  switch i64 %request, label %if.else16 [
    i64 32, label %if.then15
    i64 9, label %if.then15
  ]

if.then15:                                        ; preds = %if.end11, %if.end11
  call void @user_enable_single_step(%struct.task_struct* noundef %child) #10
  br label %if.end17

if.else16:                                        ; preds = %if.end11
  call void @user_disable_single_step(%struct.task_struct* noundef %child) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15
  %tobool18.not = icmp eq i64 %data, 0
  br i1 %tobool18.not, label %if.end30.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call20 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %3) #12
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then23, label %if.end30.critedge

if.then23:                                        ; preds = %land.rhs
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %conv = trunc i64 %data to i32
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 40
  store i32 %conv, i32* %exit_code, align 8
  %call25 = call i32 @wake_up_state(%struct.task_struct* noundef %child, i32 noundef 8) #10
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i48 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i48) #10
  br label %cleanup

if.end30.critedge:                                ; preds = %if.end17, %land.rhs
  %conv.c = trunc i64 %data to i32
  %exit_code.c = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 40
  store i32 %conv.c, i32* %exit_code.c, align 8
  %call25.c = call i32 @wake_up_state(%struct.task_struct* noundef %child, i32 noundef 8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end30.critedge, %entry
  %retval.0 = phi i32 [ -5, %entry ], [ 0, %if.end30.critedge ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_regset(%struct.task_struct* noundef %task, i32 noundef %req, i32 noundef %type, %struct.iovec* nocapture noundef %kiov) unnamed_addr #0 {
entry:
  %call = call %struct.user_regset_view* @task_user_regset_view(%struct.task_struct* noundef %task) #10
  %call1 = call fastcc %struct.user_regset* @find_regset(%struct.user_regset_view* noundef %call, i32 noundef %type) #12
  %tobool.not = icmp eq %struct.user_regset* %call1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %kiov, i64 0, i32 1
  %0 = load i64, i64* %iov_len, align 8
  %size = getelementptr inbounds %struct.user_regset, %struct.user_regset* %call1, i64 0, i32 5
  %1 = load i32, i32* %size, align 4
  %conv = zext i32 %1 to i64
  %rem = urem i64 %0, %conv
  %cmp.not = icmp eq i64 %rem, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %regsets = getelementptr inbounds %struct.user_regset_view, %struct.user_regset_view* %call, i64 0, i32 1
  %2 = load %struct.user_regset*, %struct.user_regset** %regsets, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.user_regset* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.user_regset* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv3 = trunc i64 %sub.ptr.div to i32
  %n = getelementptr inbounds %struct.user_regset, %struct.user_regset* %call1, i64 0, i32 4
  %3 = load i32, i32* %n, align 8
  %mul = mul i32 %3, %1
  %conv6 = zext i32 %mul to i64
  %cmp7 = icmp ult i64 %0, %conv6
  %cond = select i1 %cmp7, i64 %0, i64 %conv6
  store i64 %cond, i64* %iov_len, align 8
  %cmp10 = icmp eq i32 %req, 16900
  %conv14 = trunc i64 %cond to i32
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %kiov, i64 0, i32 0
  %4 = load i8*, i8** %iov_base, align 8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %call15 = call i32 @copy_regset_to_user(%struct.task_struct* noundef %task, %struct.user_regset_view* noundef %call, i32 noundef %conv3, i32 noundef 0, i32 noundef %conv14, i8* noundef %4) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call19 = call fastcc i32 @copy_regset_from_user(%struct.task_struct* noundef %task, %struct.user_regset_view* noundef %call, i32 noundef %conv3, i32 noundef %conv14, i8* noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.else, %if.then12
  %retval.0 = phi i32 [ %call15, %if.then12 ], [ %call19, %if.else ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_get_syscall_info(%struct.task_struct* noundef %child, i64 noundef %user_size, i8* noundef %datavp) unnamed_addr #0 {
entry:
  %info = alloca %struct.ptrace_syscall_info, align 8
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %child) #12
  %add.ptr1 = getelementptr i8, i8* %call, i64 16048
  %0 = bitcast i8* %add.ptr1 to %struct.pt_regs*
  %1 = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %1) #13
  %arch = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 2
  %2 = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  store i32 -1073741641, i32* %arch, align 4
  %instruction_pointer = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 3
  %call3 = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %0) #12
  store i64 %call3, i64* %instruction_pointer, align 8
  %stack_pointer = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 4
  %call4 = call fastcc i64 @user_stack_pointer(%struct.pt_regs* noundef %0) #12
  store i64 %call4, i64* %stack_pointer, align 8
  %last_siginfo = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 114
  %3 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %last_siginfo, align 32
  %tobool.not = icmp eq %struct.kernel_siginfo* %3, null
  br i1 %tobool.not, label %sw.epilog12, label %cond.end

cond.end:                                         ; preds = %entry
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %3, i64 0, i32 0, i32 2
  %4 = load i32, i32* %si_code, align 8
  switch i32 %4, label %sw.epilog12 [
    i32 133, label %sw.bb
    i32 1797, label %sw.bb10
  ]

sw.bb:                                            ; preds = %cond.end
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 113
  %5 = load i64, i64* %ptrace_message, align 8
  switch i64 %5, label %sw.epilog12 [
    i64 1, label %sw.bb6
    i64 2, label %sw.bb8
  ]

sw.bb6:                                           ; preds = %sw.bb
  call fastcc void @ptrace_get_syscall_info_entry(%struct.pt_regs* noundef %0, %struct.ptrace_syscall_info* noundef nonnull %info) #12
  br label %sw.epilog12

sw.bb8:                                           ; preds = %sw.bb
  call fastcc void @ptrace_get_syscall_info_exit(%struct.task_struct* noundef %child, %struct.pt_regs* noundef %0, %struct.ptrace_syscall_info* noundef nonnull %info) #12
  br label %sw.epilog12

sw.bb10:                                          ; preds = %cond.end
  call fastcc void @ptrace_get_syscall_info_seccomp(%struct.task_struct* noundef %child, %struct.pt_regs* noundef %0, %struct.ptrace_syscall_info* noundef nonnull %info) #12
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %entry, %sw.bb6, %sw.bb8, %sw.bb, %cond.end, %sw.bb10
  %actual_size.0 = phi i64 [ 24, %cond.end ], [ 84, %sw.bb10 ], [ 24, %sw.bb ], [ 33, %sw.bb8 ], [ 80, %sw.bb6 ], [ 24, %entry ]
  %cmp = icmp ult i64 %actual_size.0, %user_size
  %cond16 = select i1 %cmp, i64 %actual_size.0, i64 %user_size
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %datavp, i8* noundef nonnull %1, i64 noundef %cond16) #10
  %tobool18.not = icmp eq i64 %call2.i, 0
  %6 = trunc i64 %actual_size.0 to i32
  %conv = select i1 %tobool18.not, i32 %6, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %1) #13
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ptrace_get_rseq_configuration(%struct.task_struct* nocapture noundef readonly %task, i64 noundef %size, i8* noundef %data) unnamed_addr #0 {
entry:
  %conf = alloca %struct.ptrace_rseq_configuration, align 8
  %0 = bitcast %struct.ptrace_rseq_configuration* %conf to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %rseq_abi_pointer = getelementptr inbounds %struct.ptrace_rseq_configuration, %struct.ptrace_rseq_configuration* %conf, i64 0, i32 0
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 121
  %1 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %2 = ptrtoint %struct.rseq* %1 to i64
  store i64 %2, i64* %rseq_abi_pointer, align 8
  %rseq_abi_size = getelementptr inbounds %struct.ptrace_rseq_configuration, %struct.ptrace_rseq_configuration* %conf, i64 0, i32 1
  store i32 32, i32* %rseq_abi_size, align 8
  %signature = getelementptr inbounds %struct.ptrace_rseq_configuration, %struct.ptrace_rseq_configuration* %conf, i64 0, i32 2
  %rseq_sig = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 122
  %3 = load i32, i32* %rseq_sig, align 8
  store i32 %3, i32* %signature, align 4
  %flags = getelementptr inbounds %struct.ptrace_rseq_configuration, %struct.ptrace_rseq_configuration* %conf, i64 0, i32 3
  store i32 0, i32* %flags, align 8
  %pad = getelementptr inbounds %struct.ptrace_rseq_configuration, %struct.ptrace_rseq_configuration* %conf, i64 0, i32 4
  store i32 0, i32* %pad, align 4
  %cmp = icmp ult i64 %size, 24
  %cond = select i1 %cmp, i64 %size, i64 24
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %data, i8* noundef nonnull %0, i64 noundef %cond) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i64 24, i64 -14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret i64 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ptrace(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_ptrace(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ptrace(i64 noundef %request, i64 noundef %pid, i64 noundef %addr, i64 noundef %data) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_ptrace(i64 noundef %request, i64 noundef %pid, i64 noundef %addr, i64 noundef %data) #12
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__get_dumpable(i64 noundef %mm_flags) unnamed_addr #6 {
entry:
  %0 = trunc i64 %mm_flags to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
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
define internal fastcc %struct.cred* @get_new_cred(%struct.cred* noundef returned %cred) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #10
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !27
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #5 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !28
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #12
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #12
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #12
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #12
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ptrace_has_cap(%struct.user_namespace* noundef %ns, i32 noundef %mode) unnamed_addr #0 {
entry:
  %and = and i32 %mode, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i1 @ns_capable_noaudit(%struct.user_namespace* noundef %ns, i32 noundef 19) #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %ns, i32 noundef 19) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ %call1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_ptrace_access_check(%struct.task_struct* noundef %child, i32 noundef %mode) unnamed_addr #0 {
entry:
  %call = call i32 @cap_ptrace_access_check(%struct.task_struct* noundef %child, i32 noundef %mode) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable_noaudit(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  call void @rcu_read_unlock_strict() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_ptrace_access_check(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @do_notify_parent(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ignoring_children(%struct.sighand_struct* noundef %sigh) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %sigh, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %sigh, i64 0, i32 3, i64 16, i32 0, i32 0
  %0 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp = icmp eq void (i32)* %0, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %sa_flags = getelementptr %struct.sighand_struct, %struct.sighand_struct* %sigh, i64 0, i32 3, i64 16, i32 0, i32 1
  %1 = load i64, i64* %sa_flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 1
  %4 = and i32 %3, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i32 [ 1, %entry ], [ %4, %lor.rhs ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #12
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #10
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #12
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !13

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %to, %struct.kernel_siginfo* noundef %from) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %to to i8*
  %1 = bitcast %struct.kernel_siginfo* %from to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 48) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !13

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #12
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #4 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #12
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 20) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #6 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_disable(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  call fastcc void @queued_write_lock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock() #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i32 noundef 0, i32 noundef 255) #10
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i8 0) #13, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef %0, i64* noundef %flags) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_enable_single_step(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_disable_single_step(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.user_regset_view* @task_user_regset_view(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.user_regset* @find_regset(%struct.user_regset_view* nocapture noundef readonly %view, i32 noundef %type) unnamed_addr #9 {
entry:
  %n1 = getelementptr inbounds %struct.user_regset_view, %struct.user_regset_view* %view, i64 0, i32 2
  %0 = load i32, i32* %n1, align 8
  %cmp10.not = icmp eq i32 %0, 0
  br i1 %cmp10.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %regsets = getelementptr inbounds %struct.user_regset_view, %struct.user_regset_view* %view, i64 0, i32 1
  %1 = load %struct.user_regset*, %struct.user_regset** %regsets, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %n.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %idx.ext = sext i32 %n.011 to i64
  %core_note_type = getelementptr %struct.user_regset, %struct.user_regset* %1, i64 %idx.ext, i32 8
  %2 = load i32, i32* %core_note_type, align 8
  %cmp2 = icmp eq i32 %2, %type
  %inc = add nuw i32 %n.011, 1
  br i1 %cmp2, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.user_regset, %struct.user_regset* %1, i64 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry, %if.then
  %retval.0 = phi %struct.user_regset* [ %add.ptr, %if.then ], [ null, %entry ], [ null, %for.cond ]
  ret %struct.user_regset* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_regset_to_user(%struct.task_struct* noundef, %struct.user_regset_view* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_regset_from_user(%struct.task_struct* noundef %target, %struct.user_regset_view* nocapture noundef readonly %view, i32 noundef %setno, i32 noundef %size, i8* noundef %data) unnamed_addr #0 {
entry:
  %regsets = getelementptr inbounds %struct.user_regset_view, %struct.user_regset_view* %view, i64 0, i32 1
  %0 = load %struct.user_regset*, %struct.user_regset** %regsets, align 8
  %idxprom = zext i32 %setno to i64
  %arrayidx = getelementptr %struct.user_regset, %struct.user_regset* %0, i64 %idxprom
  %set = getelementptr %struct.user_regset, %struct.user_regset* %0, i64 %idxprom, i32 1
  %1 = load i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)*, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)** %set, align 8
  %tobool.not = icmp eq i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %size to i64
  %call = call fastcc i64 @__range_ok(i8* noundef %data, i64 noundef %conv) #12
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)*, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)** %set, align 8
  %call5 = call i32 %2(%struct.task_struct* noundef %target, %struct.user_regset* noundef %arrayidx, i32 noundef 0, i32 noundef %size, i8* noundef null, i8* noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -95, %entry ], [ -14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @user_stack_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 13
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %retval.0.in = select i1 %cmp, i64* %arrayidx, i64* %2
  %retval.0 = load i64, i64* %retval.0.in, align 8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_get_syscall_info_entry(%struct.pt_regs* noundef %regs, %struct.ptrace_syscall_info* nocapture noundef writeonly %info) unnamed_addr #0 {
entry:
  %args = alloca [6 x i64], align 8
  %0 = bitcast [6 x i64]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !14
  %op = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 0
  store i8 1, i8* %op, align 8
  %call = call fastcc i32 @syscall_get_nr(%struct.pt_regs* noundef %regs) #12
  %conv = sext i32 %call to i64
  %nr = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 0
  store i64 %conv, i64* %nr, align 8
  %arraydecay = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 0
  call fastcc void @syscall_get_arguments(%struct.pt_regs* noundef %regs, i64* noundef nonnull %arraydecay) #12
  %1 = load i64, i64* %arraydecay, align 8
  %arrayidx7 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 0
  store i64 %1, i64* %arrayidx7, align 8
  %arrayidx.1 = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 1
  %2 = load i64, i64* %arrayidx.1, align 8
  %arrayidx7.1 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 1
  store i64 %2, i64* %arrayidx7.1, align 8
  %arrayidx.2 = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 2
  %3 = load i64, i64* %arrayidx.2, align 8
  %arrayidx7.2 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 2
  store i64 %3, i64* %arrayidx7.2, align 8
  %arrayidx.3 = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 3
  %4 = load i64, i64* %arrayidx.3, align 8
  %arrayidx7.3 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 3
  store i64 %4, i64* %arrayidx7.3, align 8
  %arrayidx.4 = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 4
  %5 = load i64, i64* %arrayidx.4, align 8
  %arrayidx7.4 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 4
  store i64 %5, i64* %arrayidx7.4, align 8
  %arrayidx.5 = getelementptr inbounds [6 x i64], [6 x i64]* %args, i64 0, i64 5
  %6 = load i64, i64* %arrayidx.5, align 8
  %arrayidx7.5 = getelementptr %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1, i64 5
  store i64 %6, i64* %arrayidx7.5, align 8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @ptrace_get_syscall_info_exit(%struct.task_struct* noundef %child, %struct.pt_regs* nocapture noundef readonly %regs, %struct.ptrace_syscall_info* nocapture noundef writeonly %info) unnamed_addr #8 {
entry:
  %op = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 0
  store i8 2, i8* %op, align 8
  %call = call fastcc i64 @syscall_get_error(%struct.task_struct* noundef %child, %struct.pt_regs* noundef %regs) #12
  %rval = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 0
  store i64 %call, i64* %rval, align 8
  %tobool = icmp ne i64 %call, 0
  %conv = zext i1 %tobool to i8
  %is_error = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 1
  %0 = bitcast [6 x i64]* %is_error to i8*
  store i8 %conv, i8* %0, align 8
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call8 = call fastcc i64 @syscall_get_return_value(%struct.task_struct* noundef %child, %struct.pt_regs* noundef %regs) #12
  store i64 %call8, i64* %rval, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_get_syscall_info_seccomp(%struct.task_struct* nocapture noundef readonly %child, %struct.pt_regs* noundef %regs, %struct.ptrace_syscall_info* nocapture noundef writeonly %info) unnamed_addr #0 {
entry:
  call fastcc void @ptrace_get_syscall_info_entry(%struct.pt_regs* noundef %regs, %struct.ptrace_syscall_info* noundef %info) #12
  %op = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 0
  store i8 3, i8* %op, align 8
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 113
  %0 = load i64, i64* %ptrace_message, align 8
  %conv = trunc i64 %0 to i32
  %ret_data = getelementptr inbounds %struct.ptrace_syscall_info, %struct.ptrace_syscall_info* %info, i64 0, i32 5, i32 0, i32 2
  store i32 %conv, i32* %ret_data, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @syscall_get_nr(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %syscallno = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 2
  %0 = load i32, i32* %syscallno, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @syscall_get_arguments(%struct.pt_regs* noundef %regs, i64* noundef %args) unnamed_addr #0 {
entry:
  %orig_x0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 1
  %0 = load i64, i64* %orig_x0, align 8
  store i64 %0, i64* %args, align 8
  %incdec.ptr = getelementptr i64, i64* %args, i64 1
  %1 = bitcast i64* %incdec.ptr to i8*
  %arrayidx2 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %2 = bitcast i64* %arrayidx2 to i8*
  %call = call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef 40) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @syscall_get_error(%struct.task_struct* noundef readnone %task, %struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @syscall_get_return_value(%struct.task_struct* noundef %task, %struct.pt_regs* noundef %regs) #12
  %cmp = icmp ugt i64 %call, -4096
  br i1 %cmp, label %cond.true, label %cond.end, !prof !8

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @syscall_get_return_value(%struct.task_struct* noundef readnone %task, %struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ptrace(i64 noundef %request, i64 noundef %pid, i64 noundef %addr, i64 noundef %data) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %request, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @ptrace_traceme() #12
  %conv = sext i32 %call to i64
  br label %out

if.end2:                                          ; preds = %entry
  %conv3 = trunc i64 %pid to i32
  %call4 = call %struct.task_struct* @find_get_task_by_vpid(i32 noundef %conv3) #10
  %tobool5.not = icmp eq %struct.task_struct* %call4, null
  br i1 %tobool5.not, label %out, label %if.end7

if.end7:                                          ; preds = %if.end2
  switch i64 %request, label %if.end21 [
    i64 16902, label %if.then12
    i64 16, label %if.then12
  ]

if.then12:                                        ; preds = %if.end7, %if.end7
  %call13 = call fastcc i32 @ptrace_attach(%struct.task_struct* noundef nonnull %call4, i64 noundef %request, i64 noundef %addr, i64 noundef %data) #12
  %conv14 = sext i32 %call13 to i64
  br label %out_put_task_struct

if.end21:                                         ; preds = %if.end7
  %cmp22 = icmp eq i64 %request, 8
  %cmp24 = icmp eq i64 %request, 16903
  %0 = or i1 %cmp22, %cmp24
  %call26 = call fastcc i32 @ptrace_check_attach(%struct.task_struct* noundef nonnull %call4, i1 noundef %0) #12
  %conv27 = sext i32 %call26 to i64
  %cmp28 = icmp slt i32 %call26, 0
  br i1 %cmp28, label %out_put_task_struct, label %if.end31

if.end31:                                         ; preds = %if.end21
  %call32 = call i64 @arch_ptrace(%struct.task_struct* noundef nonnull %call4, i64 noundef %request, i64 noundef %addr, i64 noundef %data) #10
  %tobool33 = icmp ne i64 %call32, 0
  %cmp35 = icmp ne i64 %request, 17
  %or.cond39 = or i1 %cmp35, %tobool33
  br i1 %or.cond39, label %if.then37, label %out_put_task_struct

if.then37:                                        ; preds = %if.end31
  call fastcc void @ptrace_unfreeze_traced(%struct.task_struct* noundef nonnull %call4) #12
  br label %out_put_task_struct

out_put_task_struct:                              ; preds = %if.then37, %if.end31, %if.end21, %if.then12
  %ret.0 = phi i64 [ %conv14, %if.then12 ], [ %conv27, %if.end21 ], [ %call32, %if.then37 ], [ 0, %if.end31 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call4) #12
  br label %out

out:                                              ; preds = %if.end2, %out_put_task_struct, %if.then
  %ret.1 = phi i64 [ %conv, %if.then ], [ %ret.0, %out_put_task_struct ], [ -3, %if.end2 ]
  ret i64 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_traceme() unnamed_addr #0 {
entry:
  call fastcc void @__raw_write_lock_irq() #12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 53
  %3 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call2 = call fastcc i32 @security_ptrace_traceme(%struct.task_struct* noundef %3) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 52
  %4 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 4
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, i32* %ptrace, align 8
  call fastcc void @ptrace_link(%struct.task_struct* noundef %1, %struct.task_struct* noundef %4) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then, %land.lhs.true, %if.then6, %entry
  %ret.0 = phi i32 [ -1, %entry ], [ %call2, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.then6 ]
  call fastcc void @__raw_write_unlock_irq() #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_attach(%struct.task_struct* noundef %task, i64 noundef %request, i64 noundef %addr, i64 noundef %flags) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %request, 16902
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %and = and i64 %flags, -3145984
  %0 = or i64 %and, %addr
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %if.end6, label %if.end64

if.end6:                                          ; preds = %if.then
  %shl = shl nuw nsw i64 %flags, 3
  %or = or i64 %shl, 65537
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.end6
  %flags.addr.0 = phi i64 [ %or, %if.end6 ], [ 1, %entry ]
  %flags8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %2 = load i32, i32* %flags8, align 4
  %and9 = and i32 %2, 2097152
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end14, label %if.end64, !prof !13

if.end14:                                         ; preds = %if.end7
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call15 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %task, %struct.task_struct* noundef %4) #12
  br i1 %call15, label %if.end64, label %if.end17

if.end17:                                         ; preds = %if.end14
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 54
  %call18 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %cred_guard_mutex) #10
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end64

if.end21:                                         ; preds = %if.end17
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #12
  %call22 = call fastcc i32 @__ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 18) #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %out

if.end25:                                         ; preds = %if.end21
  call fastcc void @__raw_write_lock_irq() #12
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 39
  %6 = load i32, i32* %exit_state, align 4
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %if.end35, label %unlock_tasklist, !prof !13

if.end35:                                         ; preds = %if.end25
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %7 = load i32, i32* %ptrace, align 8
  %tobool36.not = icmp eq i32 %7, 0
  br i1 %tobool36.not, label %if.end38, label %unlock_tasklist

if.end38:                                         ; preds = %if.end35
  %or41 = or i64 %flags.addr.0, 65536
  %spec.select = select i1 %cmp, i64 %or41, i64 %flags.addr.0
  %conv43 = trunc i64 %spec.select to i32
  store i32 %conv43, i32* %ptrace, align 8
  call fastcc void @ptrace_link(%struct.task_struct* noundef %task, %struct.task_struct* noundef %4) #12
  br i1 %cmp, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end38
  %call48 = call i32 @send_sig_info(i32 noundef 19, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %task) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end38
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %8 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 1
  %9 = load volatile i32, i32* %__state, align 16
  %and50 = and i32 %9, 4
  %cmp51.not = icmp eq i32 %and50, 0
  br i1 %cmp51.not, label %if.end56, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end49
  %call53 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %task, i64 noundef 2621440) #10
  br i1 %call53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true
  call void @signal_wake_up_state(%struct.task_struct* noundef %task, i32 noundef 4) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %land.lhs.true, %if.end49
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i92 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i92) #10
  br label %unlock_tasklist

unlock_tasklist:                                  ; preds = %if.end35, %if.end25, %if.end56
  %retval1.0 = phi i32 [ -1, %if.end25 ], [ -1, %if.end35 ], [ 0, %if.end56 ]
  call fastcc void @__raw_write_unlock_irq() #12
  br label %out

out:                                              ; preds = %unlock_tasklist, %if.end21
  %retval1.1 = phi i32 [ %call22, %if.end21 ], [ %retval1.0, %unlock_tasklist ]
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cred_guard_mutex60 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 54
  call void @mutex_unlock(%struct.mutex* noundef %cred_guard_mutex60) #10
  %tobool61.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %out
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  call fastcc void @wait_on_bit(i64* noundef %jobctl) #12
  br label %if.end64

if.end64:                                         ; preds = %if.end17, %if.end14, %if.end7, %if.then, %if.then62, %out
  %retval1.295 = phi i32 [ 0, %if.then62 ], [ %retval1.1, %out ], [ -513, %if.end17 ], [ -1, %if.end14 ], [ -1, %if.end7 ], [ -5, %if.then ]
  ret i32 %retval1.295
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_check_attach(%struct.task_struct* noundef %child, i1 noundef %ignore_state) unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #12
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  %1 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %1, %3
  br i1 %cmp, label %if.then, label %.thread

if.then:                                          ; preds = %land.lhs.true
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 1
  %4 = load volatile i32, i32* %__state, align 16
  %cmp1 = icmp eq i32 %4, 8
  br i1 %cmp1, label %if.then9, label %if.end, !prof !8

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 259; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br i1 %ignore_state, label %.thread83, label %lor.lhs.false

.thread83:                                        ; preds = %if.end
  call fastcc void @__raw_read_unlock() #12
  br label %if.end63

lor.lhs.false:                                    ; preds = %if.end
  %call20 = call fastcc i1 @ptrace_freeze_traced(%struct.task_struct* noundef %child) #12
  br i1 %call20, label %5, label %.thread

.thread:                                          ; preds = %entry, %land.lhs.true, %lor.lhs.false
  call fastcc void @__raw_read_unlock() #12
  br label %if.end63

5:                                                ; preds = %lor.lhs.false
  call fastcc void @__raw_read_unlock() #12
  br i1 %ignore_state, label %if.end63, label %if.then28

if.then28:                                        ; preds = %5
  %call29 = call i64 @wait_task_inactive(%struct.task_struct* noundef %child, i32 noundef 8) #10
  %tobool30.not = icmp eq i64 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end63

if.then31:                                        ; preds = %if.then28
  %__state37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 1
  %6 = load volatile i32, i32* %__state37, align 16
  %cmp38 = icmp eq i32 %6, 8
  br i1 %cmp38, label %if.then52, label %if.end63, !prof !8

if.then52:                                        ; preds = %if.then31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 276; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !46
  br label %if.end63

if.end63:                                         ; preds = %.thread83, %.thread, %if.then31, %if.then52, %5, %if.then28
  %ret.1 = phi i32 [ 0, %5 ], [ 0, %if.then28 ], [ -3, %if.then52 ], [ -3, %if.then31 ], [ -3, %.thread ], [ 0, %.thread83 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @arch_ptrace(%struct.task_struct* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_unfreeze_traced(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp.not = icmp eq i32 %0, 8
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %1 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then9, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 53
  %2 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %cmp1.not = icmp eq %struct.task_struct* %2, %4
  br i1 %cmp1.not, label %if.end10, label %if.then9, !prof !13

if.then9:                                         ; preds = %if.end, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ptrace.c\22; .popsection; .long 14472b - 14470b; .short 213; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !47
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %lor.rhs
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %6 = load volatile i32, i32* %__state, align 16
  %cmp23 = icmp eq i32 %6, 8
  br i1 %cmp23, label %if.then25, label %if.end38

if.then25:                                        ; preds = %if.end10
  %call26 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %task) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body33, label %if.then28

if.then28:                                        ; preds = %if.then25
  %call29 = call i32 @wake_up_state(%struct.task_struct* noundef %task, i32 noundef 8) #10
  br label %if.end38

do.body33:                                        ; preds = %if.then25
  store volatile i32 264, i32* %__state, align 16
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %do.body33, %if.end10
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i51 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i51) #10
  br label %return

return:                                           ; preds = %entry, %if.end38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_ptrace_traceme(%struct.task_struct* noundef %parent) unnamed_addr #0 {
entry:
  %call = call i32 @cap_ptrace_traceme(%struct.task_struct* noundef %parent) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_link(%struct.task_struct* noundef %child, %struct.task_struct* noundef %new_parent) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  call void @__ptrace_link(%struct.task_struct* noundef %child, %struct.task_struct* noundef %new_parent, %struct.cred* noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_ptrace_traceme(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_on_bit(i64* noundef %word) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %word, align 8
  %1 = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %word to i8*
  %call3 = call i32 @out_of_line_wait_on_bit(i8* noundef %2, i32 noundef 21, i32 (%struct.wait_bit_key*, i32)* noundef nonnull @bit_wait, i32 noundef 258) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(i8* noundef, i32 noundef, i32 (%struct.wait_bit_key*, i32)* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(%struct.wait_bit_key* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  call fastcc void @queued_read_lock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ptrace_freeze_traced(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %0 = load i64, i64* %jobctl, align 8
  %and = and i64 %0, 4194304
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 1
  %2 = load volatile i32, i32* %__state, align 16
  %and2 = and i32 %2, 8
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call fastcc i1 @looks_like_a_spurious_pid(%struct.task_struct* noundef %task) #12
  br i1 %call, label %if.end17, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %task) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body11, label %if.end17

do.body11:                                        ; preds = %land.lhs.true3
  store volatile i32 8, i32* %__state, align 16
  br label %if.end17

if.end17:                                         ; preds = %do.body11, %land.lhs.true3, %land.lhs.true, %if.end
  %ret.0.off0 = phi i1 [ false, %land.lhs.true ], [ false, %land.lhs.true3 ], [ true, %do.body11 ], [ false, %if.end ]
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i28 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i28) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end17
  %retval.0 = phi i1 [ %ret.0.off0, %if.end17 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_task_inactive(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #10
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !50
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @looks_like_a_spurious_pid(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 40
  %0 = load i32, i32* %exit_code, align 8
  %cmp.not = icmp eq i32 %0, 1029
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %task) #12
  %conv = sext i32 %call to i64
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 113
  %1 = load i64, i64* %ptrace_message, align 8
  %cmp1 = icmp ne i64 %1, %conv
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #12
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #2

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
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #10
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !52
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !13

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !53
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 272289}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155127337}
!10 = !{i64 2155129084}
!11 = !{i64 2155158553}
!12 = !{i64 2155162469}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"auto-init"}
!15 = !{i64 2149097917}
!16 = !{i64 2155198113, i64 2155198151, i64 2155198168, i64 2155198202, i64 2155198224, i64 2155198250, i64 2155198268, i64 2155198426, i64 2155198467, i64 2155198489, i64 2155198535}
!17 = !{i64 2155202864, i64 2155202901, i64 2155202918, i64 2155202953, i64 2155202975, i64 2155203001, i64 2155203024, i64 2155203042, i64 2155203201, i64 2155203242, i64 2155203264, i64 2155203310}
!18 = !{i64 2155207024, i64 2155207061, i64 2155207078, i64 2155207113, i64 2155207135, i64 2155207161, i64 2155207184, i64 2155207202, i64 2155207361, i64 2155207402, i64 2155207424, i64 2155207470}
!19 = !{i64 2155211012, i64 2155211050, i64 2155211067, i64 2155211101, i64 2155211123, i64 2155211149, i64 2155211167, i64 2155211325, i64 2155211366, i64 2155211388, i64 2155211434}
!20 = !{i64 2155227024, i64 2155227062, i64 2155227079, i64 2155227113, i64 2155227135, i64 2155227161, i64 2155227179, i64 2155227337, i64 2155227378, i64 2155227400, i64 2155227446}
!21 = !{!"branch_weights", i32 2000, i32 2002}
!22 = !{i64 3553666, i64 3553749, i64 3553973, i64 3554193, i64 3554216}
!23 = !{i64 3558368, i64 3558392}
!24 = !{i64 2151111152}
!25 = !{i64 2155171648}
!26 = !{i64 2147939496, i64 2147940012, i64 2147940042, i64 2147940069, i64 2147940103, i64 2147940133}
!27 = !{i64 2148019146, i64 2148019667, i64 2148019697, i64 2148019723, i64 2148019755, i64 2148019784}
!28 = !{i64 2147950069, i64 2147950717, i64 2147950747, i64 2147950779, i64 2147950813, i64 2147950849, i64 2147950874}
!29 = !{i64 2149755655}
!30 = !{i64 2148035358, i64 2148035391, i64 2148035444, i64 2148035503, i64 2148035537, i64 2148035592, i64 2148035621, i64 2148035641}
!31 = !{i64 2149762936}
!32 = !{i64 2149709784}
!33 = !{i64 2149511166}
!34 = !{i64 2149511383}
!35 = !{i64 2149744947}
!36 = !{i64 2148989499, i64 2148989546, i64 2148989552, i64 2148989589, i64 2148989607, i64 2148990948, i64 2148990996, i64 2148991044, i64 2148991107, i64 2148991156, i64 2148989685, i64 2148989710, i64 2148989736, i64 2148989742, i64 2148990614, i64 2148990654, i64 2148990672, i64 2148990704, i64 2148990732, i64 2148990786, i64 2148990806, i64 2148990903, i64 2148989765, i64 2148989779, i64 2148989785, i64 2148989835, i64 2148989881, i64 2148989914}
!37 = !{i64 2149769800}
!38 = !{i64 2148980043, i64 2148980090, i64 2148980096, i64 2148980133, i64 2148980151, i64 2148981491, i64 2148981539, i64 2148981587, i64 2148981650, i64 2148981699, i64 2148980229, i64 2148980254, i64 2148980280, i64 2148980286, i64 2148981157, i64 2148981197, i64 2148981215, i64 2148981247, i64 2148981275, i64 2148981329, i64 2148981349, i64 2148981446, i64 2148980309, i64 2148980323, i64 2148980329, i64 2148980379, i64 2148980425, i64 2148980458}
!39 = !{i64 2149766497}
!40 = !{i64 2149001215, i64 2149001262, i64 2149001268, i64 2149001305, i64 2149001323, i64 2149002634, i64 2149002682, i64 2149002730, i64 2149002793, i64 2149002842, i64 2149001401, i64 2149001426, i64 2149001452, i64 2149001458, i64 2149002300, i64 2149002340, i64 2149002358, i64 2149002390, i64 2149002418, i64 2149002472, i64 2149002492, i64 2149002589, i64 2149001481, i64 2149001495, i64 2149001501, i64 2149001551, i64 2149001597, i64 2149001630}
!41 = !{i64 2149841318}
!42 = !{i64 2149882972}
!43 = !{i64 2149719442}
!44 = !{i64 2148008576, i64 2148009087, i64 2148009117, i64 2148009143, i64 2148009175, i64 2148009204}
!45 = !{i64 2155150935}
!46 = !{i64 2155156213}
!47 = !{i64 2155141080}
!48 = !{i64 2149808225}
!49 = !{i64 2149863179}
!50 = !{i64 2147942380, i64 2147943046, i64 2147943076, i64 2147943109, i64 2147943143, i64 2147943178, i64 2147943203}
!51 = !{i64 2147953128, i64 2147953794, i64 2147953824, i64 2147953856, i64 2147953890, i64 2147953926, i64 2147953951}
!52 = !{i64 2149914960}
!53 = !{i64 2147957242, i64 2147957916, i64 2147957946, i64 2147957978, i64 2147958012, i64 2147958048, i64 2147958073}
