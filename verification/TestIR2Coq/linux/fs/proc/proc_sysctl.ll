; ModuleID = 'fs/proc/proc_sysctl.c'
source_filename = "fs/proc/proc_sysctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.70, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_path = type { i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.69, i32, i8* }
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
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.62, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.14, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.39 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.52, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.52 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.16, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.17 }
%union.anon.17 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.19 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.23 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.54 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.25 = type { %struct.callback_head }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.59, %union.anon.60, i32 }
%struct.request_queue = type opaque
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.61, i32, [12 x i8] }
%union.anon.61 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.63, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.63 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.69 = type { %struct.pipe_inode_info* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { i64 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.kmem_cache = type opaque
%struct.sysctl_alias = type { i8*, i8* }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.72, %struct.dentry_operations*, %union.anon.73, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.72 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.73 = type { %struct.seq_operations* }
%struct.seq_operations = type opaque
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.nsset = type opaque
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.74 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%union.anon.74 = type { i8* }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.anon.3 = type { i32, i32 }

@sysctl_vals = dso_local local_unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2147483647], align 4
@sysctl_mount_point = dso_local global [1 x %struct.ctl_table] zeroinitializer, align 8
@sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4
@sysctl_table_root = internal global %struct.ctl_table_root { %struct.ctl_table_set { i32 (%struct.ctl_table_set*)* null, %struct.ctl_dir { %struct.ctl_table_header { %union.anon.70 { %struct.anon.71 { %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @root_table, i32 0, i32 0), i32 0, i32 1, i32 1 } }, %struct.completion* null, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @root_table, i32 0, i32 0), %struct.ctl_table_root* @sysctl_table_root, %struct.ctl_table_set* getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i32 0, i32 0), %struct.ctl_dir* null, %struct.ctl_node* null, %struct.hlist_head zeroinitializer }, %struct.rb_root zeroinitializer } }, %struct.ctl_table_set* (%struct.ctl_table_root*)* null, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)* null, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* null }, align 8
@register_sysctl_table.null_path = internal constant [1 x %struct.ctl_path] zeroinitializer, align 8
@root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 0, i16 16749, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@proc_sys_dir_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_sys_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_sys_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_sys_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @proc_sys_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_sys_dir_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_sys_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@saved_command_line = external dso_local local_unnamed_addr global i8*, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Failed to allocate copy of command line\0A\00", align 1
@__func__.do_sysctl_args = private unnamed_addr constant [15 x i8] c"do_sysctl_args\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Setting sysctl args\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Not a file\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"No data\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"No maxlen\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"No proc_handler\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"bogus .mode 0%o\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\013sysctl table check failed: %s/%s %pV\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"array not allowed\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\013sysctl could not get directory: \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\01c/%*.*s %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\01c%s/\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\013sysctl duplicate entry: \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\01c/%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\013sysctl link missing during unregister: \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@proc_sys_dentry_operations = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @proc_sys_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* @proc_sys_compare, i32 (%struct.dentry*)* @proc_sys_delete, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@proc_sys_inode_operations = internal constant %struct.inode_operations { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_sys_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_sys_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @proc_sys_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_sys_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @default_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @proc_sys_read, i64 (%struct.kiocb*, %struct.iov_iter*)* @proc_sys_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @proc_sys_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @proc_sys_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"\013Failed to find procfs to set sysctl from command line\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"\013Failed to mount procfs to set sysctl from command line\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sys/%s\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"%s: Failed to allocate path for %s\0A\00", align 1
@__func__.process_sysctl_arg = private unnamed_addr constant [19 x i8] c"process_sysctl_arg\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"\013Failed to set sysctl parameter '%s=%s': parameter not found\0A\00", align 1
@.str.28 = private unnamed_addr constant [74 x i8] c"\013Failed to set sysctl parameter '%s=%s': permission denied (read-only?)\0A\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"\013Error %pe opening proc file to set sysctl parameter '%s=%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"\013Failed to set sysctl parameter '%s=%s': invalid value\0A\00", align 1
@.str.31 = private unnamed_addr constant [66 x i8] c"\013Error %pe writing to proc file to set sysctl parameter '%s=%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [85 x i8] c"\013Wrote only %zd bytes of %d writing to proc file %s to set sysctl parameter '%s=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"\013Error %pe closing proc file to set sysctl parameter '%s=%s\0A\00", align 1
@sysctl_aliases = internal unnamed_addr constant [6 x %struct.sysctl_alias] [%struct.sysctl_alias { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i32 0, i32 0) }, %struct.sysctl_alias { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0) }, %struct.sysctl_alias { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0) }, %struct.sysctl_alias { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0) }, %struct.sysctl_alias { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0) }, %struct.sysctl_alias zeroinitializer], align 8
@.str.34 = private unnamed_addr constant [29 x i8] c"hardlockup_all_cpu_backtrace\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"kernel.hardlockup_all_cpu_backtrace\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"hung_task_panic\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"kernel.hung_task_panic\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"numa_zonelist_order\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"vm.numa_zonelist_order\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"softlockup_all_cpu_backtrace\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"kernel.softlockup_all_cpu_backtrace\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"softlockup_panic\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"kernel.softlockup_panic\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_sys_poll_notify(%struct.ctl_table_poll* noundef %poll) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ctl_table_poll* %poll, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %event = getelementptr inbounds %struct.ctl_table_poll, %struct.ctl_table_poll* %poll, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %event) #19
  %wait = getelementptr inbounds %struct.ctl_table_poll, %struct.ctl_table_poll* %poll, i64 0, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_sys_evict_inode(%struct.inode* noundef %inode, %struct.ctl_table_header* noundef %head) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #20
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 6
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %sibling_inodes) #20
  %count = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 2
  %0 = load i32, i32* %count, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %count, align 4
  %tobool.not = icmp ne i32 %dec, 0
  %tobool1.not = icmp eq %struct.ctl_table_header* %head, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end6, label %do.end

do.end:                                           ; preds = %entry
  %rcu = bitcast %struct.ctl_table_header* %head to %struct.callback_head*
  call void @kvfree_call_rcu(%struct.callback_head* noundef nonnull %rcu, void (%struct.callback_head*)* noundef null) #19
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %n) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #20
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef %set, i8* noundef %path, %struct.ctl_table* noundef %table) local_unnamed_addr #0 {
entry:
  %dir = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1
  %root1 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1, i32 0, i32 3
  %0 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root1, align 8
  %procname85 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %1 = load i8*, i8** %procname85, align 8
  %tobool.not86 = icmp eq i8* %1, null
  br i1 %tobool.not86, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %nr_entries.088 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %entry4.087 = phi %struct.ctl_table* [ %incdec.ptr, %for.body ], [ %table, %entry ]
  %inc = add i32 %nr_entries.088, 1
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry4.087, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.cast = sext i32 %inc to i64
  %phi.bo = shl nsw i64 %phi.cast, 5
  %phi.bo94 = add nsw i64 %phi.bo, 80
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %nr_entries.0.lcssa = phi i64 [ 80, %entry ], [ %phi.bo94, %for.end.loopexit ]
  %call = call fastcc i8* @kzalloc(i64 noundef %nr_entries.0.lcssa) #20
  %3 = bitcast i8* %call to %struct.ctl_table_header*
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %cleanup39, label %if.end

if.end:                                           ; preds = %for.end
  %add.ptr = getelementptr i8, i8* %call, i64 80
  %4 = bitcast i8* %add.ptr to %struct.ctl_node*
  call fastcc void @init_header(%struct.ctl_table_header* noundef nonnull %3, %struct.ctl_table_root* noundef %0, %struct.ctl_table_set* noundef %set, %struct.ctl_node* noundef %4, %struct.ctl_table* noundef %table) #20
  %call6 = call fastcc i32 @sysctl_check_table(i8* noundef %path, %struct.ctl_table* noundef %table) #20
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %fail

if.end9:                                          ; preds = %if.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %nreg = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %5 = load i32, i32* %nreg, align 8
  %inc12 = add i32 %5, 1
  store i32 %inc12, i32* %nreg, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %tobool14.not89 = icmp eq i8* %path, null
  br i1 %tobool14.not89, label %for.end32, label %for.body15

for.body15:                                       ; preds = %if.end9, %for.inc31
  %dir3.092 = phi %struct.ctl_dir* [ %dir3.1.ph, %for.inc31 ], [ %dir, %if.end9 ]
  %name.090 = phi i8* [ %nextname.0, %for.inc31 ], [ %path, %if.end9 ]
  %call16 = call i8* @strchr(i8* noundef nonnull %name.090, i32 noundef 47) #19
  %tobool17.not = icmp eq i8* %call16, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body15
  %sub.ptr.lhs.cast = ptrtoint i8* %call16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name.090 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr20 = getelementptr i8, i8* %call16, i64 1
  br label %if.end23

if.else:                                          ; preds = %for.body15
  %call21 = call i64 @strlen(i8* noundef nonnull %name.090) #19
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %nextname.0 = phi i8* [ %incdec.ptr20, %if.then18 ], [ null, %if.else ]
  %namelen.0.in = phi i64 [ %sub.ptr.sub, %if.then18 ], [ %call21, %if.else ]
  %namelen.0 = trunc i64 %namelen.0.in to i32
  %cmp = icmp eq i32 %namelen.0, 0
  br i1 %cmp, label %for.inc31, label %if.end26

if.end26:                                         ; preds = %if.end23
  %call27 = call fastcc %struct.ctl_dir* @get_subdir(%struct.ctl_dir* noundef %dir3.092, i8* noundef nonnull %name.090, i32 noundef %namelen.0) #20
  %6 = bitcast %struct.ctl_dir* %call27 to i8*
  %call28 = call fastcc i1 @IS_ERR(i8* noundef %6) #20
  br i1 %call28, label %fail, label %for.inc31

for.inc31:                                        ; preds = %if.end23, %if.end26
  %dir3.1.ph = phi %struct.ctl_dir* [ %call27, %if.end26 ], [ %dir3.092, %if.end23 ]
  %tobool14.not = icmp eq i8* %nextname.0, null
  br i1 %tobool14.not, label %for.end32, label %for.body15

for.end32:                                        ; preds = %for.inc31, %if.end9
  %dir3.0.lcssa = phi %struct.ctl_dir* [ %dir, %if.end9 ], [ %dir3.1.ph, %for.inc31 ]
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call33 = call fastcc i32 @insert_header(%struct.ctl_dir* noundef %dir3.0.lcssa, %struct.ctl_table_header* noundef nonnull %3) #20
  %tobool34.not = icmp eq i32 %call33, 0
  %header37 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir3.0.lcssa, i64 0, i32 0
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header37) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  br i1 %tobool34.not, label %cleanup39, label %fail

fail:                                             ; preds = %if.end26, %for.end32, %if.end
  call void @kfree(i8* noundef nonnull %call) #19
  call void @dump_stack() #21
  br label %cleanup39

cleanup39:                                        ; preds = %for.end32, %for.end, %fail
  %retval.0 = phi %struct.ctl_table_header* [ null, %fail ], [ null, %for.end ], [ %3, %for.end32 ]
  ret %struct.ctl_table_header* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #19
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @init_header(%struct.ctl_table_header* noundef %head, %struct.ctl_table_root* noundef %root, %struct.ctl_table_set* noundef %set, %struct.ctl_node* noundef %node, %struct.ctl_table* noundef %table) unnamed_addr #5 {
entry:
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  store %struct.ctl_table* %table, %struct.ctl_table** %ctl_table, align 8
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 2
  store %struct.ctl_table* %table, %struct.ctl_table** %ctl_table_arg, align 8
  %used = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 1
  store i32 0, i32* %used, align 8
  %count = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 2
  store i32 1, i32* %count, align 4
  %nreg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 3
  store i32 1, i32* %nreg, align 8
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 1
  store %struct.completion* null, %struct.completion** %unregistering, align 8
  %root1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 3
  store %struct.ctl_table_root* %root, %struct.ctl_table_root** %root1, align 8
  %set2 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 4
  store %struct.ctl_table_set* %set, %struct.ctl_table_set** %set2, align 8
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 5
  store %struct.ctl_dir* null, %struct.ctl_dir** %parent, align 8
  %node3 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 6
  store %struct.ctl_node* %node, %struct.ctl_node** %node3, align 8
  %first = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 7, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.ctl_node* %node, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %procname25 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %0 = load i8*, i8** %procname25, align 8
  %tobool5.not26 = icmp eq i8* %0, null
  br i1 %tobool5.not26, label %if.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %entry4.028 = phi %struct.ctl_table* [ %incdec.ptr, %for.body ], [ %table, %for.cond.preheader ]
  %node.addr.027 = phi %struct.ctl_node* [ %incdec.ptr6, %for.body ], [ %node, %for.cond.preheader ]
  %header = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %node.addr.027, i64 0, i32 1
  store %struct.ctl_table_header* %head, %struct.ctl_table_header** %header, align 8
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry4.028, i64 1
  %incdec.ptr6 = getelementptr %struct.ctl_node, %struct.ctl_node* %node.addr.027, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %1 = load i8*, i8** %procname, align 8
  %tobool5.not = icmp eq i8* %1, null
  br i1 %tobool5.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysctl_check_table(i8* noundef %path, %struct.ctl_table* nocapture noundef readonly %table) unnamed_addr #0 {
entry:
  %procname107 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %0 = load i8*, i8** %procname107, align 8
  %tobool.not108 = icmp eq i8* %0, null
  br i1 %tobool.not108, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %err.0115 = phi i32 [ %err.5, %for.inc ], [ 0, %entry ]
  %table.addr.0109 = phi %struct.ctl_table* [ %incdec.ptr, %for.inc ], [ %table, %entry ]
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 0, i32 4
  %1 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %tobool1.not = icmp eq %struct.ctl_table* %1, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #20
  %or = or i32 %err.0115, -22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %err.1 = phi i32 [ %or, %if.then ], [ %err.0115, %for.body ]
  %proc_handler = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 0, i32 5
  %2 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %cmp = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dostring
  %cmp3 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dointvec
  %or.cond = or i1 %cmp, %cmp3
  %cmp6 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_douintvec
  %or.cond98 = or i1 %cmp6, %or.cond
  %cmp9 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_douintvec_minmax
  %or.cond99 = or i1 %cmp9, %or.cond98
  %cmp12 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dointvec_minmax
  %or.cond100 = or i1 %cmp12, %or.cond99
  %cmp15 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dou8vec_minmax
  %or.cond101 = or i1 %cmp15, %or.cond100
  %cmp18 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dointvec_jiffies
  %or.cond102 = or i1 %cmp18, %or.cond101
  %cmp21 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dointvec_userhz_jiffies
  %or.cond103 = or i1 %cmp21, %or.cond102
  %cmp24 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dointvec_ms_jiffies
  %or.cond104 = or i1 %cmp24, %or.cond103
  %cmp27 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_doulongvec_minmax
  %or.cond105 = or i1 %cmp27, %or.cond104
  %cmp30 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_doulongvec_ms_jiffies_minmax
  %or.cond106 = or i1 %cmp30, %or.cond105
  br i1 %or.cond106, label %if.then31, label %if.end44

if.then31:                                        ; preds = %if.end
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %tobool32.not = icmp eq i8* %3, null
  br i1 %tobool32.not, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.then31
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #20
  %or35 = or i32 %err.1, -22
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then31
  %err.2 = phi i32 [ %err.1, %if.then31 ], [ %or35, %if.then33 ]
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 0, i32 2
  %4 = load i32, i32* %maxlen, align 8
  %tobool37.not = icmp eq i32 %4, 0
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #20
  %or40 = or i32 %err.2, -22
  br label %if.end44

if.else:                                          ; preds = %if.end36
  %call41 = call fastcc i32 @sysctl_check_table_array(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109) #20
  %or42 = or i32 %call41, %err.2
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then38, %if.else
  %err.3 = phi i32 [ %or42, %if.else ], [ %or40, %if.then38 ], [ %err.1, %if.end ]
  %5 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %tobool46.not = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %5, null
  br i1 %tobool46.not, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end44
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #20
  %or49 = or i32 %err.3, -22
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44
  %err.4 = phi i32 [ %err.3, %if.end44 ], [ %or49, %if.then47 ]
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 0, i32 3
  %6 = load i16, i16* %mode, align 4
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 438
  %cmp53.not = icmp eq i32 %and, %conv
  br i1 %cmp53.not, label %for.inc, label %if.then55

if.then55:                                        ; preds = %if.end50
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table.addr.0109, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv) #20
  %or59 = or i32 %err.4, -22
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %if.then55
  %err.5 = phi i32 [ %or59, %if.then55 ], [ %err.4, %if.end50 ]
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %table.addr.0109, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %7 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %7, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %err.0.lcssa = phi i32 [ 0, %entry ], [ %err.5, %for.inc ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_dir* @get_subdir(%struct.ctl_dir* noundef %dir, i8* noundef %name, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %header = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0
  %set1 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 4
  %0 = load %struct.ctl_table_set*, %struct.ctl_table_set** %set1, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call = call fastcc %struct.ctl_dir* @find_subdir(%struct.ctl_dir* noundef %dir, i8* noundef %name, i32 noundef %namelen) #20
  %1 = bitcast %struct.ctl_dir* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #20
  br i1 %call2, label %if.end, label %found

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %1) #20
  %cmp.not = icmp eq i64 %call3, -2
  br i1 %cmp.not, label %if.end5, label %failed

if.end5:                                          ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call6 = call fastcc %struct.ctl_dir* @new_dir(%struct.ctl_table_set* noundef %0, i8* noundef %name, i32 noundef %namelen) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -12) #20
  %2 = bitcast i8* %call7 to %struct.ctl_dir*
  %tobool.not = icmp eq %struct.ctl_dir* %call6, null
  br i1 %tobool.not, label %failed, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc %struct.ctl_dir* @find_subdir(%struct.ctl_dir* noundef %dir, i8* noundef %name, i32 noundef %namelen) #20
  %3 = bitcast %struct.ctl_dir* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %3) #20
  br i1 %call11, label %if.end13, label %found

if.end13:                                         ; preds = %if.end9
  %call14 = call fastcc i64 @PTR_ERR(i8* noundef %3) #20
  %cmp15.not = icmp eq i64 %call14, -2
  br i1 %cmp15.not, label %if.end17, label %failed

if.end17:                                         ; preds = %if.end13
  %header18 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %call6, i64 0, i32 0
  %call19 = call fastcc i32 @insert_header(%struct.ctl_dir* noundef %dir, %struct.ctl_table_header* noundef %header18) #20
  %conv = sext i32 %call19 to i64
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #20
  %4 = bitcast i8* %call20 to %struct.ctl_dir*
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %found, label %failed

found:                                            ; preds = %if.end17, %if.end9, %entry
  %new.0 = phi %struct.ctl_dir* [ %call6, %if.end9 ], [ null, %entry ], [ %call6, %if.end17 ]
  %subdir.0 = phi %struct.ctl_dir* [ %call10, %if.end9 ], [ %call, %entry ], [ %call6, %if.end17 ]
  %nreg = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %subdir.0, i64 0, i32 0, i32 0, i32 0, i32 3
  %5 = load i32, i32* %nreg, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %nreg, align 8
  br label %failed

failed:                                           ; preds = %if.end17, %if.end13, %if.end5, %if.end, %found
  %new.1 = phi %struct.ctl_dir* [ null, %if.end ], [ %call6, %if.end13 ], [ %call6, %if.end17 ], [ %new.0, %found ], [ null, %if.end5 ]
  %subdir.1 = phi %struct.ctl_dir* [ %call, %if.end ], [ %call10, %if.end13 ], [ %4, %if.end17 ], [ %subdir.0, %found ], [ %2, %if.end5 ]
  %6 = bitcast %struct.ctl_dir* %subdir.1 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef %6) #20
  br i1 %call25, label %do.end, label %if.end34

do.end:                                           ; preds = %failed
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #21
  call fastcc void @sysctl_print_dir(%struct.ctl_dir* noundef %dir) #20
  %call32 = call fastcc i64 @PTR_ERR(i8* noundef %6) #20
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 noundef %namelen, i32 noundef %namelen, i8* noundef %name, i64 noundef %call32) #21
  br label %if.end34

if.end34:                                         ; preds = %do.end, %failed
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header) #20
  %tobool36.not = icmp eq %struct.ctl_dir* %new.1, null
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end34
  %header38 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %new.1, i64 0, i32 0
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header38) #20
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  ret %struct.ctl_dir* %subdir.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_header(%struct.ctl_dir* noundef %dir, %struct.ctl_table_header* noundef %header) unnamed_addr #0 {
entry:
  %header2 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0
  %call = call fastcc i1 @is_empty_dir(%struct.ctl_table_header* noundef %header2) #20
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %cmp = icmp eq %struct.ctl_table* %0, getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @sysctl_mount_point, i64 0, i64 0)
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  %rb_node = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 1, i32 0
  %1 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp4 = icmp eq %struct.rb_node* %1, null
  br i1 %cmp4, label %if.end6, label %cleanup

if.end6:                                          ; preds = %do.end
  call fastcc void @set_empty_dir(%struct.ctl_dir* noundef %dir) #20
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %nreg = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 0, i32 0, i32 3
  %2 = load i32, i32* %nreg, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %nreg, align 8
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 5
  store %struct.ctl_dir* %dir, %struct.ctl_dir** %parent, align 8
  %call9 = call fastcc i32 @insert_links(%struct.ctl_table_header* noundef %header) #20
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %fail_links

if.end11:                                         ; preds = %if.end7
  %3 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %procname45 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %3, i64 0, i32 0
  %4 = load i8*, i8** %procname45, align 8
  %tobool13.not46 = icmp eq i8* %4, null
  br i1 %tobool13.not46, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %5 = load i8*, i8** %procname, align 8
  %tobool13.not = icmp eq i8* %5, null
  br i1 %tobool13.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end11, %for.cond
  %entry1.047 = phi %struct.ctl_table* [ %incdec.ptr, %for.cond ], [ %3, %if.end11 ]
  %call14 = call fastcc i32 @insert_entry(%struct.ctl_table_header* noundef %header, %struct.ctl_table* noundef %entry1.047) #20
  %tobool15.not = icmp eq i32 %call14, 0
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.047, i64 1
  br i1 %tobool15.not, label %for.cond, label %fail

fail:                                             ; preds = %for.body
  call fastcc void @erase_header(%struct.ctl_table_header* noundef %header) #20
  call fastcc void @put_links(%struct.ctl_table_header* noundef %header) #20
  br label %fail_links

fail_links:                                       ; preds = %if.end7, %fail
  %err.0 = phi i32 [ %call9, %if.end7 ], [ %call14, %fail ]
  %6 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %cmp19 = icmp eq %struct.ctl_table* %6, getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @sysctl_mount_point, i64 0, i64 0)
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %fail_links
  call fastcc void @clear_empty_dir(%struct.ctl_dir* noundef %dir) #20
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %fail_links
  store %struct.ctl_dir* null, %struct.ctl_dir** %parent, align 8
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header2) #20
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end11, %do.end, %entry, %if.end21
  %retval.0 = phi i32 [ %err.0, %if.end21 ], [ -30, %entry ], [ -22, %do.end ], [ 0, %if.end11 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header) unnamed_addr #0 {
entry:
  %parent1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 5
  %0 = load %struct.ctl_dir*, %struct.ctl_dir** %parent1, align 8
  %nreg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 0, i32 0, i32 3
  %1 = load i32, i32* %nreg, align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* %nreg, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.ctl_dir* %0, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @put_links(%struct.ctl_table_header* noundef %header) #20
  call fastcc void @start_unregistering(%struct.ctl_table_header* noundef %header) #20
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %count = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 0, i32 0, i32 2
  %2 = load i32, i32* %count, align 4
  %dec5 = add i32 %2, -1
  store i32 %dec5, i32* %count, align 4
  %tobool6.not = icmp ne i32 %dec5, 0
  %tobool8.not = icmp eq %struct.ctl_table_header* %header, null
  %or.cond = or i1 %tobool8.not, %tobool6.not
  br i1 %or.cond, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end4
  %rcu = bitcast %struct.ctl_table_header* %header to %struct.callback_head*
  call void @kvfree_call_rcu(%struct.callback_head* noundef nonnull %rcu, void (%struct.callback_head*)* noundef null) #19
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end4
  br i1 %tobool2.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  %header17 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %0, i64 0, i32 0
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header17) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then16, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ctl_table_header* @register_sysctl(i8* noundef %path, %struct.ctl_table* noundef %table) local_unnamed_addr #0 {
entry:
  %call = call %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0), i8* noundef %path, %struct.ctl_table* noundef %table) #20
  ret %struct.ctl_table_header* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ctl_table_header* @__register_sysctl_paths(%struct.ctl_table_set* noundef %set, %struct.ctl_path* nocapture noundef readonly %path, %struct.ctl_table* noundef %table) local_unnamed_addr #0 {
entry:
  %subheader = alloca %struct.ctl_table_header**, align 8
  %call = call fastcc i32 @count_subheaders(%struct.ctl_table* noundef %table) #20
  %0 = bitcast %struct.ctl_table_header*** %subheader to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #19
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i8 0, i8* %call.i.i, align 8
  %procname99 = getelementptr inbounds %struct.ctl_path, %struct.ctl_path* %path, i64 0, i32 0
  %2 = load i8*, i8** %procname99, align 8
  %tobool2.not100 = icmp eq i8* %2, null
  br i1 %tobool2.not100, label %while.cond.preheader, label %for.body

for.cond:                                         ; preds = %for.body
  %procname = getelementptr inbounds %struct.ctl_path, %struct.ctl_path* %incdec.ptr, i64 0, i32 0
  %3 = load i8*, i8** %procname, align 8
  %tobool2.not = icmp eq i8* %3, null
  br i1 %tobool2.not, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.cond, %if.end
  %pos.0.lcssa = phi i8* [ %call.i.i, %if.end ], [ %call4, %for.cond ]
  %procname8103 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %4 = load i8*, i8** %procname8103, align 8
  %tobool9.not104 = icmp eq i8* %4, null
  br i1 %tobool9.not104, label %while.end, label %land.lhs.true

for.body:                                         ; preds = %if.end, %for.cond
  %5 = phi i8* [ %3, %for.cond ], [ %2, %if.end ]
  %pos.0102 = phi i8* [ %call4, %for.cond ], [ %call.i.i, %if.end ]
  %component.0101 = phi %struct.ctl_path* [ %incdec.ptr, %for.cond ], [ %path, %if.end ]
  %call4 = call fastcc i8* @append_path(i8* noundef nonnull %call.i.i, i8* noundef nonnull %pos.0102, i8* noundef nonnull %5) #20
  %tobool5.not = icmp eq i8* %call4, null
  %incdec.ptr = getelementptr %struct.ctl_path, %struct.ctl_path* %component.0101, i64 1
  br i1 %tobool5.not, label %out, label %for.cond

land.lhs.true:                                    ; preds = %while.cond.preheader, %if.end18
  %6 = phi i8* [ %10, %if.end18 ], [ %4, %while.cond.preheader ]
  %table.addr.0106 = phi %struct.ctl_table* [ %9, %if.end18 ], [ %table, %while.cond.preheader ]
  %pos.1105 = phi i8* [ %call15, %if.end18 ], [ %pos.0.lcssa, %while.cond.preheader ]
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table.addr.0106, i64 0, i32 4
  %7 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %tobool10.not = icmp eq %struct.ctl_table* %7, null
  br i1 %tobool10.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %procname12 = getelementptr %struct.ctl_table, %struct.ctl_table* %table.addr.0106, i64 1, i32 0
  %8 = load i8*, i8** %procname12, align 8
  %tobool13.not = icmp eq i8* %8, null
  br i1 %tobool13.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call15 = call fastcc i8* @append_path(i8* noundef nonnull %call.i.i, i8* noundef nonnull %pos.1105, i8* noundef nonnull %6) #20
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %out, label %if.end18

if.end18:                                         ; preds = %while.body
  %9 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %procname8 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %9, i64 0, i32 0
  %10 = load i8*, i8** %procname8, align 8
  %tobool9.not = icmp eq i8* %10, null
  br i1 %tobool9.not, label %while.end, label %land.lhs.true

while.end:                                        ; preds = %land.rhs, %land.lhs.true, %if.end18, %while.cond.preheader
  %pos.1.lcssa = phi i8* [ %pos.0.lcssa, %while.cond.preheader ], [ %call15, %if.end18 ], [ %pos.1105, %land.lhs.true ], [ %pos.1105, %land.rhs ]
  %table.addr.0.lcssa = phi %struct.ctl_table* [ %table, %while.cond.preheader ], [ %9, %if.end18 ], [ %table.addr.0106, %land.lhs.true ], [ %table.addr.0106, %land.rhs ]
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %while.end
  %call21 = call %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef %set, i8* noundef nonnull %call.i.i, %struct.ctl_table* noundef %table.addr.0.lcssa) #20
  %tobool22.not = icmp eq %struct.ctl_table_header* %call21, null
  br i1 %tobool22.not, label %out, label %if.then23

if.then23:                                        ; preds = %if.then20
  %ctl_table_arg24 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %call21, i64 0, i32 2
  store %struct.ctl_table* %table, %struct.ctl_table** %ctl_table_arg24, align 8
  br label %out

if.else:                                          ; preds = %while.end
  %conv = sext i32 %call to i64
  %mul = shl nsw i64 %conv, 3
  %add = add nsw i64 %mul, 80
  %call26 = call fastcc i8* @kzalloc(i64 noundef %add) #20
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %out, label %if.end29

if.end29:                                         ; preds = %if.else
  %11 = bitcast i8* %call26 to %struct.ctl_table_header*
  %add.ptr = getelementptr i8, i8* %call26, i64 80
  %12 = bitcast i8* %add.ptr to %struct.ctl_table_header**
  %13 = bitcast %struct.ctl_table_header*** %subheader to i8**
  store i8* %add.ptr, i8** %13, align 8
  %ctl_table_arg30 = getelementptr inbounds i8, i8* %call26, i64 32
  %14 = bitcast i8* %ctl_table_arg30 to %struct.ctl_table**
  store %struct.ctl_table* %table, %struct.ctl_table** %14, align 8
  %call31 = call fastcc i32 @register_leaf_sysctl_tables(i8* noundef nonnull %call.i.i, i8* noundef nonnull %pos.1.lcssa, %struct.ctl_table_header*** noundef nonnull %subheader, %struct.ctl_table_set* noundef %set, %struct.ctl_table* noundef %table.addr.0.lcssa) #20
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %out, label %while.cond36.preheader

while.cond36.preheader:                           ; preds = %if.end29
  %subheader.promoted = load %struct.ctl_table_header**, %struct.ctl_table_header*** %subheader, align 8
  %cmp37114 = icmp ugt %struct.ctl_table_header** %subheader.promoted, %12
  br i1 %cmp37114, label %while.body39, label %while.end43

out:                                              ; preds = %for.body, %while.body, %if.then23, %if.then20, %if.end29, %if.else, %while.end43
  %header.0 = phi %struct.ctl_table_header* [ %call21, %if.then23 ], [ null, %if.then20 ], [ null, %while.end43 ], [ %11, %if.end29 ], [ null, %if.else ], [ null, %while.body ], [ null, %for.body ]
  call void @kfree(i8* noundef nonnull %call.i.i) #19
  br label %cleanup

while.body39:                                     ; preds = %while.cond36.preheader, %while.body39
  %incdec.ptr40113115 = phi %struct.ctl_table_header** [ %incdec.ptr40, %while.body39 ], [ %subheader.promoted, %while.cond36.preheader ]
  %incdec.ptr40 = getelementptr %struct.ctl_table_header*, %struct.ctl_table_header** %incdec.ptr40113115, i64 -1
  %15 = load %struct.ctl_table_header*, %struct.ctl_table_header** %incdec.ptr40, align 8
  %ctl_table_arg42 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %15, i64 0, i32 2
  %16 = bitcast %struct.ctl_table** %ctl_table_arg42 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @unregister_sysctl_table(%struct.ctl_table_header* noundef %15) #20
  call void @kfree(i8* noundef %17) #19
  %cmp37 = icmp ugt %struct.ctl_table_header** %incdec.ptr40, %12
  br i1 %cmp37, label %while.body39, label %while.end43

while.end43:                                      ; preds = %while.body39, %while.cond36.preheader
  call void @kfree(i8* noundef nonnull %call26) #19
  br label %out

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi %struct.ctl_table_header* [ %header.0, %out ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret %struct.ctl_table_header* %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @count_subheaders(%struct.ctl_table* noundef readonly %table) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.ctl_table* %table, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %0 = load i8*, i8** %procname, align 8
  %tobool2.not = icmp eq i8* %0, null
  br i1 %tobool2.not, label %cleanup, label %for.body

for.body:                                         ; preds = %lor.lhs.false, %for.inc
  %entry1.025 = phi %struct.ctl_table* [ %incdec.ptr, %for.inc ], [ %table, %lor.lhs.false ]
  %nr_subheaders.024 = phi i32 [ %nr_subheaders.1, %for.inc ], [ 0, %lor.lhs.false ]
  %has_files.023 = phi i32 [ %has_files.1, %for.inc ], [ 0, %lor.lhs.false ]
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1.025, i64 0, i32 4
  %1 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %tobool5.not = icmp eq %struct.ctl_table* %1, null
  br i1 %tobool5.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %for.body
  %call = call fastcc i32 @count_subheaders(%struct.ctl_table* noundef nonnull %1) #20
  %add = add i32 %call, %nr_subheaders.024
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %has_files.1 = phi i32 [ %has_files.023, %if.then6 ], [ 1, %for.body ]
  %nr_subheaders.1 = phi i32 [ %add, %if.then6 ], [ %nr_subheaders.024, %for.body ]
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.025, i64 1
  %procname3 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %procname3, align 8
  %tobool4.not = icmp eq i8* %2, null
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %3 = add i32 %nr_subheaders.1, %has_files.1
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %for.end
  %retval.0 = phi i32 [ %3, %for.end ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @append_path(i8* noundef %path, i8* noundef %pos, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %name) #19
  %sub.ptr.lhs.cast = ptrtoint i8* %pos to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %path to i64
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %sub.ptr.sub = sub i64 2, %sub.ptr.rhs.cast
  %add = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast
  %add2 = add i64 %add, %conv1
  %cmp = icmp sgt i64 %add2, 4095
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call5 = call i8* @memcpy(i8* noundef %pos, i8* noundef %name, i64 noundef %conv1) #19
  %arrayidx = getelementptr i8, i8* %pos, i64 %conv1
  store i8 47, i8* %arrayidx, align 1
  %sext21 = add i64 %sext, 4294967296
  %idxprom7 = ashr exact i64 %sext21, 32
  %arrayidx8 = getelementptr i8, i8* %pos, i64 %idxprom7
  store i8 0, i8* %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %arrayidx8, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @register_leaf_sysctl_tables(i8* noundef %path, i8* noundef %pos, %struct.ctl_table_header*** nocapture noundef %subheader, %struct.ctl_table_set* noundef %set, %struct.ctl_table* noundef %table) unnamed_addr #0 {
entry:
  %procname120 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %0 = load i8*, i8** %procname120, align 8
  %tobool.not121 = icmp eq i8* %0, null
  br i1 %tobool.not121, label %if.then25, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %nr_dirs.0124 = phi i32 [ %nr_dirs.1, %for.body ], [ 0, %entry ]
  %nr_files.0123 = phi i32 [ %nr_files.1, %for.body ], [ 0, %entry ]
  %entry1.0122 = phi %struct.ctl_table* [ %incdec.ptr, %for.body ], [ %table, %entry ]
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1.0122, i64 0, i32 4
  %1 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %tobool2.not = icmp eq %struct.ctl_table* %1, null
  %inc3 = zext i1 %tobool2.not to i32
  %nr_files.1 = add i32 %nr_files.0123, %inc3
  %not.tobool2.not = xor i1 %tobool2.not, true
  %inc = zext i1 %not.tobool2.not to i32
  %nr_dirs.1 = add i32 %nr_dirs.0124, %inc
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.0122, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %phi.cmp = icmp ne i32 %nr_dirs.1, 0
  %tobool5 = icmp ne i32 %nr_files.1, 0
  %or.cond = select i1 %phi.cmp, i1 %tobool5, i1 false
  br i1 %or.cond, label %if.then6, label %if.end22

if.then6:                                         ; preds = %for.end
  %add = add i32 %nr_files.1, 1
  %conv = sext i32 %add to i64
  %call = call fastcc i8* @kcalloc(i64 noundef %conv) #20
  %3 = bitcast i8* %call to %struct.ctl_table*
  %tobool7.not = icmp eq i8* %call, null
  br i1 %tobool7.not, label %cleanup60, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %if.then6
  %4 = load i8*, i8** %procname120, align 8
  %tobool12.not127 = icmp eq i8* %4, null
  br i1 %tobool12.not127, label %if.then25, label %for.body13

for.body13:                                       ; preds = %for.cond10.preheader, %for.inc19
  %new.0130 = phi %struct.ctl_table* [ %new.1, %for.inc19 ], [ %3, %for.cond10.preheader ]
  %entry1.1128 = phi %struct.ctl_table* [ %incdec.ptr20, %for.inc19 ], [ %table, %for.cond10.preheader ]
  %child14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1.1128, i64 0, i32 4
  %5 = load %struct.ctl_table*, %struct.ctl_table** %child14, align 8
  %tobool15.not = icmp eq %struct.ctl_table* %5, null
  br i1 %tobool15.not, label %if.end17, label %for.inc19

if.end17:                                         ; preds = %for.body13
  %6 = bitcast %struct.ctl_table* %new.0130 to i8*
  %7 = bitcast %struct.ctl_table* %entry1.1128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(64) %6, i8* noundef align 8 dereferenceable(64) %7, i64 64, i1 false)
  %incdec.ptr18 = getelementptr %struct.ctl_table, %struct.ctl_table* %new.0130, i64 1
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13, %if.end17
  %new.1 = phi %struct.ctl_table* [ %new.0130, %for.body13 ], [ %incdec.ptr18, %if.end17 ]
  %incdec.ptr20 = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.1128, i64 1
  %procname11 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr20, i64 0, i32 0
  %8 = load i8*, i8** %procname11, align 8
  %tobool12.not = icmp eq i8* %8, null
  br i1 %tobool12.not, label %if.end22, label %for.body13

if.end22:                                         ; preds = %for.inc19, %for.end
  %9 = phi i8* [ null, %for.end ], [ %call, %for.inc19 ]
  %files.0 = phi %struct.ctl_table* [ %table, %for.end ], [ %3, %for.inc19 ]
  %tobool23 = icmp eq i32 %nr_files.1, 0
  %or.cond66 = select i1 %tobool23, i1 %phi.cmp, i1 false
  br i1 %or.cond66, label %if.end35, label %if.then25

if.then25:                                        ; preds = %entry, %for.cond10.preheader, %if.end22
  %files.0148 = phi %struct.ctl_table* [ %files.0, %if.end22 ], [ %3, %for.cond10.preheader ], [ %table, %entry ]
  %10 = phi i8* [ %9, %if.end22 ], [ %call, %for.cond10.preheader ], [ null, %entry ]
  %call26 = call %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef %set, i8* noundef %path, %struct.ctl_table* noundef %files.0148) #20
  %tobool27.not = icmp eq %struct.ctl_table_header* %call26, null
  br i1 %tobool27.not, label %cleanup32, label %cleanup32.thread

cleanup32.thread:                                 ; preds = %if.then25
  %ctl_table_arg30 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %call26, i64 0, i32 2
  %11 = bitcast %struct.ctl_table** %ctl_table_arg30 to i8**
  store i8* %10, i8** %11, align 8
  %12 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %subheader, align 8
  store %struct.ctl_table_header* %call26, %struct.ctl_table_header** %12, align 8
  %13 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %subheader, align 8
  %incdec.ptr31 = getelementptr %struct.ctl_table_header*, %struct.ctl_table_header** %13, i64 1
  store %struct.ctl_table_header** %incdec.ptr31, %struct.ctl_table_header*** %subheader, align 8
  br label %if.end35

cleanup32:                                        ; preds = %if.then25
  call void @kfree(i8* noundef %10) #19
  br label %cleanup60

if.end35:                                         ; preds = %cleanup32.thread, %if.end22
  %14 = load i8*, i8** %procname120, align 8
  %tobool38.not132 = icmp eq i8* %14, null
  br i1 %tobool38.not132, label %cleanup60, label %for.body39

for.body39:                                       ; preds = %if.end35, %for.inc57
  %15 = phi i8* [ %18, %for.inc57 ], [ %14, %if.end35 ]
  %entry1.2133 = phi %struct.ctl_table* [ %incdec.ptr58, %for.inc57 ], [ %table, %if.end35 ]
  %child40 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1.2133, i64 0, i32 4
  %16 = load %struct.ctl_table*, %struct.ctl_table** %child40, align 8
  %tobool41.not = icmp eq %struct.ctl_table* %16, null
  br i1 %tobool41.not, label %for.inc57, label %if.end43

if.end43:                                         ; preds = %for.body39
  %call45 = call fastcc i8* @append_path(i8* noundef %path, i8* noundef %pos, i8* noundef nonnull %15) #20
  %tobool46.not = icmp eq i8* %call45, null
  br i1 %tobool46.not, label %cleanup60, label %if.end48

if.end48:                                         ; preds = %if.end43
  %17 = load %struct.ctl_table*, %struct.ctl_table** %child40, align 8
  %call50 = call fastcc i32 @register_leaf_sysctl_tables(i8* noundef %path, i8* noundef nonnull %call45, %struct.ctl_table_header*** noundef %subheader, %struct.ctl_table_set* noundef %set, %struct.ctl_table* noundef %17) #20
  store i8 0, i8* %pos, align 1
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.inc57, label %cleanup60

for.inc57:                                        ; preds = %if.end48, %for.body39
  %incdec.ptr58 = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.2133, i64 1
  %procname37 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr58, i64 0, i32 0
  %18 = load i8*, i8** %procname37, align 8
  %tobool38.not = icmp eq i8* %18, null
  br i1 %tobool38.not, label %cleanup60, label %for.body39

cleanup60:                                        ; preds = %for.inc57, %if.end43, %if.end48, %if.end35, %cleanup32, %if.then6
  %retval.0 = phi i32 [ -12, %cleanup32 ], [ -12, %if.then6 ], [ 0, %if.end35 ], [ 0, %for.inc57 ], [ -36, %if.end43 ], [ %call50, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unregister_sysctl_table(%struct.ctl_table_header* noundef %header) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ctl_table_header* %header, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 2
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table_arg, align 8
  %call = call fastcc i32 @count_subheaders(%struct.ctl_table* noundef %0) #20
  %cmp4 = icmp sgt i32 %call, 1
  br i1 %cmp4, label %for.body.preheader, label %if.end10, !prof !7

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 1
  %1 = bitcast %struct.ctl_table_header* %add.ptr to %struct.ctl_table_header**
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.027.in = phi i32 [ %i.027, %for.body ], [ %call, %for.body.preheader ]
  %i.027 = add nsw i32 %i.027.in, -1
  %idxprom24 = zext i32 %i.027 to i64
  %arrayidx = getelementptr %struct.ctl_table_header*, %struct.ctl_table_header** %1, i64 %idxprom24
  %2 = load %struct.ctl_table_header*, %struct.ctl_table_header** %arrayidx, align 8
  %ctl_table_arg9 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %2, i64 0, i32 2
  %3 = bitcast %struct.ctl_table** %ctl_table_arg9 to i8**
  %4 = load i8*, i8** %3, align 8
  call void @unregister_sysctl_table(%struct.ctl_table_header* noundef %2) #20
  call void @kfree(i8* noundef %4) #19
  %cmp7 = icmp sgt i32 %i.027.in, 1
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %5 = bitcast %struct.ctl_table_header* %header to i8*
  call void @kfree(i8* noundef nonnull %5) #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef nonnull %header) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ctl_table_header* @register_sysctl_paths(%struct.ctl_path* nocapture noundef readonly %path, %struct.ctl_table* noundef %table) local_unnamed_addr #0 {
entry:
  %call = call %struct.ctl_table_header* @__register_sysctl_paths(%struct.ctl_table_set* noundef getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0), %struct.ctl_path* noundef %path, %struct.ctl_table* noundef %table) #20
  ret %struct.ctl_table_header* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef %table) local_unnamed_addr #0 {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl_paths(%struct.ctl_path* noundef getelementptr inbounds ([1 x %struct.ctl_path], [1 x %struct.ctl_path]* @register_sysctl_table.null_path, i64 0, i64 0), %struct.ctl_table* noundef %table) #20
  ret %struct.ctl_table_header* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @setup_sysctl_set(%struct.ctl_table_set* noundef %set, %struct.ctl_table_root* noundef %root, i32 (%struct.ctl_table_set*)* noundef %is_seen) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ctl_table_set* %set to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 96) #19
  %is_seen1 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 0
  store i32 (%struct.ctl_table_set*)* %is_seen, i32 (%struct.ctl_table_set*)** %is_seen1, align 8
  %header = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1, i32 0
  call fastcc void @init_header(%struct.ctl_table_header* noundef %header, %struct.ctl_table_root* noundef %root, %struct.ctl_table_set* noundef %set, %struct.ctl_node* noundef null, %struct.ctl_table* noundef getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @root_table, i64 0, i64 0)) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @retire_sysctl_set(%struct.ctl_table_set* noundef %set) local_unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1, i32 1, i32 0
  %0 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp.not = icmp eq %struct.rb_node* %0, null
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/proc_sysctl.c\22; .popsection; .long 14472b - 14470b; .short 1701; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @proc_sys_init() local_unnamed_addr #8 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_mkdir(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.proc_dir_entry* noundef null) #19
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_sys_dir_operations, %struct.inode_operations** %proc_iops, align 8
  %0 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 6
  %proc_dir_ops = bitcast %union.anon.72* %0 to %struct.file_operations**
  store %struct.file_operations* @proc_sys_dir_file_operations, %struct.file_operations** %proc_dir_ops, align 8
  %nlink = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %call, i64 0, i32 13
  store i32 0, i32* %nlink, align 8
  %call1 = call i32 @sysctl_init() #19
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8* noundef, %struct.proc_dir_entry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_init() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_sysctl_args() local_unnamed_addr #0 {
entry:
  %proc_mnt = alloca %struct.vfsmount*, align 8
  %0 = bitcast %struct.vfsmount** %proc_mnt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.vfsmount* null, %struct.vfsmount** %proc_mnt, align 8
  %1 = load i8*, i8** @saved_command_line, align 8
  %call = call noalias i8* @kstrdup(i8* noundef %1, i32 noundef 3264) #19
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_sysctl_args, i64 0, i64 0)) #23
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i8* @parse_args(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %call, %struct.kernel_param* noundef null, i32 noundef 0, i16 noundef -1, i16 noundef -1, i8* noundef nonnull %0, i32 (i8*, i8*, i8*, i8*)* noundef nonnull @process_sysctl_arg) #19
  %2 = load %struct.vfsmount*, %struct.vfsmount** %proc_mnt, align 8
  %tobool2.not = icmp eq %struct.vfsmount* %2, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kern_unmount(%struct.vfsmount* noundef nonnull %2) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @kfree(i8* noundef nonnull %call) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @parse_args(i8* noundef, i8* noundef, %struct.kernel_param* noundef, i32 noundef, i16 noundef, i16 noundef, i8* noundef, i32 (i8*, i8*, i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @process_sysctl_arg(i8* noundef %param, i8* noundef %val, i8* nocapture noundef readnone %unused, i8* nocapture noundef %arg) #0 {
entry:
  %pos = alloca i64, align 8
  %0 = bitcast i8* %arg to %struct.vfsmount**
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store i64 0, i64* %pos, align 8
  %call = call i32 @strncmp(i8* noundef %param, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i64 noundef 6) #19
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %param, i64 6
  %2 = load i8, i8* %add.ptr, align 1
  %3 = and i8 %2, -2
  %switch = icmp eq i8 %3, 46
  br i1 %switch, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %incdec.ptr = getelementptr i8, i8* %param, i64 7
  br label %if.end11

if.else:                                          ; preds = %entry
  %call8 = call fastcc i8* @sysctl_find_alias(i8* noundef %param) #20
  %tobool.not = icmp eq i8* %call8, null
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else, %if.end
  %param.addr.0 = phi i8* [ %incdec.ptr, %if.end ], [ %call8, %if.else ]
  %tobool12.not = icmp eq i8* %val, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call15 = call i64 @strlen(i8* noundef nonnull %val) #19
  %conv16 = trunc i64 %call15 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end14
  %4 = load %struct.vfsmount*, %struct.vfsmount** %0, align 8
  %tobool21.not = icmp eq %struct.vfsmount* %4, null
  br i1 %tobool21.not, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end20
  %call23 = call %struct.file_system_type* @get_fs_type(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #19
  %tobool24.not = icmp eq %struct.file_system_type* %call23, null
  br i1 %tobool24.not, label %do.end, label %if.end27

do.end:                                           ; preds = %if.then22
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #21
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  %call28 = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull %call23) #19
  store %struct.vfsmount* %call28, %struct.vfsmount** %0, align 8
  call void @put_filesystem(%struct.file_system_type* noundef nonnull %call23) #19
  %5 = bitcast i8* %arg to i8**
  %6 = load i8*, i8** %5, align 8
  %call29 = call fastcc i1 @IS_ERR(i8* noundef %6) #20
  br i1 %call29, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end27
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0)) #21
  br label %cleanup

if.end37:                                         ; preds = %if.end27, %if.end20
  %call38 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef %param.addr.0) #19
  %tobool39.not = icmp eq i8* %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.process_sysctl_arg, i64 0, i64 0), i8* noundef %param.addr.0) #23
  unreachable

if.end41:                                         ; preds = %if.end37
  %call42 = call i8* @strreplace(i8* noundef nonnull %call38, i8 noundef 46, i8 noundef 47) #19
  %7 = load %struct.vfsmount*, %struct.vfsmount** %0, align 8
  %call43 = call fastcc %struct.file* @file_open_root_mnt(%struct.vfsmount* noundef %7, i8* noundef nonnull %call38) #20
  %8 = bitcast %struct.file* %call43 to i8*
  %call44 = call fastcc i1 @IS_ERR(i8* noundef %8) #20
  br i1 %call44, label %if.then45, label %if.end73

if.then45:                                        ; preds = %if.end41
  %call46 = call fastcc i64 @PTR_ERR(i8* noundef %8) #20
  %conv47 = trunc i64 %call46 to i32
  switch i32 %conv47, label %do.end68 [
    i32 -2, label %do.end53
    i32 -13, label %do.end62
  ]

do.end53:                                         ; preds = %if.then45
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %out

do.end62:                                         ; preds = %if.then45
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.28, i64 0, i64 0), i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %out

do.end68:                                         ; preds = %if.then45
  %call70 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), %struct.file* noundef %call43, i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %out

if.end73:                                         ; preds = %if.end41
  %sext = shl i64 %call15, 32
  %conv74 = ashr exact i64 %sext, 32
  %call75 = call i64 @kernel_write(%struct.file* noundef %call43, i8* noundef nonnull %val, i64 noundef %conv74, i64* noundef nonnull %pos) #19
  %cmp76 = icmp slt i64 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else97

if.then78:                                        ; preds = %if.end73
  %conv79 = trunc i64 %call75 to i32
  %cmp80 = icmp eq i32 %conv79, -22
  br i1 %cmp80, label %do.end85, label %do.end91

do.end85:                                         ; preds = %if.then78
  %call87 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i64 0, i64 0), i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %if.end108

do.end91:                                         ; preds = %if.then78
  %sext182 = shl i64 %call75, 32
  %conv93 = ashr exact i64 %sext182, 32
  %call94 = call fastcc i8* @ERR_PTR(i64 noundef %conv93) #20
  %call95 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call94, i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %if.end108

if.else97:                                        ; preds = %if.end73
  %cmp99.not = icmp eq i64 %call75, %conv74
  br i1 %cmp99.not, label %if.end108, label %do.end104

do.end104:                                        ; preds = %if.else97
  %call106 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.32, i64 0, i64 0), i64 noundef %call75, i32 noundef %conv16, i8* noundef nonnull %call38, i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %if.end108

if.end108:                                        ; preds = %if.else97, %do.end104, %do.end85, %do.end91
  %call109 = call i32 @filp_close(%struct.file* noundef %call43, i8* noundef null) #19
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %out, label %do.end114

do.end114:                                        ; preds = %if.end108
  %conv116 = sext i32 %call109 to i64
  %call117 = call fastcc i8* @ERR_PTR(i64 noundef %conv116) #20
  %call118 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call117, i8* noundef %param.addr.0, i8* noundef nonnull %val) #21
  br label %out

out:                                              ; preds = %if.end108, %do.end114, %do.end53, %do.end68, %do.end62
  call void @kfree(i8* noundef nonnull %call38) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end14, %if.end11, %if.else, %out, %do.end33, %do.end
  %retval.0 = phi i32 [ 0, %out ], [ 0, %do.end33 ], [ 0, %do.end ], [ 0, %if.then ], [ 0, %if.else ], [ -22, %if.end11 ], [ -22, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(%struct.vfsmount* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #22, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #22, !srcloc !12
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #10 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #2 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #20
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #22, !srcloc !14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sysctl_err(i8* noundef %path, %struct.ctl_table* nocapture noundef readonly %table, i8* noundef %fmt, ...) unnamed_addr #0 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !15
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef %path, i8* noundef %2, %struct.va_format* noundef nonnull %vaf) #21
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_userhz_jiffies(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_ms_jiffies_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysctl_check_table_array(i8* noundef %path, %struct.ctl_table* nocapture noundef readonly %table) unnamed_addr #0 {
entry:
  %proc_handler = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 5
  %0 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %cmp = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %0, @proc_douintvec
  %cmp2 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %0, @proc_douintvec_minmax
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %1 = load i32, i32* %maxlen, align 8
  %cmp3.not = icmp eq i32 %1, 4
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #20
  %.pr.pre = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %entry
  %2 = phi i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* [ %0, %entry ], [ %0, %if.then ], [ %.pr.pre, %if.then5 ]
  %err.0 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ -22, %if.then5 ]
  %cmp8 = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, @proc_dou8vec_minmax
  br i1 %cmp8, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.end6
  %maxlen11 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %3 = load i32, i32* %maxlen11, align 8
  %cmp13.not = icmp eq i32 %3, 1
  br i1 %cmp13.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.then10
  call void (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* noundef %path, %struct.ctl_table* noundef %table, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)) #20
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.then15, %if.end6
  %err.1 = phi i32 [ -22, %if.then15 ], [ %err.0, %if.then10 ], [ %err.0, %if.end6 ]
  ret i32 %err.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_dir* @find_subdir(%struct.ctl_dir* nocapture noundef readonly %dir, i8* noundef %name, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %head = alloca %struct.ctl_table_header*, align 8
  %0 = bitcast %struct.ctl_table_header** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %head, align 8, !annotation !15
  %call = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %head, %struct.ctl_dir* noundef %dir, i8* noundef %name, i32 noundef %namelen) #20
  %tobool.not = icmp eq %struct.ctl_table* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call, i64 0, i32 3
  %1 = load i16, i16* %mode, align 4
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -20) #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = bitcast %struct.ctl_table_header** %head to i8**
  %4 = load i8*, i8** %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0.in = phi i8* [ %4, %if.end6 ], [ %call5, %if.then4 ], [ %call2, %if.then ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.ctl_dir*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret %struct.ctl_dir* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_dir* @new_dir(%struct.ctl_table_set* noundef %set, i8* noundef %name, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %conv = sext i32 %namelen to i64
  %add1 = add nsw i64 %conv, 249
  %call = call fastcc i8* @kzalloc(i64 noundef %add1) #20
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ctl_dir*
  %add.ptr = getelementptr i8, i8* %call, i64 88
  %1 = bitcast i8* %add.ptr to %struct.ctl_node*
  %add.ptr2 = getelementptr i8, i8* %call, i64 120
  %2 = bitcast i8* %add.ptr2 to %struct.ctl_table*
  %add.ptr3 = getelementptr i8, i8* %call, i64 248
  %call5 = call i8* @memcpy(i8* noundef %add.ptr3, i8* noundef %name, i64 noundef %conv) #19
  %arrayidx = getelementptr i8, i8* %add.ptr3, i64 %conv
  store i8 0, i8* %arrayidx, align 1
  %procname = bitcast i8* %add.ptr2 to i8**
  store i8* %add.ptr3, i8** %procname, align 8
  %mode = getelementptr i8, i8* %call, i64 140
  %3 = bitcast i8* %mode to i16*
  store i16 16749, i16* %3, align 4
  %header = bitcast i8* %call to %struct.ctl_table_header*
  %root = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1, i32 0, i32 3
  %4 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root, align 8
  call fastcc void @init_header(%struct.ctl_table_header* noundef nonnull %header, %struct.ctl_table_root* noundef %4, %struct.ctl_table_set* noundef %set, %struct.ctl_node* noundef %1, %struct.ctl_table* noundef %2) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ctl_dir* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ctl_dir* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysctl_print_dir(%struct.ctl_dir* nocapture noundef readonly %dir) unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 5
  %0 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %tobool.not = icmp eq %struct.ctl_dir* %0, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @sysctl_print_dir(%struct.ctl_dir* noundef nonnull %0) #20
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctl_table = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %1, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** nocapture noundef writeonly %phead, %struct.ctl_dir* nocapture noundef readonly %dir, i8* noundef %name, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %rb_node = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 1, i32 0
  %node.036 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not37 = icmp eq %struct.rb_node* %node.036, null
  br i1 %tobool.not37, label %cleanup14, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %node.038 = phi %struct.rb_node* [ %node.0, %cleanup ], [ %node.036, %entry ]
  %header = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.038, i64 1
  %0 = bitcast %struct.rb_node* %header to %struct.ctl_table_header**
  %1 = load %struct.ctl_table_header*, %struct.ctl_table_header** %0, align 8
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %1, i64 0, i32 0, i32 0, i32 0
  %2 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %node2 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %1, i64 0, i32 6
  %3 = load %struct.ctl_node*, %struct.ctl_node** %node2, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.rb_node* %node.038 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ctl_node* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  %arrayidx = getelementptr %struct.ctl_table, %struct.ctl_table* %2, i64 %sub.ptr.div
  %procname3 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %arrayidx, i64 0, i32 0
  %4 = load i8*, i8** %procname3, align 8
  %call = call i64 @strlen(i8* noundef %4) #19
  %conv = trunc i64 %call to i32
  %call4 = call fastcc i32 @namecmp(i8* noundef %name, i32 noundef %namelen, i8* noundef %4, i32 noundef %conv) #20
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.038, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %cmp7.not = icmp eq i32 %call4, 0
  br i1 %cmp7.not, label %cleanup.thread, label %if.then9

if.then9:                                         ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.038, i64 0, i32 1
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %phead, align 8
  br label %cleanup14

cleanup:                                          ; preds = %if.then, %if.then9
  %node.1.in = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then9 ]
  %node.0 = load %struct.rb_node*, %struct.rb_node** %node.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %node.0, null
  br i1 %tobool.not, label %cleanup14, label %while.body

cleanup14:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %retval.2 = phi %struct.ctl_table* [ %arrayidx, %cleanup.thread ], [ null, %entry ], [ null, %cleanup ]
  ret %struct.ctl_table* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @namecmp(i8* noundef %name1, i32 noundef %len1, i8* noundef %name2, i32 noundef %len2) unnamed_addr #0 {
entry:
  %cmp1 = icmp slt i32 %len1, %len2
  %cond = select i1 %cmp1, i32 %len1, i32 %len2
  %conv = sext i32 %cond to i64
  %call = call i32 @memcmp(i8* noundef %name1, i8* noundef %name2, i64 noundef %conv) #19
  %cmp2 = icmp eq i32 %call, 0
  %sub = sub i32 %len1, %len2
  %spec.select = select i1 %cmp2, i32 %sub, i32 %call
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_empty_dir(%struct.ctl_table_header* nocapture noundef readonly %head) unnamed_addr #10 {
entry:
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 4
  %1 = load %struct.ctl_table*, %struct.ctl_table** %child, align 8
  %cmp = icmp eq %struct.ctl_table* %1, getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @sysctl_mount_point, i64 0, i64 0)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_empty_dir(%struct.ctl_dir* nocapture noundef readonly %dir) unnamed_addr #13 {
entry:
  %ctl_table = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 4
  store %struct.ctl_table* getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @sysctl_mount_point, i64 0, i64 0), %struct.ctl_table** %child, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_links(%struct.ctl_table_header* nocapture noundef readonly %head) unnamed_addr #0 {
entry:
  %set = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 4
  %0 = load %struct.ctl_table_set*, %struct.ctl_table_set** %set, align 8
  %cmp = icmp eq %struct.ctl_table_set* %0, getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0)
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 5
  %1 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %call = call fastcc %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* noundef getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0), %struct.ctl_dir* noundef %1) #20
  %2 = bitcast %struct.ctl_dir* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %2) #20
  br i1 %call1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  %3 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %root = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 3
  %4 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root, align 8
  %call4 = call fastcc i1 @get_links(%struct.ctl_dir* noundef %call, %struct.ctl_table* noundef %3, %struct.ctl_table_root* noundef %4) #20
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %header = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %call, i64 0, i32 0
  %nreg = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %call, i64 0, i32 0, i32 0, i32 0, i32 3
  %5 = load i32, i32* %nreg, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %nreg, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %6 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %7 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root, align 8
  %call9 = call fastcc %struct.ctl_table_header* @new_links(%struct.ctl_dir* noundef %call, %struct.ctl_table* noundef %6, %struct.ctl_table_root* noundef %7) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not = icmp eq %struct.ctl_table_header* %call9, null
  br i1 %tobool.not, label %out, label %if.end11

if.end11:                                         ; preds = %if.end6
  %8 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %9 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root, align 8
  %call14 = call fastcc i1 @get_links(%struct.ctl_dir* noundef %call, %struct.ctl_table* noundef %8, %struct.ctl_table_root* noundef %9) #20
  br i1 %call14, label %out.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = call fastcc i32 @insert_header(%struct.ctl_dir* noundef %call, %struct.ctl_table_header* noundef nonnull %call9) #20
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out, label %out.sink.split

out.sink.split:                                   ; preds = %if.end16, %if.end11
  %err.0.ph = phi i32 [ 0, %if.end11 ], [ %call17, %if.end16 ]
  %10 = bitcast %struct.ctl_table_header* %call9 to i8*
  call void @kfree(i8* noundef nonnull %10) #19
  br label %out

out:                                              ; preds = %out.sink.split, %if.end16, %if.end6
  %err.0 = phi i32 [ 0, %if.end16 ], [ -12, %if.end6 ], [ %err.0.ph, %out.sink.split ]
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %header) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %out
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @insert_entry(%struct.ctl_table_header* nocapture noundef readonly %head, %struct.ctl_table* noundef %entry1) unnamed_addr #0 {
entry:
  %node2 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 6
  %0 = load %struct.ctl_node*, %struct.ctl_node** %node2, align 8
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ctl_table* %entry1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ctl_table* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %node3 = getelementptr %struct.ctl_node, %struct.ctl_node* %0, i64 %sub.ptr.div, i32 0
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 5
  %2 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %rb_node = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %2, i64 0, i32 1, i32 0
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1, i64 0, i32 0
  %3 = load i8*, i8** %procname, align 8
  %call = call i64 @strlen(i8* noundef %3) #19
  %conv = trunc i64 %call to i32
  %4 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not78 = icmp eq %struct.rb_node* %4, null
  br i1 %tobool.not78, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %5 = phi %struct.rb_node* [ %15, %cleanup ], [ %4, %entry ]
  %p.079 = phi %struct.rb_node** [ %p.2, %cleanup ], [ %rb_node, %entry ]
  %header = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i64 1
  %6 = bitcast %struct.rb_node* %header to %struct.ctl_table_header**
  %7 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %ctl_table5 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %7, i64 0, i32 0, i32 0, i32 0
  %8 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table5, align 8
  %node6 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %7, i64 0, i32 6
  %9 = load %struct.ctl_node*, %struct.ctl_node** %node6, align 8
  %sub.ptr.lhs.cast7 = ptrtoint %struct.rb_node* %5 to i64
  %sub.ptr.rhs.cast8 = ptrtoint %struct.ctl_node* %9 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %sub.ptr.div10 = ashr exact i64 %sub.ptr.sub9, 5
  %procname12 = getelementptr %struct.ctl_table, %struct.ctl_table* %8, i64 %sub.ptr.div10, i32 0
  %10 = load i8*, i8** %procname12, align 8
  %call13 = call i64 @strlen(i8* noundef %10) #19
  %conv14 = trunc i64 %call13 to i32
  %call15 = call fastcc i32 @namecmp(i8* noundef %3, i32 noundef %conv, i8* noundef %10, i32 noundef %conv14) #20
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load %struct.rb_node*, %struct.rb_node** %p.079, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i64 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  %cmp18.not = icmp eq i32 %call15, 0
  br i1 %cmp18.not, label %cleanup.thread, label %if.then20

if.then20:                                        ; preds = %if.else
  %12 = load %struct.rb_node*, %struct.rb_node** %p.079, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i64 0, i32 1
  br label %cleanup

cleanup.thread:                                   ; preds = %if.else
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #21
  %13 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  call fastcc void @sysctl_print_dir(%struct.ctl_dir* noundef %13) #20
  %14 = load i8*, i8** %procname, align 8
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %14) #21
  br label %cleanup41

cleanup:                                          ; preds = %if.then, %if.then20
  %p.2 = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then20 ]
  %15 = load %struct.rb_node*, %struct.rb_node** %p.2, align 8
  %tobool.not = icmp eq %struct.rb_node* %15, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  %parent4.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %5, %cleanup ]
  %p.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %p.2, %cleanup ]
  call fastcc void @rb_link_node(%struct.rb_node* noundef %node3, %struct.rb_node* noundef %parent4.0.lcssa, %struct.rb_node** noundef %p.0.lcssa) #20
  %16 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %root40 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %16, i64 0, i32 1
  call void @rb_insert_color(%struct.rb_node* noundef %node3, %struct.rb_root* noundef %root40) #19
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup.thread, %while.end
  %retval.2 = phi i32 [ 0, %while.end ], [ -17, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @erase_header(%struct.ctl_table_header* nocapture noundef readonly %head) unnamed_addr #0 {
entry:
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %procname6 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 0
  %1 = load i8*, i8** %procname6, align 8
  %tobool.not7 = icmp eq i8* %1, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %entry1.08 = phi %struct.ctl_table* [ %incdec.ptr, %for.body ], [ %0, %entry ]
  call fastcc void @erase_entry(%struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %entry1.08) #20
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.08, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_links(%struct.ctl_table_header* nocapture noundef readonly %header) unnamed_addr #0 {
entry:
  %link_head = alloca %struct.ctl_table_header*, align 8
  %root1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 3
  %0 = bitcast %struct.ctl_table_root** %root1 to i8**
  %1 = load i8*, i8** %0, align 8
  %parent2 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 5
  %2 = load %struct.ctl_dir*, %struct.ctl_dir** %parent2, align 8
  %set = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 4
  %3 = load %struct.ctl_table_set*, %struct.ctl_table_set** %set, align 8
  %cmp = icmp eq %struct.ctl_table_set* %3, getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0)
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* noundef getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0), %struct.ctl_dir* noundef %2) #20
  %4 = bitcast %struct.ctl_dir* %call to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %4) #20
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %header, i64 0, i32 0, i32 0, i32 0
  %5 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %procname62 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %5, i64 0, i32 0
  %6 = load i8*, i8** %procname62, align 8
  %tobool.not63 = icmp eq i8* %6, null
  br i1 %tobool.not63, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end6
  %7 = bitcast %struct.ctl_table_header** %link_head to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end35
  %8 = phi i8* [ %6, %for.body.lr.ph ], [ %15, %if.end35 ]
  %entry3.064 = phi %struct.ctl_table* [ %5, %for.body.lr.ph ], [ %incdec.ptr, %if.end35 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %link_head, align 8, !annotation !15
  %call8 = call i64 @strlen(i8* noundef nonnull %8) #19
  %conv = trunc i64 %call8 to i32
  %call9 = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %link_head, %struct.ctl_dir* noundef %call, i8* noundef nonnull %8, i32 noundef %conv) #20
  %tobool10.not = icmp eq %struct.ctl_table* %call9, null
  br i1 %tobool10.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call9, i64 0, i32 3
  %9 = load i16, i16* %mode, align 4
  %10 = and i16 %9, -4096
  switch i16 %10, label %do.end [
    i16 16384, label %land.lhs.true14
    i16 -24576, label %land.lhs.true25
  ]

land.lhs.true14:                                  ; preds = %land.lhs.true
  %mode15 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry3.064, i64 0, i32 3
  %11 = load i16, i16* %mode15, align 4
  %12 = and i16 %11, -4096
  %cmp18 = icmp eq i16 %12, 16384
  br i1 %cmp18, label %if.then28, label %do.end

land.lhs.true25:                                  ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call9, i64 0, i32 1
  %13 = load i8*, i8** %data, align 8
  %cmp26 = icmp eq i8* %13, %1
  br i1 %cmp26, label %if.then28, label %do.end

if.then28:                                        ; preds = %land.lhs.true25, %land.lhs.true14
  %14 = load %struct.ctl_table_header*, %struct.ctl_table_header** %link_head, align 8
  call fastcc void @drop_sysctl_table(%struct.ctl_table_header* noundef %14) #20
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true, %land.lhs.true14, %for.body, %land.lhs.true25
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0)) #21
  call fastcc void @sysctl_print_dir(%struct.ctl_dir* noundef %2) #20
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %8) #21
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #22
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry3.064, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %15 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %15, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end35, %if.end6, %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clear_empty_dir(%struct.ctl_dir* nocapture noundef readonly %dir) unnamed_addr #13 {
entry:
  %ctl_table = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 4
  store %struct.ctl_table* null, %struct.ctl_table** %child, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* noundef %set, %struct.ctl_dir* nocapture noundef readonly %dir) unnamed_addr #0 {
entry:
  %parent1 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 5
  %0 = load %struct.ctl_dir*, %struct.ctl_dir** %parent1, align 8
  %tobool.not = icmp eq %struct.ctl_dir* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dir2 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %set, i64 0, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* noundef %set, %struct.ctl_dir* noundef nonnull %0) #20
  %1 = bitcast %struct.ctl_dir* %call to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %1) #20
  br i1 %call5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %ctl_table = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 0, i32 0, i32 0
  %2 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %procname9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %2, i64 0, i32 0
  %3 = load i8*, i8** %procname9, align 8
  %call10 = call i64 @strlen(i8* noundef %3) #19
  %conv = trunc i64 %call10 to i32
  %call11 = call fastcc %struct.ctl_dir* @find_subdir(%struct.ctl_dir* noundef %call, i8* noundef %3, i32 noundef %conv) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7, %if.then
  %retval.0 = phi %struct.ctl_dir* [ %call11, %if.end7 ], [ %dir2, %if.then ], [ %call, %if.end ]
  ret %struct.ctl_dir* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @get_links(%struct.ctl_dir* nocapture noundef readonly %dir, %struct.ctl_table* nocapture noundef readonly %table, %struct.ctl_table_root* noundef readnone %link_root) unnamed_addr #0 {
entry:
  %head = alloca %struct.ctl_table_header*, align 8
  %0 = bitcast %struct.ctl_table_header** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %head, align 8, !annotation !15
  %procname63 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %1 = load i8*, i8** %procname63, align 8
  %tobool.not64 = icmp eq i8* %1, null
  br i1 %tobool.not64, label %cleanup37, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.ctl_table_root* %link_root to i8*
  br label %for.body

for.cond25.preheader:                             ; preds = %for.inc
  %.pre = load i8*, i8** %procname63, align 8
  %tobool27.not68 = icmp eq i8* %.pre, null
  br i1 %tobool27.not68, label %cleanup37, label %for.body28

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i8* [ %1, %for.body.lr.ph ], [ %9, %for.inc ]
  %entry1.065 = phi %struct.ctl_table* [ %table, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call = call i64 @strlen(i8* noundef nonnull %3) #19
  %conv = trunc i64 %call to i32
  %call4 = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %head, %struct.ctl_dir* noundef %dir, i8* noundef nonnull %3, i32 noundef %conv) #20
  %tobool5.not = icmp eq %struct.ctl_table* %call4, null
  br i1 %tobool5.not, label %cleanup37, label %if.end

if.end:                                           ; preds = %for.body
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call4, i64 0, i32 3
  %4 = load i16, i16* %mode, align 4
  %5 = and i16 %4, -4096
  switch i16 %5, label %cleanup37 [
    i16 16384, label %land.lhs.true
    i16 -24576, label %land.lhs.true20
  ]

land.lhs.true:                                    ; preds = %if.end
  %mode8 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %entry1.065, i64 0, i32 3
  %6 = load i16, i16* %mode8, align 4
  %7 = and i16 %6, -4096
  %cmp11 = icmp eq i16 %7, 16384
  br i1 %cmp11, label %for.inc, label %cleanup37

land.lhs.true20:                                  ; preds = %if.end
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call4, i64 0, i32 1
  %8 = load i8*, i8** %data, align 8
  %cmp21 = icmp eq i8* %8, %2
  br i1 %cmp21, label %for.inc, label %cleanup37

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true20
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.065, i64 1
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %9 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %9, null
  br i1 %tobool.not, label %for.cond25.preheader, label %for.body

for.body28:                                       ; preds = %for.cond25.preheader, %for.body28
  %10 = phi i8* [ %13, %for.body28 ], [ %.pre, %for.cond25.preheader ]
  %entry1.169 = phi %struct.ctl_table* [ %incdec.ptr35, %for.body28 ], [ %table, %for.cond25.preheader ]
  %call31 = call i64 @strlen(i8* noundef nonnull %10) #19
  %conv32 = trunc i64 %call31 to i32
  %call33 = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %head, %struct.ctl_dir* noundef %dir, i8* noundef nonnull %10, i32 noundef %conv32) #20
  %11 = load %struct.ctl_table_header*, %struct.ctl_table_header** %head, align 8
  %nreg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %11, i64 0, i32 0, i32 0, i32 3
  %12 = load i32, i32* %nreg, align 8
  %inc = add i32 %12, 1
  store i32 %inc, i32* %nreg, align 8
  %incdec.ptr35 = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.169, i64 1
  %procname26 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr35, i64 0, i32 0
  %13 = load i8*, i8** %procname26, align 8
  %tobool27.not = icmp eq i8* %13, null
  br i1 %tobool27.not, label %cleanup37, label %for.body28

cleanup37:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true20, %for.body, %for.body28, %entry, %for.cond25.preheader
  %tobool.not62 = phi i1 [ true, %for.cond25.preheader ], [ true, %entry ], [ true, %for.body28 ], [ false, %for.body ], [ false, %land.lhs.true20 ], [ false, %land.lhs.true ], [ false, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret i1 %tobool.not62
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table_header* @new_links(%struct.ctl_dir* nocapture noundef readonly %dir, %struct.ctl_table* nocapture noundef readonly %table, %struct.ctl_table_root* noundef %link_root) unnamed_addr #0 {
entry:
  %procname82 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %0 = load i8*, i8** %procname82, align 8
  %tobool.not83 = icmp eq i8* %0, null
  br i1 %tobool.not83, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i8* [ %2, %for.body ], [ %0, %entry ]
  %name_bytes.086 = phi i64 [ %phi.cast, %for.body ], [ 0, %entry ]
  %nr_entries.085 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %entry1.084 = phi %struct.ctl_table* [ %incdec.ptr, %for.body ], [ %table, %entry ]
  %inc = add i32 %nr_entries.085, 1
  %call = call i64 @strlen(i8* noundef nonnull %1) #19
  %add = add nsw i64 %name_bytes.086, 1
  %add3 = add i64 %add, %call
  %incdec.ptr = getelementptr %struct.ctl_table, %struct.ctl_table* %entry1.084, i64 1
  %sext = shl i64 %add3, 32
  %phi.cast = ashr exact i64 %sext, 32
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = add nsw i64 %phi.cast, 80
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %nr_entries.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.end.loopexit ]
  %name_bytes.0.lcssa = phi i64 [ 80, %entry ], [ %phi.bo, %for.end.loopexit ]
  %conv5 = sext i32 %nr_entries.0.lcssa to i64
  %mul = shl nsw i64 %conv5, 5
  %add7 = add i32 %nr_entries.0.lcssa, 1
  %conv8 = sext i32 %add7 to i64
  %mul9 = shl nsw i64 %conv8, 6
  %add10 = add nsw i64 %name_bytes.0.lcssa, %mul
  %add12 = add nsw i64 %add10, %mul9
  %call13 = call fastcc i8* @kzalloc(i64 noundef %add12) #20
  %3 = bitcast i8* %call13 to %struct.ctl_table_header*
  %tobool14.not = icmp eq i8* %call13, null
  br i1 %tobool14.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %add.ptr = getelementptr i8, i8* %call13, i64 80
  %4 = bitcast i8* %add.ptr to %struct.ctl_node*
  %add.ptr15 = getelementptr %struct.ctl_node, %struct.ctl_node* %4, i64 %conv5
  %5 = bitcast %struct.ctl_node* %add.ptr15 to %struct.ctl_table*
  %6 = load i8*, i8** %procname82, align 8
  %tobool19.not89 = icmp eq i8* %6, null
  br i1 %tobool19.not89, label %for.end34, label %for.body20.preheader

for.body20.preheader:                             ; preds = %if.end
  %arrayidx = getelementptr %struct.ctl_table, %struct.ctl_table* %5, i64 %conv8
  %7 = bitcast %struct.ctl_table* %arrayidx to i8*
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader, %for.body20
  %8 = phi i8* [ %11, %for.body20 ], [ %6, %for.body20.preheader ]
  %procname1893 = phi i8** [ %incdec.ptr33, %for.body20 ], [ %procname82, %for.body20.preheader ]
  %link_name.092 = phi i8* [ %add.ptr30, %for.body20 ], [ %7, %for.body20.preheader ]
  %link.091 = phi %struct.ctl_table* [ %incdec.ptr32, %for.body20 ], [ %5, %for.body20.preheader ]
  %call22 = call i64 @strlen(i8* noundef nonnull %8) #19
  %9 = load i8*, i8** %procname1893, align 8
  %conv24 = shl i64 %call22, 32
  %sext81 = add i64 %conv24, 4294967296
  %conv26 = ashr exact i64 %sext81, 32
  %call27 = call i8* @memcpy(i8* noundef %link_name.092, i8* noundef %9, i64 noundef %conv26) #19
  %procname28 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %link.091, i64 0, i32 0
  store i8* %link_name.092, i8** %procname28, align 8
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %link.091, i64 0, i32 3
  store i16 -24065, i16* %mode, align 4
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %link.091, i64 0, i32 1
  %10 = bitcast i8** %data to %struct.ctl_table_root**
  store %struct.ctl_table_root* %link_root, %struct.ctl_table_root** %10, align 8
  %add.ptr30 = getelementptr i8, i8* %link_name.092, i64 %conv26
  %incdec.ptr32 = getelementptr %struct.ctl_table, %struct.ctl_table* %link.091, i64 1
  %incdec.ptr33 = getelementptr i8*, i8** %procname1893, i64 8
  %11 = load i8*, i8** %incdec.ptr33, align 8
  %tobool19.not = icmp eq i8* %11, null
  br i1 %tobool19.not, label %for.end34, label %for.body20

for.end34:                                        ; preds = %for.body20, %if.end
  %root = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 3
  %12 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root, align 8
  %set = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 0, i32 4
  %13 = load %struct.ctl_table_set*, %struct.ctl_table_set** %set, align 8
  call fastcc void @init_header(%struct.ctl_table_header* noundef nonnull %3, %struct.ctl_table_root* noundef %12, %struct.ctl_table_set* noundef %13, %struct.ctl_node* noundef %4, %struct.ctl_table* noundef %5) #20
  %nreg = getelementptr inbounds i8, i8* %call13, i64 16
  %14 = bitcast i8* %nreg to i32*
  store i32 %nr_entries.0.lcssa, i32* %14, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end34
  %retval.0 = phi %struct.ctl_table_header* [ %3, %for.end34 ], [ null, %for.end ]
  ret %struct.ctl_table_header* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #14 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @erase_entry(%struct.ctl_table_header* nocapture noundef readonly %head, %struct.ctl_table* noundef %entry1) unnamed_addr #0 {
entry:
  %node2 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 6
  %0 = load %struct.ctl_node*, %struct.ctl_node** %node2, align 8
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ctl_table* %entry1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ctl_table* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  %node3 = getelementptr %struct.ctl_node, %struct.ctl_node* %0, i64 %sub.ptr.div, i32 0
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 5
  %2 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %root = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %2, i64 0, i32 1
  call void @rb_erase(%struct.rb_node* noundef %node3, %struct.rb_root* noundef %root) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #20
  ret i8* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 64)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !7

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @start_unregistering(%struct.ctl_table_header* noundef %p) unnamed_addr #0 {
entry:
  %wait = alloca %struct.completion, align 8
  %used = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 0, i32 0, i32 1
  %0 = load i32, i32* %used, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.completion* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !15
  call fastcc void @init_completion(%struct.completion* noundef nonnull %wait) #20
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 1
  store %struct.completion* %wait, %struct.completion** %unregistering, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call void @wait_for_completion(%struct.completion* noundef nonnull %wait) #19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #22
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #20
  %unregistering3 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 1
  %2 = bitcast %struct.completion** %unregistering3 to i8**
  store i8* %call, i8** %2, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call fastcc void @proc_sys_invalidate_dcache(%struct.ctl_table_header* noundef %p) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @erase_header(%struct.ctl_table_header* noundef %p) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @proc_sys_invalidate_dcache(%struct.ctl_table_header* noundef %head) unnamed_addr #0 {
entry:
  %inodes = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 7
  call void @proc_invalidate_siblings_dcache(%struct.hlist_head* noundef %inodes, %struct.spinlock* noundef nonnull @sysctl_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(%struct.hlist_head* noundef, %struct.spinlock* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_sys_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %h = alloca %struct.ctl_table_header*, align 8
  %p = alloca %struct.ctl_table*, align 8
  %call = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %dir) #20
  %0 = bitcast %struct.ctl_table_header** %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %h, align 8
  %1 = bitcast %struct.ctl_table** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  %2 = bitcast %struct.ctl_table_header* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %2) #20
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.ctl_table_header* %call to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  %4 = bitcast i8* %call1 to %struct.dentry*
  %5 = bitcast %struct.ctl_table_header* %call to %struct.ctl_dir*
  %name4 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %6 = load i8*, i8** %name4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 0
  %8 = bitcast %union.anon.2* %7 to %struct.anon.3*
  %len = getelementptr inbounds %struct.anon.3, %struct.anon.3* %8, i64 0, i32 1
  %9 = load i32, i32* %len, align 4
  %call5 = call fastcc %struct.ctl_table* @lookup_entry(%struct.ctl_table_header** noundef nonnull %h, %struct.ctl_dir* noundef %5, i8* noundef %6, i32 noundef %9) #20
  store %struct.ctl_table* %call5, %struct.ctl_table** %p, align 8
  %tobool.not = icmp eq %struct.ctl_table* %call5, null
  br i1 %tobool.not, label %out, label %if.end7

if.end7:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %call5, i64 0, i32 3
  %10 = load i16, i16* %mode, align 4
  %11 = and i16 %10, -4096
  %cmp = icmp eq i16 %11, -24576
  br i1 %cmp, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @sysctl_follow_link(%struct.ctl_table_header** noundef nonnull %h, %struct.ctl_table** noundef nonnull %p) #20
  %conv11 = sext i32 %call10 to i64
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef %conv11) #20
  %12 = bitcast i8* %call12 to %struct.dentry*
  %tobool13.not = icmp eq i32 %call10, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %out

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  %.pre = load %struct.ctl_table*, %struct.ctl_table** %p, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end7
  %13 = phi %struct.ctl_table* [ %.pre, %if.then9.if.end16_crit_edge ], [ %call5, %if.end7 ]
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %14 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %15 = load %struct.ctl_table_header*, %struct.ctl_table_header** %h, align 8
  %tobool17.not = icmp eq %struct.ctl_table_header* %15, null
  %cond = select i1 %tobool17.not, %struct.ctl_table_header* %call, %struct.ctl_table_header* %15
  %call18 = call fastcc %struct.inode* @proc_sys_make_inode(%struct.super_block* noundef %14, %struct.ctl_table_header* noundef %cond, %struct.ctl_table* noundef %13) #20
  %16 = bitcast %struct.inode* %call18 to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %16) #20
  br i1 %call19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %17 = bitcast %struct.inode* %call18 to %struct.dentry*
  br label %out

if.end22:                                         ; preds = %if.end16
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @proc_sys_dentry_operations) #19
  %call23 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef %call18, %struct.dentry* noundef %dentry) #19
  br label %out

out:                                              ; preds = %if.then9, %if.end, %if.end22, %if.then20
  %err.0 = phi %struct.dentry* [ %12, %if.then9 ], [ %17, %if.then20 ], [ %call23, %if.end22 ], [ %4, %if.end ]
  %18 = load %struct.ctl_table_header*, %struct.ctl_table_header** %h, align 8
  %tobool24.not = icmp eq %struct.ctl_table_header* %18, null
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %out
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef nonnull %18) #20
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %out
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then
  %retval.0 = phi %struct.dentry* [ %3, %if.then ], [ %err.0, %if.end26 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_permission(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #0 {
entry:
  %and = and i32 %mask, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %inode) #20
  %2 = bitcast %struct.ctl_table_header* %call to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #20
  br i1 %call3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %2) #20
  %conv6 = trunc i64 %call5 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #20
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call8, i64 0, i32 5
  %3 = load %struct.ctl_table*, %struct.ctl_table** %sysctl_entry, align 8
  %tobool9.not = icmp eq %struct.ctl_table* %3, null
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %and11 = and i32 %mask, 2
  %tobool12.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool12.not, i32 0, i32 -13
  br label %if.end15

if.else:                                          ; preds = %if.end7
  %and13 = and i32 %mask, -129
  %call14 = call fastcc i32 @sysctl_perm(%struct.ctl_table_header* noundef %call, %struct.ctl_table* noundef nonnull %3, i32 noundef %and13) #20
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %error.0 = phi i32 [ %call14, %if.else ], [ %cond, %if.then10 ]
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end15, %if.then4
  %retval.0 = phi i32 [ %conv6, %if.then4 ], [ %error.0, %if.end15 ], [ -13, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_setattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #20
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid, align 8
  %and = and i32 %0, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @setattr_prepare(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #19
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  call void @setattr_copy(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.iattr* noundef %attr) #19
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #20
  %call1 = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %call) #20
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #20
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 5
  %1 = load %struct.ctl_table*, %struct.ctl_table** %sysctl_entry, align 8
  %2 = bitcast %struct.ctl_table_header* %call1 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #20
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %2) #20
  %conv = trunc i64 %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #19
  %tobool.not = icmp eq %struct.ctl_table* %1, null
  br i1 %tobool.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 1
  %3 = load i16, i16* %mode, align 4
  %4 = and i16 %3, -4096
  %mode7 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %1, i64 0, i32 3
  %5 = load i16, i16* %mode7, align 4
  %or24 = or i16 %4, %5
  store i16 %or24, i16* %mode, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef readonly %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #20
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 4
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctl, align 8
  %tobool.not = icmp eq %struct.ctl_table_header* %0, null
  %spec.store.select = select i1 %tobool.not, %struct.ctl_table_header* getelementptr inbounds (%struct.ctl_table_root, %struct.ctl_table_root* @sysctl_table_root, i64 0, i32 0, i32 1, i32 0), %struct.ctl_table_header* %0
  %call1 = call fastcc %struct.ctl_table_header* @sysctl_head_grab(%struct.ctl_table_header* noundef %spec.store.select) #20
  ret %struct.ctl_table_header* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table* @lookup_entry(%struct.ctl_table_header** nocapture noundef writeonly %phead, %struct.ctl_dir* nocapture noundef readonly %dir, i8* noundef %name, i32 noundef %namelen) unnamed_addr #0 {
entry:
  %head = alloca %struct.ctl_table_header*, align 8
  %0 = bitcast %struct.ctl_table_header** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %head, align 8, !annotation !15
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %head, %struct.ctl_dir* noundef %dir, i8* noundef %name, i32 noundef %namelen) #20
  %tobool.not = icmp eq %struct.ctl_table* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ctl_table_header*, %struct.ctl_table_header** %head, align 8
  %call2 = call fastcc i32 @use_table(%struct.ctl_table_header* noundef %1) #20
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %phead, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %entry1.0 = phi %struct.ctl_table* [ %call, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret %struct.ctl_table* %entry1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysctl_follow_link(%struct.ctl_table_header** nocapture noundef %phead, %struct.ctl_table** nocapture noundef %pentry) unnamed_addr #0 {
entry:
  %head = alloca %struct.ctl_table_header*, align 8
  %0 = bitcast %struct.ctl_table_header** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %1 = load %struct.ctl_table*, %struct.ctl_table** %pentry, align 8
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %1, i64 0, i32 1
  %2 = bitcast i8** %data to %struct.ctl_table_root**
  %3 = load %struct.ctl_table_root*, %struct.ctl_table_root** %2, align 8
  %call = call fastcc %struct.ctl_table_set* @lookup_header_set(%struct.ctl_table_root* noundef %3) #20
  %4 = load %struct.ctl_table_header*, %struct.ctl_table_header** %phead, align 8
  %parent = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %4, i64 0, i32 5
  %5 = load %struct.ctl_dir*, %struct.ctl_dir** %parent, align 8
  %call2 = call fastcc %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* noundef %call, %struct.ctl_dir* noundef %5) #20
  %6 = bitcast %struct.ctl_dir* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %6) #20
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %6) #20
  %conv = trunc i64 %call4 to i32
  br label %if.end12

if.else:                                          ; preds = %entry
  %7 = load %struct.ctl_table*, %struct.ctl_table** %pentry, align 8
  %procname5 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %7, i64 0, i32 0
  %8 = load i8*, i8** %procname5, align 8
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %head, align 8
  %call6 = call i64 @strlen(i8* noundef %8) #19
  %conv7 = trunc i64 %call6 to i32
  %call8 = call fastcc %struct.ctl_table* @find_entry(%struct.ctl_table_header** noundef nonnull %head, %struct.ctl_dir* noundef %call2, i8* noundef %8, i32 noundef %conv7) #20
  %tobool.not = icmp eq %struct.ctl_table* %call8, null
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct.ctl_table_header*, %struct.ctl_table_header** %head, align 8
  %call9 = call fastcc i32 @use_table(%struct.ctl_table_header* noundef %9) #20
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %10 = load %struct.ctl_table_header*, %struct.ctl_table_header** %phead, align 8
  call fastcc void @unuse_table(%struct.ctl_table_header* noundef %10) #20
  store %struct.ctl_table_header* %9, %struct.ctl_table_header** %phead, align 8
  store %struct.ctl_table* %call8, %struct.ctl_table** %pentry, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %land.lhs.true, %if.then11, %if.then
  %ret.1 = phi i32 [ %conv, %if.then ], [ 0, %if.then11 ], [ -2, %land.lhs.true ], [ -2, %if.else ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @proc_sys_make_inode(%struct.super_block* noundef %sb, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) unnamed_addr #0 {
entry:
  %root1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 3
  %0 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root1, align 8
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %sb) #19
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -12) #20
  %1 = bitcast i8* %call2 to %struct.inode*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @get_next_ino() #19
  %conv = zext i32 %call3 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %call4 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #20
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 1
  %2 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool5.not = icmp eq %struct.completion* %2, null
  br i1 %tobool5.not, label %if.end11, label %if.then9, !prof !8

if.then9:                                         ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call void @iput(%struct.inode* noundef nonnull %call) #19
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  %3 = bitcast i8* %call10 to %struct.inode*
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call4, i64 0, i32 4
  store %struct.ctl_table_header* %head, %struct.ctl_table_header** %sysctl, align 8
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call4, i64 0, i32 5
  store %struct.ctl_table* %table, %struct.ctl_table** %sysctl_entry, align 8
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call4, i64 0, i32 6
  %inodes = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 7
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %sibling_inodes, %struct.hlist_head* noundef %inodes) #20
  %count = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 0, i32 0, i32 2
  %4 = load i32, i32* %count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %count, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call12 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #19
  %call12.fca.0.extract = extractvalue [2 x i64] %call12, 0
  %call12.fca.1.extract = extractvalue [2 x i64] %call12, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call12.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx42 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call12.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx42, align 8
  %5 = bitcast %struct.timespec64* %i_atime to i8*
  %6 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %7 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 3
  %8 = load i16, i16* %mode, align 4
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 %8, i16* %i_mode, align 8
  %9 = load i16, i16* %mode, align 4
  %10 = and i16 %9, -4096
  %cmp = icmp eq i16 %10, 16384
  br i1 %cmp, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  %11 = or i16 %8, -32768
  store i16 %11, i16* %i_mode, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_sys_inode_operations, %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @proc_sys_file_operations, %struct.file_operations** %i_fop, align 8
  br label %if.end29

if.else:                                          ; preds = %if.end11
  %12 = or i16 %8, 16384
  store i16 %12, i16* %i_mode, align 8
  %i_op24 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* @proc_sys_dir_operations, %struct.inode_operations** %i_op24, align 8
  %i_fop25 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @proc_sys_dir_file_operations, %struct.file_operations** %i_fop25, align 8
  %call26 = call fastcc i1 @is_empty_dir(%struct.ctl_table_header* noundef %head) #20
  br i1 %call26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  call void @make_empty_dir_inode(%struct.inode* noundef nonnull %call) #19
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then27, %if.then16
  %set_ownership = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %0, i64 0, i32 2
  %13 = load void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)** %set_ownership, align 8
  %tobool30.not = icmp eq void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)* %13, null
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.end29
  %i_uid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3
  call void %13(%struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table, %struct.kuid_t* noundef %i_uid, %struct.kgid_t* noundef %i_gid) #19
  br label %cleanup

if.else33:                                        ; preds = %if.end29
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral36.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  store i32 0, i32* %.compoundliteral36.sroa.0.0..sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.else33, %if.then9, %if.then
  %retval.0 = phi %struct.inode* [ %3, %if.then9 ], [ %1, %if.then ], [ %call, %if.else33 ], [ %call, %if.then31 ]
  ret %struct.inode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef, %struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %head) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ctl_table_header* %head, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @unuse_table(%struct.ctl_table_header* noundef nonnull %head) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table_header* @sysctl_head_grab(%struct.ctl_table_header* noundef %head) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ctl_table_header* %head, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/proc_sysctl.c\22; .popsection; .long 14472b - 14470b; .short 305; .short 0; .popsection; 14471: brk 0x800", ""() #22, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %call = call fastcc i32 @use_table(%struct.ctl_table_header* noundef nonnull %head) #20
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end7
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -2) #20
  %0 = bitcast i8* %call10 to %struct.ctl_table_header*
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end7
  %head.addr.0 = phi %struct.ctl_table_header* [ %head, %do.end7 ], [ %0, %if.then9 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  ret %struct.ctl_table_header* %head.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @use_table(%struct.ctl_table_header* nocapture noundef %p) unnamed_addr #13 {
entry:
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 1
  %0 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool.not = icmp eq %struct.completion* %0, null
  br i1 %tobool.not, label %if.end, label %return, !prof !8

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 0, i32 0, i32 1
  %1 = load i32, i32* %used, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %used, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_table_set* @lookup_header_set(%struct.ctl_table_root* noundef %root) unnamed_addr #0 {
entry:
  %default_set = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %root, i64 0, i32 0
  %lookup = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %root, i64 0, i32 1
  %0 = load %struct.ctl_table_set* (%struct.ctl_table_root*)*, %struct.ctl_table_set* (%struct.ctl_table_root*)** %lookup, align 8
  %tobool.not = icmp eq %struct.ctl_table_set* (%struct.ctl_table_root*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.ctl_table_set* %0(%struct.ctl_table_root* noundef %root) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %set.0 = phi %struct.ctl_table_set* [ %call, %if.then ], [ %default_set, %entry ]
  ret %struct.ctl_table_set* %set.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unuse_table(%struct.ctl_table_header* nocapture noundef %p) unnamed_addr #0 {
entry:
  %used = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 0, i32 0, i32 1
  %0 = load i32, i32* %used, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %used, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 1
  %1 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool1.not = icmp eq %struct.completion* %1, null
  br i1 %tobool1.not, label %if.end6, label %if.then4, !prof !8

if.then4:                                         ; preds = %if.then
  call void @complete(%struct.completion* noundef nonnull %1) #19
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then4, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #0 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #22, !srcloc !17
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_sys_read(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  %call = call fastcc i64 @proc_sys_call_handler(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef 0) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_sys_write(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  %call = call fastcc i64 @proc_sys_call_handler(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef 1) #20
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_poll(%struct.file* noundef %filp, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #20
  %call1 = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %call) #20
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #20
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 5
  %0 = load %struct.ctl_table*, %struct.ctl_table** %sysctl_entry, align 8
  %1 = bitcast %struct.ctl_table_header* %call1 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %1) #20
  br i1 %call3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %proc_handler = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 5
  %2 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %tobool.not = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %2, null
  br i1 %tobool.not, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %poll = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %0, i64 0, i32 6
  %3 = load %struct.ctl_table_poll*, %struct.ctl_table_poll** %poll, align 8
  %tobool6.not = icmp eq %struct.ctl_table_poll* %3, null
  br i1 %tobool6.not, label %out, label %if.end8

if.end8:                                          ; preds = %if.end5
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %4 = load i8*, i8** %private_data, align 8
  %5 = ptrtoint i8* %4 to i64
  %wait10 = getelementptr inbounds %struct.ctl_table_poll, %struct.ctl_table_poll* %3, i64 0, i32 1
  call fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait10, %struct.poll_table_struct* noundef %wait) #20
  %6 = load %struct.ctl_table_poll*, %struct.ctl_table_poll** %poll, align 8
  %counter.i = getelementptr inbounds %struct.ctl_table_poll, %struct.ctl_table_poll* %6, i64 0, i32 0, i32 0
  %7 = load volatile i32, i32* %counter.i, align 4
  %conv = sext i32 %7 to i64
  %cmp.not = icmp eq i64 %5, %conv
  br i1 %cmp.not, label %out, label %if.then15

if.then15:                                        ; preds = %if.end8
  %call17 = call fastcc i8* @proc_sys_poll_event(%struct.ctl_table_poll* noundef %6) #20
  store i8* %call17, i8** %private_data, align 8
  br label %out

out:                                              ; preds = %if.end8, %if.then15, %if.end5, %if.end
  %ret.0 = phi i32 [ 75, %if.then15 ], [ 325, %if.end8 ], [ 325, %if.end5 ], [ 325, %if.end ]
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call1) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ 24, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef writeonly %filp) #0 {
entry:
  %call = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %inode) #20
  %0 = bitcast %struct.ctl_table_header* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #20
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %0) #20
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #20
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call1, i64 0, i32 5
  %1 = load %struct.ctl_table*, %struct.ctl_table** %sysctl_entry, align 8
  %poll = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %1, i64 0, i32 6
  %2 = load %struct.ctl_table_poll*, %struct.ctl_table_poll** %poll, align 8
  %tobool.not = icmp eq %struct.ctl_table_poll* %2, null
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc i8* @proc_sys_poll_event(%struct.ctl_table_poll* noundef nonnull %2) #20
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  store i8* %call6, i8** %private_data, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @proc_sys_call_handler(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter, i32 noundef %write) unnamed_addr #0 {
entry:
  %count = alloca i64, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #20
  %call1 = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %call) #20
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #20
  %sysctl_entry = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 5
  %1 = load %struct.ctl_table*, %struct.ctl_table** %sysctl_entry, align 8
  %2 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  %call3 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %iter) #20
  store i64 %call3, i64* %count, align 8
  %3 = bitcast %struct.ctl_table_header* %call1 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %3) #20
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %3) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool.not, i32 4, i32 2
  %call6 = call fastcc i32 @sysctl_perm(%struct.ctl_table_header* noundef %call1, %struct.ctl_table* noundef %1, i32 noundef %cond) #20
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.end
  %proc_handler = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %1, i64 0, i32 5
  %4 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %tobool10.not = icmp eq i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* %4, null
  br i1 %tobool10.not, label %out, label %if.end12

if.end12:                                         ; preds = %if.end9
  %cmp = icmp ugt i64 %call3, 4194303
  br i1 %cmp, label %out, label %if.end14

if.end14:                                         ; preds = %if.end12
  %add = add nuw nsw i64 %call3, 1
  %call15 = call fastcc i8* @kvzalloc(i64 noundef %add) #20
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %out, label %if.end18

if.end18:                                         ; preds = %if.end14
  br i1 %tobool.not, label %if.end27, label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.end18
  %call3.i.i = call i64 @_copy_from_iter(i8* noundef nonnull %call15, i64 noundef %call3, %struct.iov_iter* noundef %iter) #19
  %cmp.i = icmp eq i64 %call3.i.i, %call3
  br i1 %cmp.i, label %if.end23, label %copy_from_iter_full.exit, !prof !8

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @iov_iter_revert(%struct.iov_iter* noundef %iter, i64 noundef %call3.i.i) #19
  br label %out_free_buf

if.end23:                                         ; preds = %copy_from_iter.exit.i
  %arrayidx = getelementptr i8, i8* %call15, i64 %call3
  store i8 0, i8* %arrayidx, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end18, %if.end23
  %5 = load i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 1
  %call29 = call i32 %5(%struct.ctl_table* noundef %1, i32 noundef %write, i8* noundef nonnull %call15, i64* noundef nonnull %count, i64* noundef %ki_pos) #19
  %conv30 = sext i32 %call29 to i64
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.end33, label %out_free_buf

if.end33:                                         ; preds = %if.end27
  %6 = load i64, i64* %count, align 8
  br i1 %tobool.not, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end33
  %cmp11.i.i = icmp ugt i64 %6, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.else.i, !prof !7

check_copy_size.exit.i:                           ; preds = %if.then35
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !18
  br label %copy_to_iter.exit

if.else.i:                                        ; preds = %if.then35
  %call3.i = call i64 @_copy_to_iter(i8* noundef nonnull %call15, i64 noundef %6, %struct.iov_iter* noundef %iter) #19
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %7 = load i64, i64* %count, align 8
  %cmp37 = icmp ult i64 %retval.0.i, %7
  br i1 %cmp37, label %out_free_buf, label %if.end41

if.end41:                                         ; preds = %if.end33, %copy_to_iter.exit
  %8 = phi i64 [ %7, %copy_to_iter.exit ], [ %6, %if.end33 ]
  br label %out_free_buf

out_free_buf:                                     ; preds = %copy_from_iter_full.exit, %copy_to_iter.exit, %if.end27, %if.end41
  %error.0 = phi i64 [ %conv30, %if.end27 ], [ %8, %if.end41 ], [ -14, %copy_to_iter.exit ], [ -14, %copy_from_iter_full.exit ]
  call void @kvfree(i8* noundef nonnull %call15) #19
  br label %out

out:                                              ; preds = %if.end14, %if.end12, %if.end9, %if.end, %out_free_buf
  %error.1 = phi i64 [ -1, %if.end ], [ -12, %if.end12 ], [ %error.0, %out_free_buf ], [ -12, %if.end14 ], [ -22, %if.end9 ]
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call1) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i64 [ %call5, %if.then ], [ %error.1, %out ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #10 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #10 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysctl_perm(%struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table, i32 noundef %op) unnamed_addr #0 {
entry:
  %root1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 3
  %0 = load %struct.ctl_table_root*, %struct.ctl_table_root** %root1, align 8
  %permissions = getelementptr inbounds %struct.ctl_table_root, %struct.ctl_table_root* %0, i64 0, i32 3
  %1 = load i32 (%struct.ctl_table_header*, %struct.ctl_table*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)** %permissions, align 8
  %tobool.not = icmp eq i32 (%struct.ctl_table_header*, %struct.ctl_table*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) #19
  br label %if.end

if.else:                                          ; preds = %entry
  %mode3 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 3
  %2 = load i16, i16* %mode3, align 4
  %conv = zext i16 %2 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mode.0 = phi i32 [ %call, %if.then ], [ %conv, %if.else ]
  %call4 = call fastcc i32 @test_perm(i32 noundef %mode.0, i32 noundef %op) #20
  ret i32 %call4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kvmalloc(i64 noundef %size) #20
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_perm(i32 noundef %mode, i32 noundef %op) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !19
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call3 = call fastcc i1 @uid_eq(i64 %coerce.val.ii) #20
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shr = ashr i32 %mode, 6
  br label %if.end11

if.else:                                          ; preds = %entry
  %call8 = call i32 @in_egroup_p(i64 0) #19
  %tobool.not = icmp eq i32 %call8, 0
  %shr10 = ashr i32 %mode, 3
  %spec.select = select i1 %tobool.not, i32 %mode, i32 %shr10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then
  %mode.addr.0 = phi i32 [ %shr, %if.then ], [ %spec.select, %if.else ]
  %neg = xor i32 %mode.addr.0, -1
  %and = and i32 %op, 7
  %and12 = and i32 %and, %neg
  %cmp = icmp eq i32 %and12, 0
  %. = select i1 %cmp, i32 0, i32 -13
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #20
  %call7 = call fastcc i32 @__kuid_val(i64 0) #20
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_egroup_p(i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 3520, i32 noundef -1) #19
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_from_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_to_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i8* @proc_sys_poll_event(%struct.ctl_table_poll* noundef %poll) unnamed_addr #17 {
entry:
  %counter.i = getelementptr inbounds %struct.ctl_table_poll, %struct.ctl_table_poll* %poll, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @proc_sys_revalidate(%struct.dentry* nocapture noundef readonly %dentry, i32 noundef %flags) #10 {
entry:
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #20
  %call1 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #20
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call1, i64 0, i32 4
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctl, align 8
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 1
  %1 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool2.not = icmp eq %struct.completion* %1, null
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ -10, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_compare(%struct.dentry* noundef %dentry, i32 noundef %len, i8* noundef %str, %struct.qstr* nocapture noundef readonly %name) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode_rcu(%struct.dentry* noundef %dentry) #20
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.qstr* %name to %struct.anon.3*
  %len1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %0, i64 0, i32 1
  %1 = load i32, i32* %len1, align 4
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %name4 = getelementptr inbounds %struct.qstr, %struct.qstr* %name, i64 0, i32 1
  %2 = load i8*, i8** %name4, align 8
  %conv = zext i32 %len to i64
  %call5 = call i32 @memcmp(i8* noundef %2, i8* noundef %str, i64 noundef %conv) #19
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #20
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call9, i64 0, i32 4
  %3 = load volatile %struct.ctl_table_header*, %struct.ctl_table_header** %sysctl, align 8
  %tobool14.not = icmp eq %struct.ctl_table_header* %3, null
  br i1 %tobool14.not, label %cleanup, label %lor.rhs

lor.rhs:                                          ; preds = %if.end8
  %call15 = call fastcc i32 @sysctl_is_seen(%struct.ctl_table_header* noundef nonnull %3) #20
  %tobool16.not = icmp eq i32 %call15, 0
  %phi.cast = zext i1 %tobool16.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.rhs, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end3 ], [ 1, %if.end8 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @proc_sys_delete(%struct.dentry* nocapture noundef readonly %dentry) #10 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #20
  %call1 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #20
  %sysctl = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call1, i64 0, i32 4
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctl, align 8
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 1
  %1 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool = icmp ne %struct.completion* %1, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #10 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.inode* @d_inode_rcu(%struct.dentry* noundef %dentry) unnamed_addr #17 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load volatile %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysctl_is_seen(%struct.ctl_table_header* nocapture noundef readonly %p) unnamed_addr #0 {
entry:
  %set1 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 4
  %0 = load %struct.ctl_table_set*, %struct.ctl_table_set** %set1, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %unregistering = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %p, i64 0, i32 1
  %1 = load %struct.completion*, %struct.completion** %unregistering, align 8
  %tobool.not = icmp eq %struct.completion* %1, null
  br i1 %tobool.not, label %if.else, label %if.end6

if.else:                                          ; preds = %entry
  %is_seen = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %0, i64 0, i32 0
  %2 = load i32 (%struct.ctl_table_set*)*, i32 (%struct.ctl_table_set*)** %is_seen, align 8
  %tobool2.not = icmp eq i32 (%struct.ctl_table_set*)* %2, null
  br i1 %tobool2.not, label %if.end6, label %if.else4

if.else4:                                         ; preds = %if.else
  %call = call i32 %2(%struct.ctl_table_set* noundef %0) #19
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry, %if.else4
  %res.0 = phi i32 [ %call, %if.else4 ], [ 0, %entry ], [ 1, %if.else ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_sys_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %h = alloca %struct.ctl_table_header*, align 8
  %entry2 = alloca %struct.ctl_table*, align 8
  %pos = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #20
  %call1 = call fastcc %struct.ctl_table_header* @grab_header(%struct.inode* noundef %call) #20
  %0 = bitcast %struct.ctl_table_header** %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #22
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %h, align 8
  %1 = bitcast %struct.ctl_table** %entry2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #22
  store %struct.ctl_table* null, %struct.ctl_table** %entry2, align 8, !annotation !15
  %2 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #22
  %3 = bitcast %struct.ctl_table_header* %call1 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %3) #20
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %3) #20
  %conv = trunc i64 %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #20
  br i1 %call5, label %if.end7, label %out

if.end7:                                          ; preds = %if.end
  %4 = bitcast %struct.ctl_table_header* %call1 to %struct.ctl_dir*
  store i64 2, i64* %pos, align 8
  call fastcc void @first_entry(%struct.ctl_dir* noundef %4, %struct.ctl_table_header** noundef nonnull %h, %struct.ctl_table** noundef nonnull %entry2) #20
  %5 = load %struct.ctl_table_header*, %struct.ctl_table_header** %h, align 8
  %tobool.not26 = icmp eq %struct.ctl_table_header* %5, null
  br i1 %tobool.not26, label %out, label %for.body

for.body:                                         ; preds = %if.end7, %for.inc
  %6 = phi %struct.ctl_table_header* [ %8, %for.inc ], [ %5, %if.end7 ]
  %7 = load %struct.ctl_table*, %struct.ctl_table** %entry2, align 8
  %call8 = call fastcc i32 @scan(%struct.ctl_table_header* noundef nonnull %6, %struct.ctl_table* noundef %7, i64* noundef nonnull %pos, %struct.file* noundef %file, %struct.dir_context* noundef %ctx) #20
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef nonnull %6) #20
  br label %out

for.inc:                                          ; preds = %for.body
  call fastcc void @next_entry(%struct.ctl_table_header** noundef nonnull %h, %struct.ctl_table** noundef nonnull %entry2) #20
  %8 = load %struct.ctl_table_header*, %struct.ctl_table_header** %h, align 8
  %tobool.not = icmp eq %struct.ctl_table_header* %8, null
  br i1 %tobool.not, label %out, label %for.body

out:                                              ; preds = %for.inc, %if.end7, %if.then10, %if.end
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %call1) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #20
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #20
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @first_entry(%struct.ctl_dir* noundef %dir, %struct.ctl_table_header** nocapture noundef writeonly %phead, %struct.ctl_table** nocapture noundef writeonly %pentry) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %root = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %dir, i64 0, i32 1
  %call = call %struct.rb_node* @rb_first(%struct.rb_root* noundef %root) #19
  %call2 = call fastcc %struct.ctl_node* @first_usable_entry(%struct.rb_node* noundef %call) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not = icmp eq %struct.ctl_node* %call2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %header = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %call2, i64 0, i32 1
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %header, align 8
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 0, i32 0, i32 0
  %1 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %node = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 6
  %2 = load %struct.ctl_node*, %struct.ctl_node** %node, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ctl_node* %call2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ctl_node* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  %arrayidx = getelementptr %struct.ctl_table, %struct.ctl_table* %1, i64 %sub.ptr.div
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %head.0 = phi %struct.ctl_table_header* [ %0, %if.then ], [ null, %entry ]
  %entry1.0 = phi %struct.ctl_table* [ %arrayidx, %if.then ], [ null, %entry ]
  store %struct.ctl_table_header* %head.0, %struct.ctl_table_header** %phead, align 8
  store %struct.ctl_table* %entry1.0, %struct.ctl_table** %pentry, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @scan(%struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table, i64* nocapture noundef %pos, %struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %pos1 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos1, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 3
  %2 = load i16, i16* %mode, align 4
  %3 = and i16 %2, -4096
  %cmp2 = icmp eq i16 %3, -24576
  br i1 %cmp2, label %if.then6, label %if.end9, !prof !7

if.then6:                                         ; preds = %if.end
  %call = call fastcc i1 @proc_sys_link_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) #20
  br i1 %call, label %if.then11, label %cleanup

if.end9:                                          ; preds = %if.end
  %call7 = call fastcc i1 @proc_sys_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) #20
  br i1 %call7, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then6, %if.end9
  %4 = load i64, i64* %pos, align 8
  store i64 %4, i64* %pos1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then11, %if.then6, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then6 ], [ 1, %if.then11 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @next_entry(%struct.ctl_table_header** nocapture noundef %phead, %struct.ctl_table** nocapture noundef %pentry) unnamed_addr #0 {
entry:
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %phead, align 8
  %1 = load %struct.ctl_table*, %struct.ctl_table** %pentry, align 8
  %node = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 6
  %2 = load %struct.ctl_node*, %struct.ctl_node** %node, align 8
  %ctl_table = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 0, i32 0, i32 0
  %3 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ctl_table* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ctl_table* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 6
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  call fastcc void @unuse_table(%struct.ctl_table_header* noundef %0) #20
  %node2 = getelementptr %struct.ctl_node, %struct.ctl_node* %2, i64 %sub.ptr.div, i32 0
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node2) #19
  %call3 = call fastcc %struct.ctl_node* @first_usable_entry(%struct.rb_node* noundef %call) #20
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @sysctl_lock, i64 0, i32 0, i32 0)) #19
  %tobool.not = icmp eq %struct.ctl_node* %call3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %header = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %call3, i64 0, i32 1
  %4 = load %struct.ctl_table_header*, %struct.ctl_table_header** %header, align 8
  %ctl_table4 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %4, i64 0, i32 0, i32 0, i32 0
  %5 = load %struct.ctl_table*, %struct.ctl_table** %ctl_table4, align 8
  %node5 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %4, i64 0, i32 6
  %6 = load %struct.ctl_node*, %struct.ctl_node** %node5, align 8
  %sub.ptr.lhs.cast6 = ptrtoint %struct.ctl_node* %call3 to i64
  %sub.ptr.rhs.cast7 = ptrtoint %struct.ctl_node* %6 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %sub.ptr.div9 = ashr exact i64 %sub.ptr.sub8, 5
  %arrayidx10 = getelementptr %struct.ctl_table, %struct.ctl_table* %5, i64 %sub.ptr.div9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %head.0 = phi %struct.ctl_table_header* [ %4, %if.then ], [ null, %entry ]
  %entry1.0 = phi %struct.ctl_table* [ %arrayidx10, %if.then ], [ %1, %entry ]
  store %struct.ctl_table_header* %head.0, %struct.ctl_table_header** %phead, align 8
  store %struct.ctl_table* %entry1.0, %struct.ctl_table** %pentry, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #19
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #20
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #19
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.4* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret i64 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ctl_node* @first_usable_entry(%struct.rb_node* noundef %node) unnamed_addr #0 {
entry:
  %tobool.not9 = icmp eq %struct.rb_node* %node, null
  br i1 %tobool.not9, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %node.addr.010 = phi %struct.rb_node* [ %call2, %for.inc ], [ %node, %entry ]
  %header = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node.addr.010, i64 1
  %0 = bitcast %struct.rb_node* %header to %struct.ctl_table_header**
  %1 = load %struct.ctl_table_header*, %struct.ctl_table_header** %0, align 8
  %call = call fastcc i32 @use_table(%struct.ctl_table_header* noundef %1) #20
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = bitcast %struct.rb_node* %node.addr.010 to %struct.ctl_node*
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call2 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef nonnull %node.addr.010) #19
  %tobool.not = icmp eq %struct.rb_node* %call2, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi %struct.ctl_node* [ %2, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.ctl_node* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_first(%struct.rb_root* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @proc_sys_link_fill_cache(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) unnamed_addr #0 {
entry:
  %head.addr = alloca %struct.ctl_table_header*, align 8
  %table.addr = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table* %table, %struct.ctl_table** %table.addr, align 8
  %call = call fastcc %struct.ctl_table_header* @sysctl_head_grab(%struct.ctl_table_header* noundef %head) #20
  store %struct.ctl_table_header* %call, %struct.ctl_table_header** %head.addr, align 8
  %0 = bitcast %struct.ctl_table_header* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #20
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @sysctl_follow_link(%struct.ctl_table_header** noundef nonnull %head.addr, %struct.ctl_table** noundef nonnull %table.addr) #20
  %tobool.not = icmp eq i32 %call2, 0
  %1 = load %struct.ctl_table_header*, %struct.ctl_table_header** %head.addr, align 8
  br i1 %tobool.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %2 = load %struct.ctl_table*, %struct.ctl_table** %table.addr, align 8
  %call5 = call fastcc i1 @proc_sys_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.ctl_table_header* noundef %1, %struct.ctl_table* noundef %2) #20
  br label %out

out:                                              ; preds = %if.end, %if.end4
  %ret.0.off0 = phi i1 [ %call5, %if.end4 ], [ true, %if.end ]
  call fastcc void @sysctl_head_finish(%struct.ctl_table_header* noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i1 [ %ret.0.off0, %out ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @proc_sys_fill_cache(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) unnamed_addr #0 {
entry:
  %qname = alloca %struct.qstr, align 8
  %wq = alloca %struct.wait_queue_head, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %1 = bitcast %struct.qstr* %qname to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #22
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %name = getelementptr inbounds %struct.qstr, %struct.qstr* %qname, i64 0, i32 1
  store i8* %2, i8** %name, align 8
  %call = call i64 @strlen(i8* noundef %2) #19
  %conv = trunc i64 %call to i32
  %3 = bitcast %struct.qstr* %qname to %struct.anon.3*
  %len = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3, i64 0, i32 1
  store i32 %conv, i32* %len, align 4
  %4 = bitcast %struct.dentry* %0 to i8*
  %call4 = call i32 @full_name_hash(i8* noundef %4, i8* noundef %2, i32 noundef %conv) #25
  %hash = bitcast %struct.qstr* %qname to i32*
  store i32 %call4, i32* %hash, align 8
  %call5 = call %struct.dentry* @d_lookup(%struct.dentry* noundef %0, %struct.qstr* noundef nonnull %qname) #19
  %tobool.not = icmp eq %struct.dentry* %call5, null
  br i1 %tobool.not, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.wait_queue_head* %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #22
  %head6 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head6, i64 0, i32 0
  %6 = bitcast %struct.wait_queue_head* %wq to i64*
  store i64 0, i64* %6, align 8
  store %struct.list_head* %head6, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1, i32 1
  store %struct.list_head* %head6, %struct.list_head** %prev, align 8
  %call9 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %0, %struct.qstr* noundef nonnull %qname, %struct.wait_queue_head* noundef nonnull %wq) #19
  %7 = bitcast %struct.dentry* %call9 to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %7) #20
  br i1 %call10, label %cleanup30.thread, label %if.end

if.end:                                           ; preds = %if.then
  %call12 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %call9) #20
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup30, label %if.then14

if.then14:                                        ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %8 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call15 = call fastcc %struct.inode* @proc_sys_make_inode(%struct.super_block* noundef %8, %struct.ctl_table_header* noundef %head, %struct.ctl_table* noundef %table) #20
  %9 = bitcast %struct.inode* %call15 to i8*
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %9) #20
  br i1 %call16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  call fastcc void @d_lookup_done(%struct.dentry* noundef %call9) #20
  call void @dput(%struct.dentry* noundef %call9) #19
  br label %cleanup30.thread

if.end18:                                         ; preds = %if.then14
  call void @d_set_d_op(%struct.dentry* noundef %call9, %struct.dentry_operations* noundef nonnull @proc_sys_dentry_operations) #19
  %call19 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef %call15, %struct.dentry* noundef %call9) #19
  call fastcc void @d_lookup_done(%struct.dentry* noundef %call9) #20
  %tobool20.not = icmp eq %struct.dentry* %call19, null
  br i1 %tobool20.not, label %cleanup30, label %if.then24, !prof !8

if.then24:                                        ; preds = %if.end18
  %10 = bitcast %struct.dentry* %call19 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef nonnull %10) #20
  call void @dput(%struct.dentry* noundef %call9) #19
  br i1 %call25, label %cleanup30.thread, label %cleanup30

cleanup30.thread:                                 ; preds = %if.then24, %if.then, %if.then17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #22
  br label %cleanup39

cleanup30:                                        ; preds = %if.then24, %if.end18, %if.end
  %child.3 = phi %struct.dentry* [ %call9, %if.end ], [ %call9, %if.end18 ], [ %call19, %if.then24 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #22
  br label %if.end33

if.end33:                                         ; preds = %cleanup30, %entry
  %child.4 = phi %struct.dentry* [ %call5, %entry ], [ %child.3, %cleanup30 ]
  %call34 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %child.4) #20
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call34, i64 0, i32 8
  %11 = load i64, i64* %i_ino, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call34, i64 0, i32 0
  %12 = load i16, i16* %i_mode, align 8
  %13 = lshr i16 %12, 12
  %14 = zext i16 %13 to i32
  call void @dput(%struct.dentry* noundef %child.4) #19
  %15 = load i8*, i8** %name, align 8
  %16 = load i32, i32* %len, align 4
  %call38 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %15, i32 noundef %16, i64 noundef %11, i32 noundef %14) #20
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup30.thread, %if.end33
  %retval.3 = phi i1 [ %call38, %if.end33 ], [ false, %cleanup30.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #22
  ret i1 %retval.3
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_lookup(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef, %struct.qstr* noundef, %struct.wait_queue_head* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_in_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #10 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 268435456
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lookup_done(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.4* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @__d_lookup_done(%struct.dentry* noundef %dentry) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %1, i64 noundef %ino, i32 noundef %type) #19
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(%struct.dentry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @sysctl_find_alias(i8* noundef %param) unnamed_addr #0 {
entry:
  %call = call i32 @strcmp(i8* noundef nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i8* noundef %param) #19
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %alias.08.lcssa = phi %struct.sysctl_alias* [ getelementptr inbounds ([6 x %struct.sysctl_alias], [6 x %struct.sysctl_alias]* @sysctl_aliases, i64 0, i64 0), %entry ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], [6 x %struct.sysctl_alias]* @sysctl_aliases, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], [6 x %struct.sysctl_alias]* @sysctl_aliases, i64 0, i64 2), %for.inc.1 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], [6 x %struct.sysctl_alias]* @sysctl_aliases, i64 0, i64 3), %for.inc.2 ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], [6 x %struct.sysctl_alias]* @sysctl_aliases, i64 0, i64 4), %for.inc.3 ]
  %sysctl_param = getelementptr inbounds %struct.sysctl_alias, %struct.sysctl_alias* %alias.08.lcssa, i64 0, i32 1
  %0 = load i8*, i8** %sysctl_param, align 8
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = call i32 @strcmp(i8* noundef nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %param) #19
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = call i32 @strcmp(i8* noundef nonnull getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i8* noundef %param) #19
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = call i32 @strcmp(i8* noundef nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i8* noundef %param) #19
  %cmp2.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = call i32 @strcmp(i8* noundef nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef %param) #19
  %cmp2.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.4, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %for.inc.3 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_fs_type(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strreplace(i8* noundef, i8 noundef, i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @file_open_root_mnt(%struct.vfsmount* noundef %mnt, i8* noundef %name) unnamed_addr #0 {
entry:
  %.compoundliteral = alloca %struct.path, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %.compoundliteral, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %.compoundliteral, i64 0, i32 1
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %0 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  store %struct.dentry* %0, %struct.dentry** %dentry, align 8
  %call = call %struct.file* @file_open_root(%struct.path* noundef nonnull %.compoundliteral, i8* noundef %name, i32 noundef 1, i16 noundef 0) #19
  ret %struct.file* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @kernel_write(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(%struct.file* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @file_open_root(%struct.path* noundef, i8* noundef, i32 noundef, i16 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nobuiltin "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nounwind }
attributes #23 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #24 = { nounwind readnone }
attributes #25 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153525513}
!10 = !{i64 2147819645, i64 2147820161, i64 2147820191, i64 2147820218, i64 2147820252, i64 2147820282}
!11 = !{i64 2149502597}
!12 = !{i64 2147915507, i64 2147915540, i64 2147915593, i64 2147915652, i64 2147915686, i64 2147915741, i64 2147915770, i64 2147915790}
!13 = !{i64 2149509878}
!14 = !{i64 2149456738}
!15 = !{!"auto-init"}
!16 = !{i64 2153496972}
!17 = !{i64 2150072556}
!18 = !{i64 2148966311}
!19 = !{i64 1451939}
