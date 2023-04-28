; ModuleID = 'kernel/time/posix-timers.c'
source_filename = "kernel/time/posix-timers.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_posix_timers__372_280_init_posix_timers6:\09\09\09"
module asm ".long\09init_posix_timers - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kmem_cache = type opaque
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.k_clock = type { i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)*, i64 (i32)*, i32 (i32, %struct.__kernel_timex*)*, i32 (%struct.k_itimer*)*, i32 (i32, i32, %struct.timespec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*)*, i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)*, i32 (%struct.k_itimer*)*, void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*)* }
%struct.timespec64 = type { i64, i64 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, %struct.k_clock*, i32, i32, i32, i64, i64, i32, i32, i64, %struct.signal_struct*, %union.anon.68, %struct.sigqueue*, %union.anon.69, %struct.callback_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.66, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.21, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.75, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.33, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.24, i8* }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [48 x i8] }
%struct.anon.30 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.28, i32 }
%union.anon.28 = type { %struct.kuid_t }
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
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.37 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.41 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.41 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.75 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.atomic_t }
%struct.file = type { %union.anon.23, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { i32*, i32, i32, i32, i64, i32* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.net = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.63, %union.anon.64, i32 }
%struct.request_queue = type opaque
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.65, i32, [12 x i8] }
%union.anon.65 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.67, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.67 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.task_io_accounting = type {}
%struct.rlimit = type { i64, i64 }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.68 = type { %struct.pid* }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%union.anon.69 = type { %struct.anon.71 }
%struct.anon.71 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, i32 (%struct.alarm*, i64)*, i32, i32, i8* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.pt_regs = type { %union.anon.77, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.77 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.80 }
%union.sigval = type { i8* }
%union.anon.80 = type { %struct.anon.81, [32 x i8] }
%struct.anon.81 = type { void (i64)*, i8* }
%struct.__kernel_itimerspec = type { %struct.__kernel_timespec, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.anon.60 = type { i32, i32, %union.anon.61, i64 }
%union.anon.61 = type { %struct.__kernel_timespec* }
%struct.timezone = type { i32, i32 }

@__UNIQUE_ID___addressable_init_posix_timers373 = internal global i8* bitcast (i32 ()* @init_posix_timers to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [19 x i8] c"posix_timers_cache\00", align 1
@posix_timers_cache = internal unnamed_addr global %struct.kmem_cache* null, align 8
@hash_lock = internal global %struct.spinlock zeroinitializer, align 4
@posix_timers_hashtable = internal global [512 x %struct.hlist_head] zeroinitializer, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@clock_posix_dynamic = external dso_local constant %struct.k_clock, align 8
@clock_posix_cpu = external dso_local constant %struct.k_clock, align 8
@posix_clocks = internal unnamed_addr constant [12 x %struct.k_clock*] [%struct.k_clock* @clock_realtime, %struct.k_clock* @clock_monotonic, %struct.k_clock* @clock_process, %struct.k_clock* @clock_thread, %struct.k_clock* @clock_monotonic_raw, %struct.k_clock* @clock_realtime_coarse, %struct.k_clock* @clock_monotonic_coarse, %struct.k_clock* @clock_boottime, %struct.k_clock* @alarm_clock, %struct.k_clock* @alarm_clock, %struct.k_clock* null, %struct.k_clock* @clock_tai], align 8
@clock_realtime = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_hrtimer_res, i32 (i32, %struct.timespec64*)* @posix_clock_realtime_set, i32 (i32, %struct.timespec64*)* @posix_get_realtime_timespec, i64 (i32)* @posix_get_realtime_ktime, i32 (i32, %struct.__kernel_timex*)* @posix_clock_realtime_adj, i32 (%struct.k_itimer*)* @common_timer_create, i32 (i32, i32, %struct.timespec64*)* @common_nsleep, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @common_timer_set, i32 (%struct.k_itimer*)* @common_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @common_timer_get, void (%struct.k_itimer*)* @common_hrtimer_rearm, i64 (%struct.k_itimer*, i64)* @common_hrtimer_forward, i64 (%struct.k_itimer*, i64)* @common_hrtimer_remaining, i32 (%struct.k_itimer*)* @common_hrtimer_try_to_cancel, void (%struct.k_itimer*, i64, i1, i1)* @common_hrtimer_arm, void (%struct.k_itimer*)* @common_timer_wait_running }, align 8
@clock_monotonic = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_hrtimer_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_monotonic_timespec, i64 (i32)* @posix_get_monotonic_ktime, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @common_timer_create, i32 (i32, i32, %struct.timespec64*)* @common_nsleep_timens, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @common_timer_set, i32 (%struct.k_itimer*)* @common_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @common_timer_get, void (%struct.k_itimer*)* @common_hrtimer_rearm, i64 (%struct.k_itimer*, i64)* @common_hrtimer_forward, i64 (%struct.k_itimer*, i64)* @common_hrtimer_remaining, i32 (%struct.k_itimer*)* @common_hrtimer_try_to_cancel, void (%struct.k_itimer*, i64, i1, i1)* @common_hrtimer_arm, void (%struct.k_itimer*)* @common_timer_wait_running }, align 8
@clock_process = external dso_local constant %struct.k_clock, align 8
@clock_thread = external dso_local constant %struct.k_clock, align 8
@clock_monotonic_raw = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_hrtimer_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_monotonic_raw, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* null, i32 (i32, i32, %struct.timespec64*)* null, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@clock_realtime_coarse = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_coarse_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_realtime_coarse, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* null, i32 (i32, i32, %struct.timespec64*)* null, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@clock_monotonic_coarse = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_coarse_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_monotonic_coarse, i64 (i32)* null, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* null, i32 (i32, i32, %struct.timespec64*)* null, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, %struct.itimerspec64*)* null, void (%struct.k_itimer*)* null, i64 (%struct.k_itimer*, i64)* null, i64 (%struct.k_itimer*, i64)* null, i32 (%struct.k_itimer*)* null, void (%struct.k_itimer*, i64, i1, i1)* null, void (%struct.k_itimer*)* null }, align 8
@clock_boottime = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_hrtimer_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_boottime_timespec, i64 (i32)* @posix_get_boottime_ktime, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @common_timer_create, i32 (i32, i32, %struct.timespec64*)* @common_nsleep_timens, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @common_timer_set, i32 (%struct.k_itimer*)* @common_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @common_timer_get, void (%struct.k_itimer*)* @common_hrtimer_rearm, i64 (%struct.k_itimer*, i64)* @common_hrtimer_forward, i64 (%struct.k_itimer*, i64)* @common_hrtimer_remaining, i32 (%struct.k_itimer*)* @common_hrtimer_try_to_cancel, void (%struct.k_itimer*, i64, i1, i1)* @common_hrtimer_arm, void (%struct.k_itimer*)* @common_timer_wait_running }, align 8
@alarm_clock = external dso_local constant %struct.k_clock, align 8
@clock_tai = internal constant %struct.k_clock { i32 (i32, %struct.timespec64*)* @posix_get_hrtimer_res, i32 (i32, %struct.timespec64*)* null, i32 (i32, %struct.timespec64*)* @posix_get_tai_timespec, i64 (i32)* @posix_get_tai_ktime, i32 (i32, %struct.__kernel_timex*)* null, i32 (%struct.k_itimer*)* @common_timer_create, i32 (i32, i32, %struct.timespec64*)* @common_nsleep, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* @common_timer_set, i32 (%struct.k_itimer*)* @common_timer_del, void (%struct.k_itimer*, %struct.itimerspec64*)* @common_timer_get, void (%struct.k_itimer*)* @common_hrtimer_rearm, i64 (%struct.k_itimer*, i64)* @common_hrtimer_forward, i64 (%struct.k_itimer*, i64)* @common_hrtimer_remaining, i32 (%struct.k_itimer*)* @common_hrtimer_try_to_cancel, void (%struct.k_itimer*, i64, i1, i1)* @common_hrtimer_arm, void (%struct.k_itimer*)* @common_timer_wait_running }, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_posix_timers373 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_posix_timers() #0 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #10
  store %struct.kmem_cache* %call, %struct.kmem_cache** @posix_timers_cache, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @posixtimer_rearm(%struct.kernel_siginfo* nocapture noundef %info) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !7
  %_tid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  %1 = load i32, i32* %_tid, align 8
  %call = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %1, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.k_itimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 11
  %2 = load i64, i64* %it_interval, align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 9
  %3 = load i32, i32* %it_requeue_pending, align 8
  %_sys_private = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 3
  %4 = bitcast i64* %_sys_private to i32*
  %5 = load i32, i32* %4, align 8
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %if.then4, label %if.end13

if.then4:                                         ; preds = %land.lhs.true
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 3
  %6 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %timer_rearm = getelementptr inbounds %struct.k_clock, %struct.k_clock* %6, i64 0, i32 10
  %7 = load void (%struct.k_itimer*)*, void (%struct.k_itimer*)** %timer_rearm, align 8
  call void %7(%struct.k_itimer* noundef nonnull %call) #10
  %it_active = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 6
  store i32 1, i32* %it_active, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 7
  %8 = load i64, i64* %it_overrun, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 8
  store i64 %8, i64* %it_overrun_last, align 8
  store i64 -1, i64* %it_overrun, align 8
  %9 = load i32, i32* %it_requeue_pending, align 8
  %inc = add i32 %9, 1
  store i32 %inc, i32* %it_requeue_pending, align 8
  %10 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %call9 = call fastcc i32 @timer_overrun_to_int(%struct.k_itimer* noundef nonnull %call, i32 noundef %11) #12
  store i32 %call9, i32* %10, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %land.lhs.true, %if.end
  %12 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef nonnull %call, i64 noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.k_itimer* @__lock_timer(i32 noundef %timer_id, i64* nocapture noundef %flags) unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %timer_id, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #10
  %call = call fastcc %struct.k_itimer* @posix_timer_by_id(i32 noundef %timer_id) #12
  %tobool.not = icmp eq %struct.k_itimer* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %do.body3

do.body3:                                         ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 2, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #12
  store i64 %call7, i64* %flags, align 8
  %it_signal = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 12
  %0 = load %struct.signal_struct*, %struct.signal_struct** %it_signal, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cmp11 = icmp eq %struct.signal_struct* %0, %3
  br i1 %cmp11, label %cleanup.sink.split, label %if.end14

if.end14:                                         ; preds = %do.body3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end14, %do.body3
  %retval.0.ph = phi %struct.k_itimer* [ %call, %do.body3 ], [ null, %if.end14 ], [ null, %if.end ]
  call fastcc void @rcu_read_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.k_itimer* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.k_itimer* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @timer_overrun_to_int(%struct.k_itimer* nocapture noundef readonly %timr, i32 noundef %baseval) unnamed_addr #3 {
entry:
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 8
  %0 = load i64, i64* %it_overrun_last, align 8
  %conv = sext i32 %baseval to i64
  %add = add i64 %0, %conv
  %1 = icmp slt i64 %add, 2147483647
  %cond5 = select i1 %1, i64 %add, i64 2147483647
  %2 = trunc i64 %cond5 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_timer(%struct.k_itimer* noundef %timr, i64 noundef %flags) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @posix_timer_event(%struct.k_itimer* nocapture noundef readonly %timr, i32 noundef %si_private) local_unnamed_addr #1 {
entry:
  %sigq = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 14
  %0 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  %_sys_private = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %0, i64 0, i32 2, i32 0, i32 3, i32 0, i32 3
  %1 = bitcast i64* %_sys_private to i32*
  store i32 %si_private, i32* %1, align 8
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 10
  %2 = load i32, i32* %it_sigev_notify, align 4
  %and = lshr i32 %2, 2
  %and.lobit = and i32 %and, 1
  %3 = xor i32 %and.lobit, 1
  %4 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  %it_pid = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 13, i32 0
  %5 = load %struct.pid*, %struct.pid** %it_pid, align 8
  %call = call i32 @send_sigqueue(%struct.sigqueue* noundef %4, %struct.pid* noundef %5, i32 noundef %3) #10
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sigqueue(%struct.sigqueue* noundef, %struct.pid* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timer_create(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_timer_create(i64 noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timer_create(i64 noundef %which_clock, i64 noundef %timer_event_spec, i64 noundef %created_timer_id) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %0 = inttoptr i64 %timer_event_spec to %struct.sigevent*
  %1 = inttoptr i64 %created_timer_id to i32*
  %call = call fastcc i64 @__do_sys_timer_create(i32 noundef %conv, %struct.sigevent* noundef %0, i32* noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @common_timer_get(%struct.k_itimer* noundef %timr, %struct.itimerspec64* nocapture noundef writeonly %cur_setting) #1 {
entry:
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 3
  %0 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 10
  %1 = load i32, i32* %it_sigev_notify, align 4
  %cmp = icmp eq i32 %1, 1
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  %2 = load i64, i64* %it_interval, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

if.else:                                          ; preds = %entry
  %it_active = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 6
  %3 = load i32, i32* %it_active, align 8
  %tobool2.not = icmp ne i32 %3, 0
  %brmerge = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end7.thread, label %cleanup

if.end7.thread:                                   ; preds = %if.else
  %clock_get_ktime59 = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 3
  %4 = load i64 (i32)*, i64 (i32)** %clock_get_ktime59, align 8
  %it_clock60 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 4
  %5 = load i32, i32* %it_clock60, align 8
  %call861 = call i64 %4(i32 noundef %5) #10
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %2) #10
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %cur_setting, i64 0, i32 0, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx34 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %cur_setting, i64 0, i32 0, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx34, align 8
  %clock_get_ktime = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 3
  %6 = load i64 (i32)*, i64 (i32)** %clock_get_ktime, align 8
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 4
  %7 = load i32, i32* %it_clock, align 8
  %call8 = call i64 %6(i32 noundef %7) #10
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 9
  %8 = load i32, i32* %it_requeue_pending, align 8
  %and = and i32 %8, 1
  %tobool10.not = icmp ne i32 %and, 0
  %brmerge58 = select i1 %tobool10.not, i1 true, i1 %cmp
  br i1 %brmerge58, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %timer_forward = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 11
  %9 = load i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)** %timer_forward, align 8
  %call13 = call i64 %9(%struct.k_itimer* noundef %timr, i64 noundef %call8) #10
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 7
  %10 = load i64, i64* %it_overrun, align 8
  %add = add i64 %10, %call13
  store i64 %add, i64* %it_overrun, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end7.thread, %land.lhs.true, %if.then12
  %call862 = phi i64 [ %call861, %if.end7.thread ], [ %call8, %land.lhs.true ], [ %call8, %if.then12 ]
  %timer_remaining = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 12
  %11 = load i64 (%struct.k_itimer*, i64)*, i64 (%struct.k_itimer*, i64)** %timer_remaining, align 8
  %call15 = call i64 %11(%struct.k_itimer* noundef %timr, i64 noundef %call862) #10
  %cmp16 = icmp slt i64 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end14
  br i1 %cmp, label %cleanup, label %cleanup.sink.split

if.else21:                                        ; preds = %if.end14
  %call24 = call [2 x i64] @ns_to_timespec64(i64 noundef %call15) #10
  %call24.fca.0.extract = extractvalue [2 x i64] %call24, 0
  %call24.fca.1.extract = extractvalue [2 x i64] %call24, 1
  %tmp23.sroa.0.0..sroa_idx = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %cur_setting, i64 0, i32 1, i32 0
  store i64 %call24.fca.0.extract, i64* %tmp23.sroa.0.0..sroa_idx, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.else21
  %call24.fca.1.extract.sink = phi i64 [ %call24.fca.1.extract, %if.else21 ], [ 1, %if.then17 ]
  %tmp23.sroa.4.0..sroa_idx31 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %cur_setting, i64 0, i32 1, i32 1
  store i64 %call24.fca.1.extract.sink, i64* %tmp23.sroa.4.0..sroa_idx31, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then17, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timer_gettime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_timer_gettime(i64 noundef %0, i64 noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timer_gettime(i64 noundef %timer_id, i64 noundef %setting) unnamed_addr #1 {
entry:
  %conv = trunc i64 %timer_id to i32
  %0 = inttoptr i64 %setting to %struct.__kernel_itimerspec*
  %call = call fastcc i64 @__do_sys_timer_gettime(i32 noundef %conv, %struct.__kernel_itimerspec* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timer_getoverrun(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_timer_getoverrun(i64 noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timer_getoverrun(i64 noundef %timer_id) unnamed_addr #1 {
entry:
  %conv = trunc i64 %timer_id to i32
  %call = call fastcc i64 @__do_sys_timer_getoverrun(i32 noundef %conv) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @common_timer_set(%struct.k_itimer* noundef %timr, i32 noundef %flags, %struct.itimerspec64* nocapture noundef readonly %new_setting, %struct.itimerspec64* noundef writeonly %old_setting) #1 {
entry:
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 3
  %0 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %tobool.not = icmp eq %struct.itimerspec64* %old_setting, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @common_timer_get(%struct.k_itimer* noundef %timr, %struct.itimerspec64* noundef nonnull %old_setting) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  store i64 0, i64* %it_interval, align 8
  %timer_try_to_cancel = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 13
  %1 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %timer_try_to_cancel, align 8
  %call = call i32 %1(%struct.k_itimer* noundef %timr) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %it_active = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 6
  store i32 0, i32* %it_active, align 8
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 9
  %2 = load i32, i32* %it_requeue_pending, align 8
  %add = add i32 %2, 2
  %and = and i32 %add, -2
  store i32 %and, i32* %it_requeue_pending, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 8
  store i64 0, i64* %it_overrun_last, align 8
  %tv_sec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_setting, i64 0, i32 1, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end2
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_setting, i64 0, i32 1, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %tobool6.not = icmp eq i64 %4, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end2
  %.elt = getelementptr %struct.itimerspec64, %struct.itimerspec64* %new_setting, i64 0, i32 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %6 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_setting, i64 0, i32 0, i32 1
  %.unpack50 = load i64, i64* %6, align 8
  %7 = insertvalue [2 x i64] %5, i64 %.unpack50, 1
  %call10 = call fastcc i64 @timespec64_to_ktime([2 x i64] %7) #12
  store i64 %call10, i64* %it_interval, align 8
  %.unpack52 = load i64, i64* %tv_sec, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack52, 0
  %9 = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_setting, i64 0, i32 1, i32 1
  %.unpack54 = load i64, i64* %9, align 8
  %10 = insertvalue [2 x i64] %8, i64 %.unpack54, 1
  %call13 = call fastcc i64 @timespec64_to_ktime([2 x i64] %10) #12
  %and14 = and i32 %flags, 1
  %tobool15 = icmp ne i32 %and14, 0
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 10
  %11 = load i32, i32* %it_sigev_notify, align 4
  %cmp19 = icmp eq i32 %11, 1
  %timer_arm = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 14
  %12 = load void (%struct.k_itimer*, i64, i1, i1)*, void (%struct.k_itimer*, i64, i1, i1)** %timer_arm, align 8
  call void %12(%struct.k_itimer* noundef %timr, i64 noundef %call13, i1 noundef %tobool15, i1 noundef %cmp19) #10
  %lnot = xor i1 %cmp19, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %it_active, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #5 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timer_settime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_timer_settime(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timer_settime(i64 noundef %timer_id, i64 noundef %flags, i64 noundef %new_setting, i64 noundef %old_setting) unnamed_addr #1 {
entry:
  %conv = trunc i64 %timer_id to i32
  %conv1 = trunc i64 %flags to i32
  %0 = inttoptr i64 %new_setting to %struct.__kernel_itimerspec*
  %1 = inttoptr i64 %old_setting to %struct.__kernel_itimerspec*
  %call = call fastcc i64 @__do_sys_timer_settime(i32 noundef %conv, i32 noundef %conv1, %struct.__kernel_itimerspec* noundef %0, %struct.__kernel_itimerspec* noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @common_timer_del(%struct.k_itimer* noundef %timer) #1 {
entry:
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 3
  %0 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 11
  store i64 0, i64* %it_interval, align 8
  %timer_try_to_cancel = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 13
  %1 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %timer_try_to_cancel, align 8
  %call = call i32 %1(%struct.k_itimer* noundef %timer) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %it_active = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 6
  store i32 0, i32* %it_active, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_timer_delete(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_timer_delete(i64 noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_timer_delete(i64 noundef %timer_id) unnamed_addr #1 {
entry:
  %conv = trunc i64 %timer_id to i32
  %call = call fastcc i64 @__do_sys_timer_delete(i32 noundef %conv) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_itimers(%struct.signal_struct* noundef %sig) local_unnamed_addr #1 {
entry:
  %posix_timers = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 15
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %posix_timers) #12
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.list_head* %posix_timers to %struct.k_itimer**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load %struct.k_itimer*, %struct.k_itimer** %0, align 8
  call fastcc void @itimer_delete(%struct.k_itimer* noundef %1) #12
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %posix_timers) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @itimer_delete(%struct.k_itimer* noundef %timer) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %call10 = call fastcc i32 @timer_delete_hook(%struct.k_itimer* noundef %timer) #12
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %if.then
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %call = call fastcc i32 @timer_delete_hook(%struct.k_itimer* noundef %timer) #12
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #12
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  call fastcc void @release_posix_timer(%struct.k_itimer* noundef %timer, i32 noundef 1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clock_settime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_clock_settime(i64 noundef %0, i64 noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clock_settime(i64 noundef %which_clock, i64 noundef %tp) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %0 = inttoptr i64 %tp to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_clock_settime(i32 noundef %conv, %struct.__kernel_timespec* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clock_gettime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_clock_gettime(i64 noundef %0, i64 noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clock_gettime(i64 noundef %which_clock, i64 noundef %tp) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %0 = inttoptr i64 %tp to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_clock_gettime(i32 noundef %conv, %struct.__kernel_timespec* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_clock_adjtime(i32 noundef %which_clock, %struct.__kernel_timex* noundef %ktx) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %clock_adj = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 4
  %0 = load i32 (i32, %struct.__kernel_timex*)*, i32 (i32, %struct.__kernel_timex*)** %clock_adj, align 8
  %tobool1.not = icmp eq i32 (i32, %struct.__kernel_timex*)* %0, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call5 = call i32 %0(i32 noundef %which_clock, %struct.__kernel_timex* noundef %ktx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %entry ], [ -95, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %id) unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %and = and i32 %id, 7
  %cmp1 = icmp eq i32 %and, 3
  %cond = select i1 %cmp1, %struct.k_clock* @clock_posix_dynamic, %struct.k_clock* @clock_posix_cpu
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp ugt i32 %id, 11
  br i1 %cmp2, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %conv21 = zext i32 %id to i64
  %call = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv21) #12
  %0 = trunc i64 %call to i32
  %conv12 = and i32 %0, %id
  %1 = zext i32 %conv12 to i64
  %arrayidx = getelementptr [12 x %struct.k_clock*], [12 x %struct.k_clock*]* @posix_clocks, i64 0, i64 %1
  %2 = load %struct.k_clock*, %struct.k_clock** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi %struct.k_clock* [ %cond, %if.then ], [ %2, %if.end5 ], [ null, %if.end ]
  ret %struct.k_clock* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clock_adjtime(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_clock_adjtime(i64 noundef %0, i64 noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clock_adjtime(i64 noundef %which_clock, i64 noundef %utx) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %0 = inttoptr i64 %utx to %struct.__kernel_timex*
  %call = call fastcc i64 @__do_sys_clock_adjtime(i32 noundef %conv, %struct.__kernel_timex* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clock_getres(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_clock_getres(i64 noundef %0, i64 noundef %1) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clock_getres(i64 noundef %which_clock, i64 noundef %tp) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %0 = inttoptr i64 %tp to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_clock_getres(i32 noundef %conv, %struct.__kernel_timespec* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clock_nanosleep(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_clock_nanosleep(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clock_nanosleep(i64 noundef %which_clock, i64 noundef %flags, i64 noundef %rqtp, i64 noundef %rmtp) unnamed_addr #1 {
entry:
  %conv = trunc i64 %which_clock to i32
  %conv1 = trunc i64 %flags to i32
  %0 = inttoptr i64 %rqtp to %struct.__kernel_timespec*
  %1 = inttoptr i64 %rmtp to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_clock_nanosleep(i32 noundef %conv, i32 noundef %conv1, %struct.__kernel_timespec* noundef %0, %struct.__kernel_timespec* noundef %1) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #11, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #11, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timer_create(i32 noundef %which_clock, %struct.sigevent* noundef %timer_event_spec, i32* noundef %created_timer_id) unnamed_addr #1 {
entry:
  %event = alloca %struct.sigevent, align 8
  %tobool.not = icmp eq %struct.sigevent* %timer_event_spec, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.sigevent* %event to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %1 = bitcast %struct.sigevent* %timer_event_spec to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef 64) #10
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = call fastcc i32 @do_timer_create(i32 noundef %which_clock, %struct.sigevent* noundef nonnull %event, i32* noundef %created_timer_id) #12
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -14, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #11
  br label %return

if.end4:                                          ; preds = %entry
  %call5 = call fastcc i32 @do_timer_create(i32 noundef %which_clock, %struct.sigevent* noundef null, i32* noundef %created_timer_id) #12
  %conv6 = sext i32 %call5 to i64
  br label %return

return:                                           ; preds = %if.end4, %cleanup
  %retval.1 = phi i64 [ %retval.0, %cleanup ], [ %conv6, %if.end4 ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_timer_create(i32 noundef %which_clock, %struct.sigevent* noundef readonly %event, i32* noundef %created_timer_id) unnamed_addr #1 {
entry:
  %new_timer_id = alloca i32, align 4
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %0 = bitcast i32* %new_timer_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %timer_create = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 5
  %1 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %timer_create, align 8
  %tobool1.not = icmp eq i32 (%struct.k_itimer*)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.k_itimer* @alloc_posix_timer() #12
  %tobool5.not = icmp eq %struct.k_itimer* %call4, null
  br i1 %tobool5.not, label %cleanup, label %do.body, !prof !12

do.body:                                          ; preds = %if.end3
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %call13 = call fastcc i32 @posix_timer_add(%struct.k_itimer* noundef nonnull %call4) #12
  store i32 %call13, i32* %new_timer_id, align 4
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %out, label %if.end16

if.end16:                                         ; preds = %do.body
  %it_id = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 5
  store i32 %call13, i32* %it_id, align 4
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 4
  store i32 %which_clock, i32* %it_clock, align 8
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 3
  store %struct.k_clock* %call, %struct.k_clock** %kclock, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 7
  store i64 -1, i64* %it_overrun, align 8
  %tobool17.not = icmp eq %struct.sigevent* %event, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call fastcc void @__rcu_read_lock() #10
  %call19 = call fastcc %struct.pid* @good_sigevent(%struct.sigevent* noundef nonnull %event) #12
  %call20 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call19) #12
  %it_pid = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 13, i32 0
  store %struct.pid* %call19, %struct.pid** %it_pid, align 8
  call fastcc void @rcu_read_unlock() #12
  %2 = load %struct.pid*, %struct.pid** %it_pid, align 8
  %tobool22.not = icmp eq %struct.pid* %2, null
  br i1 %tobool22.not, label %out, label %if.end24

if.end24:                                         ; preds = %if.then18
  %sigev_notify = getelementptr inbounds %struct.sigevent, %struct.sigevent* %event, i64 0, i32 2
  %3 = load i32, i32* %sigev_notify, align 4
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 10
  store i32 %3, i32* %it_sigev_notify, align 4
  %sigev_signo = getelementptr inbounds %struct.sigevent, %struct.sigevent* %event, i64 0, i32 1
  %4 = load i32, i32* %sigev_signo, align 8
  %sigq = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 14
  %5 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  %si_signo = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %5, i64 0, i32 2, i32 0, i32 0
  store i32 %4, i32* %si_signo, align 8
  %6 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  %_sigval = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %6, i64 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %7 = bitcast %struct.sigevent* %event to i64*
  %8 = bitcast i32* %_sigval to i64*
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  br label %if.end47

if.else:                                          ; preds = %if.end16
  %it_sigev_notify27 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 10
  store i32 0, i32* %it_sigev_notify27, align 4
  %sigq28 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 14
  %10 = load %struct.sigqueue*, %struct.sigqueue** %sigq28, align 8
  %si_signo30 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %10, i64 0, i32 2, i32 0, i32 0
  store i32 14, i32* %si_signo30, align 8
  %11 = load %struct.sigqueue*, %struct.sigqueue** %sigq28, align 8
  %_sigval35 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %11, i64 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %12 = bitcast i32* %_sigval35 to i8*
  %call36 = call i8* @memset(i8* noundef %12, i32 noundef 0, i64 noundef 8) #10
  %13 = load i32, i32* %it_id, align 4
  %14 = load %struct.sigqueue*, %struct.sigqueue** %sigq28, align 8
  %_sigval42 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %14, i64 0, i32 2, i32 0, i32 3, i32 0, i32 2
  store i32 %13, i32* %_sigval42, align 8
  %15 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %16 = inttoptr i64 %15 to %struct.task_struct*
  %call44 = call fastcc %struct.pid* @task_tgid(%struct.task_struct* noundef %16) #12
  %call45 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call44) #12
  %it_pid46 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 13, i32 0
  store %struct.pid* %call44, %struct.pid** %it_pid46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end24
  %17 = load i32, i32* %it_id, align 4
  %sigq49 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 14
  %18 = load %struct.sigqueue*, %struct.sigqueue** %sigq49, align 8
  %_tid = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %18, i64 0, i32 2, i32 0, i32 3, i32 0, i32 0
  store i32 %17, i32* %_tid, align 8
  %19 = load %struct.sigqueue*, %struct.sigqueue** %sigq49, align 8
  %si_code = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %19, i64 0, i32 2, i32 0, i32 2
  store i32 -2, i32* %si_code, align 8
  %20 = bitcast i32* %created_timer_id to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %20, i8* noundef nonnull %0, i64 noundef 4) #10
  %tobool55.not = icmp eq i64 %call2.i, 0
  br i1 %tobool55.not, label %if.end57, label %out

if.end57:                                         ; preds = %if.end47
  %21 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %timer_create, align 8
  %call59 = call i32 %21(%struct.k_itimer* noundef nonnull %call4) #10
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %out

if.end62:                                         ; preds = %if.end57
  %22 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %23 = inttoptr i64 %22 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i64 0, i32 88
  %24 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i112 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %24, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i112) #10
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i64 0, i32 87
  %25 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_signal = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 12
  store %struct.signal_struct* %25, %struct.signal_struct** %it_signal, align 8
  %list = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call4, i64 0, i32 0
  %26 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %posix_timers = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i64 0, i32 15
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %posix_timers) #12
  %27 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i113 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %27, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i113) #10
  br label %cleanup

out:                                              ; preds = %if.end47, %if.then18, %do.body, %if.end57
  %error.0 = phi i32 [ %call59, %if.end57 ], [ %call13, %do.body ], [ -22, %if.then18 ], [ -14, %if.end47 ]
  %it_id_set.0 = phi i32 [ 1, %if.end57 ], [ 0, %do.body ], [ 1, %if.then18 ], [ 1, %if.end47 ]
  call fastcc void @release_posix_timer(%struct.k_itimer* noundef nonnull %call4, i32 noundef %it_id_set.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %out, %if.end62
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %if.end62 ], [ -22, %entry ], [ -95, %if.end ], [ -11, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #12
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !14
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !15
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !16
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.k_itimer* @alloc_posix_timer() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @posix_timers_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #12
  %1 = bitcast i8* %call to %struct.k_itimer*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.sigqueue* @sigqueue_alloc() #10
  %sigq = getelementptr inbounds i8, i8* %call, i64 112
  %2 = bitcast i8* %sigq to %struct.sigqueue**
  store %struct.sigqueue* %call1, %struct.sigqueue** %2, align 8
  %tobool2.not = icmp eq %struct.sigqueue* %call1, null
  br i1 %tobool2.not, label %if.then6, label %if.end7, !prof !12

if.then6:                                         ; preds = %if.end
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @posix_timers_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef nonnull %call) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call1, i64 0, i32 2
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then6
  %retval.0 = phi %struct.k_itimer* [ null, %if.then6 ], [ %1, %if.end7 ], [ null, %entry ]
  ret %struct.k_itimer* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @posix_timer_add(%struct.k_itimer* noundef %timer) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %posix_timer_id = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 14
  %3 = load i32, i32* %posix_timer_id, align 4
  %t_hash = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @hash_lock, i64 0, i32 0, i32 0)) #10
  %4 = load i32, i32* %posix_timer_id, align 4
  %call2 = call fastcc i32 @hash(%struct.signal_struct* noundef %2, i32 noundef %4) #12
  %5 = zext i32 %call2 to i64
  %arrayidx = getelementptr [512 x %struct.hlist_head], [512 x %struct.hlist_head]* @posix_timers_hashtable, i64 0, i64 %5
  %call4 = call fastcc %struct.k_itimer* @__posix_timers_find(%struct.hlist_head* noundef %arrayidx, %struct.signal_struct* noundef %2, i32 noundef %4) #12
  %tobool.not = icmp eq %struct.k_itimer* %call4, null
  br i1 %tobool.not, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  %.pre = load i32, i32* %posix_timer_id, align 4
  br label %if.end

if.then:                                          ; preds = %do.body
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %t_hash, %struct.hlist_head* noundef %arrayidx) #12
  %6 = load i32, i32* %posix_timer_id, align 4
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.then
  %7 = phi i32 [ %.pre, %do.body.if.end_crit_edge ], [ %6, %if.then ]
  %ret.1 = phi i32 [ -2, %do.body.if.end_crit_edge ], [ %6, %if.then ]
  %inc = add i32 %7, 1
  %8 = icmp sgt i32 %inc, 0
  %spec.select = select i1 %8, i32 %inc, i32 0
  store i32 %spec.select, i32* %posix_timer_id, align 4
  %cmp11 = icmp eq i32 %spec.select, %3
  %cmp12 = icmp eq i32 %ret.1, -2
  %or.cond = select i1 %cmp11, i1 %cmp12, i1 false
  %spec.store.select = select i1 %or.cond, i32 -11, i32 %ret.1
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @hash_lock, i64 0, i32 0, i32 0)) #10
  %cmp15 = icmp eq i32 %spec.store.select, -2
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %if.end
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @good_sigevent(%struct.sigevent* nocapture noundef readonly %event) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc %struct.pid* @task_tgid(%struct.task_struct* noundef %1) #12
  %sigev_notify = getelementptr inbounds %struct.sigevent, %struct.sigevent* %event, i64 0, i32 2
  %2 = load i32, i32* %sigev_notify, align 4
  switch i32 %2, label %cleanup [
    i32 4, label %sw.bb
    i32 0, label %sw.bb6
    i32 2, label %sw.bb6
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %_sigev_un = getelementptr inbounds %struct.sigevent, %struct.sigevent* %event, i64 0, i32 3
  %_tid = bitcast %union.anon.80* %_sigev_un to i32*
  %3 = load i32, i32* %_tid, align 8
  %call2 = call %struct.pid* @find_vpid(i32 noundef %3) #10
  %call3 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call2, i32 noundef 0) #10
  %tobool.not = icmp eq %struct.task_struct* %call3, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %call5 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call3, %struct.task_struct* noundef %1) #12
  br i1 %call5, label %sw.bb6, label %cleanup

sw.bb6:                                           ; preds = %lor.lhs.false, %entry, %entry
  %pid.0 = phi %struct.pid* [ %call1, %entry ], [ %call1, %entry ], [ %call2, %lor.lhs.false ]
  %sigev_signo = getelementptr inbounds %struct.sigevent, %struct.sigevent* %event, i64 0, i32 1
  %4 = load i32, i32* %sigev_signo, align 8
  %5 = add i32 %4, -65
  %6 = icmp ult i32 %5, -64
  br i1 %6, label %cleanup, label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb6, %entry
  %pid.1 = phi %struct.pid* [ %call1, %entry ], [ %pid.0, %sw.bb6 ]
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb6, %sw.bb, %lor.lhs.false, %sw.bb12
  %retval.0 = phi %struct.pid* [ %pid.1, %sw.bb12 ], [ null, %lor.lhs.false ], [ null, %sw.bb ], [ null, %sw.bb6 ], [ null, %entry ]
  ret %struct.pid* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_tgid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 1
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @release_posix_timer(%struct.k_itimer* noundef %tmr, i32 noundef %it_id_set) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %it_id_set, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @hash_lock, i64 0, i32 0, i32 0)) #12
  %t_hash = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %tmr, i64 0, i32 1
  call fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %t_hash) #12
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @hash_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %it_pid = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %tmr, i64 0, i32 13, i32 0
  %0 = load %struct.pid*, %struct.pid** %it_pid, align 8
  call void @put_pid(%struct.pid* noundef %0) #10
  %sigq = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %tmr, i64 0, i32 14
  %1 = load %struct.sigqueue*, %struct.sigqueue** %sigq, align 8
  call void @sigqueue_free(%struct.sigqueue* noundef %1) #10
  %rcu = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %tmr, i64 0, i32 16
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @k_itimer_rcu_free) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #10
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sigqueue* @sigqueue_alloc() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 48) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash(%struct.signal_struct* noundef %sig, i32 noundef %nr) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.signal_struct* %sig to i8*
  %call = call fastcc i32 @hash32_ptr(i8* noundef %0) #12
  %xor = xor i32 %call, %nr
  %call1 = call fastcc i32 @hash_32_generic(i32 noundef %xor) #12
  ret i32 %call1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.k_itimer* @__posix_timers_find(%struct.hlist_head* noundef %head, %struct.signal_struct* noundef readnone %sig, i32 noundef %id) unnamed_addr #8 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr43 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -1
  %tobool7.not4650 = icmp eq %struct.hlist_node* %add.ptr43, null
  %tobool7.not46 = or i1 %tobool.not, %tobool7.not4650
  br i1 %tobool7.not46, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = bitcast %struct.hlist_node* %add.ptr43 to %struct.k_itimer*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %timer.047 = phi %struct.k_itimer* [ %spec.select45, %for.inc ], [ %1, %for.body.preheader ]
  %it_signal = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer.047, i64 0, i32 12
  %2 = load %struct.signal_struct*, %struct.signal_struct** %it_signal, align 8
  %cmp = icmp eq %struct.signal_struct* %2, %sig
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %it_id = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer.047, i64 0, i32 5
  %3 = load i32, i32* %it_id, align 4
  %cmp8 = icmp eq i32 %3, %id
  br i1 %cmp8, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer.047, i64 0, i32 1, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool17.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr2442 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -1
  %5 = bitcast %struct.hlist_node* %add.ptr2442 to %struct.k_itimer*
  %spec.select45 = select i1 %tobool17.not, %struct.k_itimer* null, %struct.k_itimer* %5
  %tobool7.not = icmp eq %struct.k_itimer* %spec.select45, null
  br i1 %tobool7.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %timer.0.lcssa = phi %struct.k_itimer* [ null, %entry ], [ null, %for.inc ], [ %timer.047, %land.lhs.true ]
  ret %struct.k_itimer* %timer.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #1 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #11, !srcloc !17
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
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
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #11, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_32_generic(i32 noundef %val) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @__hash_32_generic(i32 noundef %val) #12
  %shr = lshr i32 %call, 23
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash32_ptr(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shr = lshr i64 %0, 32
  %xor = xor i64 %shr, %0
  %conv = trunc i64 %xor to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__hash_32_generic(i32 noundef %val) unnamed_addr #5 {
entry:
  %mul = mul i32 %val, 1640531527
  ret i32 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #10
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !12

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !13

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #11, !srcloc !22
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #4

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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  call void @rcu_read_unlock_strict() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
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
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #11, !srcloc !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
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
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #11, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #12
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %n) unnamed_addr #8 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #12
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigqueue_free(%struct.sigqueue* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_itimer_rcu_free(%struct.callback_head* noundef %head) #1 {
entry:
  %add.ptr3 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -15
  %add.ptr = bitcast %struct.callback_head* %add.ptr3 to i8*
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @posix_timers_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %add.ptr) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #11, !srcloc !29
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #11, !srcloc !30
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #8 {
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
define internal fastcc %struct.k_itimer* @posix_timer_by_id(i32 noundef %id) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %call1 = call fastcc i32 @hash(%struct.signal_struct* noundef %2, i32 noundef %id) #12
  %3 = zext i32 %call1 to i64
  %arrayidx = getelementptr [512 x %struct.hlist_head], [512 x %struct.hlist_head]* @posix_timers_hashtable, i64 0, i64 %3
  %call2 = call fastcc %struct.k_itimer* @__posix_timers_find(%struct.hlist_head* noundef %arrayidx, %struct.signal_struct* noundef %2, i32 noundef %id) #12
  ret %struct.k_itimer* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timer_gettime(i32 noundef %timer_id, %struct.__kernel_itimerspec* noundef %setting) unnamed_addr #1 {
entry:
  %cur_setting = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %cur_setting to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %call = call fastcc i32 @do_timer_gettime(i32 noundef %timer_id, %struct.itimerspec64* noundef nonnull %cur_setting) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i32 @put_itimerspec64(%struct.itimerspec64* noundef nonnull %cur_setting, %struct.__kernel_itimerspec* noundef %setting) #10
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -14
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %entry ], [ %spec.select, %if.then ]
  %conv = sext i32 %ret.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_timer_gettime(i32 noundef %timer_id, %struct.itimerspec64* noundef %setting) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !7
  %call = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %timer_id, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.k_itimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.itimerspec64* %setting to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 32) #10
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %call, i64 0, i32 3
  %2 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %tobool2.not = icmp eq %struct.k_clock* %2, null
  br i1 %tobool2.not, label %if.then12, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %timer_get = getelementptr inbounds %struct.k_clock, %struct.k_clock* %2, i64 0, i32 9
  %3 = load void (%struct.k_itimer*, %struct.itimerspec64*)*, void (%struct.k_itimer*, %struct.itimerspec64*)** %timer_get, align 8
  %tobool3.not = icmp eq void (%struct.k_itimer*, %struct.itimerspec64*)* %3, null
  br i1 %tobool3.not, label %if.then12, label %if.else, !prof !12

if.then12:                                        ; preds = %if.end, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-timers.c\22; .popsection; .long 14472b - 14470b; .short 728; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !31
  br label %if.end25

if.else:                                          ; preds = %lor.rhs
  call void %3(%struct.k_itimer* noundef nonnull %call, %struct.itimerspec64* noundef %setting) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.else
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %if.then12 ]
  %4 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef nonnull %call, i64 noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end25
  %retval.0 = phi i32 [ %ret.0, %if.end25 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(%struct.itimerspec64* noundef, %struct.__kernel_itimerspec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timer_getoverrun(i32 noundef %timer_id) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !7
  %call = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %timer_id, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.k_itimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @timer_overrun_to_int(%struct.k_itimer* noundef nonnull %call, i32 noundef 0) #12
  %1 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef nonnull %call, i64 noundef %1) #12
  %conv = sext i32 %call1 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #5 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !12
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timer_settime(i32 noundef %timer_id, i32 noundef %flags, %struct.__kernel_itimerspec* noundef %new_setting, %struct.__kernel_itimerspec* noundef %old_setting) unnamed_addr #1 {
entry:
  %new_spec = alloca %struct.itimerspec64, align 8
  %old_spec = alloca %struct.itimerspec64, align 8
  %0 = bitcast %struct.itimerspec64* %new_spec to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.itimerspec64* %old_spec to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !7
  %tobool = icmp ne %struct.__kernel_itimerspec* %old_setting, null
  %old_spec. = select i1 %tobool, %struct.itimerspec64* %old_spec, %struct.itimerspec64* null
  %tobool1.not = icmp eq %struct.__kernel_itimerspec* %new_setting, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @get_itimerspec64(%struct.itimerspec64* noundef nonnull %new_spec, %struct.__kernel_itimerspec* noundef nonnull %new_setting) #10
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @do_timer_settime(i32 noundef %timer_id, i32 noundef %flags, %struct.itimerspec64* noundef nonnull %new_spec, %struct.itimerspec64* noundef %old_spec.) #12
  %tobool6 = icmp eq i32 %call5, 0
  %or.cond = and i1 %tobool, %tobool6
  br i1 %or.cond, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %call9 = call i32 @put_itimerspec64(%struct.itimerspec64* noundef nonnull %old_spec, %struct.__kernel_itimerspec* noundef nonnull %old_setting) #10
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end4
  %error.0 = phi i32 [ %call5, %if.end4 ], [ %spec.select, %if.then8 ]
  %conv = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i64 [ %conv, %if.end13 ], [ -22, %entry ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(%struct.itimerspec64* noundef, %struct.__kernel_itimerspec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_timer_settime(i32 noundef %timer_id, i32 noundef %tmr_flags, %struct.itimerspec64* noundef %new_spec64, %struct.itimerspec64* noundef %old_spec64) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !7
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_spec64, i64 0, i32 0
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %it_interval) #12
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %new_spec64, i64 0, i32 1
  %call1 = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %it_value) #12
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq %struct.itimerspec64* %old_spec64, null
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.itimerspec64* %old_spec64 to i8*
  %call3 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 32) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %timer_id, i64* noundef nonnull %flags) #12
  %tobool6.not64 = icmp eq %struct.k_itimer* %call5, null
  br i1 %tobool6.not64, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then35
  %old_spec64.addr.066 = phi %struct.itimerspec64* [ null, %if.then35 ], [ %old_spec64, %if.end4 ]
  %timr.065 = phi %struct.k_itimer* [ %call36, %if.then35 ], [ %call5, %if.end4 ]
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr.065, i64 0, i32 3
  %2 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %tobool9.not = icmp eq %struct.k_clock* %2, null
  br i1 %tobool9.not, label %if.end33.thread, label %lor.rhs

lor.rhs:                                          ; preds = %if.end8
  %timer_set = getelementptr inbounds %struct.k_clock, %struct.k_clock* %2, i64 0, i32 7
  %3 = load i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)*, i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)** %timer_set, align 8
  %tobool10.not = icmp eq i32 (%struct.k_itimer*, i32, %struct.itimerspec64*, %struct.itimerspec64*)* %3, null
  br i1 %tobool10.not, label %if.end33.thread, label %if.end33, !prof !12

if.end33.thread:                                  ; preds = %lor.rhs, %if.end8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-timers.c\22; .popsection; .long 14472b - 14470b; .short 920; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !32
  br label %if.end37

if.end33:                                         ; preds = %lor.rhs
  %call32 = call i32 %3(%struct.k_itimer* noundef nonnull %timr.065, i32 noundef %tmr_flags, %struct.itimerspec64* noundef %new_spec64, %struct.itimerspec64* noundef %old_spec64.addr.066) #10
  %cmp = icmp eq i32 %call32, 1
  br i1 %cmp, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %call36 = call fastcc %struct.k_itimer* @timer_wait_running(%struct.k_itimer* noundef nonnull %timr.065, i64* noundef nonnull %flags) #12
  %tobool6.not = icmp eq %struct.k_itimer* %call36, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end37:                                         ; preds = %if.end33, %if.end33.thread
  %error.060 = phi i32 [ -22, %if.end33.thread ], [ %call32, %if.end33 ]
  %4 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef nonnull %timr.065, i64 noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end4, %entry, %lor.lhs.false, %if.end37
  %retval.0 = phi i32 [ %error.060, %if.end37 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -22, %if.end4 ], [ -22, %if.then35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #3 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.k_itimer* @timer_wait_running(%struct.k_itimer* noundef %timer, i64* nocapture noundef %flags) unnamed_addr #1 {
entry:
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 3
  %0 = load volatile %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %it_id = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 5
  %1 = load volatile i32, i32* %it_id, align 4
  call fastcc void @__rcu_read_lock() #10
  %2 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef %timer, i64 noundef %2) #12
  %timer_wait_running = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 15
  %3 = load void (%struct.k_itimer*)*, void (%struct.k_itimer*)** %timer_wait_running, align 8
  %tobool.not = icmp eq void (%struct.k_itimer*)* %3, null
  br i1 %tobool.not, label %if.then, label %if.then22, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-timers.c\22; .popsection; .long 14472b - 14470b; .short 849; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !33
  br label %if.end24

if.then22:                                        ; preds = %entry
  call void %3(%struct.k_itimer* noundef %timer) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then, %if.then22
  call fastcc void @rcu_read_unlock() #12
  %call = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %1, i64* noundef %flags) #12
  ret %struct.k_itimer* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_timer_delete(i32 noundef %timer_id) unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i64 0, i64* %flags, align 8, !annotation !7
  %call = call fastcc %struct.k_itimer* @__lock_timer(i32 noundef %timer_id, i64* noundef nonnull %flags) #12
  %tobool.not22 = icmp eq %struct.k_itimer* %call, null
  br i1 %tobool.not22, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %if.then4
  %timer.023 = phi %struct.k_itimer* [ %call5, %if.then4 ], [ %call, %entry ]
  %call1 = call fastcc i32 @timer_delete_hook(%struct.k_itimer* noundef nonnull %timer.023) #12
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then4, label %if.end6, !prof !12

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc %struct.k_itimer* @timer_wait_running(%struct.k_itimer* noundef nonnull %timer.023, i64* noundef nonnull %flags) #12
  %tobool.not = icmp eq %struct.k_itimer* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end6:                                          ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #10
  %list = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer.023, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #12
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i20 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i20) #10
  %it_signal = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer.023, i64 0, i32 12
  store %struct.signal_struct* null, %struct.signal_struct** %it_signal, align 8
  %5 = load i64, i64* %flags, align 8
  call fastcc void @unlock_timer(%struct.k_itimer* noundef nonnull %timer.023, i64 noundef %5) #12
  call fastcc void @release_posix_timer(%struct.k_itimer* noundef nonnull %timer.023, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry, %if.end6
  %retval.0 = phi i64 [ 0, %if.end6 ], [ -22, %entry ], [ -22, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @timer_delete_hook(%struct.k_itimer* noundef %timer) unnamed_addr #1 {
entry:
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timer, i64 0, i32 3
  %0 = load %struct.k_clock*, %struct.k_clock** %kclock, align 8
  %tobool.not = icmp eq %struct.k_clock* %0, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %timer_del = getelementptr inbounds %struct.k_clock, %struct.k_clock* %0, i64 0, i32 8
  %1 = load i32 (%struct.k_itimer*)*, i32 (%struct.k_itimer*)** %timer_del, align 8
  %tobool1.not = icmp eq i32 (%struct.k_itimer*)* %1, null
  br i1 %tobool1.not, label %if.then, label %if.end19, !prof !12

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/posix-timers.c\22; .popsection; .long 14472b - 14470b; .short 998; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !34
  br label %cleanup

if.end19:                                         ; preds = %lor.rhs
  %call = call i32 %1(%struct.k_itimer* noundef %timer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19
  %retval.0 = phi i32 [ %call, %if.end19 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #12
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clock_settime(i32 noundef %which_clock, %struct.__kernel_timespec* noundef %tp) unnamed_addr #1 {
entry:
  %new_tp = alloca %struct.timespec64, align 8
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %0 = bitcast %struct.timespec64* %new_tp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %clock_set = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 1
  %1 = load i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)** %clock_set, align 8
  %tobool1.not = icmp eq i32 (i32, %struct.timespec64*)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %new_tp, %struct.__kernel_timespec* noundef %tp) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = load i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)** %clock_set, align 8
  %call7 = call i32 %2(i32 noundef %which_clock, %struct.timespec64* noundef nonnull %new_tp) #10
  %conv = sext i32 %call7 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end5
  %retval.0 = phi i64 [ %conv, %if.end5 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clock_gettime(i32 noundef %which_clock, %struct.__kernel_timespec* noundef %tp) unnamed_addr #1 {
entry:
  %kernel_tp = alloca %struct.timespec64, align 8
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %0 = bitcast %struct.timespec64* %kernel_tp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %clock_get_timespec = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 2
  %1 = load i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)** %clock_get_timespec, align 8
  %call1 = call i32 %1(i32 noundef %which_clock, %struct.timespec64* noundef nonnull %kernel_tp) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @put_timespec64(%struct.timespec64* noundef nonnull %kernel_tp, %struct.__kernel_timespec* noundef %tp) #10
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %error.0 = phi i32 [ %call1, %if.end ], [ %spec.select, %land.lhs.true ]
  %conv = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i64 [ %conv, %if.end6 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clock_adjtime(i32 noundef %which_clock, %struct.__kernel_timex* noundef %utx) unnamed_addr #1 {
entry:
  %ktx = alloca %struct.__kernel_timex, align 8
  %0 = bitcast %struct.__kernel_timex* %ktx to i8*
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false), !annotation !7
  %1 = bitcast %struct.__kernel_timex* %utx to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 208) #10
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @do_clock_adjtime(i32 noundef %which_clock, %struct.__kernel_timex* noundef nonnull %ktx) #12
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call2.i10 = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 208) #10
  %tobool3.not = icmp eq i64 %call2.i10, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %conv = sext i32 %call1 to i64
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end5
  %retval.0 = phi i64 [ %conv, %if.end5 ], [ -14, %entry ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clock_getres(i32 noundef %which_clock, %struct.__kernel_timespec* noundef %tp) unnamed_addr #1 {
entry:
  %rtn_tp = alloca %struct.timespec64, align 8
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %0 = bitcast %struct.timespec64* %rtn_tp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %clock_getres = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 0
  %1 = load i32 (i32, %struct.timespec64*)*, i32 (i32, %struct.timespec64*)** %clock_getres, align 8
  %call1 = call i32 %1(i32 noundef %which_clock, %struct.timespec64* noundef nonnull %rtn_tp) #10
  %tobool2 = icmp eq i32 %call1, 0
  %tobool3 = icmp ne %struct.__kernel_timespec* %tp, null
  %or.cond = and i1 %tobool3, %tobool2
  br i1 %or.cond, label %land.lhs.true4, label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %call5 = call i32 @put_timespec64(%struct.timespec64* noundef nonnull %rtn_tp, %struct.__kernel_timespec* noundef nonnull %tp) #10
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 -14
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %error.0 = phi i32 [ %call1, %if.end ], [ %spec.select, %land.lhs.true4 ]
  %conv = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i64 [ %conv, %if.end8 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clock_nanosleep(i32 noundef %which_clock, i32 noundef %flags, %struct.__kernel_timespec* noundef %rqtp, %struct.__kernel_timespec* noundef %rmtp) unnamed_addr #1 {
entry:
  %t = alloca %struct.timespec64, align 8
  %call = call fastcc %struct.k_clock* @clockid_to_kclock(i32 noundef %which_clock) #12
  %0 = bitcast %struct.timespec64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.k_clock* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nsleep = getelementptr inbounds %struct.k_clock, %struct.k_clock* %call, i64 0, i32 6
  %1 = load i32 (i32, i32, %struct.timespec64*)*, i32 (i32, i32, %struct.timespec64*)** %nsleep, align 8
  %tobool1.not = icmp eq i32 (i32, i32, %struct.timespec64*)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %t, %struct.__kernel_timespec* noundef %rqtp) #10
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef nonnull %t) #12
  br i1 %call8, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end7
  %and = and i32 %flags, 1
  %tobool11.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool11.not, %struct.__kernel_timespec* %rmtp, %struct.__kernel_timespec* null
  %tobool14.not = icmp ne %struct.__kernel_timespec* %spec.select, null
  %cond = zext i1 %tobool14.not to i32
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2
  %nanosleep = bitcast %union.anon.58* %4 to %struct.anon.60*
  %type = getelementptr inbounds %struct.anon.60, %struct.anon.60* %nanosleep, i64 0, i32 1
  store i32 %cond, i32* %type, align 4
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 1
  %rmtp19 = bitcast i32* %5 to %struct.__kernel_timespec**
  store %struct.__kernel_timespec* %spec.select, %struct.__kernel_timespec** %rmtp19, align 8
  %6 = load i32 (i32, i32, %struct.timespec64*)*, i32 (i32, i32, %struct.timespec64*)** %nsleep, align 8
  %call21 = call i32 %6(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* noundef nonnull %t) #10
  %conv = sext i32 %call21 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %entry, %if.end10
  %retval.0 = phi i64 [ %conv, %if.end10 ], [ -22, %entry ], [ -95, %if.end ], [ -14, %if.end3 ], [ -22, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx) unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 12) #11, !srcloc !35
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !36
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal i32 @posix_get_hrtimer_res(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #9 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 1
  store i64 4000000, i64* %tv_nsec, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_clock_realtime_set(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  %call = call i32 @do_sys_settimeofday64(%struct.timespec64* noundef %tp, %struct.timezone* noundef null) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_realtime_timespec(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  call void @ktime_get_real_ts64(%struct.timespec64* noundef %tp) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_get_realtime_ktime(i32 noundef %which_clock) #1 {
entry:
  %call = call fastcc i64 @ktime_get_real() #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_clock_realtime_adj(i32 noundef %which_clock, %struct.__kernel_timex* noundef %t) #1 {
entry:
  %call = call i32 @do_adjtimex(%struct.__kernel_timex* noundef %t) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @common_timer_create(%struct.k_itimer* noundef %new_timer) #1 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 15
  %timer = bitcast %union.anon.69* %it to %struct.hrtimer*
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %new_timer, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  call void @hrtimer_init(%struct.hrtimer* noundef %timer, i32 noundef %0, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @common_nsleep(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readonly %rqtp) #1 {
entry:
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %rqtp, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rqtp, i64 0, i32 1
  %.unpack4 = load i64, i64* %1, align 8
  %2 = insertvalue [2 x i64] %0, i64 %.unpack4, 1
  %call = call fastcc i64 @timespec64_to_ktime([2 x i64] %2) #12
  %and = and i32 %flags, 1
  %3 = xor i32 %and, 1
  %call1 = call i64 @hrtimer_nanosleep(i64 noundef %call, i32 noundef %3, i32 noundef %which_clock) #10
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @common_hrtimer_rearm(%struct.k_itimer* noundef %timr) #1 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15
  %timer1 = bitcast %union.anon.69* %it to %struct.hrtimer*
  %base = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %0 = bitcast %struct.rb_node** %base to %struct.hrtimer_clock_base**
  %1 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %0, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %1, i64 0, i32 6
  %2 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %2() #10
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  %3 = load i64, i64* %it_interval, align 8
  %call2 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer1, i64 noundef %call, i64 noundef %3) #10
  %it_overrun = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 7
  %4 = load i64, i64* %it_overrun, align 8
  %add = add i64 %4, %call2
  store i64 %add, i64* %it_overrun, align 8
  call fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @common_hrtimer_forward(%struct.k_itimer* noundef %timr, i64 noundef %now) #1 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15
  %timer1 = bitcast %union.anon.69* %it to %struct.hrtimer*
  %it_interval = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 11
  %0 = load i64, i64* %it_interval, align 8
  %call = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer1, i64 noundef %now, i64 noundef %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i64 @common_hrtimer_remaining(%struct.k_itimer* nocapture noundef readonly %timr, i64 noundef %now) #3 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15
  %timer1 = bitcast %union.anon.69* %it to %struct.hrtimer*
  %call = call fastcc i64 @__hrtimer_expires_remaining_adjusted(%struct.hrtimer* noundef %timer1, i64 noundef %now) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @common_hrtimer_try_to_cancel(%struct.k_itimer* noundef %timr) #1 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15
  %timer = bitcast %union.anon.69* %it to %struct.hrtimer*
  %call = call i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef %timer) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @common_hrtimer_arm(%struct.k_itimer* noundef %timr, i64 noundef %expires, i1 noundef %absolute, i1 noundef %sigev_none) #1 {
entry:
  %it = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15
  %timer2 = bitcast %union.anon.69* %it to %struct.hrtimer*
  %not.absolute = xor i1 %absolute, true
  %cond = zext i1 %not.absolute to i32
  %it_clock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 4
  %0 = load i32, i32* %it_clock, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cond4 = select i1 %absolute, %struct.k_clock* @clock_realtime, %struct.k_clock* @clock_monotonic
  %kclock = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 3
  store %struct.k_clock* %cond4, %struct.k_clock** %kclock, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @hrtimer_init(%struct.hrtimer* noundef %timer2, i32 noundef %0, i32 noundef %cond) #10
  %function = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %1 = bitcast %struct.rb_node** %function to i32 (%struct.hrtimer*)**
  store i32 (%struct.hrtimer*)* @posix_timer_fn, i32 (%struct.hrtimer*)** %1, align 8
  br i1 %absolute, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %timr, i64 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %2 = bitcast %struct.rb_node** %base to %struct.hrtimer_clock_base**
  %3 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %2, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %3, i64 0, i32 6
  %4 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %4() #10
  %call14 = call i64 @ktime_add_safe(i64 noundef %expires, i64 noundef %call) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %expires.addr.0 = phi i64 [ %expires, %if.end ], [ %call14, %if.then13 ]
  call fastcc void @hrtimer_set_expires(%struct.hrtimer* noundef %timer2, i64 noundef %expires.addr.0) #12
  br i1 %sigev_none, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer2) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @common_timer_wait_running(%struct.k_itimer* nocapture noundef readnone %timer) #1 {
entry:
  call fastcc void @hrtimer_cancel_wait_running() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_sys_settimeofday64(%struct.timespec64* noundef, %struct.timezone* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_real() unnamed_addr #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 0) #10
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(%struct.__kernel_timex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_nanosleep(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(%struct.hrtimer* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer) unnamed_addr #1 {
entry:
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #12
  %call1 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #12
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %sub, i32 noundef 0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #3 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #3 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @__hrtimer_expires_remaining_adjusted(%struct.hrtimer* nocapture noundef readonly %timer, i64 noundef %now) unnamed_addr #3 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %sub = sub i64 %0, %now
  ret i64 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(%struct.hrtimer* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_timer_fn(%struct.hrtimer* noundef %timer) #1 {
entry:
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -2, i32 0, i32 0, i32 1
  %0 = bitcast %struct.rb_node** %add.ptr to %struct.k_itimer*
  %it_lock = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 4
  %rlock.i = bitcast %struct.rb_node** %it_lock to %struct.raw_spinlock*
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #12
  %it_active = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 7
  %1 = bitcast %struct.rb_node** %it_active to i32*
  store i32 0, i32* %1, align 8
  %it_interval = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 11
  %2 = bitcast %struct.rb_node** %it_interval to i64*
  %3 = load i64, i64* %2, align 8
  %cmp9.not = icmp eq i64 %3, 0
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %it_requeue_pending = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 10
  %4 = bitcast %struct.rb_node** %it_requeue_pending to i32*
  %5 = load i32, i32* %4, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %si_private.0 = phi i32 [ %inc, %if.then ], [ 0, %entry ]
  %call11 = call i32 @posix_timer_event(%struct.k_itimer* noundef %0, i32 noundef %si_private.0) #12
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end24, label %if.then12

if.then12:                                        ; preds = %if.end
  %6 = load i64, i64* %2, align 8
  %cmp14.not = icmp eq i64 %6, 0
  br i1 %cmp14.not, label %if.end24, label %if.then16

if.then16:                                        ; preds = %if.then12
  %call17 = call fastcc i64 @hrtimer_cb_get_time(%struct.hrtimer* noundef %timer) #12
  %7 = load i64, i64* %2, align 8
  %call19 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer, i64 noundef %call17, i64 noundef %7) #10
  %it_overrun = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 8
  %8 = bitcast %struct.rb_node** %it_overrun to i64*
  %9 = load i64, i64* %8, align 8
  %add = add i64 %9, %call19
  store i64 %add, i64* %8, align 8
  %it_requeue_pending20 = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %add.ptr, i64 10
  %10 = bitcast %struct.rb_node** %it_requeue_pending20 to i32*
  %11 = load i32, i32* %10, align 8
  %inc21 = add i32 %11, 1
  store i32 %inc21, i32* %10, align 8
  store i32 1, i32* %1, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.then16, %if.end
  %ret.0 = phi i32 [ 1, %if.then16 ], [ 0, %if.then12 ], [ 0, %if.end ]
  call fastcc void @unlock_timer(%struct.k_itimer* noundef %0, i64 noundef %call4) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @hrtimer_set_expires(%struct.hrtimer* nocapture noundef writeonly %timer, i64 noundef %time) unnamed_addr #9 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  store i64 %time, i64* %expires, align 8
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  store i64 %time, i64* %_softexpires, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_cb_get_time(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #1 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_cancel_wait_running() unnamed_addr #1 {
entry:
  call fastcc void @cpu_relax() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_monotonic_timespec(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  call void @ktime_get_ts64(%struct.timespec64* noundef %tp) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_get_monotonic_ktime(i32 noundef %which_clock) #1 {
entry:
  %call = call i64 @ktime_get() #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @common_nsleep_timens(i32 noundef %which_clock, i32 noundef %flags, %struct.timespec64* nocapture noundef readonly %rqtp) #1 {
entry:
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %rqtp, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %0 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rqtp, i64 0, i32 1
  %.unpack10 = load i64, i64* %0, align 8
  %and = and i32 %flags, 1
  %1 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %2 = insertvalue [2 x i64] %1, i64 %.unpack10, 1
  %call = call fastcc i64 @timespec64_to_ktime([2 x i64] %2) #12
  %3 = xor i32 %and, 1
  %call4 = call i64 @hrtimer_nanosleep(i64 noundef %call, i32 noundef %3, i32 noundef %which_clock) #10
  %conv = trunc i64 %call4 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_monotonic_raw(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  call void @ktime_get_raw_ts64(%struct.timespec64* noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_coarse_res(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #1 {
entry:
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef 4000000) #10
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 0
  store i64 %call.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 1
  store i64 %call.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_realtime_coarse(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  call void @ktime_get_coarse_real_ts64(%struct.timespec64* noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_monotonic_coarse(i32 noundef %which_clock, %struct.timespec64* noundef %tp) #1 {
entry:
  call void @ktime_get_coarse_ts64(%struct.timespec64* noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_boottime_timespec(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #1 {
entry:
  call fastcc void @ktime_get_boottime_ts64(%struct.timespec64* noundef %tp) #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_get_boottime_ktime(i32 noundef %which_clock) #1 {
entry:
  %call = call fastcc i64 @ktime_get_boottime() #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ktime_get_boottime_ts64(%struct.timespec64* nocapture noundef writeonly %ts) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @ktime_get_boottime() #12
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #10
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_boottime() unnamed_addr #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @posix_get_tai_timespec(i32 noundef %which_clock, %struct.timespec64* nocapture noundef writeonly %tp) #1 {
entry:
  call fastcc void @ktime_get_clocktai_ts64(%struct.timespec64* noundef %tp) #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @posix_get_tai_ktime(i32 noundef %which_clock) #1 {
entry:
  %call = call fastcc i64 @ktime_get_clocktai() #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ktime_get_clocktai_ts64(%struct.timespec64* nocapture noundef writeonly %ts) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @ktime_get_clocktai() #12
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #10
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_clocktai() unnamed_addr #1 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 2) #10
  ret i64 %call
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 1387113}
!9 = !{i64 2149584381}
!10 = !{i64 2149373050}
!11 = !{i64 2149130378, i64 2149130425, i64 2149130431, i64 2149130468, i64 2149130486, i64 2149131797, i64 2149131845, i64 2149131893, i64 2149131956, i64 2149132005, i64 2149130564, i64 2149130589, i64 2149130615, i64 2149130621, i64 2149131463, i64 2149131503, i64 2149131521, i64 2149131553, i64 2149131581, i64 2149131635, i64 2149131655, i64 2149131752, i64 2149130644, i64 2149130658, i64 2149130664, i64 2149130714, i64 2149130760, i64 2149130793}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 4618579, i64 4618662, i64 4618886, i64 4619106, i64 4619129}
!15 = !{i64 4623281, i64 4623305}
!16 = !{i64 2152138120}
!17 = !{i64 2150889521}
!18 = !{i64 2149573539}
!19 = !{i64 2148083816, i64 2148083849, i64 2148083902, i64 2148083961, i64 2148083995, i64 2148084050, i64 2148084079, i64 2148084099}
!20 = !{i64 2149580820}
!21 = !{i64 2150038969}
!22 = !{i64 2147989857, i64 2147990521, i64 2147990551, i64 2147990583, i64 2147990617, i64 2147990652, i64 2147990677}
!23 = !{i64 2150039186}
!24 = !{i64 2149562831}
!25 = !{i64 2149118662, i64 2149118709, i64 2149118715, i64 2149118752, i64 2149118770, i64 2149120111, i64 2149120159, i64 2149120207, i64 2149120270, i64 2149120319, i64 2149118848, i64 2149118873, i64 2149118899, i64 2149118905, i64 2149119777, i64 2149119817, i64 2149119835, i64 2149119867, i64 2149119895, i64 2149119949, i64 2149119969, i64 2149120066, i64 2149118928, i64 2149118942, i64 2149118948, i64 2149118998, i64 2149119044, i64 2149119077}
!26 = !{i64 2149587684}
!27 = !{i64 2149109206, i64 2149109253, i64 2149109259, i64 2149109296, i64 2149109314, i64 2149110654, i64 2149110702, i64 2149110750, i64 2149110813, i64 2149110862, i64 2149109392, i64 2149109417, i64 2149109443, i64 2149109449, i64 2149110320, i64 2149110360, i64 2149110378, i64 2149110410, i64 2149110438, i64 2149110492, i64 2149110512, i64 2149110609, i64 2149109472, i64 2149109486, i64 2149109492, i64 2149109542, i64 2149109588, i64 2149109621}
!28 = !{i64 2149558538}
!29 = !{i64 2149124365, i64 2149124412, i64 2149124418, i64 2149124455, i64 2149124473, i64 2149125784, i64 2149125832, i64 2149125880, i64 2149125943, i64 2149125992, i64 2149124551, i64 2149124576, i64 2149124602, i64 2149124608, i64 2149125450, i64 2149125490, i64 2149125508, i64 2149125540, i64 2149125568, i64 2149125622, i64 2149125642, i64 2149125739, i64 2149124631, i64 2149124645, i64 2149124651, i64 2149124701, i64 2149124747, i64 2149124780}
!30 = !{i64 2149126544, i64 2149126591, i64 2149126597, i64 2149126634, i64 2149126652, i64 2149127595, i64 2149127643, i64 2149127691, i64 2149127754, i64 2149127803, i64 2149126730, i64 2149126755, i64 2149126781, i64 2149126787, i64 2149126824, i64 2149126830, i64 2149126880, i64 2149126926, i64 2149126959}
!31 = !{i64 2154858243}
!32 = !{i64 2154880359}
!33 = !{i64 2154878227}
!34 = !{i64 2154902898}
!35 = !{i64 469868, i64 469886}
!36 = !{i64 2147957070}
!37 = !{i64 1907535}
