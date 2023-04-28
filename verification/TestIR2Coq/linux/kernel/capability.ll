; ModuleID = 'kernel/capability.c'
source_filename = "kernel/capability.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
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
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__user_cap_header_struct = type { i32, i32 }
%struct.__user_cap_data_struct = type { i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.7, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
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
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.47 = type { %struct.atomic_t }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
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

@__cap_empty_set = dso_local local_unnamed_addr constant %struct.kernel_cap_struct zeroinitializer, align 4
@file_caps_enabled = dso_local local_unnamed_addr global i32 1, align 4
@__setup_str_file_caps_disable = internal constant [13 x i8] c"no_file_caps\00", section ".init.rodata", align 1
@__setup_file_caps_disable = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_file_caps_disable, i32 0, i32 0), i32 (i8*)* @file_caps_disable, i32 0 }, section ".init.setup", align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@warn_legacy_capability_use.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [78 x i8] c"\016capability: warning: `%s' uses 32-bit capabilities (legacy support in use)\0A\00", align 1
@warn_deprecated_v2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"\016capability: warning: `%s' uses deprecated v2 capabilities in a way that may be insecure\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\012capability: capable() called with invalid cap=%u\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_file_caps_disable to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @file_caps_disable(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i32 0, i32* @file_caps_enabled, align 4
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_capget(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_capget(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_capget(i64 noundef %header, i64 noundef %dataptr) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %header to %struct.__user_cap_header_struct*
  %1 = inttoptr i64 %dataptr to %struct.__user_cap_data_struct*
  %call = call fastcc i64 @__do_sys_capget(%struct.__user_cap_header_struct* noundef %0, %struct.__user_cap_data_struct* noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_capset(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_capset(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_capset(i64 noundef %header, i64 noundef %data) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %header to %struct.__user_cap_header_struct*
  %1 = inttoptr i64 %data to %struct.__user_cap_data_struct*
  %call = call fastcc i64 @__do_sys_capset(%struct.__user_cap_header_struct* noundef %0, %struct.__user_cap_data_struct* noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_ns_capability(%struct.task_struct* noundef %t, %struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #9
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %call = call fastcc i32 @security_capable(%struct.cred* noundef %0, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 0) #8
  call fastcc void @rcu_read_unlock() #8
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_capable(%struct.cred* noundef %cred, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef %opts) unnamed_addr #1 {
entry:
  %call = call i32 @cap_capable(%struct.cred* noundef %cred, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef %opts) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_capability(%struct.task_struct* noundef %t, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call i1 @has_ns_capability(%struct.task_struct* noundef %t, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef %cap) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_ns_capability_noaudit(%struct.task_struct* noundef %t, %struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #9
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %call = call fastcc i32 @security_capable(%struct.cred* noundef %0, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 2) #8
  call fastcc void @rcu_read_unlock() #8
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @has_capability_noaudit(%struct.task_struct* noundef %t, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call i1 @has_ns_capability_noaudit(%struct.task_struct* noundef %t, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef %cap) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @ns_capable(%struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @ns_capable_common(%struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 0) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ns_capable_common(%struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef %opts) unnamed_addr #1 {
entry:
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %do.end, label %do.end12, !prof !7

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %cap) #10
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/capability.c\22; .popsection; .long 14472b - 14470b; .short 372; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  unreachable

do.end12:                                         ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %call15 = call fastcc i32 @security_capable(%struct.cred* noundef %3, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef %opts) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %cleanup

if.then18:                                        ; preds = %do.end12
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %or = or i32 %4, 256
  store i32 %or, i32* %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then18
  ret i1 %cmp16
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @ns_capable_noaudit(%struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @ns_capable_common(%struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 2) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @ns_capable_setid(%struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @ns_capable_common(%struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 4) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @capable(i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef %cap) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @file_ns_capable(%struct.file* nocapture noundef readonly %file, %struct.user_namespace* noundef %ns, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %if.then, label %if.end18, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/capability.c\22; .popsection; .long 14472b - 14470b; .short 470; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  br label %return

if.end18:                                         ; preds = %entry
  %f_cred = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 12
  %1 = load %struct.cred*, %struct.cred** %f_cred, align 8
  %call = call fastcc i32 @security_capable(%struct.cred* noundef %1, %struct.user_namespace* noundef %ns, i32 noundef %cap, i32 noundef 0) #8
  %cmp19 = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %if.then, %if.end18
  %retval.0 = phi i1 [ false, %if.then ], [ %cmp19, %if.end18 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @privileged_wrt_inode_uidgid(%struct.user_namespace* nocapture readnone %ns, %struct.user_namespace* nocapture readnone %mnt_userns, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #8
  %coerce.val.ii = zext i32 %call to i64
  %call2 = call fastcc i1 @kuid_has_mapping(i64 %coerce.val.ii) #8
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call4 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #8
  %coerce.val.ii7 = zext i32 %call4 to i64
  %call8 = call fastcc i1 @kgid_has_mapping(i64 %coerce.val.ii7) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call8, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kuid_has_mapping(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #8
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kgid_has_mapping(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i1 @gid_valid(i64 %coerce.val.ii2) #8
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @capable_wrt_inode_uidgid(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* nocapture noundef readonly %inode, i32 noundef %cap) local_unnamed_addr #1 {
entry:
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef %cap) #8
  br i1 %call1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call2 = call i1 @privileged_wrt_inode_uidgid(%struct.user_namespace* undef, %struct.user_namespace* undef, %struct.inode* noundef %inode) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call2, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @ptracer_capable(%struct.task_struct* noundef %tsk, %struct.user_namespace* noundef %ns) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #9
  %ptracer_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 78
  %0 = load volatile %struct.cred*, %struct.cred** %ptracer_cred, align 8
  %tobool.not = icmp eq %struct.cred* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @security_capable(%struct.cred* noundef nonnull %0, %struct.user_namespace* noundef %ns, i32 noundef 19, i32 noundef 2) #8
  %phi.cmp = icmp eq i32 %call, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i1 [ %phi.cmp, %if.then ], [ true, %entry ]
  call fastcc void @rcu_read_unlock() #8
  ret i1 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_capget(%struct.__user_cap_header_struct* noundef %header, %struct.__user_cap_data_struct* noundef %dataptr) unnamed_addr #1 {
entry:
  %tocopy = alloca i32, align 4
  %pE = alloca i64, align 8, !annotation !11
  %tmpcast = bitcast i64* %pE to %struct.kernel_cap_struct*, !annotation !11
  %pI = alloca i64, align 8, !annotation !11
  %tmpcast83 = bitcast i64* %pI to %struct.kernel_cap_struct*, !annotation !11
  %pP = alloca i64, align 8, !annotation !11
  %tmpcast84 = bitcast i64* %pP to %struct.kernel_cap_struct*, !annotation !11
  %kdata = alloca [2 x %struct.__user_cap_data_struct], align 4
  %0 = bitcast i32* %tocopy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %tocopy, align 4, !annotation !11
  %1 = bitcast i64* %pE to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i64 0, i64* %pE, align 8, !annotation !11
  %2 = bitcast i64* %pI to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i64 0, i64* %pI, align 8, !annotation !11
  %3 = bitcast i64* %pP to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store i64 0, i64* %pP, align 8, !annotation !11
  %call = call fastcc i32 @cap_validate_magic(%struct.__user_cap_header_struct* noundef %header, i32* noundef nonnull %tocopy) #8
  %cmp = icmp eq %struct.__user_cap_data_struct* %dataptr, null
  %cmp1 = icmp ne i32 %call, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %call, -22
  %or.cond58 = select i1 %cmp, i1 %cmp3, i1 false
  %4 = sext i32 %call to i64
  %conv = select i1 %or.cond58, i64 0, i64 %4
  br label %cleanup51

if.end:                                           ; preds = %entry
  %pid4 = getelementptr inbounds %struct.__user_cap_header_struct, %struct.__user_cap_header_struct* %header, i64 0, i32 1
  %5 = bitcast i32* %pid4 to i8*
  %call5 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 4) #8
  %tobool.not = icmp eq i64 %call5, 0
  br i1 %tobool.not, label %cleanup51, label %if.end16

if.end16:                                         ; preds = %if.end
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #8
  %6 = bitcast i8* %call7 to i32*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %6, i32 -14, i32 0) #11, !srcloc !12
  %asmresult = extractvalue { i32, i64 } %7, 0
  %asmresult11 = extractvalue { i32, i64 } %7, 1
  %conv12 = trunc i64 %asmresult11 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end21, label %cleanup51

if.end21:                                         ; preds = %if.end16
  %cmp22 = icmp slt i32 %conv12, 0
  br i1 %cmp22, label %cleanup51, label %if.end25

if.end25:                                         ; preds = %if.end21
  %call26 = call fastcc i32 @cap_get_target_pid(i32 noundef %conv12, %struct.kernel_cap_struct* noundef nonnull %tmpcast, %struct.kernel_cap_struct* noundef nonnull %tmpcast83, %struct.kernel_cap_struct* noundef nonnull %tmpcast84) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end49

if.then28:                                        ; preds = %if.end25
  %8 = bitcast [2 x %struct.__user_cap_data_struct]* %kdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false), !annotation !11
  %9 = load i32, i32* %tocopy, align 4
  %cmp2989.not = icmp eq i32 %9, 0
  br i1 %cmp2989.not, label %copy_to_user.exit, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then28
  %cap = bitcast i64* %pE to [2 x i32]*
  %cap33 = bitcast i64* %pP to [2 x i32]*
  %cap38 = bitcast i64* %pI to [2 x i32]*
  %wide.trip.count = zext i32 %9 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %cap, i64 0, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx, align 4
  %effective = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 0
  store i32 %10, i32* %effective, align 4
  %arrayidx35 = getelementptr [2 x i32], [2 x i32]* %cap33, i64 0, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx35, align 4
  %permitted = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 1
  store i32 %11, i32* %permitted, align 4
  %arrayidx40 = getelementptr [2 x i32], [2 x i32]* %cap38, i64 0, i64 %indvars.iv
  %12 = load i32, i32* %arrayidx40, align 4
  %inheritable = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 2
  store i32 %12, i32* %inheritable, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %mul = mul nuw nsw i64 %wide.trip.count, 12
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !7

copy_to_user.exit.thread:                         ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #11
  br label %cleanup51

copy_to_user.exit:                                ; preds = %if.then28, %for.end
  %mul95 = phi i64 [ %mul, %for.end ], [ 0, %if.then28 ]
  %13 = bitcast %struct.__user_cap_data_struct* %dataptr to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %13, i8* noundef nonnull %8, i64 noundef %mul95) #9
  %tobool45.not = icmp eq i64 %call2.i, 0
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #11
  br i1 %tobool45.not, label %if.end49, label %cleanup51

if.end49:                                         ; preds = %copy_to_user.exit, %if.end25
  %conv50 = sext i32 %call26 to i64
  br label %cleanup51

cleanup51:                                        ; preds = %if.end, %copy_to_user.exit.thread, %if.end21, %if.end16, %copy_to_user.exit, %if.end49, %if.then
  %retval.1 = phi i64 [ %conv, %if.then ], [ %conv50, %if.end49 ], [ -14, %copy_to_user.exit ], [ -14, %if.end16 ], [ -22, %if.end21 ], [ -14, %copy_to_user.exit.thread ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i64 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cap_validate_magic(%struct.__user_cap_header_struct* noundef %header, i32* nocapture noundef writeonly %tocopy) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.__user_cap_header_struct* %header to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #8
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #8
  %1 = bitcast i8* %call2 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #11, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end
  %asmresult6 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult6 to i32
  switch i32 %conv, label %sw.default [
    i32 429392688, label %sw.bb
    i32 537333798, label %sw.bb15
    i32 537396514, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end14
  call fastcc void @warn_legacy_capability_use() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14
  call fastcc void @warn_deprecated_v2() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  %call20 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #8
  %tobool21.not = icmp eq i64 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %sw.default
  %call23 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #8
  %3 = bitcast i8* %call23 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 537396514, i32* %3, i32 -14, i32 0) #11, !srcloc !15
  %phi.cmp55 = icmp eq i32 %4, 0
  %spec.select = select i1 %phi.cmp55, i32 -22, i32 -14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %if.end14, %sw.bb
  %storemerge = phi i32 [ 1, %sw.bb ], [ 2, %if.end14 ], [ 2, %sw.bb15 ]
  store i32 %storemerge, i32* %tocopy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %sw.default, %entry, %if.end, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %if.end ], [ -14, %entry ], [ -14, %sw.default ], [ %spec.select, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #11, !srcloc !16
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #11, !srcloc !17
  call void asm sideeffect "hint #20", "~{memory}"() #11, !srcloc !18
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cap_get_target_pid(i32 noundef %pid, %struct.kernel_cap_struct* noundef %pEp, %struct.kernel_cap_struct* noundef %pIp, %struct.kernel_cap_struct* noundef %pPp) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.else6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #8
  %cmp.not = icmp eq i32 %call1, %pid
  br i1 %cmp.not, label %if.else6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @__rcu_read_lock() #9
  %call2 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #9
  %tobool3.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool3.not, label %if.end, label %if.else

if.else:                                          ; preds = %if.then
  %call5 = call fastcc i32 @security_capget(%struct.task_struct* noundef nonnull %call2, %struct.kernel_cap_struct* noundef %pEp, %struct.kernel_cap_struct* noundef %pIp, %struct.kernel_cap_struct* noundef %pPp) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %ret.0 = phi i32 [ %call5, %if.else ], [ -3, %if.then ]
  call fastcc void @rcu_read_unlock() #8
  br label %if.end9

if.else6:                                         ; preds = %entry, %land.lhs.true
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call8 = call fastcc i32 @security_capget(%struct.task_struct* noundef %3, %struct.kernel_cap_struct* noundef %pEp, %struct.kernel_cap_struct* noundef %pIp, %struct.kernel_cap_struct* noundef %pPp) #8
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.end
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ %call8, %if.else6 ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_legacy_capability_use() unnamed_addr #1 {
entry:
  %name = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !11
  %.b20 = load i1, i1* @warn_legacy_capability_use.__already_done, align 1
  br i1 %.b20, label %if.end, label %if.then, !prof !19

if.then:                                          ; preds = %entry
  store i1 true, i1* @warn_legacy_capability_use.__already_done, align 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call9 = call i8* @__get_task_comm(i8* noundef nonnull %0, i64 noundef 16, %struct.task_struct* noundef %2) #9
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* noundef %call9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_deprecated_v2() unnamed_addr #1 {
entry:
  %name = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !11
  %.b20 = load i1, i1* @warn_deprecated_v2.__already_done, align 1
  br i1 %.b20, label %if.end, label %if.then, !prof !19

if.then:                                          ; preds = %entry
  store i1 true, i1* @warn_deprecated_v2.__already_done, align 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call9 = call i8* @__get_task_comm(i8* noundef nonnull %0, i64 noundef 16, %struct.task_struct* noundef %2) #9
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__get_task_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #1 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_capget(%struct.task_struct* noundef %target, %struct.kernel_cap_struct* noundef %effective, %struct.kernel_cap_struct* noundef %inheritable, %struct.kernel_cap_struct* noundef %permitted) unnamed_addr #1 {
entry:
  %call = call i32 @cap_capget(%struct.task_struct* noundef %target, %struct.kernel_cap_struct* noundef %effective, %struct.kernel_cap_struct* noundef %inheritable, %struct.kernel_cap_struct* noundef %permitted) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capget(%struct.task_struct* noundef, %struct.kernel_cap_struct* noundef, %struct.kernel_cap_struct* noundef, %struct.kernel_cap_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #8
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #9
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_capset(%struct.__user_cap_header_struct* noundef %header, %struct.__user_cap_data_struct* noundef %data) unnamed_addr #1 {
entry:
  %kdata = alloca [2 x %struct.__user_cap_data_struct], align 4
  %tocopy = alloca i32, align 4
  %inheritable = alloca i64, align 8, !annotation !11
  %tmpcast = bitcast i64* %inheritable to %struct.kernel_cap_struct*, !annotation !11
  %permitted = alloca i64, align 8, !annotation !11
  %tmpcast141 = bitcast i64* %permitted to %struct.kernel_cap_struct*, !annotation !11
  %effective = alloca i64, align 8, !annotation !11
  %tmpcast142 = bitcast i64* %effective to %struct.kernel_cap_struct*, !annotation !11
  %0 = bitcast [2 x %struct.__user_cap_data_struct]* %kdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !11
  %1 = bitcast i32* %tocopy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %tocopy, align 4, !annotation !11
  %2 = bitcast i64* %inheritable to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i64 0, i64* %inheritable, align 8, !annotation !11
  %3 = bitcast i64* %permitted to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store i64 0, i64* %permitted, align 8, !annotation !11
  %4 = bitcast i64* %effective to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11
  store i64 0, i64* %effective, align 8, !annotation !11
  %call = call fastcc i32 @cap_validate_magic(%struct.__user_cap_header_struct* noundef %header, i32* noundef nonnull %tocopy) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %pid1 = getelementptr inbounds %struct.__user_cap_header_struct, %struct.__user_cap_header_struct* %header, i64 0, i32 1
  %5 = bitcast i32* %pid1 to i8*
  %call2 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 4) #8
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #8
  %6 = bitcast i8* %call4 to i32*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %6, i32 -14, i32 0) #11, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %7, 0
  %asmresult8 = extractvalue { i32, i64 } %7, 1
  %conv9 = trunc i64 %asmresult8 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end13
  %cmp19.not = icmp eq i32 %conv9, 0
  br i1 %cmp19.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %call22 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %9) #8
  %cmp23.not = icmp eq i32 %call22, %conv9
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %land.lhs.true, %if.end18
  %10 = load i32, i32* %tocopy, align 4
  %mul = mul i32 %10, 12
  %cmp30 = icmp ugt i32 %mul, 24
  br i1 %cmp30, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end26
  %conv29 = zext i32 %mul to i64
  %11 = bitcast %struct.__user_cap_data_struct* %data to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %11, i64 noundef %conv29) #9
  %tobool36.not = icmp eq i64 %call2.i, 0
  br i1 %tobool36.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end33
  %cmp39145.not = icmp eq i32 %10, 0
  br i1 %cmp39145.not, label %while.body.lr.ph, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cap = bitcast i64* %effective to [2 x i32]*
  %cap47 = bitcast i64* %permitted to [2 x i32]*
  %cap53 = bitcast i64* %inheritable to [2 x i32]*
  %wide.trip.count = zext i32 %10 to i64
  br label %for.body

while.cond.preheader:                             ; preds = %for.body
  %cmp56147 = icmp ult i32 %10, 2
  br i1 %cmp56147, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.cond.preheader, %while.cond.preheader
  %i.0.lcssa157 = phi i32 [ %10, %while.cond.preheader ], [ 0, %for.cond.preheader ]
  %cap58 = bitcast i64* %effective to [2 x i32]*
  %cap61 = bitcast i64* %permitted to [2 x i32]*
  %cap64 = bitcast i64* %inheritable to [2 x i32]*
  %12 = zext i32 %i.0.lcssa157 to i64
  %arrayidx60.peel = getelementptr [2 x i32], [2 x i32]* %cap58, i64 0, i64 %12
  store i32 0, i32* %arrayidx60.peel, align 4
  %arrayidx63.peel = getelementptr [2 x i32], [2 x i32]* %cap61, i64 0, i64 %12
  store i32 0, i32* %arrayidx63.peel, align 4
  %arrayidx66.peel = getelementptr [2 x i32], [2 x i32]* %cap64, i64 0, i64 %12
  store i32 0, i32* %arrayidx66.peel, align 4
  %cmp56.peel = icmp eq i32 %i.0.lcssa157, 0
  br i1 %cmp56.peel, label %while.body.lr.ph.peel.newph, label %while.end

while.body.lr.ph.peel.newph:                      ; preds = %while.body.lr.ph
  %arrayidx60 = getelementptr inbounds [2 x i32], [2 x i32]* %cap58, i64 0, i64 1
  store i32 0, i32* %arrayidx60, align 4
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %cap61, i64 0, i64 1
  store i32 0, i32* %arrayidx63, align 4
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %cap64, i64 0, i64 1
  store i32 0, i32* %arrayidx66, align 4
  br label %while.end

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %effective41 = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 0
  %13 = load i32, i32* %effective41, align 4
  %arrayidx43 = getelementptr [2 x i32], [2 x i32]* %cap, i64 0, i64 %indvars.iv
  store i32 %13, i32* %arrayidx43, align 4
  %permitted46 = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 1
  %14 = load i32, i32* %permitted46, align 4
  %arrayidx49 = getelementptr [2 x i32], [2 x i32]* %cap47, i64 0, i64 %indvars.iv
  store i32 %14, i32* %arrayidx49, align 4
  %inheritable52 = getelementptr [2 x %struct.__user_cap_data_struct], [2 x %struct.__user_cap_data_struct]* %kdata, i64 0, i64 %indvars.iv, i32 2
  %15 = load i32, i32* %inheritable52, align 4
  %arrayidx55 = getelementptr [2 x i32], [2 x i32]* %cap53, i64 0, i64 %indvars.iv
  store i32 %15, i32* %arrayidx55, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body

while.end:                                        ; preds = %while.body.lr.ph, %while.body.lr.ph.peel.newph, %while.cond.preheader
  %cap68.pre-phi = bitcast i64* %effective to [2 x i32]*
  %cap70.pre-phi = bitcast i64* %permitted to [2 x i32]*
  %cap73.pre-phi = bitcast i64* %inheritable to [2 x i32]*
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %cap68.pre-phi, i64 0, i64 1
  %16 = load i32, i32* %arrayidx69, align 4
  %and = and i32 %16, 511
  store i32 %and, i32* %arrayidx69, align 4
  %arrayidx71 = getelementptr inbounds [2 x i32], [2 x i32]* %cap70.pre-phi, i64 0, i64 1
  %17 = load i32, i32* %arrayidx71, align 4
  %and72 = and i32 %17, 511
  store i32 %and72, i32* %arrayidx71, align 4
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %cap73.pre-phi, i64 0, i64 1
  %18 = load i32, i32* %arrayidx74, align 4
  %and75 = and i32 %18, 511
  store i32 %and75, i32* %arrayidx74, align 4
  %call76 = call %struct.cred* @prepare_creds() #9
  %tobool77.not = icmp eq %struct.cred* %call76, null
  br i1 %tobool77.not, label %cleanup, label %if.end79

if.end79:                                         ; preds = %while.end
  %19 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %20 = inttoptr i64 %19 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i64 0, i32 80
  %21 = load %struct.cred*, %struct.cred** %cred, align 8
  %call85 = call fastcc i32 @security_capset(%struct.cred* noundef nonnull %call76, %struct.cred* noundef %21, %struct.kernel_cap_struct* noundef nonnull %tmpcast142, %struct.kernel_cap_struct* noundef nonnull %tmpcast, %struct.kernel_cap_struct* noundef nonnull %tmpcast141) #8
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %error, label %if.end89

if.end89:                                         ; preds = %if.end79
  %call96 = call i32 @commit_creds(%struct.cred* noundef nonnull %call76) #9
  %conv97 = sext i32 %call96 to i64
  br label %cleanup

error:                                            ; preds = %if.end79
  call void @abort_creds(%struct.cred* noundef nonnull %call76) #9
  %conv98 = sext i32 %call85 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end, %if.end33, %if.end26, %land.lhs.true, %if.end13, %error, %if.end89, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %conv98, %error ], [ %conv97, %if.end89 ], [ -14, %if.end13 ], [ -1, %land.lhs.true ], [ -14, %if.end26 ], [ -14, %if.end33 ], [ -12, %while.end ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_capset(%struct.cred* noundef %new, %struct.cred* noundef %old, %struct.kernel_cap_struct* noundef %effective, %struct.kernel_cap_struct* noundef %inheritable, %struct.kernel_cap_struct* noundef %permitted) unnamed_addr #1 {
entry:
  %call = call i32 @cap_capset(%struct.cred* noundef %new, %struct.cred* noundef %old, %struct.kernel_cap_struct* noundef %effective, %struct.kernel_cap_struct* noundef %inheritable, %struct.kernel_cap_struct* noundef %permitted) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(%struct.cred* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #8
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !19

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capset(%struct.cred* noundef, %struct.cred* noundef, %struct.kernel_cap_struct* noundef, %struct.kernel_cap_struct* noundef, %struct.kernel_cap_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(%struct.cred* noundef, %struct.user_namespace* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  call void @rcu_read_unlock_strict() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #8
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #8
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #8
  ret i32 %call
}

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2154921325}
!9 = !{i64 187889}
!10 = !{i64 2154924025}
!11 = !{!"auto-init"}
!12 = !{i64 2154897800, i64 2154897837, i64 2154897854, i64 2154897889, i64 2154897911, i64 2154897937, i64 2154897960, i64 2154897978, i64 2154898137, i64 2154898178, i64 2154898200, i64 2154898246}
!13 = !{i64 2149054648}
!14 = !{i64 2154877726, i64 2154877763, i64 2154877780, i64 2154877815, i64 2154877837, i64 2154877863, i64 2154877886, i64 2154877904, i64 2154878063, i64 2154878104, i64 2154878126, i64 2154878172}
!15 = !{i64 2154881880, i64 2154881918, i64 2154881935, i64 2154881969, i64 2154881991, i64 2154882017, i64 2154882035, i64 2154882193, i64 2154882234, i64 2154882256, i64 2154882302}
!16 = !{i64 3078993, i64 3079076, i64 3079300, i64 3079520, i64 3079543}
!17 = !{i64 3083695, i64 3083719}
!18 = !{i64 2150883153}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2154909781, i64 2154909818, i64 2154909835, i64 2154909870, i64 2154909892, i64 2154909918, i64 2154909941, i64 2154909959, i64 2154910118, i64 2154910159, i64 2154910181, i64 2154910227}
!21 = !{i64 2149467897}
!22 = !{i64 2149468114}
