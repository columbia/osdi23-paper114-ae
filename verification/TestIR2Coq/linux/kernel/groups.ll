; ModuleID = 'kernel/groups.c'
source_filename = "kernel/groups.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
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
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.6 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pt_regs = type { %union.anon.7, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.7 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.68, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.12, [0 x i64] }
%struct.anon.12 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.13, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.13 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.14, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.15, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.14 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.15 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.16, %union.anon.47, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.73, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.24, %struct.list_head, %struct.list_head, %union.anon.25 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.19, i8* }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.26 }
%union.anon.26 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.27, %union.anon.28 }
%union.anon.27 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.28 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.32 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.30, %struct.qspinlock }
%union.anon.30 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.32 = type { %struct.nfs_lock_info }
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
%struct.file = type { %union.anon.18, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
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

@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.group_info* @groups_alloc(i32 noundef %gidsetsize) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %gidsetsize to i64
  %call = call fastcc i64 @__ab_c_size(i64 noundef %conv) #9
  %call1 = call fastcc i8* @kvmalloc(i64 noundef %call) #9
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call1 to %struct.group_info*
  %counter.i = bitcast i8* %call1 to i32*
  store volatile i32 1, i32* %counter.i, align 4
  %ngroups = getelementptr inbounds i8, i8* %call1, i64 4
  %1 = bitcast i8* %ngroups to i32*
  store i32 %gidsetsize, i32* %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.group_info* [ %0, %if.end ], [ null, %entry ]
  ret %struct.group_info* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 4197568, i32 noundef -1) #10
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #1 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 8)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @groups_free(%struct.group_info* noundef %group_info) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.group_info* %group_info to i8*
  call void @kvfree(i8* noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @groups_sort(%struct.group_info* noundef %group_info) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.group_info, %struct.group_info* %group_info, i64 0, i32 2, i64 0
  %0 = bitcast %struct.kgid_t* %arraydecay to i8*
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %group_info, i64 0, i32 1
  %1 = load i32, i32* %ngroups, align 4
  %conv = sext i32 %1 to i64
  call void @sort(i8* noundef %0, i64 noundef %conv, i64 noundef 4, i32 (i8*, i8*)* noundef nonnull @gid_cmp, void (i8*, i8*, i32)* noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @gid_cmp(i8* nocapture noundef readonly %_a, i8* nocapture noundef readonly %_b) #3 {
entry:
  %a.sroa.0.0..sroa_idx = bitcast i8* %_a to i32*
  %a.sroa.0.0.copyload = load i32, i32* %a.sroa.0.0..sroa_idx, align 4
  %b.sroa.0.0..sroa_idx = bitcast i8* %_b to i32*
  %b.sroa.0.0.copyload = load i32, i32* %b.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %a.sroa.0.0.copyload to i64
  %coerce.val.ii2 = zext i32 %b.sroa.0.0.copyload to i64
  %call = call fastcc i1 @gid_gt(i64 %coerce.val.ii, i64 %coerce.val.ii2) #9
  %conv = zext i1 %call to i32
  %call7 = call fastcc i1 @gid_lt(i64 %coerce.val.ii, i64 %coerce.val.ii2) #9
  %conv8.neg = sext i1 %call7 to i32
  %sub = add nsw i32 %conv8.neg, %conv
  ret i32 %sub
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @groups_search(%struct.group_info* noundef readonly %group_info, i64 %grp.coerce) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.group_info* %group_info, null
  br i1 %tobool.not, label %cleanup19, label %if.end

if.end:                                           ; preds = %entry
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %group_info, i64 0, i32 1
  %0 = load i32, i32* %ngroups, align 4
  %cmp36.not = icmp eq i32 %0, 0
  br i1 %cmp36.not, label %cleanup19, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %coerce.val.ii2 = and i64 %grp.coerce, 4294967295
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %right.038 = phi i32 [ %0, %while.body.lr.ph ], [ %right.1, %cleanup ]
  %left.037 = phi i32 [ 0, %while.body.lr.ph ], [ %left.1, %cleanup ]
  %add = add i32 %right.038, %left.037
  %div = lshr i32 %add, 1
  %idxprom = zext i32 %div to i64
  %coerce.dive3 = getelementptr %struct.group_info, %struct.group_info* %group_info, i64 0, i32 2, i64 %idxprom, i32 0
  %1 = load i32, i32* %coerce.dive3, align 4
  %coerce.val.ii4 = zext i32 %1 to i64
  %call = call fastcc i1 @gid_gt(i64 %coerce.val.ii2, i64 %coerce.val.ii4) #9
  br i1 %call, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %add6 = add nuw i32 %div, 1
  br label %cleanup

if.else:                                          ; preds = %while.body
  %call14 = call fastcc i1 @gid_lt(i64 %coerce.val.ii2, i64 %coerce.val.ii4) #9
  br i1 %call14, label %cleanup, label %cleanup19

cleanup:                                          ; preds = %if.then5, %if.else
  %left.1 = phi i32 [ %add6, %if.then5 ], [ %left.037, %if.else ]
  %right.1 = phi i32 [ %right.038, %if.then5 ], [ %div, %if.else ]
  %cmp = icmp ult i32 %left.1, %right.1
  br i1 %cmp, label %while.body, label %cleanup19

cleanup19:                                        ; preds = %cleanup, %if.else, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %cleanup ], [ 1, %if.else ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_gt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #9
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #9
  %cmp = icmp ugt i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_lt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #9
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #9
  %cmp = icmp ult i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_groups(%struct.cred* nocapture noundef %new, %struct.group_info* noundef %group_info) local_unnamed_addr #0 {
entry:
  %group_info1 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 18
  %0 = load %struct.group_info*, %struct.group_info** %group_info1, align 8
  %usage = getelementptr inbounds %struct.group_info, %struct.group_info* %0, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %1 = load %struct.group_info*, %struct.group_info** %group_info1, align 8
  call void @groups_free(%struct.group_info* noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %entry, %if.then
  call fastcc void @get_group_info(%struct.group_info* noundef %group_info) #9
  store %struct.group_info* %group_info, %struct.group_info** %group_info1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_group_info(%struct.group_info* noundef %gi) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.group_info, %struct.group_info* %gi, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_current_groups(%struct.group_info* noundef %group_info) local_unnamed_addr #0 {
entry:
  %call = call %struct.cred* @prepare_creds() #10
  %tobool.not = icmp eq %struct.cred* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @set_groups(%struct.cred* noundef nonnull %call, %struct.group_info* noundef %group_info) #9
  %call1 = call i32 @commit_creds(%struct.cred* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getgroups(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getgroups(i64 noundef %0, i64 noundef %1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getgroups(i64 noundef %gidsetsize, i64 noundef %grouplist) unnamed_addr #0 {
entry:
  %conv = trunc i64 %gidsetsize to i32
  %0 = inttoptr i64 %grouplist to i32*
  %call = call fastcc i64 @__do_sys_getgroups(i32 noundef %conv, i32* noundef %0) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @may_setgroups() local_unnamed_addr #0 {
entry:
  %call1 = call i1 @ns_capable_setid(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 6) #10
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable_setid(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setgroups(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setgroups(i64 noundef %0, i64 noundef %1) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setgroups(i64 noundef %gidsetsize, i64 noundef %grouplist) unnamed_addr #0 {
entry:
  %conv = trunc i64 %gidsetsize to i32
  %0 = inttoptr i64 %grouplist to i32*
  %call = call fastcc i64 @__do_sys_setgroups(i32 noundef %conv, i32* noundef %0) #9
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @in_group_p(i64 %grp.coerce) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %coerce.val.ii4 = and i64 %grp.coerce, 4294967295
  %coerce.dive5 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %3 = load i32, i32* %coerce.dive5, align 8
  %coerce.val.ii6 = zext i32 %3 to i64
  %call7 = call fastcc i1 @gid_eq(i64 %coerce.val.ii4, i64 %coerce.val.ii6) #9
  br i1 %call7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %group_info = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 18
  %4 = load %struct.group_info*, %struct.group_info** %group_info, align 8
  %call10 = call i32 @groups_search(%struct.group_info* noundef %4, i64 %coerce.val.ii4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %retval2.0 = phi i32 [ 1, %entry ], [ %call10, %if.then ]
  ret i32 %retval2.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #9
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #9
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @in_egroup_p(i64 %grp.coerce) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %coerce.val.ii4 = and i64 %grp.coerce, 4294967295
  %coerce.dive5 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %3 = load i32, i32* %coerce.dive5, align 8
  %coerce.val.ii6 = zext i32 %3 to i64
  %call7 = call fastcc i1 @gid_eq(i64 %coerce.val.ii4, i64 %coerce.val.ii6) #9
  br i1 %call7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %group_info = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 18
  %4 = load %struct.group_info*, %struct.group_info** %group_info, align 8
  %call10 = call i32 @groups_search(%struct.group_info* noundef %4, i64 %coerce.val.ii4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %retval2.0 = phi i32 [ 1, %entry ], [ %call10, %if.then ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !8
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getgroups(i32 noundef %gidsetsize, i32* noundef %grouplist) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #11, !srcloc !7
  %cmp = icmp slt i32 %gidsetsize, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %group_info = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 18
  %3 = load %struct.group_info*, %struct.group_info** %group_info, align 8
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %3, i64 0, i32 1
  %4 = load i32, i32* %ngroups, align 4
  %tobool.not = icmp eq i32 %gidsetsize, 0
  br i1 %tobool.not, label %out, label %if.then2

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp sgt i32 %4, %gidsetsize
  br i1 %cmp3, label %out, label %if.end5

if.end5:                                          ; preds = %if.then2
  %call7 = call fastcc i32 @groups_to_user(i32* noundef %grouplist, %struct.group_info* noundef %3) #9
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %4, i32 -14
  br label %out

out:                                              ; preds = %if.end5, %if.then2, %if.end
  %i.0 = phi i32 [ %4, %if.end ], [ -22, %if.then2 ], [ %spec.select, %if.end5 ]
  %conv = sext i32 %i.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i64 [ %conv, %out ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @groups_to_user(i32* noundef %grouplist, %struct.group_info* nocapture noundef readonly %group_info) unnamed_addr #0 {
entry:
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %group_info, i64 0, i32 1
  %0 = load i32, i32* %ngroups, align 4
  %cmp35.not = icmp eq i32 %0, 0
  br i1 %cmp35.not, label %cleanup16, label %for.body

for.cond:                                         ; preds = %if.end
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %cleanup16, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %i.036 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %idxprom = sext i32 %i.036 to i64
  %coerce.dive = getelementptr %struct.group_info, %struct.group_info* %group_info, i64 0, i32 2, i64 %idxprom, i32 0
  %1 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %1 to i64
  %call2 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #9
  %add.ptr = getelementptr i32, i32* %grouplist, i64 %idxprom
  %2 = bitcast i32* %add.ptr to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %2) #9
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %cleanup16, label %if.end

if.end:                                           ; preds = %for.body
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #9
  %3 = bitcast i8* %call4 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call2, i32* %3, i32 -14, i32 0) #12, !srcloc !10
  %tobool13.not = icmp eq i32 %4, 0
  %inc = add nuw i32 %i.036, 1
  br i1 %tobool13.not, label %for.cond, label %cleanup16

cleanup16:                                        ; preds = %if.end, %for.cond, %for.body, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -14, %for.body ], [ 0, %for.cond ], [ -14, %if.end ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #9
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #12, !srcloc !11
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !12
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !13
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setgroups(i32 noundef %gidsetsize, i32* noundef %grouplist) unnamed_addr #0 {
entry:
  %call = call i1 @may_setgroups() #9
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i32 %gidsetsize, 65536
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.group_info* @groups_alloc(i32 noundef %gidsetsize) #9
  %tobool.not = icmp eq %struct.group_info* %call4, null
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = call fastcc i32 @groups_from_user(%struct.group_info* noundef nonnull %call4, i32* noundef %grouplist) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end6
  %usage = getelementptr inbounds %struct.group_info, %struct.group_info* %call4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #10
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then11, label %do.end

if.then11:                                        ; preds = %do.body
  call void @groups_free(%struct.group_info* noundef nonnull %call4) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %conv = sext i32 %call7 to i64
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @groups_sort(%struct.group_info* noundef nonnull %call4) #9
  %call14 = call i32 @set_current_groups(%struct.group_info* noundef nonnull %call4) #9
  %usage16 = getelementptr inbounds %struct.group_info, %struct.group_info* %call4, i64 0, i32 0
  %call.i.i.i.i36 = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage16) #10
  %cmp.i.i37 = icmp eq i32 %call.i.i.i.i36, 0
  br i1 %cmp.i.i37, label %if.then18, label %do.end21

if.then18:                                        ; preds = %if.end13
  call void @groups_free(%struct.group_info* noundef nonnull %call4) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %if.end13
  %conv22 = sext i32 %call14 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %do.end21, %do.end
  %retval.0 = phi i64 [ %conv, %do.end ], [ %conv22, %do.end21 ], [ -1, %entry ], [ -22, %if.end ], [ -12, %if.end3 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @groups_from_user(%struct.group_info* nocapture noundef %group_info, i32* noundef %grouplist) unnamed_addr #0 {
entry:
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %group_info, i64 0, i32 1
  %0 = load i32, i32* %ngroups, align 4
  %cmp47.not = icmp eq i32 %0, 0
  br i1 %cmp47.not, label %cleanup23, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.048 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %idx.ext = sext i32 %i.048 to i64
  %add.ptr = getelementptr i32, i32* %grouplist, i64 %idx.ext
  %1 = bitcast i32* %add.ptr to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %1) #9
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %cleanup23, label %if.end

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #9
  %2 = bitcast i8* %call2 to i32*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %2, i32 -14, i32 0) #12, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %3, 0
  %tobool12.not = icmp eq i32 %asmresult, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup23

if.end14:                                         ; preds = %if.end
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %coerce.val.ii = and i64 %asmresult6, 4294967295
  %call18 = call fastcc i1 @gid_valid(i64 %coerce.val.ii) #9
  br i1 %call18, label %for.inc, label %cleanup23

for.inc:                                          ; preds = %if.end14
  %conv = trunc i64 %asmresult6 to i32
  %kgid.sroa.0.0..sroa_idx = getelementptr %struct.group_info, %struct.group_info* %group_info, i64 0, i32 2, i64 %idx.ext, i32 0
  store i32 %conv, i32* %kgid.sroa.0.0..sroa_idx, align 4
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %cleanup23, label %for.body

cleanup23:                                        ; preds = %for.inc, %if.end, %if.end14, %for.body, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ -14, %for.body ], [ -22, %if.end14 ], [ -14, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #9
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #8

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1480593}
!8 = !{i64 2147848776, i64 2147849424, i64 2147849454, i64 2147849486, i64 2147849520, i64 2147849556, i64 2147849581}
!9 = !{i64 2147838203, i64 2147838719, i64 2147838749, i64 2147838776, i64 2147838810, i64 2147838840}
!10 = !{i64 2154757095, i64 2154757133, i64 2154757150, i64 2154757184, i64 2154757206, i64 2154757232, i64 2154757250, i64 2154757408, i64 2154757449, i64 2154757471, i64 2154757517}
!11 = !{i64 4170360, i64 4170443, i64 4170667, i64 4170887, i64 4170910}
!12 = !{i64 4175062, i64 4175086}
!13 = !{i64 2151727846}
!14 = !{i64 2154761158, i64 2154761195, i64 2154761212, i64 2154761247, i64 2154761269, i64 2154761295, i64 2154761318, i64 2154761336, i64 2154761495, i64 2154761536, i64 2154761558, i64 2154761604}
