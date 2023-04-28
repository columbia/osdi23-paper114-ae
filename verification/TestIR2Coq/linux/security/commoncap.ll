; ModuleID = 'security/commoncap.c'
source_filename = "security/commoncap.c"
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
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.kmem_cache = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.6 }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.timespec64 = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.76, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.14, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.17, i8* }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
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
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
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
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.22, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.22 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.23, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.23 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.24, %union.anon.25, %union.anon.26, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.31, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.24 = type { %struct.hlist_node }
%union.anon.25 = type { %struct.rb_node }
%union.anon.26 = type { %struct.anon.30 }
%struct.anon.30 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.31 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.28, %union.anon.29, i32 }
%union.anon.28 = type { %struct.list_head }
%union.anon.29 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
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
%union.anon.78 = type { i32 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.34 }
%union.anon.34 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.35, %union.anon.38 }
%union.anon.35 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.38 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.40 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.36, %struct.qspinlock }
%union.anon.36 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.40 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.55 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.68, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.68 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.16, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.75, i32, [12 x i8] }
%union.anon.75 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.77, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.77 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.vfs_ns_cap_data = type { i32, [2 x %struct.anon.83], i32 }
%struct.anon.83 = type { i32, i32 }
%struct.vfs_cap_data = type { i32, [2 x %struct.anon.82] }
%struct.anon.82 = type { i32, i32 }
%struct.cpu_vfs_cap_data = type { i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kuid_t }

@.str = private unnamed_addr constant [20 x i8] c"security.capability\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@dac_mmap_min_addr = external dso_local local_unnamed_addr global i64, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@file_caps_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"\015Invalid argument reading file caps for %s\0A\00", align 1
@warn_setuid_and_fcaps_mixed.warned = internal unnamed_addr global i1 false, align 4
@.str.4 = private unnamed_addr constant [106 x i8] c"\016warning: `%s' has both setuid-root and effective capabilities. Therefore not raising all capabilities.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i32 @cap_capable(%struct.cred* nocapture noundef readonly %cred, %struct.user_namespace* noundef readonly %targ_ns, i32 noundef %cap, i32 %opts) local_unnamed_addr #0 {
entry:
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 16
  %0 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %cmp25 = icmp eq %struct.user_namespace* %0, %targ_ns
  br i1 %cmp25, label %if.then, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %level4 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 4
  %1 = load i32, i32* %level4, align 8
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 5, i32 0
  br label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %shr = ashr i32 %cap, 5
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr %struct.cred, %struct.cred* %cred, i64 0, i32 12, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %and = and i32 %cap, 31
  %shl = shl nuw i32 1, %and
  %and2 = and i32 %2, %shl
  %tobool.not = icmp eq i32 %and2, 0
  %cond = sext i1 %tobool.not to i32
  br label %cleanup

if.end:                                           ; preds = %if.end7, %if.end.lr.ph
  %ns.026 = phi %struct.user_namespace* [ %targ_ns, %if.end.lr.ph ], [ %4, %if.end7 ]
  %level = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns.026, i64 0, i32 4
  %3 = load i32, i32* %level, align 8
  %cmp5.not = icmp sgt i32 %3, %1
  br i1 %cmp5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns.026, i64 0, i32 3
  %4 = load %struct.user_namespace*, %struct.user_namespace** %parent, align 8
  %cmp9 = icmp eq %struct.user_namespace* %4, %0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.end7
  %coerce.dive = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns.026, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %5 to i64
  %6 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %6 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #11
  br i1 %call, label %cleanup, label %if.then

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %land.lhs.true ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_settime(%struct.timespec64* nocapture noundef readnone %ts, %struct.timezone* nocapture noundef readnone %tz) local_unnamed_addr #3 {
entry:
  %call = call i1 @capable(i32 noundef 25) #12
  %not.call = xor i1 %call, true
  %. = sext i1 %not.call to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_ptrace_access_check(%struct.task_struct* noundef %child, i32 noundef %mode) local_unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %user_ns10 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns10, align 8
  %cmp = icmp eq %struct.user_namespace* %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %mode, 8
  %tobool.not = icmp eq i32 %and, 0
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 11
  %cap_effective = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 12
  %caller_caps.0 = select i1 %tobool.not, %struct.kernel_cap_struct* %cap_permitted, %struct.kernel_cap_struct* %cap_effective
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 11, i32 0
  %6 = bitcast [2 x i32]* %coerce.dive to i64*
  %7 = load i64, i64* %6, align 8
  %8 = bitcast %struct.kernel_cap_struct* %caller_caps.0 to i64*
  %9 = load i64, i64* %8, align 4
  %call13 = call fastcc i1 @cap_issubset(i64 %7, i64 %9) #11
  br i1 %call13, label %out, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %entry
  %call17 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 19) #12
  %not.call17 = xor i1 %call17, true
  %spec.select = sext i1 %not.call17 to i32
  br label %out

out:                                              ; preds = %if.end15, %land.lhs.true
  %ret.0 = phi i32 [ 0, %land.lhs.true ], [ %spec.select, %if.end15 ]
  call fastcc void @rcu_read_unlock() #11
  ret i32 %ret.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i1 @cap_issubset(i64 %a.coerce, i64 %set.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @cap_drop(i64 %a.coerce, i64 %set.coerce) #11
  %call6 = call fastcc i1 @cap_isclear(i64 %call) #11
  ret i1 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_ptrace_traceme(%struct.task_struct* noundef %parent) local_unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred9, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 16
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %user_ns10 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns10, align 8
  %cmp = icmp eq %struct.user_namespace* %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 11, i32 0
  %6 = bitcast [2 x i32]* %coerce.dive to i64*
  %7 = load i64, i64* %6, align 8
  %coerce.dive12 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 11, i32 0
  %8 = bitcast [2 x i32]* %coerce.dive12 to i64*
  %9 = load i64, i64* %8, align 8
  %call13 = call fastcc i1 @cap_issubset(i64 %7, i64 %9) #11
  br i1 %call13, label %out, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call15 = call i1 @has_ns_capability(%struct.task_struct* noundef %parent, %struct.user_namespace* noundef %5, i32 noundef 19) #12
  %not.call15 = xor i1 %call15, true
  %spec.select = sext i1 %not.call15 to i32
  br label %out

out:                                              ; preds = %if.end, %land.lhs.true
  %ret.0 = phi i32 [ 0, %land.lhs.true ], [ %spec.select, %if.end ]
  call fastcc void @rcu_read_unlock() #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_ns_capability(%struct.task_struct* noundef, %struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_capget(%struct.task_struct* noundef %target, %struct.kernel_cap_struct* nocapture noundef writeonly %effective, %struct.kernel_cap_struct* nocapture noundef writeonly %inheritable, %struct.kernel_cap_struct* nocapture noundef writeonly %permitted) local_unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %cap_effective = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 12
  %1 = bitcast %struct.kernel_cap_struct* %cap_effective to i64*
  %2 = bitcast %struct.kernel_cap_struct* %effective to i64*
  %3 = load i64, i64* %1, align 8
  store i64 %3, i64* %2, align 4
  %cap_inheritable = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 10
  %4 = bitcast %struct.kernel_cap_struct* %cap_inheritable to i64*
  %5 = bitcast %struct.kernel_cap_struct* %inheritable to i64*
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 4
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 11
  %7 = bitcast %struct.kernel_cap_struct* %cap_permitted to i64*
  %8 = bitcast %struct.kernel_cap_struct* %permitted to i64*
  %9 = load i64, i64* %7, align 8
  store i64 %9, i64* %8, align 4
  call fastcc void @rcu_read_unlock() #11
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_capset(%struct.cred* nocapture noundef %new, %struct.cred* nocapture noundef readonly %old, %struct.kernel_cap_struct* nocapture noundef readonly %effective, %struct.kernel_cap_struct* nocapture noundef readonly %inheritable, %struct.kernel_cap_struct* nocapture noundef readonly %permitted) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cap_inh_is_capped() #11
  %tobool.not = icmp eq i32 %call, 0
  %coerce.dive9.phi.trans.insert = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 10, i32 0
  %.phi.trans.insert = bitcast [2 x i32]* %coerce.dive9.phi.trans.insert to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 8
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 11, i32 0
  %0 = bitcast [2 x i32]* %coerce.dive1 to i64*
  %1 = load i64, i64* %0, align 8
  %call2 = call fastcc i64 @cap_combine(i64 %.pre, i64 %1) #11
  %2 = bitcast %struct.kernel_cap_struct* %inheritable to i64*
  %3 = load i64, i64* %2, align 4
  %call6 = call fastcc i1 @cap_issubset(i64 %3, i64 %call2) #11
  br i1 %call6, label %if.end, label %return

if.end:                                           ; preds = %entry, %land.lhs.true
  %.pre-phi83 = bitcast %struct.kernel_cap_struct* %inheritable to i64*
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 13, i32 0
  %4 = bitcast [2 x i32]* %coerce.dive10 to i64*
  %5 = load i64, i64* %4, align 8
  %call11 = call fastcc i64 @cap_combine(i64 %.pre, i64 %5) #11
  %6 = load i64, i64* %.pre-phi83, align 4
  %call15 = call fastcc i1 @cap_issubset(i64 %6, i64 %call11) #11
  br i1 %call15, label %if.end17, label %return

if.end17:                                         ; preds = %if.end
  %7 = bitcast %struct.kernel_cap_struct* %permitted to i64*
  %8 = load i64, i64* %7, align 4
  %coerce.dive20 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 11, i32 0
  %9 = bitcast [2 x i32]* %coerce.dive20 to i64*
  %10 = load i64, i64* %9, align 8
  %call21 = call fastcc i1 @cap_issubset(i64 %8, i64 %10) #11
  br i1 %call21, label %if.end23, label %return

if.end23:                                         ; preds = %if.end17
  %11 = bitcast %struct.kernel_cap_struct* %effective to i64*
  %12 = load i64, i64* %11, align 4
  %call26 = call fastcc i1 @cap_issubset(i64 %12, i64 %8) #11
  br i1 %call26, label %if.end28, label %return

if.end28:                                         ; preds = %if.end23
  %cap_effective = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %13 = bitcast %struct.kernel_cap_struct* %cap_effective to i64*
  store i64 %12, i64* %13, align 8
  %cap_inheritable29 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 10
  %14 = bitcast %struct.kernel_cap_struct* %cap_inheritable29 to i64*
  %15 = load i64, i64* %.pre-phi83, align 4
  store i64 %15, i64* %14, align 8
  %cap_permitted30 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 11
  %16 = bitcast %struct.kernel_cap_struct* %cap_permitted30 to i64*
  %17 = load i64, i64* %7, align 4
  store i64 %17, i64* %16, align 8
  %18 = load i64, i64* %7, align 4
  %19 = load i64, i64* %.pre-phi83, align 4
  %call35 = call fastcc i64 @cap_intersect(i64 %18, i64 %19) #11
  %coerce.dive37 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 14, i32 0
  %20 = bitcast [2 x i32]* %coerce.dive37 to i64*
  %21 = load i64, i64* %20, align 8
  %call39 = call fastcc i64 @cap_intersect(i64 %21, i64 %call35) #11
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 14
  %tmp.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp.sroa.0.0..sroa_idx to i64*
  store i64 %call39, i64* %tmp.sroa.0.0..sroa_cast, align 8
  %call41 = call fastcc i1 @cap_ambient_invariant_ok(%struct.cred* noundef %new) #11
  br i1 %call41, label %return, label %if.then50, !prof !8

if.then50:                                        ; preds = %if.end28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22security/commoncap.c\22; .popsection; .long 14472b - 14470b; .short 279; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  br label %return

return:                                           ; preds = %if.end28, %if.then50, %if.end23, %if.end17, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ -1, %land.lhs.true ], [ -1, %if.end ], [ -1, %if.end17 ], [ -1, %if.end23 ], [ -22, %if.then50 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @cap_inh_is_capped() unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call6 = call i32 @cap_capable(%struct.cred* noundef %2, %struct.user_namespace* noundef %3, i32 noundef 8, i32 undef) #11
  %cmp = icmp ne i32 %call6, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_combine(i64 %a.coerce, i64 %b.coerce) unnamed_addr #5 {
entry:
  %or16 = or i64 %b.coerce, %a.coerce
  %b.sroa.2.0.extract.shift18 = or i64 %b.coerce, %a.coerce
  %or.117 = and i64 %b.sroa.2.0.extract.shift18, -4294967296
  %retval.sroa.0.0.insert.ext = and i64 %or16, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %or.117, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_intersect(i64 %a.coerce, i64 %b.coerce) unnamed_addr #5 {
entry:
  %and16 = and i64 %b.coerce, %a.coerce
  %b.sroa.2.0.extract.shift18 = and i64 %b.coerce, %a.coerce
  %and.117 = and i64 %b.sroa.2.0.extract.shift18, -4294967296
  %retval.sroa.0.0.insert.ext = and i64 %and16, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %and.117, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @cap_ambient_invariant_ok(%struct.cred* nocapture noundef readonly %cred) unnamed_addr #0 {
entry:
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 11, i32 0
  %0 = bitcast [2 x i32]* %coerce.dive to i64*
  %1 = load i64, i64* %0, align 8
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 10, i32 0
  %2 = bitcast [2 x i32]* %coerce.dive1 to i64*
  %3 = load i64, i64* %2, align 8
  %call = call fastcc i64 @cap_intersect(i64 %1, i64 %3) #11
  %coerce.dive3 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 14, i32 0
  %4 = bitcast [2 x i32]* %coerce.dive3 to i64*
  %5 = load i64, i64* %4, align 8
  %call5 = call fastcc i1 @cap_issubset(i64 %5, i64 %call) #11
  ret i1 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_inode_need_killpriv(%struct.dentry* noundef %dentry) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %dentry) #11
  %call1 = call i64 @__vfs_getxattr(%struct.dentry* noundef %dentry, %struct.inode* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef null, i64 noundef 0) #12
  %conv = trunc i64 %call1 to i32
  %cmp = icmp sgt i32 %conv, 0
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #7 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__vfs_getxattr(%struct.dentry* noundef, %struct.inode* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_inode_killpriv(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry) local_unnamed_addr #3 {
entry:
  %call = call i32 @__vfs_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #12
  %cmp = icmp eq i32 %call, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr(%struct.user_namespace* noundef, %struct.dentry* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_inode_getsecurity(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i8* noundef %name, i8** nocapture noundef writeonly %buffer, i1 noundef %alloc) local_unnamed_addr #3 {
entry:
  %tmpbuf = alloca i8*, align 8
  %0 = bitcast i8** %tmpbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %tmpbuf, align 8
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.dentry* @d_find_any_alias(%struct.inode* noundef %inode) #12
  %tobool.not = icmp eq %struct.dentry* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @vfs_getxattr_alloc(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef nonnull %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** noundef nonnull %tmpbuf, i64 noundef 24, i32 noundef 3136) #12
  %conv5 = trunc i64 %call4 to i32
  call void @dput(%struct.dentry* noundef nonnull %call1) #12
  %cmp6 = icmp sgt i32 %conv5, -1
  %1 = load i8*, i8** %tmpbuf, align 8
  %tobool8 = icmp ne i8* %1, null
  %or.cond = select i1 %cmp6, i1 %tobool8, i1 false
  %2 = bitcast i8* %1 to %struct.vfs_ns_cap_data*
  br i1 %or.cond, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end3
  %3 = bitcast i8* %1 to %struct.vfs_cap_data*
  %sext = shl i64 %call4, 32
  %conv11 = ashr exact i64 %sext, 32
  %call12 = call fastcc i1 @is_v2header(i64 noundef %conv11, %struct.vfs_cap_data* noundef nonnull %3) #11
  br i1 %call12, label %if.end19, label %if.else

if.else:                                          ; preds = %if.end10
  %call15 = call fastcc i1 @is_v3header(i64 noundef %conv11, %struct.vfs_cap_data* noundef nonnull %3) #11
  br i1 %call15, label %if.then16, label %out_free

if.then16:                                        ; preds = %if.else
  %rootid = getelementptr inbounds i8, i8* %1, i64 20
  %4 = bitcast i8* %rootid to i32*
  %5 = load i32, i32* %4, align 4
  %phi.cast = zext i32 %5 to i64
  br label %if.end19

if.end19:                                         ; preds = %if.end10, %if.then16
  %root.0 = phi i64 [ %phi.cast, %if.then16 ], [ 0, %if.end10 ]
  %nscap.0 = phi %struct.vfs_ns_cap_data* [ %2, %if.then16 ], [ null, %if.end10 ]
  %call23 = call fastcc i32 @kuid_into_mnt(i64 %root.0) #11
  %coerce.val.ii27 = zext i32 %call23 to i64
  %call28 = call fastcc i32 @from_kuid(i64 %coerce.val.ii27) #11
  %6 = add i32 %call28, -1
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %if.then33, label %if.end53

if.then33:                                        ; preds = %if.end19
  br i1 %alloc, label %if.then35, label %out_free

if.then35:                                        ; preds = %if.then33
  %tobool36.not = icmp eq %struct.vfs_ns_cap_data* %nscap.0, null
  br i1 %tobool36.not, label %if.then37, label %if.else49

if.then37:                                        ; preds = %if.then35
  %call39 = call fastcc i8* @kzalloc(i64 noundef 24) #11
  %tobool40.not = icmp eq i8* %call39, null
  br i1 %tobool40.not, label %out_free, label %if.end42

if.end42:                                         ; preds = %if.then37
  %8 = bitcast i8* %call39 to %struct.vfs_ns_cap_data*
  %magic_etc = bitcast i8* %1 to i32*
  %9 = load i32, i32* %magic_etc, align 4
  %and = and i32 %9, 1
  %10 = or i32 %and, 50331648
  %data = getelementptr inbounds i8, i8* %call39, i64 4
  %data46 = getelementptr inbounds i8, i8* %1, i64 4
  %call47 = call i8* @memcpy(i8* noundef %data, i8* noundef %data46, i64 noundef 16) #12
  %magic_etc48 = bitcast i8* %call39 to i32*
  store i32 %10, i32* %magic_etc48, align 4
  br label %if.end50

if.else49:                                        ; preds = %if.then35
  store i8* null, i8** %tmpbuf, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.end42
  %nscap.1 = phi %struct.vfs_ns_cap_data* [ %nscap.0, %if.else49 ], [ %8, %if.end42 ]
  %rootid51 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %nscap.1, i64 0, i32 2
  store i32 %call28, i32* %rootid51, align 4
  %11 = bitcast i8** %buffer to %struct.vfs_ns_cap_data**
  store %struct.vfs_ns_cap_data* %nscap.1, %struct.vfs_ns_cap_data** %11, align 8
  br label %out_free

if.end53:                                         ; preds = %if.end19
  %call56 = call fastcc i1 @rootid_owns_currentns(i64 %coerce.val.ii27) #11
  %12 = and i1 %call56, %alloc
  %.mux = select i1 %call56, i32 20, i32 -75
  br i1 %12, label %if.then60, label %out_free

if.then60:                                        ; preds = %if.end53
  %tobool61.not = icmp eq %struct.vfs_ns_cap_data* %nscap.0, null
  br i1 %tobool61.not, label %if.else78, label %if.then62

if.then62:                                        ; preds = %if.then60
  %call64 = call fastcc i8* @kzalloc(i64 noundef 20) #11
  %tobool65.not = icmp eq i8* %call64, null
  br i1 %tobool65.not, label %out_free, label %if.end67

if.end67:                                         ; preds = %if.then62
  %13 = bitcast i8* %call64 to %struct.vfs_cap_data*
  %magic_etc68 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %nscap.0, i64 0, i32 0
  %14 = load i32, i32* %magic_etc68, align 4
  %and69 = and i32 %14, 1
  %15 = or i32 %and69, 33554432
  %data74 = getelementptr inbounds i8, i8* %call64, i64 4
  %data75 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %nscap.0, i64 0, i32 1
  %16 = bitcast [2 x %struct.anon.83]* %data75 to i8*
  %call76 = call i8* @memcpy(i8* noundef %data74, i8* noundef %16, i64 noundef 16) #12
  %magic_etc77 = bitcast i8* %call64 to i32*
  store i32 %15, i32* %magic_etc77, align 4
  br label %if.end79

if.else78:                                        ; preds = %if.then60
  store i8* null, i8** %tmpbuf, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.end67
  %cap.0 = phi %struct.vfs_cap_data* [ %13, %if.end67 ], [ %3, %if.else78 ]
  %17 = bitcast i8** %buffer to %struct.vfs_cap_data**
  store %struct.vfs_cap_data* %cap.0, %struct.vfs_cap_data** %17, align 8
  br label %out_free

out_free:                                         ; preds = %if.then62, %if.end53, %if.then37, %if.else, %if.end79, %if.then33, %if.end50
  %size.0 = phi i32 [ 24, %if.end50 ], [ 24, %if.then33 ], [ 20, %if.end79 ], [ -22, %if.else ], [ -12, %if.then37 ], [ %.mux, %if.end53 ], [ -12, %if.then62 ]
  %18 = load i8*, i8** %tmpbuf, align 8
  call void @kfree(i8* noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %out_free
  %retval.0 = phi i32 [ %size.0, %out_free ], [ -95, %entry ], [ -22, %if.end ], [ %conv5, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_getxattr_alloc(%struct.user_namespace* noundef, %struct.dentry* noundef, i8* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_v2header(i64 noundef %size, %struct.vfs_cap_data* nocapture noundef readonly %cap) unnamed_addr #7 {
entry:
  %cmp.not = icmp eq i64 %size, 20
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %magic_etc = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %cap, i64 0, i32 0
  %0 = load i32, i32* %magic_etc, align 4
  %call = call fastcc i32 @sansflags(i32 noundef %0) #11
  %cmp1 = icmp eq i32 %call, 33554432
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp1, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_v3header(i64 noundef %size, %struct.vfs_cap_data* nocapture noundef readonly %cap) unnamed_addr #7 {
entry:
  %cmp.not = icmp eq i64 %size, 24
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %magic_etc = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %cap, i64 0, i32 0
  %0 = load i32, i32* %magic_etc, align 4
  %call = call fastcc i32 @sansflags(i32 noundef %0) #11
  %cmp1 = icmp eq i32 %call, 50331648
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp1, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 2848) #12
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rootid_owns_currentns(i64 %kroot.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kroot.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #11
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #11
  %cmp = icmp eq i32 %call6, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_convert_nscap(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* nocapture noundef readonly %dentry, i8** nocapture noundef %ivalue, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %0 = bitcast i8** %ivalue to %struct.vfs_cap_data**
  %1 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %0, align 8
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %dentry) #11
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %tobool.not = icmp eq %struct.vfs_cap_data* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @validheader(i64 noundef %size, %struct.vfs_cap_data* noundef nonnull %1) #11
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call, i32 noundef 31) #12
  br i1 %call5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end4
  %cmp = icmp eq i64 %size, 20
  %cmp8 = icmp eq %struct.user_namespace* %mnt_userns, @init_user_ns
  %or.cond = and i1 %cmp8, %cmp
  br i1 %or.cond, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end7
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_user_ns11 = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 46
  %3 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns11, align 8
  %call12 = call i1 @ns_capable(%struct.user_namespace* noundef %3, i32 noundef 31) #12
  br i1 %call12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end7
  %4 = load i8*, i8** %ivalue, align 8
  %call16 = call fastcc i32 @rootid_from_xattr(i8* noundef %4, i64 noundef %size) #11
  %coerce.val.ii = zext i32 %call16 to i64
  %call18 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call18, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end15
  %call23 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #11
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end20
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %5, i32 noundef 2592) #12
  %tobool29.not = icmp eq i8* %call.i.i, null
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end27
  %rootid32 = getelementptr inbounds i8, i8* %call.i.i, i64 20
  %6 = bitcast i8* %rootid32 to i32*
  store i32 %call23, i32* %6, align 4
  %magic_etc = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %1, i64 0, i32 0
  %7 = load i32, i32* %magic_etc, align 4
  %and = and i32 %7, 1
  %8 = or i32 %and, 50331648
  %magic_etc36 = bitcast i8* %call.i.i to i32*
  store i32 %8, i32* %magic_etc36, align 8
  %data = getelementptr inbounds i8, i8* %call.i.i, i64 4
  %data37 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %1, i64 0, i32 1
  %9 = bitcast [2 x %struct.anon.82]* %data37 to i8*
  %call38 = call i8* @memcpy(i8* noundef %data, i8* noundef %9, i64 noundef 16) #12
  store i8* %call.i.i, i8** %ivalue, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end20, %if.end15, %if.then9, %if.end4, %if.end, %entry, %if.end31
  %retval.0 = phi i32 [ 24, %if.end31 ], [ -22, %entry ], [ -22, %if.end ], [ -1, %if.end4 ], [ 20, %if.then9 ], [ -22, %if.end15 ], [ -22, %if.end20 ], [ -12, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @validheader(i64 noundef %size, %struct.vfs_cap_data* nocapture noundef readonly %cap) unnamed_addr #7 {
entry:
  %call = call fastcc i1 @is_v2header(i64 noundef %size, %struct.vfs_cap_data* noundef %cap) #11
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @is_v3header(i64 noundef %size, %struct.vfs_cap_data* noundef %cap) #11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rootid_from_xattr(i8* nocapture noundef readonly %value, i64 noundef %size) unnamed_addr #7 {
entry:
  %cmp = icmp eq i64 %size, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rootid1 = getelementptr inbounds i8, i8* %value, i64 20
  %0 = bitcast i8* %rootid1 to i32*
  %1 = load i32, i32* %0, align 4
  %phi.cast = zext i32 %1 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rootid.0 = phi i64 [ %phi.cast, %if.then ], [ 0, %entry ]
  %call3 = call fastcc i32 @kuid_from_mnt(i64 %rootid.0) #11
  ret i32 %call3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_vfs_caps_from_disk(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.cpu_vfs_cap_data* noundef %cpu_caps) local_unnamed_addr #3 {
entry:
  %data = alloca %struct.vfs_ns_cap_data, align 4
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %dentry) #11
  %0 = bitcast %struct.vfs_ns_cap_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !10
  %1 = bitcast %struct.cpu_vfs_cap_data* %cpu_caps to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #12
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @__vfs_getxattr(%struct.dentry* noundef %dentry, %struct.inode* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 24) #12
  %conv = trunc i64 %call2 to i32
  switch i32 %conv, label %if.end7 [
    i32 -61, label %cleanup
    i32 -95, label %cleanup
  ]

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp slt i32 %conv, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %sext = shl i64 %call2, 32
  %cmp13 = icmp ult i64 %sext, 17179869184
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  %magic_etc17 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 0
  %2 = load i32, i32* %magic_etc17, align 4
  %magic_etc18 = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 0
  store i32 %2, i32* %magic_etc18, align 4
  %and = and i32 %2, -16777216
  switch i32 %and, label %cleanup [
    i32 16777216, label %sw.bb
    i32 33554432, label %sw.bb25
    i32 50331648, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end16
  %cmp21.not = icmp eq i64 %sext, 51539607552
  br i1 %cmp21.not, label %sw.epilog, label %cleanup

sw.bb25:                                          ; preds = %if.end16
  %cmp27.not = icmp eq i64 %sext, 85899345920
  br i1 %cmp27.not, label %sw.epilog, label %cleanup

sw.bb31:                                          ; preds = %if.end16
  %cmp33.not = icmp eq i64 %sext, 103079215104
  br i1 %cmp33.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %sw.bb31
  %rootid = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 2
  %3 = load i32, i32* %rootid, align 4
  %phi.cast = zext i32 %3 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %if.end36
  %exitcond.not = phi i1 [ false, %sw.bb25 ], [ true, %sw.bb ], [ false, %if.end36 ]
  %rootkuid.sroa.0.0 = phi i64 [ 0, %sw.bb25 ], [ 0, %sw.bb ], [ %phi.cast, %if.end36 ]
  %call42 = call fastcc i32 @kuid_into_mnt(i64 %rootkuid.sroa.0.0) #11
  %coerce.val.ii45 = zext i32 %call42 to i64
  %call46 = call fastcc i1 @rootid_owns_currentns(i64 %coerce.val.ii45) #11
  br i1 %call46, label %if.end54, label %cleanup

if.end54:                                         ; preds = %sw.epilog
  %permitted = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 1, i64 0, i32 0
  %4 = load i32, i32* %permitted, align 4
  %arrayidx58 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 1, i32 0, i64 0
  store i32 %4, i32* %arrayidx58, align 4
  %5 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 1, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %arrayidx65 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 2, i32 0, i64 0
  store i32 %6, i32* %arrayidx65, align 4
  br i1 %exitcond.not, label %for.end, label %if.end54.1

if.end54.1:                                       ; preds = %if.end54
  %7 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 1, i64 1, i32 0
  %8 = load i32, i32* %7, align 4
  %arrayidx58.1 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 1, i32 0, i64 1
  store i32 %8, i32* %arrayidx58.1, align 4
  %9 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %data, i64 0, i32 1, i64 1, i32 1
  %10 = load i32, i32* %9, align 4
  %arrayidx65.1 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 2, i32 0, i64 1
  store i32 %10, i32* %arrayidx65.1, align 4
  br label %for.end

for.end:                                          ; preds = %if.end54.1, %if.end54
  %arrayidx68 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 1, i32 0, i64 1
  %11 = load i32, i32* %arrayidx68, align 4
  %and69 = and i32 %11, 511
  store i32 %and69, i32* %arrayidx68, align 4
  %arrayidx72 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 2, i32 0, i64 1
  %12 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %12, 511
  store i32 %and73, i32* %arrayidx72, align 4
  %rootkuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %cpu_caps, i64 0, i32 3, i32 0
  store i32 %call42, i32* %rootkuid.sroa.0.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end16, %sw.bb31, %sw.bb25, %sw.bb, %if.end11, %if.end7, %if.end, %if.end, %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -61, %entry ], [ -61, %if.end ], [ -61, %if.end ], [ %conv, %if.end7 ], [ -22, %if.end11 ], [ -22, %sw.bb ], [ -22, %sw.bb25 ], [ -22, %sw.bb31 ], [ -22, %if.end16 ], [ -61, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_bprm_creds_from_file(%struct.linux_binprm* nocapture noundef %bprm, %struct.file* nocapture noundef readonly %file) local_unnamed_addr #3 {
entry:
  %effective = alloca i8, align 4
  %has_fcap = alloca i8, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %cred1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %3 = load %struct.cred*, %struct.cred** %cred1, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %effective) #14
  store i8 0, i8* %effective, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %has_fcap) #14
  store i8 0, i8* %has_fcap, align 4
  %call2 = call fastcc i1 @cap_ambient_invariant_ok(%struct.cred* noundef %2) #11
  br i1 %call2, label %if.end20, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22security/commoncap.c\22; .popsection; .long 14472b - 14470b; .short 897; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %call21 = call fastcc i32 @get_file_caps(%struct.linux_binprm* noundef %bprm, %struct.file* noundef %file, i8* noundef nonnull %effective, i8* noundef nonnull %has_fcap) #11
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %4 = load i8, i8* %has_fcap, align 4, !range !12
  %tobool27 = icmp ne i8 %4, 0
  call fastcc void @handle_privileged_root(%struct.linux_binprm* noundef %bprm, i1 noundef %tobool27, i8* noundef nonnull %effective, i64 0) #11
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 11
  %5 = bitcast %struct.kernel_cap_struct* %cap_permitted to i64*
  %6 = load i64, i64* %5, align 8
  %coerce.dive31 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 11, i32 0
  %7 = bitcast [2 x i32]* %coerce.dive31 to i64*
  %8 = load i64, i64* %7, align 8
  %call32 = call fastcc i1 @cap_issubset(i64 %6, i64 %8) #11
  br i1 %call32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end24
  %per_clear = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 11
  %9 = load i32, i32* %per_clear, align 4
  %or = or i32 %9, 7602176
  store i32 %or, i32* %per_clear, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end24
  %call35 = call fastcc i1 @__is_setuid(%struct.cred* noundef %3, %struct.cred* noundef %2) #11
  br i1 %call35, label %land.lhs.true, label %lor.end

lor.end:                                          ; preds = %if.end34
  %call37 = call fastcc i1 @__is_setgid(%struct.cred* noundef %3, %struct.cred* noundef %2) #11
  br i1 %call37, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %7, align 8
  %call45 = call fastcc i1 @cap_issubset(i64 %10, i64 %11) #11
  br i1 %call45, label %if.end68, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34, %lor.lhs.false, %lor.end
  %12 = phi i1 [ false, %lor.lhs.false ], [ true, %lor.end ], [ true, %if.end34 ]
  %unsafe = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 10
  %13 = load i32, i32* %unsafe, align 8
  %and = and i32 %13, -3
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.then51

lor.lhs.false47:                                  ; preds = %land.lhs.true
  %14 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call50 = call i1 @ptracer_capable(%struct.task_struct* noundef %1, %struct.user_namespace* noundef %14) #12
  br i1 %call50, label %if.end68, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false47, %land.lhs.true
  %15 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call53 = call i1 @ns_capable(%struct.user_namespace* noundef %15, i32 noundef 7) #12
  br i1 %call53, label %lor.lhs.false54, label %if.then58

lor.lhs.false54:                                  ; preds = %if.then51
  %16 = load i32, i32* %unsafe, align 8
  %and56 = and i32 %16, 4
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54, %if.then51
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 2, i32 0
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 6, i32 0
  %22 = load i32, i32* %20, align 8
  store i32 %22, i32* %21, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %lor.lhs.false54
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %call66 = call fastcc i64 @cap_intersect(i64 %23, i64 %24) #11
  store i64 %call66, i64* %5, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.end59, %lor.lhs.false47, %lor.lhs.false
  %25 = phi i1 [ %12, %if.end59 ], [ %12, %lor.lhs.false47 ], [ false, %lor.lhs.false ]
  %26 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 7, i32 0
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 3, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 6, i32 0
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 8, i32 0
  %32 = load i32, i32* %30, align 8
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 4, i32 0
  store i32 %32, i32* %33, align 8
  %brmerge = or i1 %tobool27, %25
  %cap_ambient = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 14
  %34 = bitcast %struct.kernel_cap_struct* %cap_ambient to i64*
  br i1 %brmerge, label %do.body77, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  %.pre = load i64, i64* %34, align 8
  br label %if.end80

do.body77:                                        ; preds = %if.end68
  %35 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %35, i64* %34, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end68.if.end80_crit_edge, %do.body77
  %36 = phi i64 [ %.pre, %if.end68.if.end80_crit_edge ], [ %35, %do.body77 ]
  %37 = load i64, i64* %5, align 8
  %call87 = call fastcc i64 @cap_combine(i64 %37, i64 %36) #11
  store i64 %call87, i64* %5, align 8
  %38 = load i8, i8* %effective, align 4, !range !12
  %tobool89.not = icmp eq i8 %38, 0
  %cap_effective92 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 12
  %39 = bitcast %struct.kernel_cap_struct* %cap_effective92 to i64*
  %.call87 = select i1 %tobool89.not, i64 %36, i64 %call87
  store i64 %.call87, i64* %39, align 8
  %call96 = call fastcc i1 @cap_ambient_invariant_ok(%struct.cred* noundef %3) #11
  br i1 %call96, label %if.end123, label %if.then111, !prof !8

if.then111:                                       ; preds = %if.end80
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22security/commoncap.c\22; .popsection; .long 14472b - 14470b; .short 954; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %cleanup

if.end123:                                        ; preds = %if.end80
  %call127 = call fastcc i1 @nonroot_raised_pE(%struct.cred* noundef %3, %struct.cred* noundef %2, i64 0, i1 noundef %tobool27) #11
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 9
  %40 = load i32, i32* %securebits, align 4
  %and135 = and i32 %40, -17
  store i32 %and135, i32* %securebits, align 4
  %call137 = call fastcc i1 @cap_ambient_invariant_ok(%struct.cred* noundef %3) #11
  br i1 %call137, label %if.end164, label %if.then152, !prof !8

if.then152:                                       ; preds = %if.end123
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22security/commoncap.c\22; .popsection; .long 14472b - 14470b; .short 965; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  br label %cleanup

if.end164:                                        ; preds = %if.end123
  br i1 %25, label %if.then180, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end164
  %call170 = call fastcc i1 @__is_real(i64 0, %struct.cred* noundef %3) #11
  br i1 %call170, label %cleanup, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %lor.lhs.false167
  br i1 %tobool89.not, label %lor.lhs.false174, label %if.then180

lor.lhs.false174:                                 ; preds = %land.lhs.true171
  %call179 = call fastcc i1 @cap_issubset(i64 %call87, i64 %36) #11
  br i1 %call179, label %cleanup, label %if.then180

if.then180:                                       ; preds = %lor.lhs.false174, %land.lhs.true171, %if.end164
  %secureexec = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 5
  %bf.load = load i8, i8* %secureexec, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, i8* %secureexec, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %if.then111, %if.then, %lor.lhs.false167, %lor.lhs.false174, %if.then180, %if.end20
  %retval.0 = phi i32 [ -1, %if.then ], [ %call21, %if.end20 ], [ -1, %if.then111 ], [ -1, %if.then152 ], [ 0, %if.then180 ], [ 0, %lor.lhs.false174 ], [ 0, %lor.lhs.false167 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %has_fcap) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %effective) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_file_caps(%struct.linux_binprm* nocapture noundef readonly %bprm, %struct.file* nocapture noundef readonly %file, i8* nocapture noundef %effective, i8* nocapture noundef writeonly %has_fcap) unnamed_addr #3 {
entry:
  %vcaps = alloca %struct.cpu_vfs_cap_data, align 4
  %0 = bitcast %struct.cpu_vfs_cap_data* %vcaps to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !10
  %cred = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %1 = load %struct.cred*, %struct.cred** %cred, align 8
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 11
  %2 = bitcast %struct.kernel_cap_struct* %cap_permitted to i64*
  %3 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %3, i64* %2, align 8
  %4 = load i32, i32* @file_caps_enabled, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call i1 @mnt_may_suid(%struct.vfsmount* noundef %5) #12
  br i1 %call, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %call8 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #11
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call10 = call i32 @get_vfs_caps_from_disk(%struct.user_namespace* undef, %struct.dentry* noundef %6, %struct.cpu_vfs_cap_data* noundef nonnull %vcaps) #11
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %out

if.then11:                                        ; preds = %if.end2
  switch i32 %call10, label %do.body26 [
    i32 -22, label %do.end16
    i32 -61, label %cleanup
  ]

do.end16:                                         ; preds = %if.then11
  %filename = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 14
  %7 = load i8*, i8** %filename, align 8
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #15
  br label %do.body26

out:                                              ; preds = %if.end2
  %call23 = call fastcc i32 @bprm_caps_from_vfs_caps(%struct.cpu_vfs_cap_data* noundef nonnull %vcaps, %struct.linux_binprm* noundef %bprm, i8* noundef %effective, i8* noundef %has_fcap) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %do.body26

do.body26:                                        ; preds = %if.then11, %do.end16, %out
  %rc.046 = phi i32 [ %call23, %out ], [ -22, %do.end16 ], [ %call10, %if.then11 ]
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %cap_permitted28 = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 11
  %9 = bitcast %struct.kernel_cap_struct* %cap_permitted28 to i64*
  store i64 %3, i64* %9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %out, %do.body26, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %rc.046, %do.body26 ], [ 0, %out ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @handle_privileged_root(%struct.linux_binprm* nocapture noundef readonly %bprm, i1 noundef %has_fcap, i8* nocapture noundef writeonly %effective, i64 %root_uid.coerce) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %cred1 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %3 = load %struct.cred*, %struct.cred** %cred1, align 8
  %call2 = call fastcc i1 @root_privileged() #11
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %coerce.val.ii4 = and i64 %root_uid.coerce, 4294967295
  br i1 %has_fcap, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call5 = call fastcc i1 @__is_suid(i64 %coerce.val.ii4, %struct.cred* noundef %3) #11
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %filename = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 14
  %4 = load i8*, i8** %filename, align 8
  call fastcc void @warn_setuid_and_fcaps_mixed(i8* noundef %4) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end, %land.lhs.true
  %call10 = call fastcc i1 @__is_eff(i64 %coerce.val.ii4, %struct.cred* noundef %3) #11
  br i1 %call10, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %call13 = call fastcc i1 @__is_real(i64 %coerce.val.ii4, %struct.cred* noundef %3) #11
  br i1 %call13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 13, i32 0
  %5 = bitcast [2 x i32]* %coerce.dive16 to i64*
  %6 = load i64, i64* %5, align 8
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 10, i32 0
  %7 = bitcast [2 x i32]* %coerce.dive17 to i64*
  %8 = load i64, i64* %7, align 8
  %call18 = call fastcc i64 @cap_combine(i64 %6, i64 %8) #11
  %tmp15.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 11
  %tmp15.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp15.sroa.0.0..sroa_idx to i64*
  store i64 %call18, i64* %tmp15.sroa.0.0..sroa_cast, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %lor.lhs.false
  %call23 = call fastcc i1 @__is_eff(i64 %coerce.val.ii4, %struct.cred* noundef %3) #11
  br i1 %call23, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end20
  store i8 1, i8* %effective, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then24, %entry, %if.then6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__is_setuid(%struct.cred* nocapture noundef readonly %new, %struct.cred* nocapture noundef readonly %old) unnamed_addr #7 {
entry:
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 1, i32 0
  %1 = load i32, i32* %coerce.dive1, align 4
  %coerce.val.ii2 = zext i32 %1 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii2) #11
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__is_setgid(%struct.cred* nocapture noundef readonly %new, %struct.cred* nocapture noundef readonly %old) unnamed_addr #7 {
entry:
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 6, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 2, i32 0
  %1 = load i32, i32* %coerce.dive1, align 8
  %coerce.val.ii2 = zext i32 %1 to i64
  %call = call fastcc i1 @gid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii2) #11
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptracer_capable(%struct.task_struct* noundef, %struct.user_namespace* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @nonroot_raised_pE(%struct.cred* nocapture noundef readonly %new, %struct.cred* nocapture noundef readonly %old, i64 %root.coerce, i1 noundef %has_fcap) unnamed_addr #6 {
entry:
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12, i32 0
  %0 = bitcast [2 x i32]* %coerce.dive1 to i64*
  %1 = load i64, i64* %0, align 8
  %coerce.dive2 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 14, i32 0
  %2 = bitcast [2 x i32]* %coerce.dive2 to i64*
  %3 = load i64, i64* %2, align 8
  %call = call fastcc i1 @cap_issubset(i64 %1, i64 %3) #11
  br i1 %call, label %lor.lhs.false16, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call6 = call fastcc i1 @cap_issubset(i64 2199023255551, i64 %1) #11
  br i1 %call6, label %land.lhs.true7, label %if.then

land.lhs.true7:                                   ; preds = %land.lhs.true
  %coerce.val.ii9 = and i64 %root.coerce, 4294967295
  %call10 = call fastcc i1 @__is_eff(i64 %coerce.val.ii9, %struct.cred* noundef %new) #11
  br i1 %call10, label %land.lhs.true14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %call13 = call fastcc i1 @__is_real(i64 %coerce.val.ii9, %struct.cred* noundef %new) #11
  br i1 %call13, label %land.lhs.true14, label %if.then

land.lhs.true14:                                  ; preds = %lor.lhs.false, %land.lhs.true7
  %call15 = call fastcc i1 @root_privileged() #11
  br i1 %call15, label %lor.lhs.false16, label %if.then

lor.lhs.false16:                                  ; preds = %land.lhs.true14, %entry
  %call17 = call fastcc i1 @root_privileged() #11
  br i1 %call17, label %land.lhs.true18, label %lor.lhs.false31

land.lhs.true18:                                  ; preds = %lor.lhs.false16
  %coerce.val.ii20 = and i64 %root.coerce, 4294967295
  %call21 = call fastcc i1 @__is_suid(i64 %coerce.val.ii20, %struct.cred* noundef %new) #11
  br i1 %call21, label %land.lhs.true22, label %lor.lhs.false31

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %call30 = call fastcc i1 @cap_issubset(i64 2199023255551, i64 %1) #11
  br i1 %call30, label %lor.lhs.false31, label %if.then

lor.lhs.false31:                                  ; preds = %land.lhs.true22, %land.lhs.true18, %lor.lhs.false16
  %call32 = call fastcc i1 @__is_setuid(%struct.cred* noundef %new, %struct.cred* noundef %old) #11
  br i1 %call32, label %if.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  br i1 %has_fcap, label %land.lhs.true34, label %lor.lhs.false39

land.lhs.true34:                                  ; preds = %land.lhs.true33
  %coerce.dive36 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 11, i32 0
  %4 = bitcast [2 x i32]* %coerce.dive36 to i64*
  %5 = load i64, i64* %4, align 8
  %coerce.dive37 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 11, i32 0
  %6 = bitcast [2 x i32]* %coerce.dive37 to i64*
  %7 = load i64, i64* %6, align 8
  %call38 = call fastcc i1 @cap_issubset(i64 %5, i64 %7) #11
  br i1 %call38, label %lor.lhs.false39, label %if.then

lor.lhs.false39:                                  ; preds = %land.lhs.true34, %land.lhs.true33
  %coerce.dive43 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 14, i32 0
  %8 = bitcast [2 x i32]* %coerce.dive43 to i64*
  %9 = load i64, i64* %8, align 8
  %call44 = call fastcc i1 @cap_issubset(i64 %3, i64 %9) #11
  br i1 %call44, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false39, %land.lhs.true34, %land.lhs.true22, %land.lhs.true14, %lor.lhs.false, %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false39, %lor.lhs.false31
  %ret.0.off0 = phi i1 [ false, %lor.lhs.false31 ], [ false, %lor.lhs.false39 ], [ true, %if.then ]
  ret i1 %ret.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__is_real(i64 %uid.coerce, %struct.cred* nocapture noundef readonly %cred) unnamed_addr #7 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 1, i32 0
  %0 = load i32, i32* %coerce.dive2, align 4
  %coerce.val.ii3 = zext i32 %0 to i64
  %coerce.val.ii5 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii3, i64 %coerce.val.ii5) #11
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_inode_setxattr(%struct.dentry* nocapture noundef readonly %dentry, i8* noundef %name, i8* nocapture noundef readnone %value, i64 noundef %size, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %1 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef 9) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #12
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i1 @ns_capable(%struct.user_namespace* noundef %1, i32 noundef 21) #12
  %not.call5 = xor i1 %call5, true
  %. = sext i1 %not.call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_inode_removexattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* nocapture noundef readonly %dentry, i8* noundef %name) local_unnamed_addr #3 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %1 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef 9) #12
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup14

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #12
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %dentry) #11
  %tobool.not = icmp eq %struct.inode* %call4, null
  br i1 %tobool.not, label %cleanup14, label %if.end6

if.end6:                                          ; preds = %if.then3
  %call7 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef nonnull %call4, i32 noundef 31) #12
  %not.call7 = xor i1 %call7, true
  %. = sext i1 %not.call7 to i32
  br label %cleanup14

if.end10:                                         ; preds = %if.end
  %call11 = call i1 @ns_capable(%struct.user_namespace* noundef %1, i32 noundef 21) #12
  %not.call11 = xor i1 %call11, true
  %.20 = sext i1 %not.call11 to i32
  br label %cleanup14

cleanup14:                                        ; preds = %if.end10, %if.then3, %if.end6, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ -22, %if.then3 ], [ %., %if.end6 ], [ %.20, %if.end10 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_task_fix_setuid(%struct.cred* nocapture noundef %new, %struct.cred* nocapture noundef readonly %old, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  switch i32 %flags, label %return [
    i32 2, label %do.end
    i32 1, label %do.end
    i32 4, label %do.end
    i32 8, label %do.end5
  ]

do.end:                                           ; preds = %entry, %entry, %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %3 = load i32, i32* %securebits, align 4
  %and = and i32 %3, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %do.end
  call fastcc void @cap_emulate_setxuid(%struct.cred* noundef %new, %struct.cred* noundef %old) #11
  br label %return

do.end5:                                          ; preds = %entry
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %cred8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 80
  %6 = load %struct.cred*, %struct.cred** %cred8, align 8
  %securebits9 = getelementptr inbounds %struct.cred, %struct.cred* %6, i64 0, i32 9
  %7 = load i32, i32* %securebits9, align 4
  %and10 = and i32 %7, 4
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %return

if.then12:                                        ; preds = %do.end5
  %coerce.dive14 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 7, i32 0
  %8 = load i32, i32* %coerce.dive14, align 4
  %coerce.val.ii = zext i32 %8 to i64
  %call17 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 0) #11
  br i1 %call17, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.then12
  %coerce.dive19 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 7, i32 0
  %9 = load i32, i32* %coerce.dive19, align 4
  %coerce.val.ii20 = zext i32 %9 to i64
  %call23 = call fastcc i1 @uid_eq(i64 %coerce.val.ii20, i64 0) #11
  br i1 %call23, label %if.end30, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %coerce.dive27 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12, i32 0
  %10 = bitcast [2 x i32]* %coerce.dive27 to i64*
  %11 = load i64, i64* %10, align 8
  %call28 = call fastcc i64 @cap_drop_fs_set(i64 %11) #11
  %tmp25.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %tmp25.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp25.sroa.0.0..sroa_idx to i64*
  store i64 %call28, i64* %tmp25.sroa.0.0..sroa_cast, align 8
  %.pre = load i32, i32* %coerce.dive14, align 4
  %.pre70 = zext i32 %.pre to i64
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %land.lhs.true, %if.then12
  %coerce.val.ii33.pre-phi = phi i64 [ %.pre70, %if.then24 ], [ %coerce.val.ii, %land.lhs.true ], [ %coerce.val.ii, %if.then12 ]
  %call36 = call fastcc i1 @uid_eq(i64 %coerce.val.ii33.pre-phi, i64 0) #11
  br i1 %call36, label %return, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end30
  %coerce.dive39 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 7, i32 0
  %12 = load i32, i32* %coerce.dive39, align 4
  %coerce.val.ii40 = zext i32 %12 to i64
  %call43 = call fastcc i1 @uid_eq(i64 %coerce.val.ii40, i64 0) #11
  br i1 %call43, label %if.then44, label %return

if.then44:                                        ; preds = %land.lhs.true37
  %coerce.dive48 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12, i32 0
  %13 = bitcast [2 x i32]* %coerce.dive48 to i64*
  %14 = load i64, i64* %13, align 8
  %coerce.dive49 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 11, i32 0
  %15 = bitcast [2 x i32]* %coerce.dive49 to i64*
  %16 = load i64, i64* %15, align 8
  %call50 = call fastcc i64 @cap_raise_fs_set(i64 %14, i64 %16) #11
  %tmp46.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %tmp46.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp46.sroa.0.0..sroa_idx to i64*
  store i64 %call50, i64* %tmp46.sroa.0.0..sroa_cast, align 8
  br label %return

return:                                           ; preds = %if.then, %do.end, %do.end5, %if.then44, %land.lhs.true37, %if.end30, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end30 ], [ 0, %land.lhs.true37 ], [ 0, %if.then44 ], [ 0, %do.end5 ], [ 0, %do.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cap_emulate_setxuid(%struct.cred* nocapture noundef %new, %struct.cred* nocapture noundef readonly %old) unnamed_addr #3 {
entry:
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 1, i32 0
  %0 = load i32, i32* %coerce.dive1, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call4 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 0) #11
  br i1 %call4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive5 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 5, i32 0
  %1 = load i32, i32* %coerce.dive5, align 4
  %coerce.val.ii6 = zext i32 %1 to i64
  %call9 = call fastcc i1 @uid_eq(i64 %coerce.val.ii6, i64 0) #11
  br i1 %call9, label %land.lhs.true, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %coerce.dive11 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 3, i32 0
  %2 = load i32, i32* %coerce.dive11, align 4
  %coerce.val.ii12 = zext i32 %2 to i64
  %call15 = call fastcc i1 @uid_eq(i64 %coerce.val.ii12, i64 0) #11
  br i1 %call15, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %lor.lhs.false10, %lor.lhs.false, %entry
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 1, i32 0
  %3 = load i32, i32* %coerce.dive17, align 4
  %coerce.val.ii18 = zext i32 %3 to i64
  %call21 = call fastcc i1 @uid_eq(i64 %coerce.val.ii18, i64 0) #11
  br i1 %call21, label %if.end48, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true
  %coerce.dive24 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive24, align 4
  %coerce.val.ii25 = zext i32 %4 to i64
  %call28 = call fastcc i1 @uid_eq(i64 %coerce.val.ii25, i64 0) #11
  br i1 %call28, label %if.end48, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true22
  %coerce.dive31 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 3, i32 0
  %5 = load i32, i32* %coerce.dive31, align 4
  %coerce.val.ii32 = zext i32 %5 to i64
  %call35 = call fastcc i1 @uid_eq(i64 %coerce.val.ii32, i64 0) #11
  br i1 %call35, label %if.end48, label %do.end

do.end:                                           ; preds = %land.lhs.true29
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 80
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 9
  %9 = load i32, i32* %securebits, align 4
  %and = and i32 %9, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body39, label %do.end.do.body45_crit_edge

do.end.do.body45_crit_edge:                       ; preds = %do.end
  %.pre = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  br label %do.body45

do.body39:                                        ; preds = %do.end
  %cap_permitted = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 11
  %10 = bitcast %struct.kernel_cap_struct* %cap_permitted to i64*
  %11 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %11, i64* %10, align 8
  %cap_effective = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %12 = bitcast %struct.kernel_cap_struct* %cap_effective to i64*
  store i64 %11, i64* %12, align 8
  br label %do.body45

do.body45:                                        ; preds = %do.end.do.body45_crit_edge, %do.body39
  %13 = phi i64 [ %.pre, %do.end.do.body45_crit_edge ], [ %11, %do.body39 ]
  %cap_ambient = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 14
  %14 = bitcast %struct.kernel_cap_struct* %cap_ambient to i64*
  store i64 %13, i64* %14, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.body45, %land.lhs.true29, %land.lhs.true22, %land.lhs.true, %lor.lhs.false10
  %coerce.dive50 = getelementptr inbounds %struct.cred, %struct.cred* %old, i64 0, i32 5, i32 0
  %15 = load i32, i32* %coerce.dive50, align 4
  %coerce.val.ii51 = zext i32 %15 to i64
  %call54 = call fastcc i1 @uid_eq(i64 %coerce.val.ii51, i64 0) #11
  br i1 %call54, label %land.lhs.true55, label %if.end67

land.lhs.true55:                                  ; preds = %if.end48
  %coerce.dive57 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %16 = load i32, i32* %coerce.dive57, align 4
  %coerce.val.ii58 = zext i32 %16 to i64
  %call61 = call fastcc i1 @uid_eq(i64 %coerce.val.ii58, i64 0) #11
  br i1 %call61, label %if.end67, label %do.body63

do.body63:                                        ; preds = %land.lhs.true55
  %cap_effective64 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %17 = bitcast %struct.kernel_cap_struct* %cap_effective64 to i64*
  %18 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %18, i64* %17, align 8
  %.pre110 = load i32, i32* %coerce.dive50, align 4
  %.pre111 = zext i32 %.pre110 to i64
  br label %if.end67

if.end67:                                         ; preds = %do.body63, %land.lhs.true55, %if.end48
  %coerce.val.ii70.pre-phi = phi i64 [ %.pre111, %do.body63 ], [ %coerce.val.ii51, %land.lhs.true55 ], [ %coerce.val.ii51, %if.end48 ]
  %call73 = call fastcc i1 @uid_eq(i64 %coerce.val.ii70.pre-phi, i64 0) #11
  br i1 %call73, label %if.end84, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end67
  %coerce.dive76 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 5, i32 0
  %19 = load i32, i32* %coerce.dive76, align 4
  %coerce.val.ii77 = zext i32 %19 to i64
  %call80 = call fastcc i1 @uid_eq(i64 %coerce.val.ii77, i64 0) #11
  br i1 %call80, label %if.then81, label %if.end84

if.then81:                                        ; preds = %land.lhs.true74
  %cap_effective82 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 12
  %cap_permitted83 = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 11
  %20 = bitcast %struct.kernel_cap_struct* %cap_permitted83 to i64*
  %21 = bitcast %struct.kernel_cap_struct* %cap_effective82 to i64*
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %21, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %land.lhs.true74, %if.end67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_drop_fs_set(i64 %a.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @cap_drop(i64 %a.coerce, i64 4429185567) #11
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_raise_fs_set(i64 %a.coerce, i64 %permitted.coerce) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @cap_intersect(i64 %permitted.coerce, i64 4429185567) #11
  %call7 = call fastcc i64 @cap_combine(i64 %a.coerce, i64 %call) #11
  ret i64 %call7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_task_setscheduler(%struct.task_struct* noundef %p) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cap_safe_nice(%struct.task_struct* noundef %p) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cap_safe_nice(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 11, i32 0
  %4 = bitcast [2 x i32]* %coerce.dive to i64*
  %5 = load i64, i64* %4, align 8
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 11, i32 0
  %6 = bitcast [2 x i32]* %coerce.dive10 to i64*
  %7 = load i64, i64* %6, align 8
  %call11 = call fastcc i1 @cap_issubset(i64 %5, i64 %7) #11
  br i1 %call11, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 16
  %9 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call22 = call i1 @ns_capable(%struct.user_namespace* noundef %9, i32 noundef 23) #12
  %not.call22 = xor i1 %call22, true
  %spec.select = sext i1 %not.call22 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ]
  call fastcc void @rcu_read_unlock() #11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_task_setioprio(%struct.task_struct* noundef %p, i32 noundef %ioprio) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cap_safe_nice(%struct.task_struct* noundef %p) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_task_setnice(%struct.task_struct* noundef %p, i32 noundef %nice) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cap_safe_nice(%struct.task_struct* noundef %p) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_task_prctl(i32 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) local_unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  switch i32 %option, label %cleanup [
    i32 23, label %sw.bb
    i32 24, label %sw.bb4
    i32 28, label %sw.bb6
    i32 27, label %sw.bb46
    i32 7, label %do.end52
    i32 8, label %sw.bb63
    i32 47, label %sw.bb91
  ]

sw.bb:                                            ; preds = %entry
  %cmp1 = icmp ult i64 %arg2, 41
  br i1 %cmp1, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  %shr = lshr i64 %arg2, 5
  %arrayidx = getelementptr %struct.cred, %struct.cred* %2, i64 0, i32 13, i32 0, i64 %shr
  %3 = load i32, i32* %arrayidx, align 4
  %4 = trunc i64 %arg2 to i32
  %sh_prom = and i32 %4, 31
  %5 = lshr i32 %3, %sh_prom
  %6 = and i32 %5, 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call5 = call fastcc i32 @cap_prctl_drop(i64 noundef %arg2) #11
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %7 = load i32, i32* %securebits, align 4
  %and7 = and i32 %7, 170
  %shr8 = lshr exact i32 %and7, 1
  %conv = zext i32 %shr8 to i64
  %conv10 = zext i32 %7 to i64
  %xor = xor i64 %conv10, %arg2
  %and11 = and i64 %xor, %conv
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb6
  %conv15 = zext i32 %and7 to i64
  %neg = xor i64 %arg2, -1
  %and16 = and i64 %conv15, %neg
  %tobool17.not = icmp eq i64 %and16, 0
  %tobool20.not = icmp ult i64 %arg2, 256
  %or.cond = and i1 %tobool20.not, %tobool17.not
  br i1 %or.cond, label %do.end24, label %cleanup

do.end24:                                         ; preds = %lor.lhs.false
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %8 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call34 = call i32 @cap_capable(%struct.cred* noundef %2, %struct.user_namespace* noundef %8, i32 noundef 8, i32 undef) #11
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end38, label %cleanup

if.end38:                                         ; preds = %do.end24
  %call39 = call %struct.cred* @prepare_creds() #12
  %tobool40.not = icmp eq %struct.cred* %call39, null
  br i1 %tobool40.not, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end38
  %conv43 = trunc i64 %arg2 to i32
  %securebits44 = getelementptr inbounds %struct.cred, %struct.cred* %call39, i64 0, i32 9
  store i32 %conv43, i32* %securebits44, align 4
  %call45 = call i32 @commit_creds(%struct.cred* noundef nonnull %call39) #12
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %securebits47 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %9 = load i32, i32* %securebits47, align 4
  br label %cleanup

do.end52:                                         ; preds = %entry
  %securebits56 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %10 = load i32, i32* %securebits56, align 4
  %and57 = lshr i32 %10, 4
  %and57.lobit = and i32 %and57, 1
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %cmp64 = icmp ugt i64 %arg2, 1
  br i1 %cmp64, label %cleanup, label %do.end71

do.end71:                                         ; preds = %sw.bb63
  %securebits75 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %11 = load i32, i32* %securebits75, align 4
  %and76 = and i32 %11, 32
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end79, label %cleanup

if.end79:                                         ; preds = %do.end71
  %call80 = call %struct.cred* @prepare_creds() #12
  %tobool81.not = icmp eq %struct.cred* %call80, null
  br i1 %tobool81.not, label %cleanup, label %if.end83

if.end83:                                         ; preds = %if.end79
  %tobool84.not = icmp eq i64 %arg2, 0
  %securebits87 = getelementptr inbounds %struct.cred, %struct.cred* %call80, i64 0, i32 9
  %12 = load i32, i32* %securebits87, align 4
  %and88 = and i32 %12, -17
  %masksel = select i1 %tobool84.not, i32 0, i32 16
  %and88.sink = or i32 %and88, %masksel
  store i32 %and88.sink, i32* %securebits87, align 4
  %call90 = call i32 @commit_creds(%struct.cred* noundef nonnull %call80) #12
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  %cmp92 = icmp eq i64 %arg2, 4
  br i1 %cmp92, label %if.then94, label %if.end108

if.then94:                                        ; preds = %sw.bb91
  %or95 = or i64 %arg5, %arg4
  %or96 = or i64 %or95, %arg3
  %tobool97.not = icmp eq i64 %or96, 0
  br i1 %tobool97.not, label %if.end99, label %cleanup

if.end99:                                         ; preds = %if.then94
  %call100 = call %struct.cred* @prepare_creds() #12
  %tobool101.not = icmp eq %struct.cred* %call100, null
  br i1 %tobool101.not, label %cleanup, label %do.body104

do.body104:                                       ; preds = %if.end99
  %cap_ambient = getelementptr inbounds %struct.cred, %struct.cred* %call100, i64 0, i32 14
  %13 = bitcast %struct.kernel_cap_struct* %cap_ambient to i64*
  %14 = load i64, i64* bitcast (%struct.kernel_cap_struct* @__cap_empty_set to i64*), align 4
  store i64 %14, i64* %13, align 8
  %call107 = call i32 @commit_creds(%struct.cred* noundef nonnull %call100) #12
  br label %cleanup

if.end108:                                        ; preds = %sw.bb91
  %cmp111 = icmp ugt i64 %arg3, 40
  %15 = zext i1 %cmp111 to i64
  %or116 = or i64 %arg5, %arg4
  %or117 = or i64 %or116, %15
  %tobool118.not = icmp eq i64 %or117, 0
  br i1 %tobool118.not, label %if.end120, label %cleanup

if.end120:                                        ; preds = %if.end108
  %cmp121 = icmp eq i64 %arg2, 1
  br i1 %cmp121, label %do.end126, label %if.else143

do.end126:                                        ; preds = %if.end120
  %shr132 = lshr i64 %arg3, 5
  %arrayidx133 = getelementptr %struct.cred, %struct.cred* %2, i64 0, i32 14, i32 0, i64 %shr132
  %16 = load i32, i32* %arrayidx133, align 4
  %17 = trunc i64 %arg3 to i32
  %sh_prom135 = and i32 %17, 31
  %18 = lshr i32 %16, %sh_prom135
  %19 = and i32 %18, 1
  br label %cleanup

if.else143:                                       ; preds = %if.end120
  %20 = and i64 %arg2, -2
  %.not = icmp eq i64 %20, 2
  br i1 %.not, label %if.else150, label %cleanup

if.else150:                                       ; preds = %if.else143
  %cmp151 = icmp eq i64 %arg2, 2
  br i1 %cmp151, label %do.end156, label %if.end195.thread

do.end156:                                        ; preds = %if.else150
  %shr161 = lshr i64 %arg3, 5
  %arrayidx162 = getelementptr %struct.cred, %struct.cred* %2, i64 0, i32 11, i32 0, i64 %shr161
  %21 = load i32, i32* %arrayidx162, align 4
  %22 = trunc i64 %arg3 to i32
  %sh_prom164 = and i32 %22, 31
  %shl165 = shl nuw i32 1, %sh_prom164
  %and166 = and i32 %21, %shl165
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %cleanup, label %do.end171

do.end171:                                        ; preds = %do.end156
  %arrayidx177 = getelementptr %struct.cred, %struct.cred* %2, i64 0, i32 10, i32 0, i64 %shr161
  %23 = load i32, i32* %arrayidx177, align 4
  %and181 = and i32 %23, %shl165
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %cleanup, label %do.end187

do.end187:                                        ; preds = %do.end171
  %securebits191 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %24 = load i32, i32* %securebits191, align 4
  %and192 = and i32 %24, 64
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end195, label %cleanup

if.end195:                                        ; preds = %do.end187
  %call196 = call %struct.cred* @prepare_creds() #12
  %tobool197.not = icmp eq %struct.cred* %call196, null
  br i1 %tobool197.not, label %cleanup, label %if.then202

if.end195.thread:                                 ; preds = %if.else150
  %call196274 = call %struct.cred* @prepare_creds() #12
  %tobool197.not275 = icmp eq %struct.cred* %call196274, null
  br i1 %tobool197.not275, label %cleanup, label %if.else211

if.then202:                                       ; preds = %if.end195
  %arrayidx209 = getelementptr %struct.cred, %struct.cred* %call196, i64 0, i32 14, i32 0, i64 %shr161
  %25 = load i32, i32* %arrayidx209, align 4
  %or210 = or i32 %25, %shl165
  store i32 %or210, i32* %arrayidx209, align 4
  br label %if.end221

if.else211:                                       ; preds = %if.end195.thread
  %.pre = lshr i64 %arg3, 5
  %arrayidx219.phi.trans.insert = getelementptr %struct.cred, %struct.cred* %call196274, i64 0, i32 14, i32 0, i64 %.pre
  %.pre280 = load i32, i32* %arrayidx219.phi.trans.insert, align 4
  %.pre281 = trunc i64 %arg3 to i32
  %.pre282 = and i32 %.pre281, 31
  %.pre283 = shl nuw i32 1, %.pre282
  %neg215 = xor i32 %.pre283, -1
  %arrayidx219 = getelementptr %struct.cred, %struct.cred* %call196274, i64 0, i32 14, i32 0, i64 %.pre
  %and220 = and i32 %.pre280, %neg215
  store i32 %and220, i32* %arrayidx219, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else211, %if.then202
  %call196276278 = phi %struct.cred* [ %call196274, %if.else211 ], [ %call196, %if.then202 ]
  %call222 = call i32 @commit_creds(%struct.cred* noundef nonnull %call196276278) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end195.thread, %entry, %if.end195, %do.end156, %do.end171, %do.end187, %if.else143, %if.end108, %if.end99, %if.then94, %if.end79, %do.end71, %sw.bb63, %if.end38, %sw.bb6, %lor.lhs.false, %do.end24, %sw.bb, %if.end221, %do.end126, %do.body104, %if.end83, %do.end52, %sw.bb46, %if.end42, %sw.bb4, %if.end
  %retval.0 = phi i32 [ %call107, %do.body104 ], [ %19, %do.end126 ], [ %call222, %if.end221 ], [ %call90, %if.end83 ], [ %and57.lobit, %do.end52 ], [ %9, %sw.bb46 ], [ %call45, %if.end42 ], [ %call5, %sw.bb4 ], [ %6, %if.end ], [ -22, %sw.bb ], [ -1, %do.end24 ], [ -1, %lor.lhs.false ], [ -1, %sw.bb6 ], [ -12, %if.end38 ], [ -22, %sw.bb63 ], [ -1, %do.end71 ], [ -12, %if.end79 ], [ -22, %if.then94 ], [ -12, %if.end99 ], [ -22, %if.end108 ], [ -22, %if.else143 ], [ -1, %do.end187 ], [ -1, %do.end171 ], [ -1, %do.end156 ], [ -12, %if.end195 ], [ -38, %entry ], [ -12, %if.end195.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cap_prctl_drop(i64 noundef %cap) unnamed_addr #3 {
entry:
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 8) #12
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i64 %cap, 41
  br i1 %cmp2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end4
  %0 = trunc i64 %cap to i32
  %sh_prom = and i32 %0, 31
  %shl = shl nuw i32 1, %sh_prom
  %neg = xor i32 %shl, -1
  %shr = lshr i64 %cap, 5
  %arrayidx = getelementptr %struct.cred, %struct.cred* %call5, i64 0, i32 13, i32 0, i64 %shr
  %1 = load i32, i32* %arrayidx, align 4
  %and9 = and i32 %1, %neg
  store i32 %and9, i32* %arrayidx, align 4
  %call10 = call i32 @commit_creds(%struct.cred* noundef nonnull %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -1, %entry ], [ -22, %if.end ], [ -12, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* nocapture noundef readnone %mm, i64 noundef %pages) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %call1 = call i32 @cap_capable(%struct.cred* noundef %2, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 21, i32 undef) #11
  %cmp = icmp eq i32 %call1, 0
  %spec.select = zext i1 %cmp to i32
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cap_mmap_addr(i64 noundef %addr) local_unnamed_addr #3 {
entry:
  %0 = load i64, i64* @dac_mmap_min_addr, align 8
  %cmp = icmp ugt i64 %0, %addr
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %call1 = call i32 @cap_capable(%struct.cred* noundef %3, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 17, i32 undef) #11
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %or = or i32 %4, 256
  store i32 %or, i32* %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then3, %entry
  %ret.0 = phi i32 [ 0, %if.then3 ], [ %call1, %do.end ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @cap_mmap_file(%struct.file* nocapture noundef readnone %file, i64 noundef %reqprot, i64 noundef %prot, i64 noundef %flags) local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_drop(i64 %a.coerce, i64 %drop.coerce) unnamed_addr #5 {
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
define internal fastcc i1 @cap_isclear(i64 %a.coerce) unnamed_addr #5 {
entry:
  %a.sroa.0.0.extract.trunc = trunc i64 %a.coerce to i32
  %cmp1.not = icmp eq i32 %a.sroa.0.0.extract.trunc, 0
  %cmp1.not.1 = icmp ult i64 %a.coerce, 4294967296
  %or.cond = and i1 %cmp1.not, %cmp1.not.1
  ret i1 %or.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @sansflags(i32 noundef %m) unnamed_addr #2 {
entry:
  %and = and i32 %m, -2
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_from_mnt(i64 %kuid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mnt_may_suid(%struct.vfsmount* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #3 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #11
  ret %struct.user_namespace* %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @bprm_caps_from_vfs_caps(%struct.cpu_vfs_cap_data* nocapture noundef readonly %caps, %struct.linux_binprm* nocapture noundef readonly %bprm, i8* nocapture noundef %effective, i8* nocapture noundef writeonly %has_fcap) unnamed_addr #10 {
entry:
  %cred = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %bprm, i64 0, i32 9
  %0 = load %struct.cred*, %struct.cred** %cred, align 8
  %magic_etc = getelementptr inbounds %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %caps, i64 0, i32 0
  %1 = load i32, i32* %magic_etc, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, i8* %effective, align 1
  %.pr = load i32, i32* %magic_etc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pr, %if.then ], [ %1, %entry ]
  %tobool3.not = icmp ult i32 %2, 16777216
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i8 1, i8* %has_fcap, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %arrayidx = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %caps, i64 0, i32 1, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %caps, i64 0, i32 2, i32 0, i64 0
  %4 = load i32, i32* %arrayidx10, align 4
  %arrayidx13 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 13, i32 0, i64 0
  %5 = load i32, i32* %arrayidx13, align 4
  %and14 = and i32 %5, %3
  %arrayidx17 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 10, i32 0, i64 0
  %6 = load i32, i32* %arrayidx17, align 4
  %and18 = and i32 %6, %4
  %or = or i32 %and18, %and14
  %arrayidx21 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 11, i32 0, i64 0
  store i32 %or, i32* %arrayidx21, align 4
  %neg = xor i32 %or, -1
  %and26 = and i32 %3, %neg
  %tobool27.not = icmp ne i32 %and26, 0
  %arrayidx.1 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %caps, i64 0, i32 1, i32 0, i64 1
  %7 = load i32, i32* %arrayidx.1, align 4
  %arrayidx10.1 = getelementptr %struct.cpu_vfs_cap_data, %struct.cpu_vfs_cap_data* %caps, i64 0, i32 2, i32 0, i64 1
  %8 = load i32, i32* %arrayidx10.1, align 4
  %arrayidx13.1 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 13, i32 0, i64 1
  %9 = load i32, i32* %arrayidx13.1, align 4
  %and14.1 = and i32 %9, %7
  %arrayidx17.1 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 10, i32 0, i64 1
  %10 = load i32, i32* %arrayidx17.1, align 4
  %and18.1 = and i32 %10, %8
  %or.1 = or i32 %and18.1, %and14.1
  %arrayidx21.1 = getelementptr %struct.cred, %struct.cred* %0, i64 0, i32 11, i32 0, i64 1
  store i32 %or.1, i32* %arrayidx21.1, align 4
  %neg.1 = xor i32 %or.1, -1
  %and26.1 = and i32 %7, %neg.1
  %tobool27.not.1 = icmp ne i32 %and26.1, 0
  %narrow = select i1 %tobool27.not.1, i1 true, i1 %tobool27.not
  %11 = load i8, i8* %effective, align 1, !range !12
  %tobool30.not = icmp ne i8 %11, 0
  %narrow54 = select i1 %tobool30.not, i1 %narrow, i1 false
  %cond = sext i1 %narrow54 to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #3 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #14, !srcloc !17
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @root_privileged() unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %securebits = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 9
  %3 = load i32, i32* %securebits, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__is_suid(i64 %uid.coerce, %struct.cred* nocapture noundef readonly %cred) unnamed_addr #7 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @__is_real(i64 %coerce.val.ii2, %struct.cred* noundef %cred) #11
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call5 = call fastcc i1 @__is_eff(i64 %coerce.val.ii2, %struct.cred* noundef %cred) #11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call5, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_setuid_and_fcaps_mixed(i8* noundef %fname) unnamed_addr #3 {
entry:
  %.b = load i1, i1* @warn_setuid_and_fcaps_mixed.warned, align 4
  br i1 %.b, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i8* noundef %fname) #15
  store i1 true, i1* @warn_setuid_and_fcaps_mixed.warned, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @__is_eff(i64 %uid.coerce, %struct.cred* nocapture noundef readonly %cred) unnamed_addr #7 {
entry:
  %coerce.dive1 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 5, i32 0
  %0 = load i32, i32* %coerce.dive1, align 4
  %coerce.val.ii2 = zext i32 %0 to i64
  %coerce.val.ii4 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii2, i64 %coerce.val.ii4) #11
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 256128}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156012049}
!10 = !{!"auto-init"}
!11 = !{i64 2156024672}
!12 = !{i8 0, i8 2}
!13 = !{i64 2156026698}
!14 = !{i64 2156028331}
!15 = !{i64 2149536049}
!16 = !{i64 2149536266}
!17 = !{i64 2152402527}
