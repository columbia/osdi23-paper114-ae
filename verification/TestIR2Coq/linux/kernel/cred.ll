; ModuleID = 'kernel/cred.c'
source_filename = "kernel/cred.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.kuid_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.6 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.kmem_cache = type opaque
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.82, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.14, %union.anon.46, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.84, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.85, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.86, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.87, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.22, %struct.list_head, %struct.list_head, %union.anon.23 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.17, i8* }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.22 = type { %struct.list_head }
%union.anon.23 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.21, i32 }
%union.anon.21 = type { %struct.kuid_t }
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
%union.anon.84 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.85 = type { %struct.callback_head }
%union.anon.86 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.24 }
%union.anon.24 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.25, %union.anon.28 }
%union.anon.25 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.28 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.30 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.30 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.87 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.46 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.59, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.59 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.16, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.66, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.66 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.67 }
%union.anon.67 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sk_buff = type { %union.anon.68, %union.anon.71, %union.anon.72, [48 x i8], %union.anon.73, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.75, i32, i32, i32, i16, i16, %union.anon.77, %union.anon.78, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.70 }
%union.anon.70 = type { %struct.net_device* }
%union.anon.71 = type { %struct.sock* }
%union.anon.72 = type { i64 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i64, void (%struct.sk_buff*)* }
%union.anon.75 = type { i32 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type opaque
%struct.bpf_prog = type opaque
%struct.sock = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.79, %union.anon.80, i32 }
%struct.request_queue = type opaque
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.81, i32, [12 x i8] }
%union.anon.81 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.83, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.83 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@root_user = external dso_local global %struct.user_struct, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@init_ucounts = external dso_local global %struct.ucounts, align 8
@init_groups = internal global %struct.group_info { %struct.atomic_t { i32 2 }, i32 0, [0 x %struct.kgid_t] zeroinitializer }, align 4
@init_cred = dso_local global %struct.cred { %struct.atomic_t { i32 4 }, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i32 0, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct zeroinitializer, %struct.user_struct* @root_user, %struct.user_namespace* @init_user_ns, %struct.ucounts* @init_ucounts, %struct.group_info* @init_groups, %union.anon.6 zeroinitializer }, align 8
@cred_jar = internal unnamed_addr global %struct.kmem_cache* null, align 8
@suid_dumpable = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"cred_jar\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"CRED: put_cred_rcu() sees %p with usage %d\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__put_cred(%struct.cred* noundef %cred) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %do.body8, label %do.body3, !prof !7

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 141; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !8
  unreachable

do.body8:                                         ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred10, align 8
  %cmp11 = icmp eq %struct.cred* %3, %cred
  br i1 %cmp11, label %do.body21, label %do.body27, !prof !10

do.body21:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 147; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !11
  unreachable

do.body27:                                        ; preds = %do.body8
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 79
  %4 = load %struct.cred*, %struct.cred** %real_cred, align 64
  %cmp29 = icmp eq %struct.cred* %4, %cred
  br i1 %cmp29, label %do.body39, label %do.end44, !prof !10

do.body39:                                        ; preds = %do.body27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 148; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !12
  unreachable

do.end44:                                         ; preds = %do.body27
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.6* %5 to i32*
  %6 = load i32, i32* %non_rcu, align 8
  %tobool45.not = icmp eq i32 %6, 0
  %rcu47 = getelementptr %union.anon.6, %union.anon.6* %5, i64 0, i32 0
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %do.end44
  call void @put_cred_rcu(%struct.callback_head* noundef %rcu47) #11
  br label %if.end48

if.else:                                          ; preds = %do.end44
  call void @call_rcu(%struct.callback_head* noundef %rcu47, void (%struct.callback_head*)* noundef nonnull @put_cred_rcu) #12
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @put_cred_rcu(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr47 = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -7
  %counter.i = bitcast %struct.callback_head* %add.ptr47 to i32*
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* %counter.i, align 4
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.callback_head* noundef %add.ptr47, i32 noundef %1) #13
  unreachable

if.end:                                           ; preds = %entry
  %group_info = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -1, i32 1
  %2 = bitcast void (%struct.callback_head*)** %group_info to %struct.group_info**
  %3 = load %struct.group_info*, %struct.group_info** %2, align 8
  %tobool.not = icmp eq %struct.group_info* %3, null
  br i1 %tobool.not, label %if.end28, label %do.body19

do.body19:                                        ; preds = %if.end
  %usage21 = getelementptr inbounds %struct.group_info, %struct.group_info* %3, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage21) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then23, label %if.end28

if.then23:                                        ; preds = %do.body19
  %4 = load %struct.group_info*, %struct.group_info** %2, align 8
  call void @groups_free(%struct.group_info* noundef %4) #12
  br label %if.end28

if.end28:                                         ; preds = %do.body19, %if.then23, %if.end
  %user = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -2
  %5 = bitcast %struct.callback_head* %user to %struct.user_struct**
  %6 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  call void @free_uid(%struct.user_struct* noundef %6) #12
  %ucounts = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -1
  %7 = bitcast %struct.callback_head* %ucounts to %struct.ucounts**
  %8 = load %struct.ucounts*, %struct.ucounts** %7, align 8
  %tobool29.not = icmp eq %struct.ucounts* %8, null
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @put_ucounts(%struct.ucounts* noundef nonnull %8) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %add.ptr = bitcast %struct.callback_head* %add.ptr47 to i8*
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @cred_jar, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %9, i8* noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_creds(%struct.task_struct* nocapture noundef %tsk) local_unnamed_addr #0 {
entry:
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 79
  %0 = load %struct.cred*, %struct.cred** %real_cred, align 64
  store %struct.cred* null, %struct.cred** %real_cred, align 64
  call fastcc void @put_cred(%struct.cred* noundef %0) #11
  %cred2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 80
  %1 = load %struct.cred*, %struct.cred** %cred2, align 8
  store %struct.cred* null, %struct.cred** %cred2, align 8
  call fastcc void @put_cred(%struct.cred* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #11
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @get_task_cred(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 79
  br label %do.body

do.body:                                          ; preds = %do.cond18, %entry
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %tobool.not = icmp eq %struct.cred* %0, null
  br i1 %tobool.not, label %do.body10, label %do.cond18, !prof !10

do.body10:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 204; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !13
  unreachable

do.cond18:                                        ; preds = %do.body
  %call = call fastcc %struct.cred* @get_cred_rcu(%struct.cred* noundef nonnull %0) #11
  %tobool19.not = icmp eq %struct.cred* %call, null
  br i1 %tobool19.not, label %do.body, label %do.end22

do.end22:                                         ; preds = %do.cond18
  call fastcc void @rcu_read_unlock() #11
  ret %struct.cred* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_cred_rcu(%struct.cred* noundef %cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %cred, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %counter.i.i.i.i = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %1 = bitcast %struct.cred* %cred to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.end
  %c.0.i.i.i.i = phi i32 [ %0, %if.end ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %cleanup, label %do.cond.i.i.i.i, !prof !10

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef nonnull %1, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #12
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end2, label %do.body.i.i.i.i, !prof !7

if.end2:                                          ; preds = %do.cond.i.i.i.i
  %2 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.6* %2 to i32*
  store i32 0, i32* %non_rcu, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body.i.i.i.i, %entry, %if.end2
  %retval.0 = phi %struct.cred* [ %cred, %if.end2 ], [ null, %entry ], [ null, %do.body.i.i.i.i ]
  ret %struct.cred* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @cred_alloc_blank() local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @cred_jar, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.cred*
  %counter.i = bitcast i8* %call to i32*
  store volatile i32 1, i32* %counter.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.cred* [ %1, %if.end ], [ null, %entry ]
  ret %struct.cred* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #0 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #12
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @abort_creds(%struct.cred* noundef %new) local_unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %do.body3, label %do.end7, !prof !10

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 542; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !14
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @put_cred(%struct.cred* noundef %new) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @prepare_creds() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @cred_jar, align 8
  %call1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #12
  %2 = bitcast i8* %call1 to %struct.cred*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %3 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %4 = bitcast %struct.cred** %cred to i8**
  %5 = load i8*, i8** %4, align 8
  %call2 = call i8* @memcpy(i8* noundef nonnull %call1, i8* noundef %5, i64 noundef 128) #12
  %6 = getelementptr inbounds i8, i8* %call1, i64 112
  %non_rcu = bitcast i8* %6 to i32*
  store i32 0, i32* %non_rcu, align 8
  %counter.i = bitcast i8* %call1 to i32*
  store volatile i32 1, i32* %counter.i, align 8
  %group_info = getelementptr inbounds i8, i8* %call1, i64 104
  %7 = bitcast i8* %group_info to %struct.group_info**
  %8 = load %struct.group_info*, %struct.group_info** %7, align 8
  call fastcc void @get_group_info(%struct.group_info* noundef %8) #11
  %user = getelementptr inbounds i8, i8* %call1, i64 80
  %9 = bitcast i8* %user to %struct.user_struct**
  %10 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  call fastcc void @get_uid(%struct.user_struct* noundef %10) #11
  %ucounts = getelementptr inbounds i8, i8* %call1, i64 96
  %11 = bitcast i8* %ucounts to %struct.ucounts**
  %12 = load %struct.ucounts*, %struct.ucounts** %11, align 8
  %call6 = call %struct.ucounts* @get_ucounts(%struct.ucounts* noundef %12) #12
  store %struct.ucounts* %call6, %struct.ucounts** %11, align 8
  %tobool9.not = icmp eq %struct.ucounts* %call6, null
  br i1 %tobool9.not, label %error, label %cleanup

error:                                            ; preds = %do.end
  call void @abort_creds(%struct.cred* noundef nonnull %2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry, %error
  %retval.0 = phi %struct.cred* [ null, %error ], [ null, %entry ], [ %2, %do.end ]
  ret %struct.cred* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_group_info(%struct.group_info* noundef %gi) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.group_info, %struct.group_info* %gi, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_uid(%struct.user_struct* noundef %u) unnamed_addr #0 {
entry:
  %__count = getelementptr inbounds %struct.user_struct, %struct.user_struct* %u, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %__count) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ucounts* @get_ucounts(%struct.ucounts* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @prepare_exec_creds() local_unnamed_addr #0 {
entry:
  %call = call %struct.cred* @prepare_creds() #11
  %tobool.not = icmp eq %struct.cred* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 5, i32 0
  %1 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 7, i32 0
  %2 = load i32, i32* %0, align 4
  store i32 %2, i32* %1, align 4
  %3 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 3, i32 0
  store i32 %2, i32* %3, align 4
  %4 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 6, i32 0
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 8, i32 0
  %6 = load i32, i32* %4, align 8
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.cred, %struct.cred* %call, i64 0, i32 4, i32 0
  store i32 %6, i32* %7, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.cred* %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_creds(%struct.task_struct* noundef %p, i64 noundef %clone_flags) local_unnamed_addr #0 {
entry:
  %and = and i64 %clone_flags, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 80
  %0 = load %struct.cred*, %struct.cred** %cred, align 8
  %call = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %0) #11
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  store %struct.cred* %call, %struct.cred** %real_cred, align 64
  %1 = load %struct.cred*, %struct.cred** %cred, align 8
  %call2 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %1) #11
  call fastcc void @__rcu_read_lock() #12
  %2 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 17
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  call fastcc void @rcu_read_unlock() #11
  %call13 = call i64 @inc_rlimit_ucounts(%struct.ucounts* noundef %3, i32 noundef 8, i64 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call14 = call %struct.cred* @prepare_creds() #11
  %tobool15.not = icmp eq %struct.cred* %call14, null
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end
  %and18 = and i64 %clone_flags, 268435456
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.end28, label %if.then20

if.then20:                                        ; preds = %if.end17
  call fastcc void @put_cred(%struct.cred* noundef nonnull %call14) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call29 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef nonnull %call14) #11
  %real_cred30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  store %struct.cred* %call29, %struct.cred** %real_cred30, align 64
  %cred31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 80
  store %struct.cred* %call29, %struct.cred** %cred31, align 8
  call fastcc void @__rcu_read_lock() #12
  %4 = load volatile %struct.cred*, %struct.cred** %real_cred30, align 64
  %ucounts43 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 17
  %5 = load %struct.ucounts*, %struct.ucounts** %ucounts43, align 8
  call fastcc void @rcu_read_unlock() #11
  %call45 = call i64 @inc_rlimit_ucounts(%struct.ucounts* noundef %5, i32 noundef 8, i64 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then20, %if.end28, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then20 ], [ 0, %if.end28 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_cred(%struct.cred* noundef %cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %cred, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 19
  %non_rcu = bitcast %union.anon.6* %0 to i32*
  store i32 0, i32* %non_rcu, align 8
  %call = call fastcc %struct.cred* @get_new_cred(%struct.cred* noundef nonnull %cred) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.cred* %cred
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inc_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_cred_ucounts(%struct.cred* nocapture noundef %new) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 79
  %2 = load %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 17
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  %user = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 15
  %4 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %user1 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %5 = load %struct.user_struct*, %struct.user_struct** %user1, align 8
  %cmp = icmp eq %struct.user_struct* %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 16
  %6 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %user_ns2 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %7 = load %struct.user_namespace*, %struct.user_namespace** %user_ns2, align 8
  %cmp3 = icmp eq %struct.user_namespace* %6, %7
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool.not = icmp eq %struct.ucounts* %3, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  %user_ns13.phi.trans.insert = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 16
  %.pre = load %struct.user_namespace*, %struct.user_namespace** %user_ns13.phi.trans.insert, align 8
  br label %if.end12

land.lhs.true4:                                   ; preds = %if.end
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %3, i64 0, i32 1
  %8 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %user_ns5 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 16
  %9 = load %struct.user_namespace*, %struct.user_namespace** %user_ns5, align 8
  %cmp6 = icmp eq %struct.user_namespace* %8, %9
  br i1 %cmp6, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %coerce.dive = getelementptr inbounds %struct.ucounts, %struct.ucounts* %3, i64 0, i32 2, i32 0
  %10 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %10 to i64
  %coerce.dive8 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %11 = load i32, i32* %coerce.dive8, align 4
  %coerce.val.ii9 = zext i32 %11 to i64
  %call10 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii9) #11
  br i1 %call10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %land.lhs.true7, %land.lhs.true4
  %12 = phi %struct.user_namespace* [ %.pre, %if.end.if.end12_crit_edge ], [ %8, %land.lhs.true7 ], [ %9, %land.lhs.true4 ]
  %coerce.dive15 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %13 = load i32, i32* %coerce.dive15, align 4
  %coerce.val.ii16 = zext i32 %13 to i64
  %call17 = call %struct.ucounts* @alloc_ucounts(%struct.user_namespace* noundef %12, i64 %coerce.val.ii16) #12
  %tobool18.not = icmp eq %struct.ucounts* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end12
  store %struct.ucounts* %call17, %struct.ucounts** %ucounts, align 8
  br i1 %tobool.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @put_ucounts(%struct.ucounts* noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then23, %if.end12, %land.lhs.true7, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %land.lhs.true7 ], [ -11, %if.end12 ], [ 0, %if.then23 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @commit_creds(%struct.cred* noundef %new) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 79
  %2 = load %struct.cred*, %struct.cred** %real_cred, align 64
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %cmp.not = icmp eq %struct.cred* %3, %2
  br i1 %cmp.not, label %do.body11, label %do.body3, !prof !7

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 456; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !15
  unreachable

do.body11:                                        ; preds = %entry
  %counter.i = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 0, i32 0
  %4 = load volatile i32, i32* %counter.i, align 4
  %cmp13 = icmp slt i32 %4, 1
  br i1 %cmp13, label %do.body23, label %do.end31, !prof !10

do.body23:                                        ; preds = %do.body11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cred.c\22; .popsection; .long 14472b - 14470b; .short 462; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !16
  unreachable

do.end31:                                         ; preds = %do.body11
  %call32 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef %new) #11
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %5 to i64
  %coerce.dive34 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %6 = load i32, i32* %coerce.dive34, align 4
  %coerce.val.ii35 = zext i32 %6 to i64
  %call36 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii35) #11
  br i1 %call36, label %lor.lhs.false, label %if.then59

lor.lhs.false:                                    ; preds = %do.end31
  %coerce.dive38 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %7 = load i32, i32* %coerce.dive38, align 8
  %coerce.val.ii39 = zext i32 %7 to i64
  %coerce.dive40 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 6, i32 0
  %8 = load i32, i32* %coerce.dive40, align 8
  %coerce.val.ii41 = zext i32 %8 to i64
  %call42 = call fastcc i1 @gid_eq(i64 %coerce.val.ii39, i64 %coerce.val.ii41) #11
  br i1 %call42, label %lor.lhs.false43, label %if.then59

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %coerce.dive45 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %9 = load i32, i32* %coerce.dive45, align 4
  %coerce.val.ii46 = zext i32 %9 to i64
  %coerce.dive47 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 7, i32 0
  %10 = load i32, i32* %coerce.dive47, align 4
  %coerce.val.ii48 = zext i32 %10 to i64
  %call49 = call fastcc i1 @uid_eq(i64 %coerce.val.ii46, i64 %coerce.val.ii48) #11
  br i1 %call49, label %lor.lhs.false50, label %if.then59

lor.lhs.false50:                                  ; preds = %lor.lhs.false43
  %coerce.dive52 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %11 = load i32, i32* %coerce.dive52, align 8
  %coerce.val.ii53 = zext i32 %11 to i64
  %coerce.dive54 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 8, i32 0
  %12 = load i32, i32* %coerce.dive54, align 8
  %coerce.val.ii55 = zext i32 %12 to i64
  %call56 = call fastcc i1 @gid_eq(i64 %coerce.val.ii53, i64 %coerce.val.ii55) #11
  br i1 %call56, label %lor.lhs.false57, label %if.then59

lor.lhs.false57:                                  ; preds = %lor.lhs.false50
  %call58 = call fastcc i1 @cred_cap_issubset(%struct.cred* noundef %2, %struct.cred* noundef %new) #11
  br i1 %call58, label %if.end64, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false57, %lor.lhs.false50, %lor.lhs.false43, %lor.lhs.false, %do.end31
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %13 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool60.not = icmp eq %struct.mm_struct* %13, null
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.then59
  %14 = load i32, i32* @suid_dumpable, align 4
  call void @set_dumpable(%struct.mm_struct* noundef nonnull %13, i32 noundef %14) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then59
  %pdeath_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 42
  store i32 0, i32* %pdeath_signal, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !17
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %lor.lhs.false57
  %user = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 15
  %15 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %user89 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %16 = load %struct.user_struct*, %struct.user_struct** %user89, align 8
  %cmp90.not = icmp eq %struct.user_struct* %15, %16
  br i1 %cmp90.not, label %lor.lhs.false92, label %if.then96

lor.lhs.false92:                                  ; preds = %if.end64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 16
  %17 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %user_ns93 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %18 = load %struct.user_namespace*, %struct.user_namespace** %user_ns93, align 8
  %cmp94.not = icmp eq %struct.user_namespace* %17, %18
  br i1 %cmp94.not, label %do.body99, label %if.then96

if.then96:                                        ; preds = %lor.lhs.false92, %if.end64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 17
  %19 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  %call97 = call i64 @inc_rlimit_ucounts(%struct.ucounts* noundef %19, i32 noundef 8, i64 noundef 1) #12
  br label %do.body99

do.body99:                                        ; preds = %lor.lhs.false92, %if.then96
  %20 = ptrtoint %struct.cred* %new to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.cred** elementtype(%struct.cred*) %real_cred, i64 %20) #9, !srcloc !18
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.cred** elementtype(%struct.cred*) %cred, i64 %20) #9, !srcloc !19
  %21 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %22 = load %struct.user_struct*, %struct.user_struct** %user89, align 8
  %cmp159.not = icmp eq %struct.user_struct* %21, %22
  br i1 %cmp159.not, label %lor.lhs.false161, label %if.then166

lor.lhs.false161:                                 ; preds = %do.body99
  %user_ns162 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 16
  %23 = load %struct.user_namespace*, %struct.user_namespace** %user_ns162, align 8
  %user_ns163 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %24 = load %struct.user_namespace*, %struct.user_namespace** %user_ns163, align 8
  %cmp164.not = icmp eq %struct.user_namespace* %23, %24
  br i1 %cmp164.not, label %if.end169, label %if.then166

if.then166:                                       ; preds = %lor.lhs.false161, %do.body99
  %ucounts167 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 17
  %25 = load %struct.ucounts*, %struct.ucounts** %ucounts167, align 8
  %call168 = call i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %25, i32 noundef 8, i64 noundef 1) #12
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %lor.lhs.false161
  call fastcc void @put_cred(%struct.cred* noundef %2) #11
  call fastcc void @put_cred(%struct.cred* noundef %2) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @cred_cap_issubset(%struct.cred* nocapture noundef readonly %set, %struct.cred* nocapture noundef readonly %subset) unnamed_addr #4 {
entry:
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %set, i64 0, i32 16
  %0 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %user_ns1 = getelementptr inbounds %struct.cred, %struct.cred* %subset, i64 0, i32 16
  %1 = load %struct.user_namespace*, %struct.user_namespace** %user_ns1, align 8
  %cmp = icmp eq %struct.user_namespace* %0, %1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp4.not24 = icmp eq %struct.user_namespace* %1, @init_user_ns
  br i1 %cmp4.not24, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %coerce.dive7 = getelementptr inbounds %struct.cred, %struct.cred* %set, i64 0, i32 5, i32 0
  br label %for.body

if.then:                                          ; preds = %entry
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %subset, i64 0, i32 11, i32 0
  %2 = bitcast [2 x i32]* %coerce.dive to i64*
  %3 = load i64, i64* %2, align 8
  %coerce.dive3 = getelementptr inbounds %struct.cred, %struct.cred* %set, i64 0, i32 11, i32 0
  %4 = bitcast [2 x i32]* %coerce.dive3 to i64*
  %5 = load i64, i64* %4, align 8
  %call = call fastcc i1 @cap_issubset(i64 %3, i64 %5) #11
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %subset_ns.025 = phi %struct.user_namespace* [ %1, %for.body.lr.ph ], [ %6, %for.inc ]
  %parent = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %subset_ns.025, i64 0, i32 3
  %6 = load %struct.user_namespace*, %struct.user_namespace** %parent, align 8
  %cmp5 = icmp eq %struct.user_namespace* %0, %6
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %coerce.dive6 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %subset_ns.025, i64 0, i32 5, i32 0
  %7 = load i32, i32* %coerce.dive6, align 4
  %coerce.val.ii = zext i32 %7 to i64
  %8 = load i32, i32* %coerce.dive7, align 4
  %coerce.val.ii8 = zext i32 %8 to i64
  %call9 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii8) #11
  br i1 %call9, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %cmp4.not = icmp eq %struct.user_namespace* %6, @init_user_ns
  br i1 %cmp4.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %for.cond.preheader, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %for.cond.preheader ], [ true, %land.lhs.true ], [ false, %for.inc ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(%struct.mm_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dec_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @override_creds(%struct.cred* noundef %new) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %call1 = call fastcc %struct.cred* @get_new_cred(%struct.cred* noundef %new) #11
  %3 = ptrtoint %struct.cred* %new to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.cred** elementtype(%struct.cred*) %cred, i64 %3) #9, !srcloc !20
  ret %struct.cred* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.cred* @get_new_cred(%struct.cred* noundef returned %cred) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %usage) #12
  ret %struct.cred* %cred
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @revert_creds(%struct.cred* noundef %old) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %3 = ptrtoint %struct.cred* %old to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.cred** elementtype(%struct.cred*) %cred, i64 %3) #9, !srcloc !21
  call fastcc void @put_cred(%struct.cred* noundef %2) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @cred_fscmp(%struct.cred* noundef readonly %a, %struct.cred* noundef readonly %b) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.cred* %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %a, i64 0, i32 7, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %coerce.dive2 = getelementptr inbounds %struct.cred, %struct.cred* %b, i64 0, i32 7, i32 0
  %1 = load i32, i32* %coerce.dive2, align 4
  %coerce.val.ii3 = zext i32 %1 to i64
  %call = call fastcc i1 @uid_lt(i64 %coerce.val.ii, i64 %coerce.val.ii3) #11
  br i1 %call, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call12 = call fastcc i1 @uid_gt(i64 %coerce.val.ii, i64 %coerce.val.ii3) #11
  br i1 %call12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end5
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %a, i64 0, i32 8, i32 0
  %2 = load i32, i32* %coerce.dive16, align 8
  %coerce.val.ii17 = zext i32 %2 to i64
  %coerce.dive18 = getelementptr inbounds %struct.cred, %struct.cred* %b, i64 0, i32 8, i32 0
  %3 = load i32, i32* %coerce.dive18, align 8
  %coerce.val.ii19 = zext i32 %3 to i64
  %call20 = call fastcc i1 @gid_lt(i64 %coerce.val.ii17, i64 %coerce.val.ii19) #11
  br i1 %call20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end14
  %call29 = call fastcc i1 @gid_gt(i64 %coerce.val.ii17, i64 %coerce.val.ii19) #11
  br i1 %call29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end22
  %group_info = getelementptr inbounds %struct.cred, %struct.cred* %a, i64 0, i32 18
  %4 = load %struct.group_info*, %struct.group_info** %group_info, align 8
  %group_info32 = getelementptr inbounds %struct.cred, %struct.cred* %b, i64 0, i32 18
  %5 = load %struct.group_info*, %struct.group_info** %group_info32, align 8
  %cmp33 = icmp eq %struct.group_info* %4, %5
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.end31
  %cmp36 = icmp eq %struct.group_info* %4, null
  br i1 %cmp36, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end35
  %cmp39 = icmp eq %struct.group_info* %5, null
  br i1 %cmp39, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end38
  %ngroups = getelementptr inbounds %struct.group_info, %struct.group_info* %4, i64 0, i32 1
  %6 = load i32, i32* %ngroups, align 4
  %ngroups42 = getelementptr inbounds %struct.group_info, %struct.group_info* %5, i64 0, i32 1
  %7 = load i32, i32* %ngroups42, align 4
  %cmp43 = icmp slt i32 %6, %7
  br i1 %cmp43, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end41
  %cmp48 = icmp sgt i32 %6, %7
  br i1 %cmp48, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end45
  %cmp52110 = icmp sgt i32 %6, 0
  br i1 %cmp52110, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %6 to i64
  br label %for.body

for.cond:                                         ; preds = %if.end62
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %coerce.dive56 = getelementptr %struct.group_info, %struct.group_info* %4, i64 0, i32 2, i64 %indvars.iv, i32 0
  %8 = load i32, i32* %coerce.dive56, align 4
  %coerce.val.ii57 = zext i32 %8 to i64
  %coerce.dive58 = getelementptr %struct.group_info, %struct.group_info* %5, i64 0, i32 2, i64 %indvars.iv, i32 0
  %9 = load i32, i32* %coerce.dive58, align 4
  %coerce.val.ii59 = zext i32 %9 to i64
  %call60 = call fastcc i1 @gid_lt(i64 %coerce.val.ii57, i64 %coerce.val.ii59) #11
  br i1 %call60, label %cleanup, label %if.end62

if.end62:                                         ; preds = %for.body
  %call73 = call fastcc i1 @gid_gt(i64 %coerce.val.ii57, i64 %coerce.val.ii59) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %call73, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %if.end62, %for.cond, %for.cond.preheader, %if.end45, %if.end41, %if.end38, %if.end35, %if.end31, %if.end22, %if.end14, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ 1, %if.end5 ], [ -1, %if.end14 ], [ 1, %if.end22 ], [ 0, %if.end31 ], [ -1, %if.end35 ], [ 1, %if.end38 ], [ -1, %if.end41 ], [ 1, %if.end45 ], [ 0, %for.cond.preheader ], [ -1, %for.body ], [ 1, %if.end62 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_lt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp ult i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_gt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp ugt i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_lt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp ult i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_gt(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp ugt i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ucounts* @alloc_ucounts(%struct.user_namespace* noundef, i64) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(%struct.ucounts* noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @cred_init() local_unnamed_addr #5 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #12
  store %struct.kmem_cache* %call, %struct.kmem_cache** @cred_jar, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cred* @prepare_kernel_cred(%struct.task_struct* noundef %daemon) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @cred_jar, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #12
  %1 = bitcast i8* %call to %struct.cred*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.task_struct* %daemon, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %do.end
  %call3 = call %struct.cred* @get_task_cred(%struct.task_struct* noundef nonnull %daemon) #11
  br label %if.end5

if.else:                                          ; preds = %do.end
  %call4 = call fastcc %struct.cred* @get_cred(%struct.cred* noundef nonnull @init_cred) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %old.0 = phi %struct.cred* [ %call3, %if.then2 ], [ %call4, %if.else ]
  %2 = bitcast %struct.cred* %old.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %call, i8* noundef align 8 dereferenceable(128) %2, i64 128, i1 false)
  %3 = getelementptr inbounds i8, i8* %call, i64 112
  %non_rcu = bitcast i8* %3 to i32*
  store i32 0, i32* %non_rcu, align 8
  %counter.i = bitcast i8* %call to i32*
  store volatile i32 1, i32* %counter.i, align 8
  %user = getelementptr inbounds i8, i8* %call, i64 80
  %4 = bitcast i8* %user to %struct.user_struct**
  %5 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  call fastcc void @get_uid(%struct.user_struct* noundef %5) #11
  %group_info = getelementptr inbounds i8, i8* %call, i64 104
  %6 = bitcast i8* %group_info to %struct.group_info**
  %7 = load %struct.group_info*, %struct.group_info** %6, align 8
  call fastcc void @get_group_info(%struct.group_info* noundef %7) #11
  %ucounts = getelementptr inbounds i8, i8* %call, i64 96
  %8 = bitcast i8* %ucounts to %struct.ucounts**
  %9 = load %struct.ucounts*, %struct.ucounts** %8, align 8
  %call9 = call %struct.ucounts* @get_ucounts(%struct.ucounts* noundef %9) #12
  store %struct.ucounts* %call9, %struct.ucounts** %8, align 8
  %tobool12.not = icmp eq %struct.ucounts* %call9, null
  br i1 %tobool12.not, label %error, label %cleanup.sink.split

error:                                            ; preds = %if.end5
  call fastcc void @put_cred(%struct.cred* noundef nonnull %1) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %error
  %retval.0.ph = phi %struct.cred* [ null, %error ], [ %1, %if.end5 ]
  call fastcc void @put_cred(%struct.cred* noundef %old.0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.cred* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.cred* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @set_security_override(%struct.cred* nocapture noundef readnone %new, i32 noundef %secid) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_security_override_from_ctx(%struct.cred* nocapture noundef readnone %new, i8* noundef %secctx) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %secctx) #12
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @set_create_files_as(%struct.cred* nocapture noundef writeonly %new, %struct.inode* nocapture noundef readonly %inode) local_unnamed_addr #6 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive1 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %1 = load i32, i32* %coerce.dive1, align 8
  %coerce.val.ii2 = zext i32 %1 to i64
  %call3 = call fastcc i1 @gid_valid(i64 %coerce.val.ii2) #11
  br i1 %call3, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 7, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 8, i32 0
  %4 = load i32, i32* %coerce.dive1, align 8
  store i32 %4, i32* %3, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(%struct.group_info* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(%struct.user_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !22
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #9, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #12
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !10

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !27
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i1 @cap_issubset(i64 %a.coerce, i64 %set.coerce) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @cap_drop(i64 %a.coerce, i64 %set.coerce) #11
  %call6 = call fastcc i1 @cap_isclear(i64 %call) #11
  ret i1 %call6
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_drop(i64 %a.coerce, i64 %drop.coerce) unnamed_addr #8 {
entry:
  %neg = xor i64 %drop.coerce, -1
  %and = and i64 %neg, %a.coerce
  %0 = xor i64 %drop.coerce, -1
  %a.sroa.2.0.extract.shift16 = and i64 %0, %a.coerce
  %and.1 = and i64 %a.sroa.2.0.extract.shift16, -4294967296
  %retval.sroa.0.0.insert.ext = and i64 %and, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %and.1, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i1 @cap_isclear(i64 %a.coerce) unnamed_addr #8 {
entry:
  %a.sroa.0.0.extract.trunc = trunc i64 %a.coerce to i32
  %cmp1.not = icmp eq i32 %a.sroa.0.0.extract.trunc, 0
  %cmp1.not.1 = icmp ult i64 %a.coerce, 4294967296
  %or.cond = and i1 %cmp1.not, %cmp1.not.1
  ret i1 %or.cond
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 2154997898}
!9 = !{i64 1500660}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154999279}
!12 = !{i64 2155000670}
!13 = !{i64 2155006893}
!14 = !{i64 2155041815}
!15 = !{i64 2155024062}
!16 = !{i64 2155025429}
!17 = !{i64 2155025784}
!18 = !{i64 2155029427}
!19 = !{i64 2155036326}
!20 = !{i64 2155047017}
!21 = !{i64 2155056584}
!22 = !{i64 2147868843, i64 2147869491, i64 2147869521, i64 2147869553, i64 2147869587, i64 2147869623, i64 2147869648}
!23 = !{i64 2149428281}
!24 = !{i64 2147971340, i64 2147971373, i64 2147971425, i64 2147971484, i64 2147971518, i64 2147971574, i64 2147971603, i64 2147971630}
!25 = !{i64 2149428498}
!26 = !{i64 2147858270, i64 2147858786, i64 2147858816, i64 2147858843, i64 2147858877, i64 2147858907}
!27 = !{i64 2147864234, i64 2147864898, i64 2147864928, i64 2147864960, i64 2147864994, i64 2147865029, i64 2147865054}
