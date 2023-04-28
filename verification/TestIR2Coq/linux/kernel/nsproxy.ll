; ModuleID = 'kernel/nsproxy.c'
source_filename = "kernel/nsproxy.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.67, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.65, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.page = type { i64, %union.anon.7, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.86, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.19, %struct.list_head, %struct.list_head, %union.anon.20 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %struct.hlist_node }
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
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.84 = type { %struct.callback_head }
%union.anon.85 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.21 }
%union.anon.21 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.22, %union.anon.25 }
%union.anon.22 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.25 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.27 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.23, %struct.qspinlock }
%union.anon.23 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.27 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.86 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.44 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.29 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i64, i64, i64, i32, i32, %struct.notifier_block, %struct.vfsmount*, i32, i32, i32, i32, i32, i32, %struct.user_namespace*, %struct.ucounts*, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.69, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.69 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sk_buff = type { %union.anon.71, %union.anon.74, %union.anon.75, [48 x i8], %union.anon.76, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.78, i32, i32, i32, i16, i16, %union.anon.80, %union.anon.81, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.73 }
%union.anon.73 = type { %struct.net_device* }
%union.anon.74 = type { %struct.sock* }
%union.anon.75 = type { i64 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, void (%struct.sk_buff*)* }
%union.anon.78 = type { i32 }
%union.anon.80 = type { i32 }
%union.anon.81 = type { i16 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.82 }
%struct.bpf_prog = type opaque
%union.anon.82 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.sock = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.50, %union.anon.51, i32 }
%struct.request_queue = type opaque
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.64, i32, [12 x i8] }
%union.anon.64 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.66, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.66 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.87, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.87 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@init_uts_ns = external dso_local global %struct.uts_namespace, align 8
@init_pid_ns = external dso_local global %struct.pid_namespace, align 8
@init_nsproxy = dso_local local_unnamed_addr global %struct.nsproxy { %struct.atomic_t { i32 1 }, %struct.uts_namespace* @init_uts_ns, %struct.ipc_namespace* null, %struct.mnt_namespace* null, %struct.pid_namespace* @init_pid_ns, %struct.net* null, %struct.time_namespace* null, %struct.time_namespace* null, %struct.cgroup_namespace* null }, align 8
@nsproxy_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"nsproxy\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_namespaces(i64 noundef %flags, %struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 86
  %0 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  call fastcc void @__rcu_read_lock() #7
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 79
  %1 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns5 = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 16
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns5, align 8
  call fastcc void @rcu_read_unlock() #8
  %and = and i64 %flags, 1845624960
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !7

if.then:                                          ; preds = %entry
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %0, i64 0, i32 7
  %3 = load %struct.time_namespace*, %struct.time_namespace** %time_ns_for_children, align 8
  %time_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %0, i64 0, i32 6
  %4 = load %struct.time_namespace*, %struct.time_namespace** %time_ns, align 8
  %cmp = icmp eq %struct.time_namespace* %3, %4
  br i1 %cmp, label %if.then18, label %if.end21, !prof !7

if.then18:                                        ; preds = %if.then
  call fastcc void @get_nsproxy(%struct.nsproxy* noundef %0) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call = call i1 @ns_capable(%struct.user_namespace* noundef %2, i32 noundef 21) #7
  br i1 %call, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.else, %if.then
  %and22 = and i64 %flags, 134479872
  %cmp23 = icmp eq i64 %and22, 134479872
  br i1 %cmp23, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %call27 = call fastcc %struct.nsproxy* @create_new_namespaces(i64 noundef %flags, %struct.task_struct* noundef %tsk, %struct.user_namespace* noundef %2, %struct.fs_struct* noundef %5) #8
  %6 = bitcast %struct.nsproxy* %call27 to i8*
  %call28 = call fastcc i1 @IS_ERR(i8* noundef %6) #8
  br i1 %call28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  %call30 = call fastcc i64 @PTR_ERR(i8* noundef %6) #8
  %conv31 = trunc i64 %call30 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  store %struct.nsproxy* %call27, %struct.nsproxy** %nsproxy, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.else, %if.end32, %if.then29, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ %conv31, %if.then29 ], [ 0, %if.end32 ], [ -1, %if.else ], [ -22, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_nsproxy(%struct.nsproxy* noundef %ns) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %ns, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %count) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.nsproxy* @create_new_namespaces(i64 noundef %flags, %struct.task_struct* nocapture noundef readonly %tsk, %struct.user_namespace* noundef %user_ns, %struct.fs_struct* noundef %new_fs) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.nsproxy* @create_nsproxy() #8
  %tobool.not = icmp eq %struct.nsproxy* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -12) #8
  %0 = bitcast i8* %call1 to %struct.nsproxy*
  br label %cleanup

if.end:                                           ; preds = %entry
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 86
  %1 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %1, i64 0, i32 3
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call2 = call %struct.mnt_namespace* @copy_mnt_ns(i64 noundef %flags, %struct.mnt_namespace* noundef %2, %struct.user_namespace* noundef %user_ns, %struct.fs_struct* noundef %new_fs) #7
  %mnt_ns3 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 3
  store %struct.mnt_namespace* %call2, %struct.mnt_namespace** %mnt_ns3, align 8
  %3 = bitcast %struct.mnt_namespace* %call2 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %3) #8
  br i1 %call5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %call8 = call fastcc i64 @PTR_ERR(i8* noundef %3) #8
  br label %out_ns

if.end9:                                          ; preds = %if.end
  %4 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 1
  %5 = load %struct.uts_namespace*, %struct.uts_namespace** %uts_ns, align 8
  %call11 = call fastcc %struct.uts_namespace* @copy_utsname(i64 noundef %flags, %struct.uts_namespace* noundef %5) #8
  %uts_ns12 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 1
  store %struct.uts_namespace* %call11, %struct.uts_namespace** %uts_ns12, align 8
  %6 = getelementptr %struct.uts_namespace, %struct.uts_namespace* %call11, i64 0, i32 0, i32 0, i64 0
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %6) #8
  br i1 %call14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end9
  %7 = getelementptr %struct.uts_namespace, %struct.uts_namespace* %call11, i64 0, i32 0, i32 0, i64 0
  %call17 = call fastcc i64 @PTR_ERR(i8* noundef %7) #8
  br label %out_uts

if.end19:                                         ; preds = %if.end9
  %8 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %ipc_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %8, i64 0, i32 2
  %9 = load %struct.ipc_namespace*, %struct.ipc_namespace** %ipc_ns, align 8
  %call21 = call fastcc %struct.ipc_namespace* @copy_ipcs(i64 noundef %flags, %struct.ipc_namespace* noundef %9) #8
  %ipc_ns22 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 2
  store %struct.ipc_namespace* %call21, %struct.ipc_namespace** %ipc_ns22, align 8
  %10 = bitcast %struct.ipc_namespace* %call21 to i8*
  %call24 = call fastcc i1 @IS_ERR(i8* noundef %10) #8
  br i1 %call24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end19
  %call27 = call fastcc i64 @PTR_ERR(i8* noundef %10) #8
  br label %out_uts

if.end29:                                         ; preds = %if.end19
  %11 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %11, i64 0, i32 4
  %12 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns_for_children, align 8
  %call31 = call fastcc %struct.pid_namespace* @copy_pid_ns(i64 noundef %flags, %struct.pid_namespace* noundef %12) #8
  %pid_ns_for_children32 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 4
  store %struct.pid_namespace* %call31, %struct.pid_namespace** %pid_ns_for_children32, align 8
  %13 = bitcast %struct.pid_namespace* %call31 to i8*
  %call34 = call fastcc i1 @IS_ERR(i8* noundef %13) #8
  br i1 %call34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end29
  %call37 = call fastcc i64 @PTR_ERR(i8* noundef %13) #8
  br label %out_uts

if.end39:                                         ; preds = %if.end29
  %14 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %14, i64 0, i32 8
  %15 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %cgroup_ns, align 8
  %cgroup_ns42 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 8
  store %struct.cgroup_namespace* %15, %struct.cgroup_namespace** %cgroup_ns42, align 8
  %16 = bitcast %struct.cgroup_namespace* %15 to i8*
  %call44 = call fastcc i1 @IS_ERR(i8* noundef %16) #8
  br i1 %call44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end39
  %call47 = call fastcc i64 @PTR_ERR(i8* noundef %16) #8
  br label %out_uts

if.end49:                                         ; preds = %if.end39
  %17 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %net_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %17, i64 0, i32 5
  %18 = load %struct.net*, %struct.net** %net_ns, align 8
  %call51 = call fastcc %struct.net* @copy_net_ns(i64 noundef %flags, %struct.net* noundef %18) #8
  %net_ns52 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 5
  store %struct.net* %call51, %struct.net** %net_ns52, align 8
  %19 = bitcast %struct.net* %call51 to i8*
  %call54 = call fastcc i1 @IS_ERR(i8* noundef %19) #8
  br i1 %call54, label %out_net, label %if.end59

if.end59:                                         ; preds = %if.end49
  %20 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %20, i64 0, i32 7
  %21 = load %struct.time_namespace*, %struct.time_namespace** %time_ns_for_children, align 8
  %call61 = call fastcc %struct.time_namespace* @copy_time_ns(i64 noundef %flags, %struct.time_namespace* noundef %21) #8
  %time_ns_for_children62 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 7
  store %struct.time_namespace* %call61, %struct.time_namespace** %time_ns_for_children62, align 8
  %22 = bitcast %struct.time_namespace* %call61 to i8*
  %call64 = call fastcc i1 @IS_ERR(i8* noundef %22) #8
  br i1 %call64, label %out_net, label %if.end69

if.end69:                                         ; preds = %if.end59
  %time_ns72 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %call, i64 0, i32 6
  store %struct.time_namespace* null, %struct.time_namespace** %time_ns72, align 8
  br label %cleanup

out_net:                                          ; preds = %if.end59, %if.end49
  %.sink = phi i8* [ %19, %if.end49 ], [ %22, %if.end59 ]
  %call67 = call fastcc i64 @PTR_ERR(i8* noundef %.sink) #8
  call fastcc void @put_cgroup_ns(%struct.cgroup_namespace* noundef %15) #8
  %.pre = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns3, align 8
  br label %out_uts

out_uts:                                          ; preds = %if.then25, %if.then45, %out_net, %if.then35, %if.then15
  %23 = phi %struct.mnt_namespace* [ %call2, %if.then15 ], [ %call2, %if.then25 ], [ %call2, %if.then35 ], [ %call2, %if.then45 ], [ %.pre, %out_net ]
  %err.4.in = phi i64 [ %call17, %if.then15 ], [ %call27, %if.then25 ], [ %call37, %if.then35 ], [ %call47, %if.then45 ], [ %call67, %out_net ]
  %tobool91.not = icmp eq %struct.mnt_namespace* %23, null
  br i1 %tobool91.not, label %out_ns, label %if.then92

if.then92:                                        ; preds = %out_uts
  call void @put_mnt_ns(%struct.mnt_namespace* noundef nonnull %23) #7
  br label %out_ns

out_ns:                                           ; preds = %out_uts, %if.then92, %if.then6
  %err.5.in = phi i64 [ %call8, %if.then6 ], [ %err.4.in, %if.then92 ], [ %err.4.in, %out_uts ]
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** @nsproxy_cachep, align 8
  %25 = bitcast %struct.nsproxy* %call to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %24, i8* noundef nonnull %25) #7
  %sext = shl i64 %err.5.in, 32
  %conv95 = ashr exact i64 %sext, 32
  %call96 = call fastcc i8* @ERR_PTR(i64 noundef %conv95) #8
  %26 = bitcast i8* %call96 to %struct.nsproxy*
  br label %cleanup

cleanup:                                          ; preds = %out_ns, %if.end69, %if.then
  %retval.0 = phi %struct.nsproxy* [ %26, %out_ns ], [ %call, %if.end69 ], [ %0, %if.then ]
  ret %struct.nsproxy* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_nsproxy(%struct.nsproxy* noundef %ns) local_unnamed_addr #0 {
entry:
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %ns, i64 0, i32 3
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  call void @put_mnt_ns(%struct.mnt_namespace* noundef nonnull %0) #7
  br label %if.end21

if.end21:                                         ; preds = %entry, %if.then
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %ns, i64 0, i32 8
  %1 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %cgroup_ns, align 8
  call fastcc void @put_cgroup_ns(%struct.cgroup_namespace* noundef %1) #8
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @nsproxy_cachep, align 8
  %3 = bitcast %struct.nsproxy* %ns to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(%struct.mnt_namespace* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cgroup_ns(%struct.cgroup_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cgroup_namespace* %ns, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %ns, i64 0, i32 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %count) #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unshare_nsproxy_namespaces(i64 noundef %unshare_flags, %struct.nsproxy** nocapture noundef %new_nsp, %struct.cred* noundef readonly %new_cred, %struct.fs_struct* noundef %new_fs) local_unnamed_addr #0 {
entry:
  %and = and i64 %unshare_flags, 1845624960
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.cred* %new_cred, null
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %user_ns2 = getelementptr inbounds %struct.cred, %struct.cred* %new_cred, i64 0, i32 16
  %0 = load %struct.user_namespace*, %struct.user_namespace** %user_ns2, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.user_namespace* [ %0, %cond.true ], [ @init_user_ns, %if.end ]
  %call3 = call i1 @ns_capable(%struct.user_namespace* noundef %cond, i32 noundef 21) #7
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %cond.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %tobool7.not = icmp eq %struct.fs_struct* %new_fs, null
  br i1 %tobool7.not, label %cond.false9, label %cond.end11

cond.false9:                                      ; preds = %if.end5
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  br label %cond.end11

cond.end11:                                       ; preds = %if.end5, %cond.false9
  %cond12 = phi %struct.fs_struct* [ %3, %cond.false9 ], [ %new_fs, %if.end5 ]
  %call13 = call fastcc %struct.nsproxy* @create_new_namespaces(i64 noundef %unshare_flags, %struct.task_struct* noundef %2, %struct.user_namespace* noundef %cond, %struct.fs_struct* noundef %cond12) #8
  store %struct.nsproxy* %call13, %struct.nsproxy** %new_nsp, align 8
  %4 = bitcast %struct.nsproxy* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %4) #8
  br i1 %call14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %cond.end11
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %4) #8
  %conv = trunc i64 %call16 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %cond.end11, %cond.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %cond.end ], [ %conv, %if.then15 ], [ 0, %cond.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @switch_task_namespaces(%struct.task_struct* noundef %p, %struct.nsproxy* noundef %new) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %p) #8
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 86
  %0 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  store %struct.nsproxy* %new, %struct.nsproxy** %nsproxy, align 64
  call fastcc void @task_unlock(%struct.task_struct* noundef %p) #8
  %tobool.not = icmp eq %struct.nsproxy* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @put_nsproxy(%struct.nsproxy* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_nsproxy(%struct.nsproxy* noundef %ns) unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %ns, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count) #7
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @free_nsproxy(%struct.nsproxy* noundef %ns) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_task_namespaces(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  call void @switch_task_namespaces(%struct.task_struct* noundef %p, %struct.nsproxy* noundef null) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setns(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setns(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setns(i64 noundef %fd, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fd to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_setns(i32 noundef %conv, i32 noundef %conv1) #8
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @nsproxy_cache_init() local_unnamed_addr #4 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #7
  store %struct.kmem_cache* %call, %struct.kmem_cache** @nsproxy_cachep, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  call void @rcu_read_unlock_strict() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.nsproxy* @create_nsproxy() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @nsproxy_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %counter.i = bitcast i8* %call to i32*
  store volatile i32 1, i32* %counter.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast i8* %call to %struct.nsproxy*
  ret %struct.nsproxy* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mnt_namespace* @copy_mnt_ns(i64 noundef, %struct.mnt_namespace* noundef, %struct.user_namespace* noundef, %struct.fs_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.uts_namespace* @copy_utsname(i64 noundef %flags, %struct.uts_namespace* noundef readnone %old_ns) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 67108864
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %0 = bitcast i8* %call to %struct.uts_namespace*
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.uts_namespace* [ %0, %if.then ], [ %old_ns, %entry ]
  ret %struct.uts_namespace* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.ipc_namespace* @copy_ipcs(i64 noundef %flags, %struct.ipc_namespace* noundef readnone %ns) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 134217728
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %0 = bitcast i8* %call to %struct.ipc_namespace*
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ipc_namespace* [ %0, %if.then ], [ %ns, %entry ]
  ret %struct.ipc_namespace* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pid_namespace* @copy_pid_ns(i64 noundef %flags, %struct.pid_namespace* noundef readnone %ns) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 536870912
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %0 = bitcast i8* %call to %struct.pid_namespace*
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.addr.0 = phi %struct.pid_namespace* [ %0, %if.then ], [ %ns, %entry ]
  ret %struct.pid_namespace* %ns.addr.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.net* @copy_net_ns(i64 noundef %flags, %struct.net* noundef readnone %old_net) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 1073741824
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %0 = bitcast i8* %call to %struct.net*
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.net* [ %0, %if.then ], [ %old_net, %entry ]
  ret %struct.net* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.time_namespace* @copy_time_ns(i64 noundef %flags, %struct.time_namespace* noundef readnone %old_ns) unnamed_addr #3 {
entry:
  %and = and i64 %flags, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #8
  %0 = bitcast i8* %call to %struct.time_namespace*
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.time_namespace* [ %0, %if.then ], [ %old_ns, %entry ]
  ret %struct.time_namespace* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #7
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #10, !srcloc !12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !7

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #7
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !13
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !18
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setns(i32 noundef %fd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %nsset = alloca %struct.nsset, align 8
  %0 = bitcast %struct.nsset* %nsset to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %call = call %struct.file* @fget(i32 noundef %fd) #7
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i1 @proc_ns_file(%struct.file* noundef nonnull %call) #7
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %call) #8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call3, i64 0, i32 42
  %1 = bitcast i8** %i_private to %struct.ns_common**
  %2 = load %struct.ns_common*, %struct.ns_common** %1, align 8
  %tobool4.not = icmp eq i32 %flags, 0
  %ops7.phi.trans.insert = getelementptr inbounds %struct.ns_common, %struct.ns_common* %2, i64 0, i32 1
  %.pre = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ops7.phi.trans.insert, align 8
  %type8.phi.trans.insert = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %.pre, i64 0, i32 2
  %.pre58 = load i32, i32* %type8.phi.trans.insert, align 8
  %cmp.not = icmp eq i32 %.pre58, %flags
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end18, label %out

if.else:                                          ; preds = %if.end
  %call9 = call %struct.pid* @pidfd_pid(%struct.file* noundef nonnull %call) #7
  %3 = bitcast %struct.pid* %call9 to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %3) #8
  br i1 %call10, label %out, label %if.end15

if.end15:                                         ; preds = %if.else
  %conv = sext i32 %flags to i64
  %call12 = call fastcc i32 @check_setns_flags(i64 noundef %conv) #8
  %tobool16.not = icmp eq i32 %call12, 0
  br i1 %tobool16.not, label %if.end18, label %out

if.end18:                                         ; preds = %if.then2, %if.end15
  %ns.064 = phi %struct.ns_common* [ null, %if.end15 ], [ %2, %if.then2 ]
  %flags.addr.063 = phi i32 [ %flags, %if.end15 ], [ %.pre58, %if.then2 ]
  %call19 = call fastcc i32 @prepare_nsset(i32 noundef %flags.addr.063, %struct.nsset* noundef nonnull %nsset) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %out

if.end22:                                         ; preds = %if.end18
  %call23 = call i1 @proc_ns_file(%struct.file* noundef nonnull %call) #7
  br i1 %call23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end22
  %call25 = call fastcc i32 @validate_ns(%struct.nsset* noundef nonnull %nsset, %struct.ns_common* noundef %ns.064) #8
  br label %if.end28

if.else26:                                        ; preds = %if.end22
  %private_data = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 15
  %4 = bitcast i8** %private_data to %struct.pid**
  %5 = load %struct.pid*, %struct.pid** %4, align 8
  %call27 = call fastcc i32 @validate_nsset(%struct.nsset* noundef nonnull %nsset, %struct.pid* noundef %5) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %err.2 = phi i32 [ %call25, %if.then24 ], [ %call27, %if.else26 ]
  %tobool29.not = icmp eq i32 %err.2, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  call fastcc void @commit_nsset(%struct.nsset* noundef nonnull %nsset) #8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  call fastcc void @put_nsset(%struct.nsset* noundef nonnull %nsset) #8
  br label %out

out:                                              ; preds = %if.then2, %if.else, %if.end18, %if.end15, %if.end32
  %err.3 = phi i32 [ %call12, %if.end15 ], [ %call19, %if.end18 ], [ %err.2, %if.end32 ], [ -22, %if.else ], [ -22, %if.then2 ]
  call void @fput(%struct.file* noundef nonnull %call) #7
  %conv33 = sext i32 %err.3 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i64 [ %conv33, %out ], [ -9, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @proc_ns_file(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_pid(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_setns_flags(i64 noundef %flags) unnamed_addr #3 {
entry:
  %0 = icmp eq i64 %flags, 131072
  %retval.0 = select i1 %0, i32 0, i32 -22
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prepare_nsset(i32 noundef %flags, %struct.nsset* nocapture noundef %nsset) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %2 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %call2 = call fastcc %struct.nsproxy* @create_new_namespaces(i64 noundef 0, %struct.task_struct* noundef %1, %struct.user_namespace* noundef nonnull @init_user_ns, %struct.fs_struct* noundef %2) #8
  %nsproxy = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 1
  store %struct.nsproxy* %call2, %struct.nsproxy** %nsproxy, align 8
  %3 = bitcast %struct.nsproxy* %call2 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %3) #8
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %3) #8
  %conv = trunc i64 %call6 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 268435456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call %struct.cred* @prepare_creds() #7
  br label %if.end12

do.end:                                           ; preds = %if.end
  %cred10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred10, align 8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then7
  %call8.sink = phi %struct.cred* [ %4, %do.end ], [ %call8, %if.then7 ]
  %5 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 3
  store %struct.cred* %call8.sink, %struct.cred** %5, align 8
  %tobool14.not = icmp eq %struct.cred* %call8.sink, null
  br i1 %tobool14.not, label %out, label %if.end16

if.end16:                                         ; preds = %if.end12
  %cmp = icmp eq i32 %flags, 131072
  br i1 %cmp, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end16
  %6 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %fs20 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 2
  store %struct.fs_struct* %6, %struct.fs_struct** %fs20, align 8
  br label %if.end33

if.else21:                                        ; preds = %if.end16
  %and22 = and i32 %flags, 131072
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end33, label %if.then24

if.then24:                                        ; preds = %if.else21
  %7 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %call26 = call %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* noundef %7) #7
  %fs27 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 2
  store %struct.fs_struct* %call26, %struct.fs_struct** %fs27, align 8
  %tobool29.not = icmp eq %struct.fs_struct* %call26, null
  br i1 %tobool29.not, label %out, label %if.end33

if.end33:                                         ; preds = %if.else21, %if.then24, %if.then18
  %flags34 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 0
  store i32 %flags, i32* %flags34, align 8
  br label %cleanup

out:                                              ; preds = %if.then24, %if.end12
  call fastcc void @put_nsset(%struct.nsset* noundef %nsset) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end33, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end33 ], [ -12, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_ns(%struct.nsset* noundef %nsset, %struct.ns_common* noundef %ns) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 1
  %0 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %ops, align 8
  %install = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %0, i64 0, i32 5
  %1 = load i32 (%struct.nsset*, %struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)** %install, align 8
  %call = call i32 %1(%struct.nsset* noundef %nsset, %struct.ns_common* noundef %ns) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_nsset(%struct.nsset* noundef %nsset, %struct.pid* noundef %pid) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 8
  call fastcc void @__rcu_read_lock() #7
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef 0) #7
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i1 @ptrace_may_access(%struct.task_struct* noundef nonnull %call, i32 noundef 17) #7
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @rcu_read_unlock() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call) #8
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 86
  %1 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %tobool5.not = icmp eq %struct.nsproxy* %1, null
  br i1 %tobool5.not, label %if.then9.critedge, label %if.then6

if.then6:                                         ; preds = %if.end4
  call fastcc void @get_nsproxy(%struct.nsproxy* noundef nonnull %1) #8
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @rcu_read_unlock() #8
  %and = and i32 %0, 131072
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then23, label %if.then12

if.then9.critedge:                                ; preds = %if.end4
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #8
  call fastcc void @rcu_read_unlock() #8
  br label %cleanup

if.then12:                                        ; preds = %if.then6
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %1, i64 0, i32 3
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call13 = call %struct.ns_common* @from_mnt_ns(%struct.mnt_namespace* noundef %2) #7
  %call14 = call fastcc i32 @validate_ns(%struct.nsset* noundef %nsset, %struct.ns_common* noundef %call13) #8
  br label %if.then23

if.then23:                                        ; preds = %if.then12, %if.then6
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ 0, %if.then6 ]
  call fastcc void @put_nsproxy(%struct.nsproxy* noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then9.critedge, %if.then3, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.then23 ], [ -3, %if.then9.critedge ], [ -1, %if.then3 ], [ -3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @commit_nsset(%struct.nsset* nocapture noundef %nsset) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %and = and i32 %0, 131072
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %0, -131073
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %fs4 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 2
  %4 = load %struct.fs_struct*, %struct.fs_struct** %fs4, align 8
  %root = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %4, i64 0, i32 5
  call void @set_fs_root(%struct.fs_struct* noundef %3, %struct.path* noundef %root) #7
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %6 = load %struct.fs_struct*, %struct.fs_struct** %fs4, align 8
  %pwd = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %6, i64 0, i32 6
  call void @set_fs_pwd(%struct.fs_struct* noundef %5, %struct.path* noundef %pwd) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nsproxy = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 1
  %7 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 8
  call void @switch_task_namespaces(%struct.task_struct* noundef %2, %struct.nsproxy* noundef %7) #8
  store %struct.nsproxy* null, %struct.nsproxy** %nsproxy, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_nsset(%struct.nsset* nocapture noundef readonly %nsset) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 0
  %0 = load i32, i32* %flags1, align 8
  %and = and i32 %0, 268435456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.cred* @nsset_cred(%struct.nsset* noundef %nsset) #8
  call fastcc void @put_cred(%struct.cred* noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fs = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 2
  %1 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %tobool2.not = icmp eq %struct.fs_struct* %1, null
  %and3 = and i32 %0, 131072
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  %and6 = and i32 %0, -131073
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond24 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond24, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @free_fs_struct(%struct.fs_struct* noundef nonnull %1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %nsproxy = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 1
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 8
  %tobool11.not = icmp eq %struct.nsproxy* %2, null
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @free_nsproxy(%struct.nsproxy* noundef nonnull %2) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ns_common* @from_mnt_ns(%struct.mnt_namespace* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #7
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cred* @nsset_cred(%struct.nsset* nocapture noundef readonly %set) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.nsset, %struct.nsset* %set, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 268435456
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %cred = getelementptr inbounds %struct.nsset, %struct.nsset* %set, i64 0, i32 3
  %1 = load %struct.cred*, %struct.cred** %cred, align 8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.cred* [ %1, %if.then ], [ null, %entry ]
  ret %struct.cred* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(%struct.fs_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }

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
!8 = !{i64 1279291}
!9 = !{i64 2149931147}
!10 = !{i64 2149931364}
!11 = !{i64 2147893906, i64 2147894422, i64 2147894452, i64 2147894479, i64 2147894513, i64 2147894543}
!12 = !{i64 2150145198}
!13 = !{i64 2147911652, i64 2147912326, i64 2147912356, i64 2147912388, i64 2147912422, i64 2147912458, i64 2147912483}
!14 = !{i64 2149465717}
!15 = !{i64 2147993829, i64 2147993862, i64 2147993915, i64 2147993974, i64 2147994008, i64 2147994063, i64 2147994092, i64 2147994112}
!16 = !{i64 2149472998}
!17 = !{i64 2149265228}
!18 = !{i64 2147904479, i64 2147905127, i64 2147905157, i64 2147905189, i64 2147905223, i64 2147905259, i64 2147905284}
