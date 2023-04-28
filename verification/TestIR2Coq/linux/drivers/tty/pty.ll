; ModuleID = 'drivers/tty/pty.c'
source_filename = "drivers/tty/pty.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_pty__272_957_pty_init6:\09\09\09"
module asm ".long\09pty_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
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
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
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
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.45, %struct.anon.46, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.45 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.46 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.44, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.44 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
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
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.63, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.63 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.17 = type { i64 }
%struct.swap_info_struct = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.39, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.39 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.42 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.42 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.module = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pts_fs_info = type opaque

@ptm_driver = internal unnamed_addr global %struct.tty_driver* null, align 8
@__UNIQUE_ID___addressable_pty_init273 = internal global i8* bitcast (i32 ()* @pty_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 ptm driver\00", align 1
@pts_driver = internal unnamed_addr global %struct.tty_driver* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't allocate Unix98 pts driver\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pty_master\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ptm\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@ptm_unix98_ops = internal constant %struct.tty_operations { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* @ptm_unix98_lookup, i32 (%struct.tty_driver*, %struct.tty_struct*)* @pty_unix98_install, void (%struct.tty_driver*, %struct.tty_struct*)* @pty_unix98_remove, i32 (%struct.tty_struct*, %struct.file*)* @pty_open, void (%struct.tty_struct*, %struct.file*)* @pty_close, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* @pty_cleanup, i32 (%struct.tty_struct*, i8*, i32)* @pty_write, i32 (%struct.tty_struct*, i8)* null, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*)* @pty_write_room, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i64)* @pty_unix98_ioctl, i64 (%struct.tty_struct*, i32, i64)* null, void (%struct.tty_struct*, %struct.ktermios*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* @pty_unthrottle, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*)* @pty_flush_buffer, void (%struct.tty_struct*)* null, void (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*, i8)* null, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i32)* null, i32 (%struct.tty_struct*, %struct.winsize*)* @pty_resize, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, void (%struct.tty_struct*, %struct.seq_file*)* @pty_show_fdinfo, i32 (%struct.seq_file*, i8*)* null }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"pty_slave\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@pty_unix98_ops = internal constant %struct.tty_operations { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* @pts_unix98_lookup, i32 (%struct.tty_driver*, %struct.tty_struct*)* @pty_unix98_install, void (%struct.tty_driver*, %struct.tty_struct*)* @pty_unix98_remove, i32 (%struct.tty_struct*, %struct.file*)* @pty_open, void (%struct.tty_struct*, %struct.file*)* @pty_close, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* @pty_cleanup, i32 (%struct.tty_struct*, i8*, i32)* @pty_write, i32 (%struct.tty_struct*, i8)* null, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*)* @pty_write_room, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i64)* null, i64 (%struct.tty_struct*, i32, i64)* null, void (%struct.tty_struct*, %struct.ktermios*)* @pty_set_termios, void (%struct.tty_struct*)* null, void (%struct.tty_struct*)* @pty_unthrottle, void (%struct.tty_struct*)* @pty_stop, void (%struct.tty_struct*)* @pty_start, void (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*)* @pty_flush_buffer, void (%struct.tty_struct*)* null, void (%struct.tty_struct*, i32)* null, void (%struct.tty_struct*, i8)* null, i32 (%struct.tty_struct*)* null, i32 (%struct.tty_struct*, i32, i32)* null, i32 (%struct.tty_struct*, %struct.winsize*)* null, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, i32 (%struct.tty_struct*, %struct.serial_struct*)* null, void (%struct.tty_struct*, %struct.seq_file*)* null, i32 (%struct.seq_file*, i8*)* null }, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 ptm driver\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Couldn't register Unix98 pts driver\00", align 1
@ptmx_fops = internal global %struct.file_operations zeroinitializer, section ".data..ro_after_init", align 8
@ptmx_cdev = internal global %struct.cdev zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Couldn't register /dev/ptmx driver\00", align 1
@tty_class = external dso_local local_unnamed_addr global %struct.class*, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@devpts_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @devpts_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @devpts_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"tty-index:\09%d\0A\00", align 1
@tty_mutex = external dso_local global %struct.mutex, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pty_init273 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptm_open_peer(%struct.file* noundef %master, %struct.tty_struct* nocapture noundef readonly %tty, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = bitcast %struct.dentry** %1 to i64*, !annotation !7
  store i64 0, i64* %2, align 8, !annotation !7
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %3 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %4 = load %struct.tty_driver*, %struct.tty_driver** @ptm_driver, align 8
  %cmp.not = icmp eq %struct.tty_driver* %3, %4
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @get_unused_fd_flags(i32 noundef %flags) #10
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 30
  %5 = bitcast i8** %driver_data to %struct.pts_fs_info**
  %6 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %call5 = call %struct.vfsmount* @devpts_mntget(%struct.file* noundef %master, %struct.pts_fs_info* noundef %6) #10
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %call5, %struct.vfsmount** %mnt, align 8
  %7 = bitcast %struct.vfsmount* %call5 to i8*
  %call7 = call fastcc i1 @IS_ERR(i8* noundef %7) #11
  br i1 %call7, label %err_put, label %if.end11

if.end11:                                         ; preds = %if.end4
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %8 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %driver_data12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i64 0, i32 30
  %9 = bitcast i8** %driver_data12 to %struct.dentry**
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %10, %struct.dentry** %dentry, align 8
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !8
  %12 = inttoptr i64 %11 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i64 0, i32 80
  %13 = load %struct.cred*, %struct.cred** %cred, align 8
  %call14 = call %struct.file* @dentry_open(%struct.path* noundef nonnull %path, i32 noundef %flags, %struct.cred* noundef %13) #10
  %14 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mntput(%struct.vfsmount* noundef %14) #10
  %15 = bitcast %struct.file* %call14 to i8*
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %15) #11
  br i1 %call16, label %err_put, label %if.end20

if.end20:                                         ; preds = %if.end11
  call void @fd_install(i32 noundef %call, %struct.file* noundef %call14) #10
  br label %cleanup

err_put:                                          ; preds = %if.end11, %if.end4
  %.sink = phi i8* [ %7, %if.end4 ], [ %15, %if.end11 ]
  %call18 = call fastcc i64 @PTR_ERR(i8* noundef %.sink) #11
  %retval1.0 = trunc i64 %call18 to i32
  call void @put_unused_fd(i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end, %entry, %if.end20
  %retval.0 = phi i32 [ %call, %if.end20 ], [ -5, %entry ], [ %retval1.0, %err_put ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @devpts_mntget(%struct.file* noundef, %struct.pts_fs_info* noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @dentry_open(%struct.path* noundef, i32 noundef, %struct.cred* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @pty_init() #4 section ".init.text" {
entry:
  call fastcc void @unix98_pty_init() #13
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @unix98_pty_init() unnamed_addr #4 section ".init.text" {
entry:
  %call = call %struct.tty_driver* @__tty_alloc_driver(i32 noundef 1048576, %struct.module* noundef null, i64 noundef 94) #10
  store %struct.tty_driver* %call, %struct.tty_driver** @ptm_driver, align 8
  %0 = bitcast %struct.tty_driver* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call %struct.tty_driver* @__tty_alloc_driver(i32 noundef 1048576, %struct.module* noundef null, i64 noundef 94) #10
  store %struct.tty_driver* %call2, %struct.tty_driver** @pts_driver, align 8
  %1 = bitcast %struct.tty_driver* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %1) #11
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #14
  unreachable

if.end5:                                          ; preds = %if.end
  %2 = load %struct.tty_driver*, %struct.tty_driver** @ptm_driver, align 8
  %driver_name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %driver_name, align 8
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %name, align 8
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 7
  store i32 128, i32* %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 8
  store i32 0, i32* %minor_start, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 10
  store i16 4, i16* %type, align 8
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 11
  store i16 1, i16* %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12
  %3 = bitcast %struct.ktermios* %init_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %3, i8* noundef align 4 dereferenceable(44) bitcast (%struct.ktermios* @tty_std_termios to i8*), i64 36, i1 false)
  %c_iflag = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 0
  store i32 0, i32* %c_iflag, align 4
  %c_oflag = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 1
  store i32 0, i32* %c_oflag, align 4
  %c_cflag = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 2
  store i32 191, i32* %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 3
  store i32 0, i32* %c_lflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 6
  store i32 38400, i32* %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 12, i32 7
  store i32 38400, i32* %c_ospeed, align 4
  %other = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 15
  store %struct.tty_driver* %call2, %struct.tty_driver** %other, align 8
  call fastcc void @tty_set_operations(%struct.tty_driver* noundef %2, %struct.tty_operations* noundef nonnull @ptm_unix98_ops) #11
  %driver_name12 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %driver_name12, align 8
  %name13 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %name13, align 8
  %major14 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 7
  store i32 136, i32* %major14, align 4
  %minor_start15 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 8
  store i32 0, i32* %minor_start15, align 8
  %type16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 10
  store i16 4, i16* %type16, align 8
  %subtype17 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 11
  store i16 2, i16* %subtype17, align 2
  %init_termios18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 12
  %4 = bitcast %struct.ktermios* %init_termios18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %4, i8* noundef align 4 dereferenceable(44) bitcast (%struct.ktermios* @tty_std_termios to i8*), i64 36, i1 false)
  %c_cflag20 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 12, i32 2
  store i32 191, i32* %c_cflag20, align 4
  %c_ispeed22 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 12, i32 6
  store i32 38400, i32* %c_ispeed22, align 4
  %c_ospeed24 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 12, i32 7
  store i32 38400, i32* %c_ospeed24, align 4
  %other25 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call2, i64 0, i32 15
  store %struct.tty_driver* %2, %struct.tty_driver** %other25, align 8
  call fastcc void @tty_set_operations(%struct.tty_driver* noundef %call2, %struct.tty_operations* noundef nonnull @pty_unix98_ops) #11
  %call26 = call i32 @tty_register_driver(%struct.tty_driver* noundef %2) #10
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end5
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0)) #14
  unreachable

if.end28:                                         ; preds = %if.end5
  %5 = load %struct.tty_driver*, %struct.tty_driver** @pts_driver, align 8
  %call29 = call i32 @tty_register_driver(%struct.tty_driver* noundef %5) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #14
  unreachable

if.end32:                                         ; preds = %if.end28
  call void @tty_default_fops(%struct.file_operations* noundef nonnull @ptmx_fops) #10
  store i32 (%struct.inode*, %struct.file*)* @ptmx_open, i32 (%struct.inode*, %struct.file*)** getelementptr inbounds (%struct.file_operations, %struct.file_operations* @ptmx_fops, i64 0, i32 14), align 8
  call void @cdev_init(%struct.cdev* noundef nonnull @ptmx_cdev, %struct.file_operations* noundef nonnull @ptmx_fops) #10
  %call33 = call i32 @cdev_add(%struct.cdev* noundef nonnull @ptmx_cdev, i32 noundef 5242882, i32 noundef 1) #10
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %if.end32
  %call35 = call i32 @register_chrdev_region(i32 noundef 5242882, i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.end32
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #14
  unreachable

if.end37:                                         ; preds = %lor.lhs.false
  %6 = load %struct.class*, %struct.class** @tty_class, align 8
  %call38 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %6, %struct.device* noundef null, i32 noundef 5242882, i8* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_driver* @__tty_alloc_driver(i32 noundef, %struct.module* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @tty_set_operations(%struct.tty_driver* nocapture noundef writeonly %driver, %struct.tty_operations* noundef %op) unnamed_addr #7 {
entry:
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  store %struct.tty_operations* %op, %struct.tty_operations** %ops, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(%struct.tty_driver* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_default_fops(%struct.file_operations* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ptmx_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %call = call i32 @nonseekable_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #10
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %or = or i32 %0, 67108864
  store i32 %or, i32* %f_mode, align 4
  %call2 = call i32 @tty_alloc_file(%struct.file* noundef %filp) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.pts_fs_info* @devpts_acquire(%struct.file* noundef %filp) #10
  %1 = bitcast %struct.pts_fs_info* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %1) #11
  br i1 %call4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i64 @PTR_ERR(i8* noundef %1) #11
  %conv = trunc i64 %call6 to i32
  br label %out_free_file

if.end7:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  %call8 = call i32 @devpts_new_index(%struct.pts_fs_info* noundef %call3) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %out_put_fsi, label %if.end11

if.end11:                                         ; preds = %if.end7
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #10
  %2 = load %struct.tty_driver*, %struct.tty_driver** @ptm_driver, align 8
  %call12 = call %struct.tty_struct* @tty_init_dev(%struct.tty_driver* noundef %2, i32 noundef %call8) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #10
  %3 = bitcast %struct.tty_struct* %call12 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %3) #11
  br i1 %call15, label %out, label %if.end17

if.end17:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call12, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 16, i64* noundef %flags) #11
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call12, i64 0, i32 30
  %4 = bitcast i8** %driver_data to %struct.pts_fs_info**
  store %struct.pts_fs_info* %call3, %struct.pts_fs_info** %4, align 8
  call void @tty_add_file(%struct.tty_struct* noundef %call12, %struct.file* noundef %filp) #10
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call12, i64 0, i32 24
  %5 = bitcast %struct.tty_struct** %link to i8**
  %6 = load i8*, i8** %5, align 8
  %call18 = call %struct.dentry* @devpts_pty_new(%struct.pts_fs_info* noundef %call3, i32 noundef %call8, i8* noundef %6) #10
  %7 = bitcast %struct.dentry* %call18 to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %7) #11
  br i1 %call19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc i64 @PTR_ERR(i8* noundef %7) #11
  %conv22 = trunc i64 %call21 to i32
  br label %err_release

if.end23:                                         ; preds = %if.end17
  %8 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %driver_data25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i64 0, i32 30
  %9 = bitcast i8** %driver_data25 to %struct.dentry**
  store %struct.dentry* %call18, %struct.dentry** %9, align 8
  %10 = load %struct.tty_driver*, %struct.tty_driver** @ptm_driver, align 8
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i64 0, i32 20
  %11 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %open = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %11, i64 0, i32 3
  %12 = load i32 (%struct.tty_struct*, %struct.file*)*, i32 (%struct.tty_struct*, %struct.file*)** %open, align 8
  %call26 = call i32 %12(%struct.tty_struct* noundef %call12, %struct.file* noundef %filp) #10
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end, label %err_release

do.end:                                           ; preds = %if.end23
  call void @tty_unlock(%struct.tty_struct* noundef %call12) #10
  br label %cleanup

err_release:                                      ; preds = %if.end23, %if.then20
  %retval1.0 = phi i32 [ %conv22, %if.then20 ], [ %call26, %if.end23 ]
  call void @tty_unlock(%struct.tty_struct* noundef %call12) #10
  %call30 = call i32 @tty_release(%struct.inode* noundef %inode, %struct.file* noundef %filp) #10
  br label %cleanup

out:                                              ; preds = %if.end11
  %call13 = call fastcc i64 @PTR_ERR(i8* noundef %3) #11
  %conv14 = trunc i64 %call13 to i32
  call void @devpts_kill_index(%struct.pts_fs_info* noundef %call3, i32 noundef %call8) #10
  br label %out_put_fsi

out_put_fsi:                                      ; preds = %if.end7, %out
  %retval1.1 = phi i32 [ %call8, %if.end7 ], [ %conv14, %out ]
  call void @devpts_release(%struct.pts_fs_info* noundef %call3) #10
  br label %out_free_file

out_free_file:                                    ; preds = %out_put_fsi, %if.then5
  %retval1.2 = phi i32 [ %conv, %if.then5 ], [ %retval1.1, %out_put_fsi ]
  call void @tty_free_file(%struct.file* noundef %filp) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_free_file, %err_release, %do.end
  %retval.0 = phi i32 [ %retval1.2, %out_free_file ], [ %retval1.0, %err_release ], [ 0, %do.end ], [ %call2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(%struct.cdev* noundef, %struct.file_operations* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(%struct.cdev* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal nonnull %struct.tty_struct* @ptm_unix98_lookup(%struct.tty_driver* nocapture noundef readnone %driver, %struct.file* nocapture noundef readnone %file, i32 noundef %idx) #3 {
entry:
  ret %struct.tty_struct* inttoptr (i64 -5 to %struct.tty_struct*)
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_unix98_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #0 {
entry:
  %call = call fastcc i32 @pty_common_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_unix98_remove(%struct.tty_driver* nocapture noundef readnone %driver, %struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %driver1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver1, align 8
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 11
  %1 = load i16, i16* %subtype, align 2
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %2 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %tty.pn = phi %struct.tty_struct* [ %2, %if.else ], [ %tty, %entry ]
  %fsi.0.in.in = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty.pn, i64 0, i32 30
  %fsi.0.in = bitcast i8** %fsi.0.in.in to %struct.pts_fs_info**
  %fsi.0 = load %struct.pts_fs_info*, %struct.pts_fs_info** %fsi.0.in, align 8
  %tobool.not = icmp eq %struct.pts_fs_info* %fsi.0, null
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %3 = load i32, i32* %index, align 8
  call void @devpts_kill_index(%struct.pts_fs_info* noundef nonnull %fsi.0, i32 noundef %3) #10
  call void @devpts_release(%struct.pts_fs_info* noundef nonnull %fsi.0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_open(%struct.tty_struct* noundef %tty, %struct.file* nocapture noundef readnone %filp) #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool1.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 4
  %tobool2.not = icmp eq i64 %2, 0
  br i1 %tobool2.not, label %if.end4, label %return.sink.split

if.end4:                                          ; preds = %if.end
  %flags6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 16
  %3 = load volatile i64, i64* %flags6, align 8
  %4 = and i64 %3, 65536
  %tobool8.not = icmp eq i64 %4, 0
  br i1 %tobool8.not, label %if.end10, label %return.sink.split

if.end10:                                         ; preds = %if.end4
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %5 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %5, i64 0, i32 11
  %6 = load i16, i16* %subtype, align 2
  %cmp = icmp eq i16 %6, 2
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 17
  %7 = load i32, i32* %count, align 8
  %cmp13.not = icmp eq i32 %7, 1
  br i1 %cmp13.not, label %if.end16, label %return.sink.split

if.end16:                                         ; preds = %land.lhs.true, %if.end10
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags) #11
  %8 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %flags19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %flags19) #11
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end, %if.end4, %land.lhs.true, %if.end16
  %.sink = phi i64 [ 0, %if.end16 ], [ 1, %land.lhs.true ], [ 1, %if.end4 ], [ 1, %if.end ]
  %retval.0.ph = phi i32 [ 0, %if.end16 ], [ -5, %land.lhs.true ], [ -5, %if.end4 ], [ -5, %if.end ]
  call fastcc void @set_bit(i64 noundef %.sink, i64* noundef %flags) #11
  br label %return

return:                                           ; preds = %return.sink.split, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -19, %lor.lhs.false ], [ -19, %entry ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_close(%struct.tty_struct* noundef %tty, %struct.file* nocapture noundef readnone %filp) #0 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 11
  %1 = load i16, i16* %subtype, align 2
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %2 = load i32, i32* %count, align 8
  %cmp2 = icmp sgt i32 %2, 1
  br i1 %cmp2, label %if.then11, label %if.end26, !prof !9

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/pty.c\22; .popsection; .long 14472b - 14470b; .short 50; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !10
  br label %if.end26

if.else:                                          ; preds = %entry
  %call = call fastcc i1 @tty_io_error(%struct.tty_struct* noundef %tty) #11
  br i1 %call, label %if.end58, label %if.end20

if.end20:                                         ; preds = %if.else
  %count21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %3 = load i32, i32* %count21, align 8
  %cmp22 = icmp sgt i32 %3, 2
  br i1 %cmp22, label %if.end58, label %if.end26

if.end26:                                         ; preds = %if.then, %if.then11, %if.end20
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags) #11
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 4
  store i8 0, i8* %packet, align 1
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool30.not = icmp eq %struct.tty_struct* %4, null
  br i1 %tobool30.not, label %if.end58, label %if.end32

if.end32:                                         ; preds = %if.end26
  %flags34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags34) #11
  %5 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %read_wait36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait36, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  %6 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %write_wait38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait38, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  %7 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %subtype40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i64 0, i32 11
  %8 = load i16, i16* %subtype40, align 2
  %cmp42 = icmp eq i16 %8, 1
  br i1 %cmp42, label %if.then44, label %if.end58

if.then44:                                        ; preds = %if.end32
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags) #11
  %9 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %10 = load %struct.tty_driver*, %struct.tty_driver** @ptm_driver, align 8
  %cmp47 = icmp eq %struct.tty_driver* %9, %10
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.then44
  call void @mutex_lock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  %11 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i64 0, i32 30
  %12 = load i8*, i8** %driver_data, align 8
  %tobool51.not = icmp eq i8* %12, null
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.then49
  %13 = bitcast i8* %12 to %struct.dentry*
  call void @devpts_pty_kill(%struct.dentry* noundef nonnull %13) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then49
  call void @mutex_unlock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then44
  %14 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  call void @tty_vhangup(%struct.tty_struct* noundef %14) #10
  br label %if.end58

if.end58:                                         ; preds = %if.end26, %if.end20, %if.else, %if.end56, %if.end32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_cleanup(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_port_put(%struct.tty_port* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_write(%struct.tty_struct* nocapture noundef readonly %tty, i8* noundef %buf, i32 noundef %c) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %1 = load i8, i8* %stopped, align 4, !range !11
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp sgt i32 %c, 0
  br i1 %cmp, label %do.body2, label %cleanup

do.body2:                                         ; preds = %if.end
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 37
  %2 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %2, i64 0, i32 5, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %3 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %conv828 = zext i32 %c to i64
  %call9 = call fastcc i32 @tty_insert_flip_string(%struct.tty_port* noundef %3, i8* noundef %buf, i64 noundef %conv828) #11
  %4 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %rlock.i27 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i64 0, i32 5, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i27, i64 noundef %call4) #10
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %do.body2
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_flip_buffer_push(%struct.tty_port* noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then13, %do.body2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call9, %if.then13 ], [ 0, %do.body2 ], [ %c, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_write_room(%struct.tty_struct* nocapture noundef readonly %tty) #0 {
entry:
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %0 = load i8, i8* %stopped, align 4, !range !11
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %1 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i64 0, i32 37
  %2 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %call = call i32 @tty_buffer_space_avail(%struct.tty_port* noundef %2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_unix98_ioctl(%struct.tty_struct* noundef %tty, i32 noundef %cmd, i64 noundef %arg) #0 {
entry:
  switch i32 %cmd, label %return [
    i32 1074025521, label %sw.bb
    i32 -2147199943, label %sw.bb1
    i32 21536, label %sw.bb3
    i32 -2147199944, label %sw.bb5
    i32 -2147199952, label %sw.bb7
    i32 1074025526, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %0 = inttoptr i64 %arg to i32*
  %call = call fastcc i32 @pty_set_lock(%struct.tty_struct* noundef %tty, i32* noundef %0) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = inttoptr i64 %arg to i32*
  %call2 = call fastcc i32 @pty_get_lock(%struct.tty_struct* noundef %tty, i32* noundef %1) #11
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = inttoptr i64 %arg to i32*
  %call4 = call fastcc i32 @pty_set_pktmode(%struct.tty_struct* noundef %tty, i32* noundef %2) #11
  br label %return

sw.bb5:                                           ; preds = %entry
  %3 = inttoptr i64 %arg to i32*
  %call6 = call fastcc i32 @pty_get_pktmode(%struct.tty_struct* noundef %tty, i32* noundef %3) #11
  br label %return

sw.bb7:                                           ; preds = %entry
  %4 = inttoptr i64 %arg to i8*
  %call8 = call fastcc i64 @__range_ok(i8* noundef %4) #11
  %tobool.not = icmp eq i64 %call8, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %sw.bb7
  %call9 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call9 to i32*
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %6 = load i32, i32* %index, align 8
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %6, i32* %5, i32 -14, i32 0) #9, !srcloc !12
  br label %return

sw.bb18:                                          ; preds = %entry
  %conv = trunc i64 %arg to i32
  %call19 = call fastcc i32 @pty_signal(%struct.tty_struct* noundef %tty, i32 noundef %conv) #11
  br label %return

return:                                           ; preds = %entry, %if.then, %sw.bb7, %sw.bb18, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call19, %sw.bb18 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ %7, %if.then ], [ -14, %sw.bb7 ], [ -515, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_unthrottle(%struct.tty_struct* noundef %tty) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  call void @tty_wakeup(%struct.tty_struct* noundef %0) #10
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_flush_buffer(%struct.tty_struct* noundef %tty) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @tty_buffer_flush(%struct.tty_struct* noundef nonnull %0, %struct.tty_ldisc* noundef null) #10
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !11
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %2 = load i8, i8* %pktstatus, align 8
  %3 = or i8 %2, 2
  store i8 %3, i8* %pktstatus, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pty_resize(%struct.tty_struct* noundef %tty, %struct.winsize* noundef %ws) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %winsize_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 12
  call void @mutex_lock(%struct.mutex* noundef %winsize_mutex) #10
  %1 = bitcast %struct.winsize* %ws to i8*
  %winsize = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 18
  %2 = bitcast %struct.winsize* %winsize to i8*
  %call = call i32 @memcmp(i8* noundef %1, i8* noundef %2, i64 noundef 8) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %tty) #10
  %call2 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %0) #10
  %tobool3.not = icmp eq %struct.pid* %call1, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call1, i32 noundef 28, i32 noundef 1) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %cmp = icmp ne %struct.pid* %call2, %call1
  %tobool7 = icmp ne %struct.pid* %call2, null
  %or.cond = and i1 %cmp, %tobool7
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call2, i32 noundef 28, i32 noundef 1) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  call void @put_pid(%struct.pid* noundef %call1) #10
  call void @put_pid(%struct.pid* noundef %call2) #10
  %3 = bitcast %struct.winsize* %ws to i64*
  %4 = bitcast %struct.winsize* %winsize to i64*
  %5 = load i64, i64* %3, align 2
  store i64 %5, i64* %4, align 4
  %winsize12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 18
  %6 = bitcast %struct.winsize* %winsize12 to i64*
  %7 = load i64, i64* %3, align 2
  store i64 %7, i64* %6, align 4
  br label %done

done:                                             ; preds = %entry, %if.end10
  call void @mutex_unlock(%struct.mutex* noundef %winsize_mutex) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_show_fdinfo(%struct.tty_struct* nocapture noundef readonly %tty, %struct.seq_file* noundef %m) #0 {
entry:
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_common_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 11
  %1 = load i16, i16* %subtype, align 2
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #10
  %3 = bitcast i8* %call.i.i to %struct.tty_port*
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %4, i32 noundef 3264) #10
  %5 = bitcast i8* %call.i.i1 to %struct.tty_port*
  %tobool = icmp ne i8* %call.i.i, null
  %tobool7 = icmp ne i8* %call.i.i1, null
  %or.cond = select i1 %tobool, i1 %tobool7, i1 false
  br i1 %or.cond, label %if.end9, label %err

if.end9:                                          ; preds = %if.end
  %other = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 15
  %6 = load %struct.tty_driver*, %struct.tty_driver** %other, align 8
  %call14 = call %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* noundef %6, i32 noundef %0) #10
  %tobool15.not = icmp eq %struct.tty_struct* %call14, null
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end9
  call void @tty_set_lock_subclass(%struct.tty_struct* noundef nonnull %call14) #10
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14
  %7 = bitcast %struct.ktermios* %termios_locked to i8*
  %call25 = call i8* @memset(i8* noundef %7, i32 noundef 0, i64 noundef 44) #10
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 12
  %8 = bitcast %struct.ktermios* %termios to i8*
  %9 = bitcast %struct.ktermios* %init_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %8, i8* noundef align 4 dereferenceable(44) %9, i64 44, i1 false)
  %termios_locked26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call14, i64 0, i32 14
  %10 = bitcast %struct.ktermios* %termios_locked26 to i8*
  %call27 = call i8* @memset(i8* noundef %10, i32 noundef 0, i64 noundef 44) #10
  %termios28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call14, i64 0, i32 13
  %11 = load %struct.tty_driver*, %struct.tty_driver** %other, align 8
  %init_termios30 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %11, i64 0, i32 12
  %12 = bitcast %struct.ktermios* %termios28 to i8*
  %13 = bitcast %struct.ktermios* %init_termios30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %12, i8* noundef align 4 dereferenceable(44) %13, i64 44, i1 false)
  %14 = load %struct.tty_driver*, %struct.tty_driver** %other, align 8
  call fastcc void @tty_driver_kref_get(%struct.tty_driver* noundef %14) #11
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  store %struct.tty_struct* %call14, %struct.tty_struct** %link, align 8
  %link34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call14, i64 0, i32 24
  store %struct.tty_struct* %tty, %struct.tty_struct** %link34, align 8
  call void @tty_port_init(%struct.tty_port* noundef nonnull %3) #10
  call void @tty_port_init(%struct.tty_port* noundef nonnull %5) #10
  %call38 = call i32 @tty_buffer_set_limit(%struct.tty_port* noundef nonnull %3, i32 noundef 8192) #10
  %call40 = call i32 @tty_buffer_set_limit(%struct.tty_port* noundef nonnull %5, i32 noundef 8192) #10
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call14, i64 0, i32 37
  %15 = bitcast %struct.tty_port** %port to i8**
  store i8* %call.i.i, i8** %15, align 8
  %port43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %16 = bitcast %struct.tty_port** %port43 to i8**
  store i8* %call.i.i1, i8** %16, align 8
  %17 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i64 0, i32 2
  store %struct.tty_struct* %call14, %struct.tty_struct** %itty, align 8
  %18 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_buffer_set_lock_subclass(%struct.tty_port* noundef %18) #10
  call fastcc void @tty_driver_kref_get(%struct.tty_driver* noundef %driver) #11
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %19 = load i32, i32* %count, align 8
  %inc = add i32 %19, 1
  store i32 %inc, i32* %count, align 8
  %count47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call14, i64 0, i32 17
  %20 = load i32, i32* %count47, align 8
  %inc48 = add i32 %20, 1
  store i32 %inc48, i32* %count47, align 8
  br label %cleanup

err:                                              ; preds = %if.end9, %if.end
  call void @kfree(i8* noundef %call.i.i) #10
  call void @kfree(i8* noundef %call.i.i1) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %err ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_set_lock_subclass(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_driver_kref_get(%struct.tty_driver* noundef %d) unnamed_addr #0 {
entry:
  %kref = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %d, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_set_limit(%struct.tty_port* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_set_lock_subclass(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #11
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
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #10
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !9

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
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !14
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_kill_index(%struct.pts_fs_info* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_release(%struct.pts_fs_info* noundef) local_unnamed_addr #2

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
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #9, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #9, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_io_error(%struct.tty_struct* noundef %tty) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devpts_pty_kill(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_enable() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #9, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_insert_flip_string(%struct.tty_port* noundef %port, i8* noundef %chars, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef %port, i8* noundef %chars, i8 noundef 0, i64 noundef %size) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #11
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
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
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #9, !srcloc !24
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #9, !srcloc !25
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef, i8* noundef, i8 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #9, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_space_avail(%struct.tty_port* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_set_lock(%struct.tty_struct* noundef %tty, i32* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #9, !srcloc !28
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %tobool14.not = icmp eq i32 %conv, 0
  %flags17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call fastcc void @set_bit(i64 noundef 16, i64* noundef %flags17) #11
  br label %cleanup

if.else16:                                        ; preds = %if.end13
  call fastcc void @clear_bit(i64 noundef 16, i64* noundef %flags17) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then15, %if.else16, %if.end
  %retval.0 = phi i32 [ -14, %if.end ], [ 0, %if.else16 ], [ 0, %if.then15 ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_get_lock(%struct.tty_struct* noundef %tty, i32* noundef %arg) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = bitcast i32* %arg to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %1) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = trunc i64 %0 to i32
  %3 = lshr i32 %2, 16
  %conv.i = and i32 %3, 1
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %4 = bitcast i8* %call2 to i32*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv.i, i32* %4, i32 -14, i32 0) #9, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %5, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_set_pktmode(%struct.tty_struct* noundef %tty, i32* noundef %arg) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #9, !srcloc !30
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %tobool14.not = icmp eq i32 %conv, 0
  %packet25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 4
  br i1 %tobool14.not, label %if.end26.sink.split, label %if.then15

if.then15:                                        ; preds = %if.end13
  %3 = load i8, i8* %packet25, align 1, !range !11
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.then15
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i64 0, i32 20, i32 3
  store i8 0, i8* %pktstatus, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.end13, %if.then18
  %.sink = phi i8 [ 1, %if.then18 ], [ 0, %if.end13 ]
  store i8 %.sink, i8* %packet25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then15
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -14, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_get_pktmode(%struct.tty_struct* nocapture noundef readonly %tty, i32* noundef %arg) unnamed_addr #0 {
entry:
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 4
  %0 = load i8, i8* %packet, align 1, !range !11
  %1 = bitcast i32* %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1) #11
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = zext i8 %0 to i32
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %3 = bitcast i8* %call2 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %2, i32* %3, i32 -14, i32 0) #9, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %4, %if.then ], [ -14, %entry ]
  ret i32 %__pu_err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #9, !srcloc !33
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #9, !srcloc !34
  call void asm sideeffect "hint #20", "~{memory}"() #9, !srcloc !35
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pty_signal(%struct.tty_struct* nocapture noundef readonly %tty, i32 noundef %sig) unnamed_addr #0 {
entry:
  switch i32 %sig, label %cleanup [
    i32 20, label %if.end
    i32 3, label %if.end
    i32 2, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry, %entry
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef nonnull %0) #10
  %tobool6.not = icmp eq %struct.pid* %call, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then4
  %call8 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call, i32 noundef %sig, i32 noundef 1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  call void @put_pid(%struct.pid* noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(%struct.tty_struct* noundef, %struct.tty_ldisc* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.tty_struct* @pts_unix98_lookup(%struct.tty_driver* nocapture noundef readnone %driver, %struct.file* nocapture noundef readonly %file, i32 noundef %idx) #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call i8* @devpts_get_priv(%struct.dentry* noundef %0) #10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @devpts_mutex) #10
  %tobool.not = icmp eq i8* %call, null
  %1 = bitcast i8* %call to %struct.tty_struct*
  %retval.0 = select i1 %tobool.not, %struct.tty_struct* inttoptr (i64 -5 to %struct.tty_struct*), %struct.tty_struct* %1
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_set_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* nocapture noundef readonly %old_termios) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !11
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end71, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %c_lflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old_termios, i64 0, i32 3
  %2 = load i32, i32* %c_lflag, align 4
  %c_lflag3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %3 = load i32, i32* %c_lflag3, align 4
  %and101 = or i32 %3, %2
  %or = and i32 %and101, 65536
  %c_iflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old_termios, i64 0, i32 0
  %4 = load i32, i32* %c_iflag, align 4
  %and5 = and i32 %4, 1024
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.then
  %arrayidx = getelementptr %struct.ktermios, %struct.ktermios* %old_termios, i64 0, i32 5, i64 9
  %5 = load i8, i8* %arrayidx, align 1
  %cmp = icmp eq i8 %5, 19
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  %arrayidx10 = getelementptr %struct.ktermios, %struct.ktermios* %old_termios, i64 0, i32 5, i64 8
  %6 = load i8, i8* %arrayidx10, align 1
  %cmp12 = icmp eq i8 %6, 17
  %phi.cast = zext i1 %cmp12 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %if.then
  %7 = phi i32 [ 0, %land.lhs.true7 ], [ 0, %if.then ], [ %phi.cast, %land.rhs ]
  %c_iflag15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %8 = load i32, i32* %c_iflag15, align 8
  %and16 = and i32 %8, 1024
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.end32, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.end
  %arrayidx21 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 9
  %9 = load i8, i8* %arrayidx21, align 1
  %cmp23 = icmp eq i8 %9, 19
  br i1 %cmp23, label %land.rhs25, label %land.end32

land.rhs25:                                       ; preds = %land.lhs.true18
  %arrayidx28 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 8
  %10 = load i8, i8* %arrayidx28, align 1
  %cmp30 = icmp eq i8 %10, 17
  br label %land.end32

land.end32:                                       ; preds = %land.rhs25, %land.lhs.true18, %land.end
  %11 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.end ], [ %cmp30, %land.rhs25 ]
  %land.ext33 = zext i1 %11 to i32
  %cmp34 = icmp ne i32 %7, %land.ext33
  %tobool36 = icmp ne i32 %or, 0
  %or.cond = select i1 %cmp34, i1 true, i1 %tobool36
  br i1 %or.cond, label %if.then37, label %if.end71

if.then37:                                        ; preds = %land.end32
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br i1 %cmp34, label %if.then41, label %if.end58

if.then41:                                        ; preds = %if.then37
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %12 = load i8, i8* %pktstatus, align 8
  %13 = and i8 %12, -49
  %. = select i1 %11, i8 32, i8 16
  %14 = or i8 %13, %.
  store i8 %14, i8* %pktstatus, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then41, %if.then37
  br i1 %tobool36, label %if.then60, label %if.end66

if.then60:                                        ; preds = %if.end58
  %pktstatus62 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %15 = load i8, i8* %pktstatus62, align 8
  %16 = or i8 %15, 64
  store i8 %16, i8* %pktstatus62, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.end58
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %17 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #10
  br label %if.end71

if.end71:                                         ; preds = %if.end66, %land.end32, %land.lhs.true, %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %18 = load i32, i32* %c_cflag, align 8
  %and73 = and i32 %18, -433
  %or76 = or i32 %and73, 176
  store i32 %or76, i32* %c_cflag, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_stop(%struct.tty_struct* noundef %tty) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !11
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end, label %do.body3

do.body3:                                         ; preds = %land.lhs.true
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %2 = load i8, i8* %pktstatus, align 8
  %3 = and i8 %2, -13
  %4 = or i8 %3, 4
  store i8 %4, i8* %pktstatus, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call5) #10
  %5 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #10
  br label %if.end

if.end:                                           ; preds = %do.body3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pty_start(%struct.tty_struct* noundef %tty) #0 {
entry:
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %packet = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 20, i32 4
  %1 = load i8, i8* %packet, align 1, !range !11
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end, label %do.body3

do.body3:                                         ; preds = %land.lhs.true
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #11
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  %2 = load i8, i8* %pktstatus, align 8
  %3 = and i8 %2, -13
  %4 = or i8 %3, 8
  store i8 %4, i8* %pktstatus, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call5) #10
  %5 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i64 0, i32 27
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #10
  br label %if.end

if.end:                                           ; preds = %do.body3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @devpts_get_priv(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_alloc_file(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pts_fs_info* @devpts_acquire(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devpts_new_index(%struct.pts_fs_info* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_struct* @tty_init_dev(%struct.tty_driver* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_add_file(%struct.tty_struct* noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @devpts_pty_new(%struct.pts_fs_info* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(%struct.tty_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_release(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_free_file(%struct.file* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nobuiltin "no-builtins" }
attributes #14 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 1462371}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153589591}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153614920, i64 2153614958, i64 2153614975, i64 2153615009, i64 2153615031, i64 2153615057, i64 2153615075, i64 2153615233, i64 2153615274, i64 2153615296, i64 2153615342}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2147807307, i64 2147807971, i64 2147808001, i64 2147808033, i64 2147808067, i64 2147808102, i64 2147808127}
!15 = !{i64 2147880993, i64 2147881514, i64 2147881544, i64 2147881570, i64 2147881602, i64 2147881631}
!16 = !{i64 2147870423, i64 2147870934, i64 2147870964, i64 2147870990, i64 2147871022, i64 2147871051}
!17 = !{i64 2149483433}
!18 = !{i64 2149252608, i64 2149252655, i64 2149252661, i64 2149252698, i64 2149252716, i64 2149254057, i64 2149254105, i64 2149254153, i64 2149254216, i64 2149254265, i64 2149252794, i64 2149252819, i64 2149252845, i64 2149252851, i64 2149253723, i64 2149253763, i64 2149253781, i64 2149253813, i64 2149253841, i64 2149253895, i64 2149253915, i64 2149254012, i64 2149252874, i64 2149252888, i64 2149252894, i64 2149252944, i64 2149252990, i64 2149253023}
!19 = !{i64 2147897205, i64 2147897238, i64 2147897291, i64 2147897350, i64 2147897384, i64 2147897439, i64 2147897468, i64 2147897488}
!20 = !{i64 2149508286}
!21 = !{i64 2149304504}
!22 = !{i64 2149243152, i64 2149243199, i64 2149243205, i64 2149243242, i64 2149243260, i64 2149244600, i64 2149244648, i64 2149244696, i64 2149244759, i64 2149244808, i64 2149243338, i64 2149243363, i64 2149243389, i64 2149243395, i64 2149244266, i64 2149244306, i64 2149244324, i64 2149244356, i64 2149244384, i64 2149244438, i64 2149244458, i64 2149244555, i64 2149243418, i64 2149243432, i64 2149243438, i64 2149243488, i64 2149243534, i64 2149243567}
!23 = !{i64 2149479140}
!24 = !{i64 2149258311, i64 2149258358, i64 2149258364, i64 2149258401, i64 2149258419, i64 2149259730, i64 2149259778, i64 2149259826, i64 2149259889, i64 2149259938, i64 2149258497, i64 2149258522, i64 2149258548, i64 2149258554, i64 2149259396, i64 2149259436, i64 2149259454, i64 2149259486, i64 2149259514, i64 2149259568, i64 2149259588, i64 2149259685, i64 2149258577, i64 2149258591, i64 2149258597, i64 2149258647, i64 2149258693, i64 2149258726}
!25 = !{i64 2149260490, i64 2149260537, i64 2149260543, i64 2149260580, i64 2149260598, i64 2149261541, i64 2149261589, i64 2149261637, i64 2149261700, i64 2149261749, i64 2149260676, i64 2149260701, i64 2149260727, i64 2149260733, i64 2149260770, i64 2149260776, i64 2149260826, i64 2149260872, i64 2149260905}
!26 = !{i64 2149504983}
!27 = !{i64 2149268385, i64 2149268432, i64 2149268438, i64 2149268475, i64 2149268493, i64 2149269804, i64 2149269852, i64 2149269900, i64 2149269963, i64 2149270012, i64 2149268571, i64 2149268596, i64 2149268622, i64 2149268628, i64 2149269470, i64 2149269510, i64 2149269528, i64 2149269560, i64 2149269588, i64 2149269642, i64 2149269662, i64 2149269759, i64 2149268651, i64 2149268665, i64 2149268671, i64 2149268721, i64 2149268767, i64 2149268800}
!28 = !{i64 2153593143, i64 2153593180, i64 2153593197, i64 2153593232, i64 2153593254, i64 2153593280, i64 2153593303, i64 2153593321, i64 2153593480, i64 2153593521, i64 2153593543, i64 2153593589}
!29 = !{i64 2153597132, i64 2153597170, i64 2153597187, i64 2153597221, i64 2153597243, i64 2153597269, i64 2153597287, i64 2153597445, i64 2153597486, i64 2153597508, i64 2153597554}
!30 = !{i64 2153601192, i64 2153601229, i64 2153601246, i64 2153601281, i64 2153601303, i64 2153601329, i64 2153601352, i64 2153601370, i64 2153601529, i64 2153601570, i64 2153601592, i64 2153601638}
!31 = !{i64 2153602830}
!32 = !{i64 2153605229, i64 2153605267, i64 2153605284, i64 2153605318, i64 2153605340, i64 2153605366, i64 2153605384, i64 2153605542, i64 2153605583, i64 2153605605, i64 2153605651}
!33 = !{i64 4005100, i64 4005183, i64 4005407, i64 4005627, i64 4005650}
!34 = !{i64 4009802, i64 4009826}
!35 = !{i64 2151562586}
