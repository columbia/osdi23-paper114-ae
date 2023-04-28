; ModuleID = 'kernel/sched/core.c'
source_filename = "kernel/sched/core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_core__539_9253_migration_initearly:\09\09\09"
module asm ".long\09migration_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i64, i64, %struct.rb_root_cached, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, [32 x i8], %struct.sched_avg, %struct.anon.1 }
%struct.load_weight = type { i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.sched_statistics = type {}
%struct.anon.1 = type { %struct.raw_spinlock, i32, i64, i64, i64, [32 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.2, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [2 x i64], [100 x %struct.list_head] }
%struct.anon.2 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.3, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.3 = type { i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.94, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.6 = type { i32 }
%struct.sched_class = type { void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*)*, i1 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i1)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.task_struct*, i32, i32)*, %struct.task_struct* (%struct.rq*)*, void (%struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.rq*)*, void (%struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)*, void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.task_struct*)*, void (%struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*, i32)*, i32 (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*)* }
%struct.rq_flags = type { i64, %struct.pin_cookie }
%struct.pin_cookie = type {}
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.9, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.10, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.9 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.10 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.59, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.100, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.35, %struct.list_head, %struct.list_head, %union.anon.36 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.15, i8* }
%union.anon.15 = type { i64 }
%struct.lockref = type { %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32, [48 x i8] }
%struct.anon.32 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.33, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.20, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.20 = type { %struct.kernfs_elem_dir }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.21, %struct.device* }
%union.anon.21 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.22, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.22 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.23, %union.anon.24, %union.anon.25, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.30, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.23 = type { %struct.hlist_node }
%union.anon.24 = type { %struct.rb_node }
%union.anon.25 = type { %struct.anon.29 }
%struct.anon.29 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.30 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.27, %union.anon.28, i32 }
%union.anon.27 = type { %struct.list_head }
%union.anon.28 = type { %struct.hlist_node }
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
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.98 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.99 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.37 }
%union.anon.37 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.38, %union.anon.41 }
%union.anon.38 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.41 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.43 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.43 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.100 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.59 = type { %struct.atomic_t }
%struct.file = type { %union.anon.14, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.45 = type { %struct.callback_head }
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
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.79, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.79 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.80 }
%union.anon.80 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.81, %union.anon.84, %union.anon.85, [48 x i8], %union.anon.86, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, %union.anon.91, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.83 }
%union.anon.83 = type { %struct.net_device* }
%union.anon.84 = type { %struct.sock* }
%union.anon.85 = type { i64 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { i64, void (%struct.sk_buff*)* }
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i16 }
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
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.92 }
%struct.bpf_prog = type opaque
%union.anon.92 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
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
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.64 }
%struct.anon.64 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.93, i32, [12 x i8] }
%union.anon.93 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.94 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.95, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.95 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.72, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.72 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.atomic_t = type { i32 }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i64, %struct.perf_domain* }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], %struct.cpudl_item* }
%struct.cpudl_item = type { i64, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.cpupri = type { [101 x %struct.cpupri_vec], i32* }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.perf_domain = type { %struct.em_perf_domain*, %struct.perf_domain*, %struct.callback_head }
%struct.em_perf_domain = type { %struct.em_perf_state*, i32, i32, [0 x i64] }
%struct.em_perf_state = type { i64, i64, i64 }
%struct.sched_domain = type { %struct.sched_domain*, %struct.sched_domain*, %struct.sched_group*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, %union.anon.96, %struct.sched_domain_shared*, i32, [0 x i64] }
%struct.sched_group = type { %struct.sched_group*, %struct.atomic_t, i32, %struct.sched_group_capacity*, i32, [0 x i64] }
%struct.sched_group_capacity = type { %struct.atomic_t, i64, i64, i64, i64, i32, [0 x i64] }
%union.anon.96 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.dl_bandwidth = type { %struct.raw_spinlock, i64, i64 }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.wake_q_head = type { %struct.wake_q_node*, %struct.wake_q_node** }
%struct.anon.5 = type { i32, i32 }
%struct.sched_param = type { i32 }
%struct.migration_arg = type { %struct.task_struct*, i32, %struct.set_affinity_pending* }
%struct.set_affinity_pending = type { %struct.refcount_struct, i32, %struct.completion, %struct.cpu_stop_work, %struct.migration_arg }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.sched_domain_attr = type { i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { i8*, i32, i64 }

@sysctl_sched_nr_migrate = dso_local local_unnamed_addr constant i32 32, align 4
@sysctl_sched_rt_period = dso_local local_unnamed_addr global i32 1000000, align 4
@sysctl_sched_rt_runtime = dso_local local_unnamed_addr global i32 950000, align 4
@runqueues = dso_local global %struct.rq zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__func__.force_compatible_cpus_allowed_ptr = private unnamed_addr constant [34 x i8] c"force_compatible_cpus_allowed_ptr\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"Overriding affinity for process %d (%s) to CPUs %*pbl\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@stop_sched_class = external dso_local constant %struct.sched_class, align 8
@rt_sched_class = external dso_local constant %struct.sched_class, align 8
@sd_llc_id = external dso_local global i32, section ".data..percpu", align 4
@sched_numa_balancing = dso_local local_unnamed_addr global %struct.static_key_false zeroinitializer, align 4
@fair_sched_class = external dso_local constant %struct.sched_class, align 8
@balance_push_callback = dso_local global %struct.callback_head { %struct.callback_head* null, void (%struct.callback_head*)* bitcast (void (%struct.rq*)* @balance_push to void (%struct.callback_head*)*) }, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"\016task:%-15.15s state:%c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\01c  running task    \00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\01c stack:%5lu pid:%5d ppid:%6d flags:0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@idle_sched_class = external dso_local constant %struct.sched_class, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"swapper\00", align 1
@__end_sched_classes = external dso_local global [0 x %struct.sched_class], align 8
@__begin_sched_classes = external dso_local global [0 x %struct.sched_class], align 8
@sched_smp_initialized = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 8
@__UNIQUE_ID___addressable_migration_init540 = internal global i8* bitcast (i32 ()* @migration_init to i8*), section ".discard.addressable", align 8
@__sched_text_start = external dso_local global [0 x i8], align 1
@__sched_text_end = external dso_local global [0 x i8], align 1
@dl_sched_class = external dso_local constant %struct.sched_class, align 8
@def_rt_bandwidth = external dso_local global %struct.rt_bandwidth, align 8
@def_dl_bandwidth = external dso_local global %struct.dl_bandwidth, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@sysctl_sched_migration_cost = external dso_local local_unnamed_addr constant i32, align 4
@def_root_domain = external dso_local global %struct.root_domain, align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@calc_load_update = external dso_local local_unnamed_addr global i64, align 8
@scheduler_running = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"\016Task dump for CPU %d:\0A\00", align 1
@sched_prio_to_weight = dso_local local_unnamed_addr constant [40 x i32] [i32 88761, i32 71755, i32 56483, i32 46273, i32 36291, i32 29154, i32 23254, i32 18705, i32 14949, i32 11916, i32 9548, i32 7620, i32 6100, i32 4904, i32 3906, i32 3121, i32 2501, i32 1991, i32 1586, i32 1277, i32 1024, i32 820, i32 655, i32 526, i32 423, i32 335, i32 272, i32 215, i32 172, i32 137, i32 110, i32 87, i32 70, i32 56, i32 45, i32 36, i32 29, i32 23, i32 18, i32 15], align 4
@sched_prio_to_wmult = dso_local local_unnamed_addr constant [40 x i32] [i32 48388, i32 59856, i32 76040, i32 92818, i32 118348, i32 147320, i32 184698, i32 229616, i32 287308, i32 360437, i32 449829, i32 563644, i32 704093, i32 875809, i32 1099582, i32 1376151, i32 1717300, i32 2157191, i32 2708050, i32 3363326, i32 4194304, i32 5237765, i32 6557202, i32 8165337, i32 10153587, i32 12820798, i32 15790321, i32 19976592, i32 24970740, i32 31350126, i32 39045157, i32 49367440, i32 61356676, i32 76695844, i32 95443717, i32 119304647, i32 148102320, i32 186737708, i32 238609294, i32 286331153], align 4
@kstat = dso_local local_unnamed_addr global %struct.kernel_stat zeroinitializer, section ".data..percpu", align 8
@kernel_cpustat = dso_local local_unnamed_addr global %struct.kernel_cpustat zeroinitializer, section ".data..percpu", align 8
@cpu_scale = external dso_local global i64, section ".data..percpu", align 8
@arch_freq_scale = external dso_local global i64, section ".data..percpu", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@arm64_mismatched_32bit_el0 = external dso_local global %struct.static_key_false, align 4
@sched_rr_timeslice = external dso_local local_unnamed_addr global i32, align 4
@__cpu_dying_mask = external dso_local global %struct.cpumask, align 8
@__func__.select_fallback_rq = private unnamed_addr constant [19 x i8] c"select_fallback_rq\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"process %d (%s) no longer affine to cpu%d\0A\00", align 1
@finish_task_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"corrupted preempt_count: %s/%d/0x%x\0A\00", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"\013BUG: scheduling while atomic: %s/%d/0x%08x\0A\00", align 1
@panic_on_warn = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"scheduling while atomic\0A\00", align 1
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@task_index_to_char.state_char = internal unnamed_addr constant [10 x i8] c"RSDTtXZPI\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@cpuhp_tasks_frozen = external dso_local local_unnamed_addr global i8, align 1
@num_cpus_frozen = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_migration_init540 to i8*)], section "llvm.metadata"
@switch.table.__do_sys_sched_get_priority_max = private unnamed_addr constant [7 x i64] [i64 0, i64 99, i64 99, i64 0, i64 -22, i64 0, i64 0], align 8
@switch.table.__do_sys_sched_get_priority_min = private unnamed_addr constant [7 x i64] [i64 0, i64 1, i64 1, i64 0, i64 -22, i64 0, i64 0], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 %subclass) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %__lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !10
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef readnone %rq) unnamed_addr #2 {
entry:
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  ret %struct.raw_spinlock* %__lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @raw_spin_rq_trylock(%struct.rq* noundef %rq) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  %call1 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %__lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @raw_spin_rq_unlock(%struct.rq* noundef %rq) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.raw_spinlock* @rq_lockp(%struct.rq* noundef %rq) #22
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %call) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.raw_spinlock* @rq_lockp(%struct.rq* noundef readnone %rq) unnamed_addr #2 {
entry:
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  ret %struct.raw_spinlock* %__lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @double_rq_lock(%struct.rq* noundef %rq1, %struct.rq* noundef %rq2) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @rq_order_less(%struct.rq* noundef %rq2, %struct.rq* noundef %rq1) #22
  %spec.select = select i1 %call, %struct.rq* %rq1, %struct.rq* %rq2
  %spec.select14 = select i1 %call, %struct.rq* %rq2, %struct.rq* %rq1
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %spec.select14) #22
  %call3 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %spec.select14) #22
  %call4 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %spec.select) #22
  %cmp = icmp eq %struct.raw_spinlock* %call3, %call4
  br i1 %cmp, label %return, label %if.end6

if.end6:                                          ; preds = %entry
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %spec.select, i32 undef) #22
  br label %return

return:                                           ; preds = %entry, %if.end6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_order_less(%struct.rq* nocapture noundef readonly %rq1, %struct.rq* nocapture noundef readonly %rq2) unnamed_addr #3 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq1, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %cpu1 = getelementptr inbounds %struct.rq, %struct.rq* %rq2, i64 0, i32 32
  %1 = load i32, i32* %cpu1, align 16
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 undef) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* nocapture noundef readnone %rf) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %1) #22
  %call12 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom13 = zext i32 %call12 to i64
  %arrayidx14 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom13
  %2 = load i64, i64* %arrayidx14, align 8
  %add15 = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add15 to %struct.rq*
  %cmp = icmp eq %struct.rq* %1, %3
  br i1 %cmp, label %land.rhs, label %if.end, !prof !16

land.rhs:                                         ; preds = %for.cond
  %call16 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %land.rhs
  %4 = inttoptr i64 %add to %struct.rq*
  ret %struct.rq* %4

if.end:                                           ; preds = %for.cond, %land.rhs
  call void @raw_spin_rq_unlock(%struct.rq* noundef %1) #22
  %call2042 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool21.not43 = icmp eq i32 %call2042, 0
  br i1 %tobool21.not43, label %for.cond.backedge, label %while.body, !prof !16

for.cond.backedge:                                ; preds = %while.body, %if.end
  br label %for.cond

while.body:                                       ; preds = %if.end, %while.body
  call fastcc void @cpu_relax() #22
  %call20 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.backedge, label %while.body, !prof !16
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load volatile i32, i32* %on_rq, align 32
  %cmp = icmp eq i32 %0, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #21, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* nocapture noundef %rf) local_unnamed_addr #0 {
entry:
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  store i64 %call, i64* %flags, align 8
  %call6 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call6 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %1) #22
  %call14 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom15 = zext i32 %call14 to i64
  %arrayidx16 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom15
  %2 = load i64, i64* %arrayidx16, align 8
  %add17 = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add17 to %struct.rq*
  %cmp18 = icmp eq %struct.rq* %1, %3
  br i1 %cmp18, label %land.rhs, label %if.end, !prof !16

land.rhs:                                         ; preds = %for.cond
  %call20 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !16

if.then:                                          ; preds = %land.rhs
  %4 = inttoptr i64 %add to %struct.rq*
  ret %struct.rq* %4

if.end:                                           ; preds = %for.cond, %land.rhs
  call void @raw_spin_rq_unlock(%struct.rq* noundef %1) #22
  %5 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %5) #22
  %call3560 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool36.not61 = icmp eq i32 %call3560, 0
  br i1 %tobool36.not61, label %for.cond.backedge, label %while.body, !prof !16

for.cond.backedge:                                ; preds = %while.body, %if.end
  br label %for.cond

while.body:                                       ; preds = %if.end, %while.body
  call fastcc void @cpu_relax() #22
  %call35 = call fastcc i32 @task_on_rq_migrating(%struct.task_struct* noundef %p) #22
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond.backedge, label %while.body, !prof !16
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_rq_clock(%struct.rq* nocapture noundef %rq) local_unnamed_addr #0 {
entry:
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 14
  %0 = load i32, i32* %clock_update_flags, align 16
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #22
  %call1 = call i64 @sched_clock_cpu(i32 noundef %call) #23
  %clock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 15
  %1 = load i64, i64* %clock, align 8
  %sub = sub i64 %call1, %1
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  store i64 %call1, i64* %clock, align 8
  call fastcc void @update_rq_clock_task(%struct.rq* noundef %rq, i64 noundef %sub) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cpu_of(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #3 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_rq_clock_task(%struct.rq* nocapture noundef %rq, i64 noundef %delta) unnamed_addr #6 {
entry:
  %clock_task = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 16
  %0 = load i64, i64* %clock_task, align 64
  %add = add i64 %0, %delta
  store i64 %add, i64* %clock_task, align 64
  call fastcc void @update_rq_clock_pelt(%struct.rq* noundef %rq, i64 noundef %delta) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_q_add(%struct.wake_q_head* nocapture noundef %head, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__wake_q_add(%struct.wake_q_head* noundef %head, %struct.task_struct* noundef %task) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %task) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__wake_q_add(%struct.wake_q_head* nocapture noundef %head, %struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %wake_q = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 103
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  %0 = bitcast %struct.wake_q_node* %wake_q to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %0, i64 noundef 0, i64 noundef 1) #23
  %tobool.not = icmp eq i64 %call14.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !16

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.wake_q_node, %struct.wake_q_node* %wake_q, i64 0, i32 0
  %lastp = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 1
  %1 = load %struct.wake_q_node**, %struct.wake_q_node*** %lastp, align 8
  store %struct.wake_q_node* %wake_q, %struct.wake_q_node** %1, align 8
  store %struct.wake_q_node** %next, %struct.wake_q_node*** %lastp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #22
  ret %struct.task_struct* %t
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_q_add_safe(%struct.wake_q_head* nocapture noundef %head, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__wake_q_add(%struct.wake_q_head* noundef %head, %struct.task_struct* noundef %task) #22
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @put_task_struct(%struct.task_struct* noundef %task) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_up_q(%struct.wake_q_head* nocapture noundef readonly %head) local_unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.wake_q_head, %struct.wake_q_head* %head, i64 0, i32 0
  %0 = load %struct.wake_q_node*, %struct.wake_q_node** %first, align 8
  %cmp.not10 = icmp eq %struct.wake_q_node* %0, inttoptr (i64 1 to %struct.wake_q_node*)
  br i1 %cmp.not10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %node.011 = phi %struct.wake_q_node* [ %2, %while.body ], [ %0, %entry ]
  %add.ptr9 = getelementptr %struct.wake_q_node, %struct.wake_q_node* %node.011, i64 -192
  %1 = bitcast %struct.wake_q_node* %add.ptr9 to %struct.task_struct*
  %next = getelementptr inbounds %struct.wake_q_node, %struct.wake_q_node* %node.011, i64 0, i32 0
  %2 = load %struct.wake_q_node*, %struct.wake_q_node** %next, align 8
  store %struct.wake_q_node* null, %struct.wake_q_node** %next, align 64
  %call = call i32 @wake_up_process(%struct.task_struct* noundef %1) #22
  call fastcc void @put_task_struct(%struct.task_struct* noundef %1) #22
  %cmp.not = icmp eq %struct.wake_q_node* %2, inttoptr (i64 1 to %struct.wake_q_node*)
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wake_up_process(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @try_to_wake_up(%struct.task_struct* noundef %p, i32 noundef 3, i32 noundef 0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @resched_curr(%struct.rq* nocapture noundef readonly %rq) local_unnamed_addr #0 {
entry:
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr1, align 8
  %call = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %0) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #22
  %call4 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call4, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %cmp = icmp eq i32 %call2, %2
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %0) #22
  call fastcc void @set_preempt_need_resched() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @set_nr_and_not_polling(%struct.task_struct* noundef %0) #22
  call void @smp_send_reschedule(i32 noundef %call2) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef 1) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #24, !srcloc !21
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef 1) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc void @set_preempt_need_resched() unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %preempt = bitcast %union.anon.4* %2 to %struct.anon.5*
  %need_resched = getelementptr inbounds %struct.anon.5, %struct.anon.5* %preempt, i64 0, i32 1
  store i32 0, i32* %need_resched, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_nr_and_not_polling(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  call fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %p) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_reschedule(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @resched_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %1) #22
  %call5 = call fastcc i1 @cpu_online(i32 noundef %cpu) #22
  br i1 %call5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add14 = add i64 %call13, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add14 to i32*
  %3 = load i32, i32* %2, align 4
  %cmp = icmp eq i32 %3, %cpu
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @resched_curr(%struct.rq* noundef %1) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %1, i64 noundef %call) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #22
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %flags) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @sched_task_on_rq(%struct.task_struct* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_on_rq_queued(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @activate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  call fastcc void @enqueue_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #22
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  store i32 1, i32* %on_rq, align 32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @update_rq_clock(%struct.rq* noundef %rq) #22
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %enqueue_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 0
  %1 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %enqueue_task, align 8
  call void %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @deactivate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = shl i32 %flags, 1
  %0 = and i32 %and, 2
  %1 = xor i32 %0, 2
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  store i32 %1, i32* %on_rq, align 32
  call fastcc void @dequeue_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end8

if.then1:                                         ; preds = %entry
  call void @update_rq_clock(%struct.rq* noundef %rq) #22
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then1
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %dequeue_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 1
  %1 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %dequeue_task, align 8
  call void %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @task_curr(%struct.task_struct* noundef %p) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %2, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @check_preempt_curr(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %1 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %sched_class1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 19
  %2 = load %struct.sched_class*, %struct.sched_class** %sched_class1, align 8
  %cmp = icmp eq %struct.sched_class* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %check_preempt_curr = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 4
  %3 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %check_preempt_curr, align 8
  call void %3(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #23
  br label %if.end9

if.else:                                          ; preds = %entry
  %cmp7 = icmp ugt %struct.sched_class* %0, %2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  call void @resched_curr(%struct.rq* noundef %rq) #22
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8, %if.then
  %4 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %4) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call12 = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %4) #22
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  call fastcc void @rq_clock_skip_update(%struct.rq* noundef %rq) #22
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rq_clock_skip_update(%struct.rq* nocapture noundef %rq) unnamed_addr #6 {
entry:
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 14
  %0 = load i32, i32* %clock_update_flags, align 16
  %or = or i32 %0, 1
  store i32 %or, i32* %clock_update_flags, align 16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @migrate_disable() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 29
  %2 = load i16, i16* %migration_disabled, align 16
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %inc = add i16 %2, 1
  store i16 %inc, i16* %migration_disabled, align 16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call3, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %nr_pinned = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 45
  %4 = load i32, i32* %nr_pinned, align 8
  %inc4 = add i32 %4, 1
  store i32 %inc4, i32* %nr_pinned, align 8
  store i16 1, i16* %migration_disabled, align 16
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @migrate_enable() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 29
  %2 = load i16, i16* %migration_disabled, align 16
  %cmp = icmp ugt i16 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dec = add i16 %2, -1
  store i16 %dec, i16* %migration_disabled, align 16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 25
  %3 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 27
  %cmp3.not = icmp eq %struct.cpumask* %3, %cpus_mask
  br i1 %cmp3.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = call fastcc i32 @__set_cpus_allowed_ptr(%struct.task_struct* noundef %1, %struct.cpumask* noundef %cpus_mask, i32 noundef 4) #22
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  store i16 0, i16* %migration_disabled, align 16
  %call11 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call11, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %nr_pinned = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 45
  %5 = load i32, i32* %nr_pinned, align 8
  %dec12 = add i32 %5, -1
  store i32 %dec12, i32* %nr_pinned, align 8
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %call = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call1 = call fastcc i32 @__set_cpus_allowed_ptr_locked(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags, %struct.rq* noundef %call, %struct.rq_flags* noundef nonnull %rf) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @push_cpu_stop(i8* noundef %arg) #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %1 = bitcast i8* %arg to %struct.task_struct*
  %pi_lock = getelementptr inbounds i8, i8* %arg, i64 1532
  %2 = bitcast i8* %pi_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %2) #22
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %0) #22
  %call9 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %1) #22
  %idxprom = zext i32 %call9 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add10 = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add10 to %struct.rq*
  %cmp.not = icmp eq %struct.rq* %4, %0
  br i1 %cmp.not, label %if.end, label %out_unlock

if.end:                                           ; preds = %entry
  %call11 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %1) #22
  %migration_flags = getelementptr inbounds i8, i8* %arg, i64 658
  %5 = bitcast i8* %migration_flags to i16*
  %6 = load i16, i16* %5, align 2
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %7 = or i16 %6, 1
  store i16 %7, i16* %5, align 2
  br label %out_unlock

if.end14:                                         ; preds = %if.end
  %8 = and i16 %6, -2
  store i16 %8, i16* %5, align 2
  %sched_class = getelementptr inbounds i8, i8* %arg, i64 120
  %9 = bitcast i8* %sched_class to %struct.sched_class**
  %10 = load %struct.sched_class*, %struct.sched_class** %9, align 8
  %find_lock_rq = getelementptr inbounds %struct.sched_class, %struct.sched_class* %10, i64 0, i32 16
  %11 = load %struct.rq* (%struct.task_struct*, %struct.rq*)*, %struct.rq* (%struct.task_struct*, %struct.rq*)** %find_lock_rq, align 8
  %tobool.not = icmp eq %struct.rq* (%struct.task_struct*, %struct.rq*)* %11, null
  br i1 %tobool.not, label %out_unlock, label %if.end22

if.end22:                                         ; preds = %if.end14
  %call21 = call %struct.rq* %11(%struct.task_struct* noundef %1, %struct.rq* noundef %0) #23
  %tobool23.not = icmp eq %struct.rq* %call21, null
  br i1 %tobool23.not, label %out_unlock, label %do.body26

do.body26:                                        ; preds = %if.end22
  %call33 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %1) #22
  %idxprom34 = zext i32 %call33 to i64
  %arrayidx35 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom34
  %12 = load i64, i64* %arrayidx35, align 8
  %add36 = add i64 %12, ptrtoint (%struct.rq* @runqueues to i64)
  %13 = inttoptr i64 %add36 to %struct.rq*
  %cmp37 = icmp eq %struct.rq* %13, %0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body26
  call void @deactivate_task(%struct.rq* noundef %0, %struct.task_struct* noundef %1, i32 noundef 0) #22
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call21, i64 0, i32 32
  %14 = load i32, i32* %cpu, align 16
  call void @set_task_cpu(%struct.task_struct* noundef %1, i32 noundef %14) #22
  call void @activate_task(%struct.rq* noundef nonnull %call21, %struct.task_struct* noundef %1, i32 noundef 0) #22
  call void @resched_curr(%struct.rq* noundef nonnull %call21) #22
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %do.body26
  call fastcc void @double_unlock_balance(%struct.rq* noundef %0, %struct.rq* noundef nonnull %call21) #22
  br label %out_unlock

out_unlock:                                       ; preds = %if.end14, %if.end22, %entry, %if.end40, %if.then12
  %push_busy = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 46
  store i32 0, i32* %push_busy, align 4
  call void @raw_spin_rq_unlock(%struct.rq* noundef %0) #22
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %2) #22
  call fastcc void @put_task_struct(%struct.task_struct* noundef %1) #22
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !29
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_migration_disabled(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 29
  %0 = load i16, i16* %migration_disabled, align 16
  %tobool = icmp ne i16 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %new_cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %cmp.not = icmp eq i32 %call, %new_cpu
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %migrate_task_rq = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 11
  %1 = load void (%struct.task_struct*, i32)*, void (%struct.task_struct*, i32)** %migrate_task_rq, align 8
  %tobool.not = icmp eq void (%struct.task_struct*, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void %1(%struct.task_struct* noundef %p, i32 noundef %new_cpu) #23
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %nr_migrations = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 8
  %2 = load i64, i64* %nr_migrations, align 32
  %inc = add i64 %2, 1
  store i64 %inc, i64* %nr_migrations, align 32
  call fastcc void @rseq_migrate(%struct.task_struct* noundef %p) #22
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  call fastcc void @__set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %new_cpu) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_unlock_balance(%struct.rq* noundef readnone %this_rq, %struct.rq* noundef %busiest) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %this_rq) #22
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %busiest) #22
  %cmp.not = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @raw_spin_rq_unlock(%struct.rq* noundef %busiest) #22
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call fastcc void @arch_local_irq_enable() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_cpus_allowed_common(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 6
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  store %struct.cpumask* %new_mask, %struct.cpumask** %cpus_ptr, align 8
  br label %return

if.end:                                           ; preds = %entry
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %cpus_mask, %struct.cpumask* noundef %new_mask) #22
  %call = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %new_mask) #22
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  store i32 %call, i32* %nr_cpus_allowed, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #23
  ret i32 %call4.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask) local_unnamed_addr #0 {
entry:
  call fastcc void @__do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef 0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call7 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool8.not = icmp eq i32 %call7, 0
  %call9 = call fastcc i32 @task_current(%struct.rq* noundef %1, %struct.task_struct* noundef %p) #22
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool8.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %entry
  call fastcc void @dequeue_task(%struct.rq* noundef %1, %struct.task_struct* noundef %p, i32 noundef 10) #22
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %entry
  br i1 %tobool10.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call fastcc void @put_prev_task(%struct.rq* noundef %1, %struct.task_struct* noundef %p) #22
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %2 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %set_cpus_allowed = getelementptr inbounds %struct.sched_class, %struct.sched_class* %2, i64 0, i32 13
  %3 = load void (%struct.task_struct*, %struct.cpumask*, i32)*, void (%struct.task_struct*, %struct.cpumask*, i32)** %set_cpus_allowed, align 8
  call void %3(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) #23
  br i1 %tobool8.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  call fastcc void @enqueue_task(%struct.rq* noundef %1, %struct.task_struct* noundef %p, i32 noundef 10) #22
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  br i1 %tobool10.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  call fastcc void @set_next_task(%struct.rq* noundef %1, %struct.task_struct* noundef %p) #22
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dup_user_cpus_ptr(%struct.task_struct* nocapture noundef writeonly %dst, %struct.task_struct* nocapture noundef readonly %src, i32 noundef %node) local_unnamed_addr #0 {
entry:
  %user_cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %src, i64 0, i32 26
  %0 = load %struct.cpumask*, %struct.cpumask** %user_cpus_ptr, align 32
  %tobool.not = icmp eq %struct.cpumask* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #23
  %user_cpus_ptr2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %dst, i64 0, i32 26
  %2 = bitcast %struct.cpumask** %user_cpus_ptr2 to i8**
  store i8* %call.i.i.i, i8** %2, align 32
  %tobool4.not = icmp eq i8* %call.i.i.i, null
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %3 = bitcast i8* %call.i.i.i to %struct.cpumask*
  %4 = load %struct.cpumask*, %struct.cpumask** %user_cpus_ptr, align 32
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %3, %struct.cpumask* noundef %4) #22
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_user_cpus_ptr(%struct.task_struct* nocapture noundef %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @clear_user_cpus_ptr(%struct.task_struct* noundef %p) #22
  %0 = bitcast %struct.cpumask* %call to i8*
  call void @kfree(i8* noundef %0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.cpumask* @clear_user_cpus_ptr(%struct.task_struct* nocapture noundef %p) unnamed_addr #6 {
entry:
  %user_cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 26
  %0 = load %struct.cpumask*, %struct.cpumask** %user_cpus_ptr, align 32
  store %struct.cpumask* null, %struct.cpumask** %user_cpus_ptr, align 32
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef 0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @force_compatible_cpus_allowed_ptr(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %new_mask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %new_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !28
  call fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef %p) #22
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_mask, i64 0, i64 0
  %call4 = call fastcc i32 @restrict_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay) #22
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %out_free_mask, label %if.end6

if.end6:                                          ; preds = %entry
  call fastcc void @cpuset_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay) #22
  %call9 = call i32 @__printk_ratelimit(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.force_compatible_cpus_allowed_ptr, i64 0, i64 0)) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end6
  %call12 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %p) #22
  %arraydecay13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 81, i64 0
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %arraydecay14 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_mask, i64 0, i64 0, i32 0, i64 0
  %call15 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 noundef %call12, i8* noundef %arraydecay13, i32 noundef %1, i64* noundef nonnull %arraydecay14) #26
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end6
  %call17 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay) #22
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out_free_mask, label %if.then26, !prof !16

if.then26:                                        ; preds = %if.end16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2952; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !31
  br label %out_free_mask

out_free_mask:                                    ; preds = %if.end16, %if.then26, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef readnone %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0)) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @restrict_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %user_cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 26
  %2 = load %struct.cpumask*, %struct.cpumask** %user_cpus_ptr, align 32
  %tobool.not = icmp eq %struct.cpumask* %2, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #23
  %4 = bitcast i8* %call.i.i to %struct.cpumask*
  %tobool2.not = icmp eq i8* %call.i.i, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %user_mask.0 = phi %struct.cpumask* [ null, %entry ], [ %4, %if.then ]
  %call5 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call6 = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #22
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call8 = call fastcc i32 @dl_bandwidth_enabled() #22
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err_unlock

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  %call12 = call fastcc i32 @cpumask_and(%struct.cpumask* noundef %new_mask, %struct.cpumask* noundef %cpus_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err_unlock, label %if.end15

if.end15:                                         ; preds = %if.end11
  %tobool16.not = icmp eq %struct.cpumask* %user_mask.0, null
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %5 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %user_mask.0, %struct.cpumask* noundef %5) #22
  store %struct.cpumask* %user_mask.0, %struct.cpumask** %user_cpus_ptr, align 32
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %call20 = call fastcc i32 @__set_cpus_allowed_ptr_locked(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef 0, %struct.rq* noundef %call5, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

err_unlock:                                       ; preds = %if.end11, %land.lhs.true
  %err.0 = phi i32 [ -1, %land.lhs.true ], [ -22, %if.end11 ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call5, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %6 = bitcast %struct.cpumask* %user_mask.0 to i8*
  call void @kfree(i8* noundef %6) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err_unlock, %if.end19
  %retval.0 = phi i32 [ %err.0, %err_unlock ], [ %call20, %if.end19 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuset_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask) unnamed_addr #0 {
entry:
  call fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef %p) #22
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(i8* noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @relax_compatible_cpus_allowed_ptr(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %user_cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 26
  %0 = load %struct.cpumask*, %struct.cpumask** %user_cpus_ptr, align 32
  %tobool.not = icmp eq %struct.cpumask* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @__sched_setaffinity(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %0) #22
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %do.body

do.body:                                          ; preds = %lor.lhs.false
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  %call3 = call fastcc %struct.cpumask* @clear_user_cpus_ptr(%struct.task_struct* noundef %p) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call2) #22
  %1 = bitcast %struct.cpumask* %call3 to i8*
  call void @kfree(i8* noundef %1) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sched_setaffinity(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask) unnamed_addr #0 {
entry:
  %cpus_allowed = alloca [1 x %struct.cpumask], align 8
  %new_mask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %cpus_allowed to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !28
  %1 = bitcast [1 x %struct.cpumask]* %new_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !28
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %cpus_allowed, i64 0, i64 0
  call fastcc void @cpuset_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay) #22
  %arraydecay5 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_mask, i64 0, i64 0
  %call7 = call fastcc i32 @cpumask_and(%struct.cpumask* noundef nonnull %arraydecay5, %struct.cpumask* noundef %mask, %struct.cpumask* noundef nonnull %arraydecay) #22
  %call9 = call i32 @dl_task_check_affinity(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay5) #22
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %again.preheader, label %out_free_new_mask

again.preheader:                                  ; preds = %entry
  %call1336 = call fastcc i32 @__set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay5, i32 noundef 9) #22
  %tobool14.not37 = icmp eq i32 %call1336, 0
  br i1 %tobool14.not37, label %if.end16, label %out_free_new_mask

if.end16:                                         ; preds = %again.preheader, %if.then22
  call fastcc void @cpuset_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay) #22
  %call20 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef nonnull %arraydecay5, %struct.cpumask* noundef nonnull %arraydecay) #22
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %out_free_new_mask

if.then22:                                        ; preds = %if.end16
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull %arraydecay5, %struct.cpumask* noundef nonnull %arraydecay) #22
  %call13 = call fastcc i32 @__set_cpus_allowed_ptr(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %arraydecay5, i32 noundef 9) #22
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out_free_new_mask

out_free_new_mask:                                ; preds = %if.then22, %if.end16, %again.preheader, %entry
  %retval1.0 = phi i32 [ %call9, %entry ], [ %call1336, %again.preheader ], [ %call13, %if.then22 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #21
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_migrate(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 123
  %0 = load i64, i64* %rseq_event_mask, align 8
  %or.i = or i64 %0, 4
  store i64 %or.i, i64* %rseq_event_mask, align 8
  call fastcc void @rseq_set_notify_resume(%struct.task_struct* noundef %t) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %cpu) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !32
  %cpu3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  store volatile i32 %cpu, i32* %cpu3, align 64
  %wake_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 13
  store i32 %cpu, i32* %wake_cpu, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @wait_task_inactive(%struct.task_struct* noundef %p, i32 noundef %match_state) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %to = alloca i64, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %tobool3.not = icmp eq i32 %match_state, 0
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 71
  %2 = bitcast i64* %to to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %call2105 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #22
  %tobool.not106 = icmp eq i32 %call2105, 0
  br i1 %tobool.not106, label %while.end, label %while.body

while.body:                                       ; preds = %for.cond, %if.end
  br i1 %tobool3.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %while.body
  %3 = load volatile i32, i32* %__state, align 16
  %cmp.not = icmp eq i32 %3, %match_state
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !16

if.end:                                           ; preds = %do.end6, %while.body
  call fastcc void @cpu_relax() #22
  %call2 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %for.cond
  %call10 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call11 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #22
  %call12 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  br i1 %tobool3.not, label %if.end22, label %do.end16

do.end16:                                         ; preds = %while.end
  %4 = load volatile i32, i32* %__state, align 16
  %cmp19 = icmp eq i32 %4, %match_state
  br i1 %cmp19, label %if.end22, label %if.end22.thread

if.end22.thread:                                  ; preds = %do.end16
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call10, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

if.end22:                                         ; preds = %while.end, %do.end16
  %5 = load i64, i64* %nvcsw, align 8
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call10, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %tobool35.not = icmp eq i32 %call11, 0
  br i1 %tobool35.not, label %if.end44, label %if.then43, !prof !16

if.then43:                                        ; preds = %if.end22
  call fastcc void @cpu_relax() #22
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then43, %if.then53
  br label %for.cond

if.end44:                                         ; preds = %if.end22
  %tobool45.not = icmp eq i32 %call12, 0
  br i1 %tobool45.not, label %cleanup.loopexit103, label %if.then53, !prof !16

if.then53:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  store i64 4000000, i64* %to, align 8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %__state65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 1
  store volatile i32 2, i32* %__state65, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !33
  %call74 = call i32 @schedule_hrtimeout(i64* noundef nonnull %to, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  br label %for.cond.backedge

cleanup.loopexit103:                              ; preds = %if.end44
  %or.le = or i64 %5, -9223372036854775808
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %cleanup.loopexit103, %if.end22.thread
  %retval.0 = phi i64 [ 0, %if.end22.thread ], [ %or.le, %cleanup.loopexit103 ], [ 0, %do.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_running(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %0 = load i32, i32* %on_cpu, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* nocapture noundef readonly %rf) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #22
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(i64* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kick_process(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cmp.not = icmp eq i32 %call, %1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 @task_curr(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @smp_send_reschedule(i32 noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_set_stop_task(i32 noundef %cpu, %struct.task_struct* noundef %stop) local_unnamed_addr #0 {
entry:
  %param = alloca %struct.sched_param, align 4
  %0 = bitcast %struct.sched_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %param, i64 0, i32 0
  store i32 99, i32* %1, align 4
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %stop2 = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 11
  %4 = load %struct.task_struct*, %struct.task_struct** %stop2, align 8
  %tobool.not = icmp eq %struct.task_struct* %stop, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef nonnull %stop, i32 noundef 1, %struct.sched_param* noundef nonnull %param) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %stop, i64 0, i32 19
  store %struct.sched_class* @stop_sched_class, %struct.sched_class** %sched_class, align 8
  %.pre = load i64, i64* %arrayidx, align 8
  %.pre31 = add i64 %.pre, ptrtoint (%struct.rq* @runqueues to i64)
  %.pre32 = inttoptr i64 %.pre31 to %struct.rq*
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.pre-phi = phi %struct.rq* [ %.pre32, %if.then ], [ %3, %entry ]
  %stop16 = getelementptr inbounds %struct.rq, %struct.rq* %.pre-phi, i64 0, i32 11
  store %struct.task_struct* %stop, %struct.task_struct** %stop16, align 8
  %tobool17.not = icmp eq %struct.task_struct* %4, null
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end
  %sched_class19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 19
  store %struct.sched_class* @rt_sched_class, %struct.sched_class** %sched_class19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_param* nocapture noundef readonly %param) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_sched_setscheduler(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_param* noundef %param, i1 noundef false) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_ttwu_pending(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  %2 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %2, align 8, !annotation !28
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %cleanup, label %do.body6

do.body6:                                         ; preds = %entry
  %ttwu_pending = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 2
  store volatile i32 0, i32* %ttwu_pending, align 8
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef %0, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %0) #22
  %p.0.in128 = getelementptr i8, i8* %arg, i64 -48
  %cmp.not130 = icmp eq i8* %p.0.in128, inttoptr (i64 -48 to i8*)
  br i1 %cmp.not130, label %for.end88, label %land.rhs

land.rhs:                                         ; preds = %do.body6, %if.end86
  %p.0132.in = phi i8* [ %p.0.in, %if.end86 ], [ %p.0.in128, %do.body6 ]
  %arg.pn131 = phi i8* [ %4, %if.end86 ], [ %arg, %do.body6 ]
  %p.0132 = bitcast i8* %p.0132.in to %struct.task_struct*
  %3 = bitcast i8* %arg.pn131 to i8**
  %4 = load i8*, i8** %3, align 16
  %on_cpu = getelementptr i8, i8* %arg.pn131, i64 -4
  %5 = bitcast i8* %on_cpu to i32*
  %6 = load i32, i32* %5, align 4
  %tobool23.not = icmp eq i32 %6, 0
  br i1 %tobool23.not, label %if.end55, label %if.then31, !prof !16

if.then31:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 3646; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !36
  %7 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %5) #21, !srcloc !37
  %tobool50.not127 = icmp eq i32 %7, 0
  br i1 %tobool50.not127, label %if.end55, label %if.end52

if.end52:                                         ; preds = %if.then31, %if.end52
  %8 = phi i32 [ %9, %if.end52 ], [ %7, %if.then31 ]
  %conv53 = sext i32 %8 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %on_cpu, i64 noundef %conv53) #23
  %9 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %5) #21, !srcloc !37
  %tobool50.not = icmp eq i32 %9, 0
  br i1 %tobool50.not, label %if.end55, label %if.end52

if.end55:                                         ; preds = %if.end52, %if.then31, %land.rhs
  %call57 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p.0132) #22
  %call58 = call fastcc i32 @cpu_of(%struct.rq* noundef %0) #22
  %cmp59.not = icmp eq i32 %call57, %call58
  br i1 %cmp59.not, label %if.end86, label %if.then73, !prof !16

if.then73:                                        ; preds = %if.end55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 3649; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !38
  %call85 = call fastcc i32 @cpu_of(%struct.rq* noundef %0) #22
  call void @set_task_cpu(%struct.task_struct* noundef %p.0132, i32 noundef %call85) #22
  br label %if.end86

if.end86:                                         ; preds = %if.end55, %if.then73
  %10 = getelementptr i8, i8* %arg.pn131, i64 808
  %bf.load = load i8, i8* %10, align 8
  %bf.clear = shl i8 %bf.load, 5
  %11 = and i8 %bf.clear, 32
  %12 = zext i8 %11 to i32
  call fastcc void @ttwu_do_activate(%struct.rq* noundef %0, %struct.task_struct* noundef %p.0132, i32 noundef %12) #22
  %p.0.in = getelementptr i8, i8* %4, i64 -48
  %cmp.not = icmp eq i8* %p.0.in, inttoptr (i64 -48 to i8*)
  br i1 %cmp.not, label %for.end88, label %land.rhs

for.end88:                                        ; preds = %if.end86, %do.body6
  call fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %0, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end88
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_lock_irqsave(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef writeonly %rf) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) #22
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  store i64 %call, i64* %flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ttwu_do_activate(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %sched_contributes_to_load = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 45
  %bf.load = load i8, i8* %sched_contributes_to_load, align 4
  %0 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr_uninterruptible = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 8
  %1 = load i32, i32* %nr_uninterruptible, align 64
  %dec = add i32 %1, -1
  store i32 %dec, i32* %nr_uninterruptible, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and = and i32 %wake_flags, 32
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.end11

if.else:                                          ; preds = %if.end
  %in_iowait = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 47
  %bf.load3 = load i8, i8* %in_iowait, align 8
  %2 = and i8 %bf.load3, 4
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.else
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add to %struct.rq*
  %nr_iowait = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 19
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_iowait) #23
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.else, %if.then8
  %en_flags.0 = phi i32 [ 9, %if.then8 ], [ 9, %if.else ], [ 73, %if.end ]
  call void @activate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %en_flags.0) #22
  call fastcc void @ttwu_do_wakeup(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %wake_flags) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readonly %rf) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @send_call_function_single_ipi(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call void @arch_send_call_function_single_ipi(i32 noundef %cpu) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_call_function_single_ipi(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_up_if_idle(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  %3 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %3, align 8, !annotation !28
  call fastcc void @__rcu_read_lock() #23
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %4 = load volatile %struct.task_struct*, %struct.task_struct** %curr, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 4
  %5 = load i32, i32* %flags.i, align 4
  %and.i = and i32 %5, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  %6 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %flags.i27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 4
  %7 = load i32, i32* %flags.i27, align 4
  %and.i28 = and i32 %7, 2
  %tobool.i29.not = icmp eq i32 %and.i28, 0
  br i1 %tobool.i29.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @smp_send_reschedule(i32 noundef %cpu) #23
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  call fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  br label %out

out:                                              ; preds = %if.end15, %entry
  call fastcc void @rcu_read_unlock() #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @cpus_share_cache(i32 noundef %this_cpu, i32 noundef %that_cpu) local_unnamed_addr #3 {
entry:
  %idxprom = sext i32 %this_cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i32* @sd_llc_id to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %idxprom8 = sext i32 %that_cpu to i64
  %arrayidx9 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom8
  %3 = load i64, i64* %arrayidx9, align 8
  %add10 = add i64 %3, ptrtoint (i32* @sd_llc_id to i64)
  %4 = inttoptr i64 %add10 to i32*
  %5 = load i32, i32* %4, align 4
  %cmp = icmp eq i32 %2, %5
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @try_invoke_on_locked_down_task(%struct.task_struct* noundef %p, i1 (%struct.task_struct*, i8*)* nocapture noundef readonly %func, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %1 = load i32, i32* %on_rq, align 32
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end14, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call7 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call7 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %cmp8 = icmp eq %struct.rq* %call1, %3
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %call11 = call i1 %func(%struct.task_struct* noundef %p, i8* noundef %arg) #23
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %ret.0 = phi i1 [ %call11, %if.then10 ], [ false, %if.then ]
  call fastcc void @rq_unlock(%struct.rq* noundef %call1) #22
  br label %do.body23

do.end14:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %4 = load volatile i32, i32* %__state, align 16
  switch i32 %4, label %sw.default [
    i32 0, label %do.body23
    i32 512, label %do.body23
  ]

sw.default:                                       ; preds = %do.end14
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !39
  %5 = load i32, i32* %on_rq, align 32
  %tobool17.not = icmp eq i32 %5, 0
  br i1 %tobool17.not, label %if.then18, label %do.body23

if.then18:                                        ; preds = %sw.default
  %call19 = call i1 %func(%struct.task_struct* noundef %p, i8* noundef %arg) #23
  br label %do.body23

do.body23:                                        ; preds = %if.end, %sw.default, %if.then18, %do.end14, %do.end14
  %ret.1.off0 = phi i1 [ %ret.0, %if.end ], [ false, %sw.default ], [ %call19, %if.then18 ], [ false, %do.end14 ], [ false, %do.end14 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i1 %ret.1.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_unlock(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_wake_up(%struct.task_struct* noundef %p, i32 noundef %state, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !40
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %1, %p
  br i1 %cmp, label %if.then, label %do.body10

if.then:                                          ; preds = %entry
  %__state.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %2 = load volatile i32, i32* %__state.i, align 16
  %and.i = and i32 %2, %state
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end93, label %out.thread158

out.thread158:                                    ; preds = %if.then
  store volatile i32 0, i32* %__state.i, align 16
  br label %if.then91

do.body10:                                        ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call12 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %__state.i143 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %3 = load volatile i32, i32* %__state.i143, align 16
  %and.i144 = and i32 %3, %state
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %out, label %if.end17

if.end17:                                         ; preds = %do.body10
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !42
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %4 = load volatile i32, i32* %on_rq, align 32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %call22 = call fastcc i32 @ttwu_runnable(%struct.task_struct* noundef %p, i32 noundef %wake_flags) #22
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %out.thread162

if.end25:                                         ; preds = %land.lhs.true, %if.end17
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !43
  store volatile i32 512, i32* %__state.i143, align 16
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %5 = bitcast i32* %on_cpu to i8*
  %6 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %on_cpu) #21, !srcloc !44
  %tobool41.not = icmp eq i32 %6, 0
  br i1 %tobool41.not, label %if.end47, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.end25
  %call43 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %or = or i32 %wake_flags, 64
  %call44 = call fastcc i1 @ttwu_queue_wakelist(%struct.task_struct* noundef %p, i32 noundef %call43, i32 noundef %or) #22
  br i1 %call44, label %out.thread162, label %if.end47

if.end47:                                         ; preds = %land.lhs.true42, %if.end25
  %7 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %on_cpu) #21, !srcloc !45
  %tobool59.not165 = icmp eq i32 %7, 0
  br i1 %tobool59.not165, label %for.end, label %if.end61

if.end61:                                         ; preds = %if.end47, %if.end61
  %8 = phi i32 [ %9, %if.end61 ], [ %7, %if.end47 ]
  %conv62 = sext i32 %8 to i64
  call fastcc void @__cmpwait_case_32(i8* noundef %5, i64 noundef %conv62) #23
  %9 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %on_cpu) #21, !srcloc !45
  %tobool59.not = icmp eq i32 %9, 0
  br i1 %tobool59.not, label %for.end, label %if.end61

for.end:                                          ; preds = %if.end61, %if.end47
  %wake_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 13
  %10 = load i32, i32* %wake_cpu, align 4
  %or64 = or i32 %wake_flags, 8
  %call65 = call fastcc i32 @select_task_rq(%struct.task_struct* noundef %p, i32 noundef %10, i32 noundef %or64) #22
  %call66 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %cmp67.not = icmp eq i32 %call66, %call65
  br i1 %cmp67.not, label %if.end80, label %if.then69

if.then69:                                        ; preds = %for.end
  %in_iowait = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 47
  %bf.load = load i8, i8* %in_iowait, align 8
  %11 = and i8 %bf.load, 4
  %tobool70.not = icmp eq i8 %11, 0
  br i1 %tobool70.not, label %if.end78, label %if.then71

if.then71:                                        ; preds = %if.then69
  %call77 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call77 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8
  %add = add i64 %12, ptrtoint (%struct.rq* @runqueues to i64)
  %13 = inttoptr i64 %add to %struct.rq*
  %nr_iowait = getelementptr inbounds %struct.rq, %struct.rq* %13, i64 0, i32 19
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_iowait) #23
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.then69
  %or79 = or i32 %wake_flags, 32
  call void @set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %call65) #22
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %for.end
  %wake_flags.addr.0 = phi i32 [ %or79, %if.end78 ], [ %wake_flags, %for.end ]
  call fastcc void @ttwu_queue(%struct.task_struct* noundef %p, i32 noundef %call65, i32 noundef %wake_flags.addr.0) #22
  br label %out.thread162

out.thread162:                                    ; preds = %if.end80, %land.lhs.true, %land.lhs.true42
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call12) #22
  br label %if.then91

out:                                              ; preds = %do.body10
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call12) #22
  br label %if.end93

if.then91:                                        ; preds = %out.thread162, %out.thread158
  %call92 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  br label %if.end93

if.end93:                                         ; preds = %if.then, %out, %if.then91
  %success.2157 = phi i32 [ 1, %if.then91 ], [ 0, %out ], [ 0, %if.then ]
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !46
  ret i32 %success.2157
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @wake_up_state(%struct.task_struct* noundef %p, i32 noundef %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @try_to_wake_up(%struct.task_struct* noundef %p, i32 noundef %state, i32 noundef 0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_fork(i64 noundef %clone_flags, %struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  call fastcc void @__sched_fork(%struct.task_struct* noundef %p) #22
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  store i32 2048, i32* %__state, align 16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 17
  %2 = load i32, i32* %normal_prio, align 4
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  store i32 %2, i32* %prio, align 4
  %sched_reset_on_fork = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 45
  %bf.load = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end19, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #22
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.then
  %call5 = call fastcc i32 @task_has_rt_policy(%struct.task_struct* noundef %p) #22
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  store i32 0, i32* %policy, align 16
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  store i32 120, i32* %static_prio, align 8
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  store i32 0, i32* %rt_priority, align 16
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %static_prio8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %3 = load i32, i32* %static_prio8, align 8
  %sub = add i32 %3, -120
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  store i32 120, i32* %static_prio8, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10, %if.then7
  %4 = phi i32 [ %3, %if.else ], [ 120, %if.then10 ], [ 120, %if.then7 ]
  %normal_prio14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 17
  store i32 %4, i32* %normal_prio14, align 4
  store i32 %4, i32* %prio, align 4
  call fastcc void @set_load_weight(%struct.task_struct* noundef %p, i1 noundef false) #22
  %bf.load17 = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear18 = and i8 %bf.load17, -2
  store i8 %bf.clear18, i8* %sched_reset_on_fork, align 4
  %.pre = load i32, i32* %prio, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end12, %entry
  %5 = phi i32 [ %.pre, %if.end12 ], [ %2, %entry ]
  %call21 = call fastcc i32 @dl_prio(i32 noundef %5) #22
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else24, label %cleanup

if.else24:                                        ; preds = %if.end19
  %call26 = call fastcc i32 @rt_prio(i32 noundef %5) #22
  %tobool27.not = icmp eq i32 %call26, 0
  %spec.select = select i1 %tobool27.not, %struct.sched_class* @fair_sched_class, %struct.sched_class* @rt_sched_class
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  store %struct.sched_class* %spec.select, %struct.sched_class** %6, align 8
  %se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20
  call void @init_entity_runnable_average(%struct.sched_entity* noundef %se) #23
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call35 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  call fastcc void @rseq_migrate(%struct.task_struct* noundef %p) #22
  %call41 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call41, ptrtoint (i32* @cpu_number to i64)
  %7 = inttoptr i64 %add to i32*
  %8 = load i32, i32* %7, align 4
  call fastcc void @__set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %8) #22
  %9 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %task_fork = getelementptr inbounds %struct.sched_class, %struct.sched_class* %9, i64 0, i32 18
  %10 = load void (%struct.task_struct*)*, void (%struct.task_struct*)** %task_fork, align 8
  %tobool43.not = icmp eq void (%struct.task_struct*)* %10, null
  br i1 %tobool43.not, label %do.body48, label %if.then44

if.then44:                                        ; preds = %if.else24
  call void %10(%struct.task_struct* noundef %p) #23
  br label %do.body48

do.body48:                                        ; preds = %if.else24, %if.then44
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call35) #22
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  store i32 0, i32* %on_cpu, align 4
  %call58 = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %p) #22
  %preempt_count = getelementptr inbounds %struct.thread_info, %struct.thread_info* %call58, i64 0, i32 1, i32 0
  store i64 4294967296, i64* %preempt_count, align 8
  %pushable_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 33
  call fastcc void @plist_node_init(%struct.plist_node* noundef %pushable_tasks) #22
  %pushable_dl_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 34
  %11 = ptrtoint %struct.rb_node* %pushable_dl_tasks to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %pushable_dl_tasks, i64 0, i32 0
  store i64 %11, i64* %__rb_parent_color, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.body48
  %retval.0 = phi i32 [ 0, %do.body48 ], [ -11, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sched_fork(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  store i32 0, i32* %on_rq, align 32
  %on_rq1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 3
  store i32 0, i32* %on_rq1, align 8
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 4
  store i64 0, i64* %exec_start, align 64
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  store i64 0, i64* %sum_exec_runtime, align 8
  %prev_sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 7
  store i64 0, i64* %prev_sum_exec_runtime, align 8
  %nr_migrations = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 8
  store i64 0, i64* %nr_migrations, align 32
  %vruntime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 6
  store i64 0, i64* %vruntime, align 16
  %group_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %group_node) #22
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %0 = ptrtoint %struct.sched_dl_entity* %dl to i64
  %__rb_parent_color = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %dl, i64 0, i32 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 16
  call void @init_dl_task_timer(%struct.sched_dl_entity* noundef %dl) #23
  call void @init_dl_inactive_task_timer(%struct.sched_dl_entity* noundef %dl) #23
  call void @__dl_clear_params(%struct.task_struct* noundef %p) #23
  %run_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %run_list) #22
  %timeout = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 1
  store i64 0, i64* %timeout, align 16
  %1 = load i32, i32* @sched_rr_timeslice, align 4
  %time_slice = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 3
  store i32 %1, i32* %time_slice, align 32
  %on_rq15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 4
  store i16 0, i16* %on_rq15, align 4
  %on_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 5
  store i16 0, i16* %on_list, align 2
  %u_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 7, i32 1, i32 0
  store i32 48, i32* %u_flags, align 8
  %migration_pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 28
  store i8* null, i8** %migration_pending, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_has_dl_policy(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %call = call fastcc i32 @dl_policy(i32 noundef %0) #22
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_has_rt_policy(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %call = call fastcc i32 @rt_policy(i32 noundef %0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_load_weight(%struct.task_struct* noundef %p, i1 noundef %update_load) unnamed_addr #0 {
entry:
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %0 = load i32, i32* %static_prio, align 8
  %sub = add i32 %0, -100
  %load1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 0
  %call = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %weight = getelementptr inbounds %struct.load_weight, %struct.load_weight* %load1, i64 0, i32 0
  store i64 3072, i64* %weight, align 8
  %inv_weight = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 0, i32 1
  store i32 1431655765, i32* %inv_weight, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %update_load, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp = icmp eq %struct.sched_class* %1, @fair_sched_class
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @reweight_task(%struct.task_struct* noundef %p, i32 noundef %sub) #23
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr [40 x i32], [40 x i32]* @sched_prio_to_weight, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %2, 10
  %conv = sext i32 %shl to i64
  %weight4 = getelementptr inbounds %struct.load_weight, %struct.load_weight* %load1, i64 0, i32 0
  store i64 %conv, i64* %weight4, align 8
  %arrayidx6 = getelementptr [40 x i32], [40 x i32]* @sched_prio_to_wmult, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx6, align 4
  %inv_weight7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 0, i32 1
  store i32 %3, i32* %inv_weight7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %if.then
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_entity_runnable_average(%struct.sched_entity* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #2 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_node_init(%struct.plist_node* noundef %node) unnamed_addr #11 {
entry:
  %prio1 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  store i32 140, i32* %prio1, align 8
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %prio_list) #22
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @sched_post_fork(%struct.task_struct* nocapture noundef %p) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @to_ratio(i64 noundef %period, i64 noundef %runtime) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i64 %runtime, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %period, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %shl = shl i64 %runtime, 20
  %call = call fastcc i64 @div64_u64(i64 noundef %shl, i64 noundef %period) #22
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i64 [ %call, %if.end3 ], [ 1048576, %entry ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #2 {
entry:
  %div = udiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_up_new_task(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  store i64 %call, i64* %1, align 8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  %call10 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %recent_used_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 12
  store i32 %call10, i32* %recent_used_cpu, align 8
  call fastcc void @rseq_migrate(%struct.task_struct* noundef %p) #22
  %call11 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %call12 = call fastcc i32 @select_task_rq(%struct.task_struct* noundef %p, i32 noundef %call11, i32 noundef 4) #22
  call fastcc void @__set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %call12) #22
  %call13 = call %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %call13) #22
  call void @post_init_entity_util_avg(%struct.task_struct* noundef %p) #23
  call void @activate_task(%struct.rq* noundef %call13, %struct.task_struct* noundef %p, i32 noundef 8) #22
  call void @check_preempt_curr(%struct.rq* noundef %call13, %struct.task_struct* noundef %p, i32 noundef 4) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %2 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %task_woken = getelementptr inbounds %struct.sched_class, %struct.sched_class* %2, i64 0, i32 12
  %3 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %task_woken, align 8
  %tobool.not = icmp eq void (%struct.rq*, %struct.task_struct*)* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %3(%struct.rq* noundef %call13, %struct.task_struct* noundef %p) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call13, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_task_rq(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %p) #22
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %select_task_rq = getelementptr inbounds %struct.sched_class, %struct.sched_class* %1, i64 0, i32 9
  %2 = load i32 (%struct.task_struct*, i32, i32)*, i32 (%struct.task_struct*, i32, i32)** %select_task_rq, align 8
  %call1 = call i32 %2(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) #23
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %3 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call2 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %3) #22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cpu.addr.0 = phi i32 [ %call2, %if.else ], [ %call1, %if.then ]
  %call3 = call fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %cpu.addr.0) #22
  br i1 %call3, label %if.end9, label %if.then6, !prof !16

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %call8 = call fastcc i32 @select_fallback_rq(i32 noundef %call7, %struct.task_struct* noundef %p) #22
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %cpu.addr.1 = phi i32 [ %call8, %if.then6 ], [ %cpu.addr.0, %if.end ]
  ret i32 %cpu.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_init_entity_util_avg(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @balance_push(%struct.rq* nocapture noundef %rq) #2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @schedule_tail(%struct.task_struct* noundef %prev) local_unnamed_addr #0 {
entry:
  call fastcc void @finish_task_switch(%struct.task_struct* noundef %prev) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !47
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %set_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 64
  %2 = load i32*, i32** %set_child_tid, align 16
  %tobool.not = icmp eq i32* %2, null
  %3 = bitcast i32* %2 to i8*
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @__range_ok(i8* noundef nonnull %3, i64 noundef 4) #22
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.then
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %3) #22
  %4 = bitcast i8* %call7 to i32*
  %call12 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #22
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call12, i32* %4, i32 -14, i32 0) #21, !srcloc !48
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.then, %entry
  call void @calculate_sigpending() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_task_switch(%struct.task_struct* noundef %prev) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %prev_mm = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 13
  %1 = load %struct.mm_struct*, %struct.mm_struct** %prev_mm, align 8
  %call2 = call fastcc i32 @preempt_count() #22
  %cmp = icmp ne i32 %call2, 0
  %.b1 = load i1, i1* @finish_task_switch.__already_done, align 1
  %lnot5 = xor i1 %.b1, true
  %2 = select i1 %cmp, i1 %lnot5, i1 false
  br i1 %2, label %if.then, label %if.end38, !prof !49

if.then:                                          ; preds = %entry
  store i1 true, i1* @finish_task_switch.__already_done, align 1
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 50
  %5 = load i32, i32* %pid, align 32
  %call24 = call fastcc i32 @preempt_count() #22
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %5, i32 noundef %call24) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 4791; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !50
  br label %if.end38

if.end38:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end38
  call fastcc void @preempt_count_set() #22
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end38
  store %struct.mm_struct* null, %struct.mm_struct** %prev_mm, align 8
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 1
  %6 = load volatile i32, i32* %__state, align 16
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  call fastcc void @finish_task(%struct.task_struct* noundef %prev) #22
  call fastcc void @finish_lock_switch(%struct.rq* noundef %0) #22
  %tobool62.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end49
  call fastcc void @membarrier_mm_sync_core_before_usermode(%struct.mm_struct* noundef nonnull %1) #22
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %1) #22
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end49
  %cmp65 = icmp eq i32 %6, 128
  br i1 %cmp65, label %if.then74, label %if.end80, !prof !49

if.then74:                                        ; preds = %if.end64
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 19
  %8 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %task_dead = getelementptr inbounds %struct.sched_class, %struct.sched_class* %8, i64 0, i32 19
  %9 = load void (%struct.task_struct*)*, void (%struct.task_struct*)** %task_dead, align 8
  %tobool75.not = icmp eq void (%struct.task_struct*)* %9, null
  br i1 %tobool75.not, label %if.end79, label %if.then76

if.then76:                                        ; preds = %if.then74
  call void %9(%struct.task_struct* noundef %prev) #23
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then74
  call void @put_task_stack(%struct.task_struct* noundef %prev) #23
  call void @put_task_struct_rcu_user(%struct.task_struct* noundef %prev) #23
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #21, !srcloc !51
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #21, !srcloc !52
  call void asm sideeffect "hint #20", "~{memory}"() #21, !srcloc !53
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #23
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calculate_sigpending() local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @nr_running() local_unnamed_addr #7 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call13 = phi i32 [ %call, %do.body ], [ %call10, %entry ]
  %sum.012 = phi i32 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = zext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 1
  %3 = load i32, i32* %nr_running, align 4
  %add2 = add i32 %3, %sum.012
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add2, %do.body ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i1 @single_task_running() local_unnamed_addr #7 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %0, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 4
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @nr_context_switches() local_unnamed_addr #7 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call13 = phi i32 [ %call, %do.body ], [ %call10, %entry ]
  %sum.012 = phi i64 [ %add2, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %nr_switches = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 3
  %3 = load i64, i64* %nr_switches, align 16
  %add2 = add i64 %3, %sum.012
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %sum.0.lcssa = phi i64 [ 0, %entry ], [ %add2, %do.body ]
  ret i64 %sum.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @nr_iowait_cpu(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %counter.i = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 19, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  ret i32 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @nr_iowait() local_unnamed_addr #13 {
entry:
  %call7 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call10 = phi i32 [ %call, %for.body ], [ %call7, %entry ]
  %sum.09 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %call1 = call i32 @nr_iowait_cpu(i32 noundef %call10) #22
  %add = add i32 %call1, %sum.09
  %call = call i32 @cpumask_next(i32 noundef %call10, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_exec() local_unnamed_addr #0 {
entry:
  %arg = alloca %struct.migration_arg, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 19
  %2 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %select_task_rq = getelementptr inbounds %struct.sched_class, %struct.sched_class* %2, i64 0, i32 9
  %3 = load i32 (%struct.task_struct*, i32, i32)*, i32 (%struct.task_struct*, i32, i32)** %select_task_rq, align 8
  %call2 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %1) #22
  %call3 = call i32 %3(%struct.task_struct* noundef %1, i32 noundef %call2, i32 noundef 2) #23
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call9, ptrtoint (i32* @cpu_number to i64)
  %4 = inttoptr i64 %add to i32*
  %5 = load i32, i32* %4, align 4
  %cmp10 = icmp eq i32 %call3, %5
  br i1 %cmp10, label %do.body29, label %if.end

if.end:                                           ; preds = %entry
  %call12 = call fastcc i1 @cpu_active(i32 noundef %call3) #22
  br i1 %call12, label %if.then15, label %do.body29, !prof !16

if.then15:                                        ; preds = %if.end
  %6 = bitcast %struct.migration_arg* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #21
  %7 = getelementptr inbounds %struct.migration_arg, %struct.migration_arg* %arg, i64 0, i32 1
  %8 = bitcast i32* %7 to i64*, !annotation !28
  store i64 0, i64* %8, align 8, !annotation !28
  %task = getelementptr inbounds %struct.migration_arg, %struct.migration_arg* %arg, i64 0, i32 0
  store %struct.task_struct* %1, %struct.task_struct** %task, align 8
  %dest_cpu16 = getelementptr inbounds %struct.migration_arg, %struct.migration_arg* %arg, i64 0, i32 1
  store i32 %call3, i32* %dest_cpu16, align 8
  %pending = getelementptr inbounds %struct.migration_arg, %struct.migration_arg* %arg, i64 0, i32 2
  store %struct.set_affinity_pending* null, %struct.set_affinity_pending** %pending, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call1) #22
  %call26 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %1) #22
  %call27 = call i32 @stop_one_cpu(i32 noundef %call26, i32 (i8*)* noundef nonnull @migration_cpu_stop, i8* noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #21
  br label %cleanup

do.body29:                                        ; preds = %entry, %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call1) #22
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %if.then15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_active(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_one_cpu(i32 noundef, i32 (i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @migration_cpu_stop(i8* nocapture noundef readonly %data) #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %pending1 = getelementptr inbounds i8, i8* %data, i64 16
  %0 = bitcast i8* %pending1 to %struct.set_affinity_pending**
  %1 = load %struct.set_affinity_pending*, %struct.set_affinity_pending** %0, align 8
  %task = bitcast i8* %data to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %4 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #21
  %5 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  %call6 = call fastcc i64 @arch_local_irq_save() #22
  store i64 %call6, i64* %5, align 8
  call void @flush_smp_call_function_from_idle() #23
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 102
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %pi_lock) #22
  call fastcc void @rq_lock(%struct.rq* noundef %3, %struct.rq_flags* noundef nonnull %rf) #22
  %tobool.not = icmp eq %struct.set_affinity_pending* %1, null
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %migration_pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 28
  %6 = bitcast i8** %migration_pending to %struct.set_affinity_pending**
  %7 = load %struct.set_affinity_pending*, %struct.set_affinity_pending** %6, align 8
  %cmp11.not = icmp eq %struct.set_affinity_pending* %1, %7
  br i1 %cmp11.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2318; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %call36 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %2) #22
  %idxprom = zext i32 %call36 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %add37 = add i64 %8, ptrtoint (%struct.rq* @runqueues to i64)
  %9 = inttoptr i64 %add37 to %struct.rq*
  %cmp38 = icmp eq %struct.rq* %9, %3
  br i1 %cmp38, label %if.then40, label %if.else59

if.then40:                                        ; preds = %if.end
  %call41 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %2) #22
  br i1 %call41, label %out.thread, label %if.end43

if.end43:                                         ; preds = %if.then40
  br i1 %tobool.not, label %if.end52, label %if.then45

if.then45:                                        ; preds = %if.end43
  %migration_pending46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 28
  store i8* null, i8** %migration_pending46, align 8
  %call47 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %2) #22
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 27
  %call48 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call47, %struct.cpumask* noundef %cpus_mask) #22
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end52, label %if.then104

if.end52:                                         ; preds = %if.then45, %if.end43
  %call53 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %2) #22
  %tobool54.not = icmp eq i32 %call53, 0
  %dest_cpu57 = getelementptr inbounds i8, i8* %data, i64 8
  %10 = bitcast i8* %dest_cpu57 to i32*
  %11 = load i32, i32* %10, align 8
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  %call56 = call fastcc %struct.rq* @__migrate_task(%struct.rq* noundef %3, %struct.rq_flags* noundef nonnull %rf, %struct.task_struct* noundef %2, i32 noundef %11) #22
  br label %out

if.else:                                          ; preds = %if.end52
  %wake_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 13
  store i32 %11, i32* %wake_cpu, align 4
  br label %out

if.else59:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.end102.thread, label %if.then61

if.end102.thread:                                 ; preds = %if.else59
  call fastcc void @task_rq_unlock(%struct.rq* noundef %3, %struct.task_struct* noundef %2, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

if.then61:                                        ; preds = %if.else59
  %call62 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %2) #22
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 25
  %12 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call63 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call62, %struct.cpumask* noundef %12) #22
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then61
  %migration_pending66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 28
  store i8* null, i8** %migration_pending66, align 8
  br label %if.then104

if.end67:                                         ; preds = %if.then61
  %stop_pending = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 1
  %13 = load i32, i32* %stop_pending, align 4
  %tobool69.not = icmp eq i32 %13, 0
  br i1 %tobool69.not, label %if.then84, label %if.end85, !prof !49

if.then84:                                        ; preds = %if.end67
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2375; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !55
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end67
  call fastcc void @task_rq_unlock(%struct.rq* noundef %3, %struct.task_struct* noundef %2, %struct.rq_flags* noundef nonnull %rf) #22
  %call94 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %2) #22
  %arg95 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 4
  %14 = bitcast %struct.migration_arg* %arg95 to i8*
  %stop_work = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 3
  %call96 = call i1 @stop_one_cpu_nowait(i32 noundef %call94, i32 (i8*)* noundef nonnull @migration_cpu_stop, i8* noundef %14, %struct.cpu_stop_work* noundef %stop_work) #23
  br label %cleanup

out:                                              ; preds = %if.else, %if.then55
  %rq.0 = phi %struct.rq* [ %call56, %if.then55 ], [ %3, %if.else ]
  br i1 %tobool.not, label %if.end102, label %if.then104

out.thread:                                       ; preds = %if.then40
  br i1 %tobool.not, label %if.end102, label %if.then100.thread177

if.then100.thread177:                             ; preds = %out.thread
  %stop_pending101180 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 1
  store i32 0, i32* %stop_pending101180, align 4
  call fastcc void @task_rq_unlock(%struct.rq* noundef %3, %struct.task_struct* noundef %2, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

if.end102:                                        ; preds = %out.thread, %out
  %rq.0175 = phi %struct.rq* [ %3, %out.thread ], [ %rq.0, %out ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq.0175, %struct.task_struct* noundef %2, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

if.then104:                                       ; preds = %out, %if.then65, %if.then45
  %rq.0.sink = phi %struct.rq* [ %3, %if.then45 ], [ %3, %if.then65 ], [ %rq.0, %out ]
  %stop_pending101 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 1
  store i32 0, i32* %stop_pending101, align 4
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq.0.sink, %struct.task_struct* noundef %2, %struct.rq_flags* noundef nonnull %rf) #22
  %done = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %1, i64 0, i32 2
  call void @complete_all(%struct.completion* noundef %done) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then100.thread177, %if.end102.thread, %if.then104, %if.end85
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @task_sched_runtime(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %2 = load i32, i32* %on_cpu, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  %3 = load i64, i64* %sum_exec_runtime, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call3 = call fastcc i32 @task_current(%struct.rq* noundef %call2, %struct.task_struct* noundef %p) #22
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  call fastcc void @prefetch_curr_exec_start(%struct.task_struct* noundef %p) #22
  call void @update_rq_clock(%struct.rq* noundef %call2) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %4 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %update_curr = getelementptr inbounds %struct.sched_class, %struct.sched_class* %4, i64 0, i32 24
  %5 = load void (%struct.rq*)*, void (%struct.rq*)** %update_curr, align 8
  call void %5(%struct.rq* noundef %call2) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.end
  %sum_exec_runtime10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  %6 = load i64, i64* %sum_exec_runtime10, align 8
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call2, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i64 [ %6, %if.end8 ], [ %3, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_current(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef readnone %p) unnamed_addr #3 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %0, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch_curr_exec_start(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %curr2 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 5, i32 7
  %2 = load %struct.sched_entity*, %struct.sched_entity** %curr2, align 64
  %3 = bitcast %struct.sched_entity* %2 to i8*
  call fastcc void @prefetch(i8* noundef %3) #22
  %exec_start = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %2, i64 0, i32 4
  %4 = bitcast i64* %exec_start to i8*
  call fastcc void @prefetch(i8* noundef %4) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @scheduler_tick() local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add9 to %struct.rq*
  %curr10 = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 9
  %4 = load %struct.task_struct*, %struct.task_struct** %curr10, align 8
  %5 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #21
  call void @topology_scale_freq_tick() #23
  call fastcc void @rq_lock(%struct.rq* noundef %3, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %3) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 19
  %6 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %task_tick = getelementptr inbounds %struct.sched_class, %struct.sched_class* %6, i64 0, i32 17
  %7 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %task_tick, align 8
  call void %7(%struct.rq* noundef %3, %struct.task_struct* noundef %4, i32 noundef 0) #23
  call void @calc_global_load_tick(%struct.rq* noundef %3) #23
  call fastcc void @rq_unlock(%struct.rq* noundef %3) #22
  %call15 = call i32 @idle_cpu(i32 noundef %1) #22
  %conv = trunc i32 %call15 to i8
  %idle_balance = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 27
  store i8 %conv, i8* %idle_balance, align 1
  call void @trigger_load_balance(%struct.rq* noundef %3) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_scale_freq_tick() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_lock(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readnone %rf) unnamed_addr #0 {
entry:
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load_tick(%struct.rq* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @idle_cpu(i32 noundef %cpu) local_unnamed_addr #3 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %idle = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 10
  %3 = load %struct.task_struct*, %struct.task_struct** %idle, align 16
  %cmp.not = icmp eq %struct.task_struct* %2, %3
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 1
  %4 = load i32, i32* %nr_running, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %ttwu_pending = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 2
  %5 = load i32, i32* %ttwu_pending, align 8
  %tobool4.not = icmp eq i32 %5, 0
  %. = zext i1 %tobool4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trigger_load_balance(%struct.rq* noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @do_task_dead() local_unnamed_addr #14 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 128, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call2) #22
  %flags29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags29, align 4
  %or = or i32 %2, 32768
  store i32 %or, i32* %flags29, align 4
  call fastcc void @__schedule(i32 noundef 0) #22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 6306; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !56
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__schedule(i32 noundef %sched_mode) unnamed_addr #0 section ".sched.text" {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add9 to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 9
  %6 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %tobool = icmp ne i32 %sched_mode, 0
  call fastcc void @schedule_debug(%struct.task_struct* noundef %6) #22
  call fastcc void @arch_local_irq_disable() #22
  call void @rcu_note_context_switch(i1 noundef %tobool) #23
  call fastcc void @rq_lock(%struct.rq* noundef %5, %struct.rq_flags* noundef nonnull %rf) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !57
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 14
  %7 = load i32, i32* %clock_update_flags, align 16
  %shl = shl i32 %7, 1
  store i32 %shl, i32* %clock_update_flags, align 16
  call void @update_rq_clock(%struct.rq* noundef %5) #22
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 72
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 1
  %8 = load volatile i32, i32* %__state, align 16
  %tobool21 = icmp eq i32 %sched_mode, 0
  %tobool22 = icmp ne i32 %8, 0
  %or.cond = select i1 %tobool21, i1 %tobool22, i1 false
  br i1 %or.cond, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  %call24 = call fastcc i32 @signal_pending_state(i32 noundef %8, %struct.task_struct* noundef %6) #22
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else, label %do.body31

do.body31:                                        ; preds = %if.then
  store volatile i32 0, i32* %__state, align 16
  br label %if.end57

if.else:                                          ; preds = %if.then
  %9 = and i32 %8, 1026
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %if.else
  %sched_contributes_to_load146 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 45
  %bf.load147 = load i8, i8* %sched_contributes_to_load146, align 4
  %bf.clear148 = and i8 %bf.load147, -3
  store i8 %bf.clear148, i8* %sched_contributes_to_load146, align 4
  br label %if.end

land.end:                                         ; preds = %if.else
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 4
  %11 = load i32, i32* %flags, align 4
  %and42 = lshr i32 %11, 15
  %12 = trunc i32 %and42 to i8
  %13 = and i8 %12, 2
  %14 = xor i8 %13, 2
  %sched_contributes_to_load = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 45
  %bf.load = load i8, i8* %sched_contributes_to_load, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %14, %bf.clear
  store i8 %bf.set, i8* %sched_contributes_to_load, align 4
  %tobool48.not = icmp eq i8 %14, 0
  br i1 %tobool48.not, label %if.end, label %if.then49

if.then49:                                        ; preds = %land.end
  %nr_uninterruptible = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 8
  %15 = load i32, i32* %nr_uninterruptible, align 64
  %inc = add i32 %15, 1
  store i32 %inc, i32* %nr_uninterruptible, align 64
  br label %if.end

if.end:                                           ; preds = %land.end.thread, %if.then49, %land.end
  call void @deactivate_task(%struct.rq* noundef %5, %struct.task_struct* noundef %6, i32 noundef 9) #22
  %in_iowait = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 47
  %bf.load50 = load i8, i8* %in_iowait, align 8
  %16 = and i8 %bf.load50, 4
  %tobool54.not = icmp eq i8 %16, 0
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end
  %nr_iowait = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 19
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_iowait) #23
  br label %if.end57

if.end57:                                         ; preds = %if.end, %if.then55, %do.body31
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 71
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %entry
  %switch_count.0 = phi i64* [ %nvcsw, %if.end57 ], [ %nivcsw, %entry ]
  %call59 = call fastcc %struct.task_struct* @pick_next_task(%struct.rq* noundef %5, %struct.task_struct* noundef %6, %struct.rq_flags* noundef nonnull %rf) #22
  call fastcc void @clear_tsk_need_resched(%struct.task_struct* noundef %6) #22
  call fastcc void @clear_preempt_need_resched() #22
  %cmp.not = icmp eq %struct.task_struct* %6, %call59
  br i1 %cmp.not, label %if.else88, label %if.then65, !prof !49

if.then65:                                        ; preds = %if.end58
  %nr_switches = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 3
  %17 = load i64, i64* %nr_switches, align 16
  %inc66 = add i64 %17, 1
  store i64 %inc66, i64* %nr_switches, align 16
  store volatile %struct.task_struct* %call59, %struct.task_struct** %curr, align 8
  %18 = load i64, i64* %switch_count.0, align 8
  %inc80 = add i64 %18, 1
  store i64 %inc80, i64* %switch_count.0, align 8
  call fastcc void @migrate_disable_switch(%struct.rq* noundef %5, %struct.task_struct* noundef %6) #22
  call fastcc void @prepare_task_switch(%struct.task_struct* noundef %6, %struct.task_struct* noundef %call59) #23
  %mm.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call59, i64 0, i32 35
  %19 = load %struct.mm_struct*, %struct.mm_struct** %mm.i, align 8
  %tobool.not.i = icmp eq %struct.mm_struct* %19, null
  %active_mm.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 36
  %20 = load %struct.mm_struct*, %struct.mm_struct** %active_mm.i, align 16
  br i1 %tobool.not.i, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %if.then65
  %active_mm2.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call59, i64 0, i32 36
  store %struct.mm_struct* %20, %struct.mm_struct** %active_mm2.i, align 16
  %mm3.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 35
  %21 = load %struct.mm_struct*, %struct.mm_struct** %mm3.i, align 8
  %tobool4.not.i = icmp eq %struct.mm_struct* %21, null
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  %22 = load %struct.mm_struct*, %struct.mm_struct** %active_mm.i, align 16
  call fastcc void @mmgrab(%struct.mm_struct* noundef %22) #23
  br label %context_switch.exit

if.else.i:                                        ; preds = %if.then.i
  store %struct.mm_struct* null, %struct.mm_struct** %active_mm.i, align 16
  br label %context_switch.exit

if.else8.i:                                       ; preds = %if.then65
  call fastcc void @membarrier_switch_mm(%struct.rq* noundef %5, %struct.mm_struct* noundef %20, %struct.mm_struct* noundef nonnull %19) #23
  %23 = load %struct.mm_struct*, %struct.mm_struct** %active_mm.i, align 16
  %24 = load %struct.mm_struct*, %struct.mm_struct** %mm.i, align 8
  call fastcc void @switch_mm(%struct.mm_struct* noundef %23, %struct.mm_struct* noundef %24) #23
  %mm13.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 35
  %25 = load %struct.mm_struct*, %struct.mm_struct** %mm13.i, align 8
  %tobool14.not.i = icmp eq %struct.mm_struct* %25, null
  br i1 %tobool14.not.i, label %if.then15.i, label %context_switch.exit

if.then15.i:                                      ; preds = %if.else8.i
  %26 = load %struct.mm_struct*, %struct.mm_struct** %active_mm.i, align 16
  %prev_mm.i = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 13
  store %struct.mm_struct* %26, %struct.mm_struct** %prev_mm.i, align 8
  store %struct.mm_struct* null, %struct.mm_struct** %active_mm.i, align 16
  br label %context_switch.exit

context_switch.exit:                              ; preds = %if.then5.i, %if.else.i, %if.else8.i, %if.then15.i
  %27 = load i32, i32* %clock_update_flags, align 16
  %and.i = and i32 %27, -4
  store i32 %and.i, i32* %clock_update_flags, align 16
  %call.i = call %struct.task_struct* @__switch_to(%struct.task_struct* noundef %6, %struct.task_struct* noundef %call59) #23
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !58
  call fastcc void @finish_task_switch(%struct.task_struct* noundef %call.i) #23
  br label %if.end91

if.else88:                                        ; preds = %if.end58
  %28 = load i32, i32* %clock_update_flags, align 16
  %and90 = and i32 %28, -4
  store i32 %and90, i32* %clock_update_flags, align 16
  call fastcc void @__balance_callbacks(%struct.rq* noundef %5) #22
  call fastcc void @raw_spin_rq_unlock_irq(%struct.rq* noundef %5) #22
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %context_switch.exit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @schedule() local_unnamed_addr #0 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call fastcc void @sched_submit_work(%struct.task_struct* noundef %1) #22
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !59
  call fastcc void @__schedule(i32 noundef 0) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !60
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 1) #23
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call fastcc void @sched_update_worker(%struct.task_struct* noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_submit_work(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 48
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !61
  %and2 = and i32 %1, 32
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then1
  call void @wq_worker_sleeping(%struct.task_struct* noundef %tsk) #23
  br label %if.end5

if.else:                                          ; preds = %if.then1
  call void @io_wq_worker_sleeping(%struct.task_struct* noundef %tsk) #23
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !62
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %call = call fastcc i1 @tsk_is_pi_blocked(%struct.task_struct* noundef %tsk) #22
  br i1 %call, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end6
  %call9 = call fastcc i1 @blk_needs_flush_plug(%struct.task_struct* noundef %tsk) #22
  br i1 %call9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end8
  call fastcc void @blk_schedule_flush_plug(%struct.task_struct* noundef %tsk) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then10, %if.end6, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_update_worker(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 48
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, 32
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @wq_worker_running(%struct.task_struct* noundef %tsk) #23
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @io_wq_worker_running(%struct.task_struct* noundef %tsk) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @schedule_idle() local_unnamed_addr #0 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  %2 = load i32, i32* %__state, align 16
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 6392; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  call fastcc void @__schedule(i32 noundef 0) #22
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 1) #23
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @schedule_preempt_disabled() local_unnamed_addr #0 section ".sched.text" {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !64
  call void @schedule() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !65
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @preempt_schedule_irq() local_unnamed_addr #0 section ".sched.text" {
entry:
  %call = call fastcc i32 @preempt_count() #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %do.body16, !prof !16

lor.rhs:                                          ; preds = %entry
  %call2 = call fastcc i64 @arch_local_save_flags() #22
  %call10 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call2) #22
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body16, label %do.body25, !prof !49

do.body16:                                        ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 6680; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !66
  unreachable

do.body25:                                        ; preds = %lor.rhs, %do.body25
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !67
  call fastcc void @arch_local_irq_enable() #22
  call fastcc void @__schedule(i32 noundef 1) #22
  call fastcc void @arch_local_irq_disable() #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !68
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 1) #23
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.end34, label %do.body25

do.end34:                                         ; preds = %do.body25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.4* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #21, !srcloc !69
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #21, !srcloc !70
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #21, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #22
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !49

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #21, !srcloc !72
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @default_wake_function(%struct.wait_queue_entry* nocapture noundef readonly %curr, i32 noundef %mode, i32 noundef %wake_flags, i8* nocapture noundef readnone %key) local_unnamed_addr #0 {
entry:
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %curr, i64 0, i32 1
  %0 = bitcast i8** %private to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  %call = call fastcc i32 @try_to_wake_up(%struct.task_struct* noundef %1, i32 noundef %mode, i32 noundef %wake_flags) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rt_mutex_setprio(%struct.task_struct* noundef %p, %struct.task_struct* noundef %pi_task) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 17
  %1 = load i32, i32* %normal_prio, align 4
  %call = call fastcc i32 @__rt_effective_prio(%struct.task_struct* noundef %pi_task, i32 noundef %1) #22
  %pi_top_task = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 105
  %2 = load %struct.task_struct*, %struct.task_struct** %pi_top_task, align 8
  %cmp = icmp eq %struct.task_struct* %2, %pi_task
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %prio1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %3 = load i32, i32* %prio1, align 4
  %cmp2 = icmp eq i32 %call, %3
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call fastcc i32 @dl_prio(i32 noundef %call) #22
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %call5 = call %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %call5) #22
  store %struct.task_struct* %pi_task, %struct.task_struct** %pi_top_task, align 8
  %prio7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %4 = load i32, i32* %prio7, align 4
  %cmp8 = icmp eq i32 %call, %4
  br i1 %cmp8, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.end
  %call10 = call fastcc i32 @dl_prio(i32 noundef %call) #22
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %out_unlock, label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %if.end
  %idle = getelementptr inbounds %struct.rq, %struct.rq* %call5, i64 0, i32 10
  %5 = load %struct.task_struct*, %struct.task_struct** %idle, align 16
  %cmp14 = icmp eq %struct.task_struct* %5, %p
  br i1 %cmp14, label %if.then17, label %if.end65, !prof !49

if.then17:                                        ; preds = %if.end13
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %call5, i64 0, i32 9
  %6 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp18.not = icmp eq %struct.task_struct* %6, %p
  br i1 %cmp18.not, label %if.end33, label %if.then32, !prof !16

if.then32:                                        ; preds = %if.then17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 6793; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !73
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then17
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 106
  %7 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %tobool42.not = icmp eq %struct.rt_mutex_waiter* %7, null
  br i1 %tobool42.not, label %out_unlock, label %if.then55, !prof !16

if.then55:                                        ; preds = %if.end33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 6794; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !74
  br label %out_unlock

if.end65:                                         ; preds = %if.end13
  %spec.select = select i1 %cmp8, i32 10, i32 14
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %8 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %call71 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %call72 = call fastcc i32 @task_current(%struct.rq* noundef %call5, %struct.task_struct* noundef %p) #22
  %tobool73.not = icmp eq i32 %call71, 0
  br i1 %tobool73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end65
  call fastcc void @dequeue_task(%struct.rq* noundef %call5, %struct.task_struct* noundef %p, i32 noundef %spec.select) #22
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end65
  %tobool76.not = icmp eq i32 %call72, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end75
  call fastcc void @put_prev_task(%struct.rq* noundef %call5, %struct.task_struct* noundef %p) #22
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end75
  %call79 = call fastcc i32 @dl_prio(i32 noundef %call) #22
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.else102, label %if.then81

if.then81:                                        ; preds = %if.end78
  %9 = load i32, i32* %normal_prio, align 4
  %call83 = call fastcc i32 @dl_prio(i32 noundef %9) #22
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then81
  %tobool85.not = icmp eq %struct.task_struct* %pi_task, null
  br i1 %tobool85.not, label %if.else, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %lor.lhs.false
  %prio87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %pi_task, i64 0, i32 15
  %10 = load i32, i32* %prio87, align 4
  %call88 = call fastcc i32 @dl_prio(i32 noundef %10) #22
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %land.lhs.true86
  %dl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %pi_task, i64 0, i32 22
  %dl91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %call92 = call fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* noundef %dl, %struct.sched_dl_entity* noundef %dl91) #22
  br i1 %call92, label %if.then94, label %if.else

if.then94:                                        ; preds = %land.lhs.true90, %if.then81
  %pi_se = getelementptr inbounds %struct.task_struct, %struct.task_struct* %pi_task, i64 0, i32 22, i32 12
  %11 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %pi_se, align 8
  %pi_se97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 12
  store %struct.sched_dl_entity* %11, %struct.sched_dl_entity** %pi_se97, align 8
  %or = or i32 %spec.select, 32
  br label %if.end131

if.else:                                          ; preds = %land.lhs.true90, %land.lhs.true86, %lor.lhs.false
  %dl98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %pi_se100 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 12
  store %struct.sched_dl_entity* %dl98, %struct.sched_dl_entity** %pi_se100, align 8
  br label %if.end131

if.else102:                                       ; preds = %if.end78
  %call103 = call fastcc i32 @rt_prio(i32 noundef %call) #22
  %tobool104.not = icmp eq i32 %call103, 0
  %call119 = call fastcc i32 @dl_prio(i32 noundef %4) #22
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool104.not, label %if.else118, label %if.then105

if.then105:                                       ; preds = %if.else102
  br i1 %tobool120.not, label %if.end112, label %if.then108

if.then108:                                       ; preds = %if.then105
  %dl109 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %pi_se111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 12
  store %struct.sched_dl_entity* %dl109, %struct.sched_dl_entity** %pi_se111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.then105
  %cmp113 = icmp slt i32 %4, %call
  %or116 = or i32 %spec.select, 16
  %spec.select222 = select i1 %cmp113, i32 %or116, i32 %spec.select
  br label %if.end131

if.else118:                                       ; preds = %if.else102
  br i1 %tobool120.not, label %if.end125, label %if.then121

if.then121:                                       ; preds = %if.else118
  %dl122 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22
  %pi_se124 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 22, i32 12
  store %struct.sched_dl_entity* %dl122, %struct.sched_dl_entity** %pi_se124, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.else118
  %call126 = call fastcc i32 @rt_prio(i32 noundef %4) #22
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end131, label %if.then128

if.then128:                                       ; preds = %if.end125
  %timeout = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 1
  store i64 0, i64* %timeout, align 16
  br label %if.end131

if.end131:                                        ; preds = %if.end112, %if.then128, %if.end125, %if.then94, %if.else
  %queue_flag.1 = phi i32 [ %or, %if.then94 ], [ %spec.select, %if.else ], [ %spec.select, %if.then128 ], [ %spec.select, %if.end125 ], [ %spec.select222, %if.end112 ]
  call fastcc void @__setscheduler_prio(%struct.task_struct* noundef %p, i32 noundef %call) #22
  br i1 %tobool73.not, label %if.end134, label %if.then133

if.then133:                                       ; preds = %if.end131
  call fastcc void @enqueue_task(%struct.rq* noundef %call5, %struct.task_struct* noundef %p, i32 noundef %queue_flag.1) #22
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end131
  br i1 %tobool76.not, label %if.end137, label %if.then136

if.then136:                                       ; preds = %if.end134
  call fastcc void @set_next_task(%struct.rq* noundef %call5, %struct.task_struct* noundef %p) #22
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end134
  call fastcc void @check_class_changed(%struct.rq* noundef %call5, %struct.task_struct* noundef %p, %struct.sched_class* noundef %8, i32 noundef %4) #22
  br label %out_unlock

out_unlock:                                       ; preds = %if.end33, %if.then55, %land.lhs.true9, %if.end137
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !75
  call fastcc void @__balance_callbacks(%struct.rq* noundef %call5) #22
  call void @raw_spin_rq_unlock(%struct.rq* noundef %call5) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %out_unlock
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__rt_effective_prio(%struct.task_struct* noundef readonly %pi_task, i32 noundef %prio) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.task_struct* %pi_task, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prio1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %pi_task, i64 0, i32 15
  %0 = load i32, i32* %prio1, align 4
  %cmp = icmp sgt i32 %0, %prio
  %cond = select i1 %cmp, i32 %prio, i32 %0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %prio.addr.0 = phi i32 [ %cond, %if.then ], [ %prio, %entry ]
  ret i32 %prio.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_prev_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) unnamed_addr #0 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp.not = icmp eq %struct.task_struct* %0, %prev
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/sched.h\22; .popsection; .long 14472b - 14470b; .short 2179; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %put_prev_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %1, i64 0, i32 6
  %2 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %put_prev_task, align 8
  call void %2(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dl_entity_preempt(%struct.sched_dl_entity* nocapture noundef readonly %a, %struct.sched_dl_entity* nocapture noundef readonly %b) unnamed_addr #3 {
entry:
  %deadline = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %a, i64 0, i32 7
  %0 = load i64, i64* %deadline, align 8
  %deadline1 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %b, i64 0, i32 7
  %1 = load i64, i64* %deadline1, align 8
  %call2 = call fastcc i1 @dl_time_before(i64 noundef %0, i64 noundef %1) #22
  ret i1 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__setscheduler_prio(%struct.task_struct* nocapture noundef writeonly %p, i32 noundef %prio) unnamed_addr #15 {
entry:
  %call = call fastcc i32 @dl_prio(i32 noundef %prio) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  store %struct.sched_class* @dl_sched_class, %struct.sched_class** %sched_class, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  %call1 = call fastcc i32 @rt_prio(i32 noundef %prio) #22
  %tobool2.not = icmp eq i32 %call1, 0
  %sched_class6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  store %struct.sched_class* @rt_sched_class, %struct.sched_class** %sched_class6, align 8
  br label %if.end7

if.else5:                                         ; preds = %if.else
  store %struct.sched_class* @fair_sched_class, %struct.sched_class** %sched_class6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else5, %if.then
  %prio8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  store i32 %prio, i32* %prio8, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_next_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %next) unnamed_addr #0 {
entry:
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %set_next_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 7
  %1 = load void (%struct.rq*, %struct.task_struct*, i1)*, void (%struct.rq*, %struct.task_struct*, i1)** %set_next_task, align 8
  call void %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %next, i1 noundef false) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_class_changed(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.sched_class* noundef readonly %prev_class, i32 noundef %oldprio) unnamed_addr #0 {
entry:
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp eq %struct.sched_class* %0, %prev_class
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %switched_from = getelementptr inbounds %struct.sched_class, %struct.sched_class* %prev_class, i64 0, i32 20
  %1 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %switched_from, align 8
  %tobool.not = icmp eq void (%struct.rq*, %struct.task_struct*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #23
  %.pre = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %2 = phi %struct.sched_class* [ %.pre, %if.then1 ], [ %0, %if.then ]
  %switched_to = getelementptr inbounds %struct.sched_class, %struct.sched_class* %2, i64 0, i32 21
  %3 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %switched_to, align 8
  call void %3(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #23
  br label %if.end9

if.else:                                          ; preds = %entry
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %4 = load i32, i32* %prio, align 4
  %cmp4.not = icmp eq i32 %4, %oldprio
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.else
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #22
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.else
  %prio_changed = getelementptr inbounds %struct.sched_class, %struct.sched_class* %prev_class, i64 0, i32 22
  %5 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %prio_changed, align 8
  call void %5(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %oldprio) #23
  br label %if.end9

if.end9:                                          ; preds = %lor.lhs.false, %if.then6, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__balance_callbacks(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.callback_head* @splice_balance_callbacks(%struct.rq* noundef %rq) #22
  call fastcc void @do_balance_callbacks(%struct.rq* noundef %rq, %struct.callback_head* noundef %call) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_user_nice(%struct.task_struct* noundef %p, i64 noundef %nice) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %call = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #22
  %conv = sext i32 %call to i64
  %cmp = icmp eq i64 %conv, %nice
  %2 = add i64 %nice, -20
  %3 = icmp ult i64 %2, -40
  %4 = or i1 %3, %cmp
  br i1 %4, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call7 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %call7) #22
  %call8 = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %lor.lhs.false9, label %if.then12

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = call fastcc i32 @task_has_rt_policy(%struct.task_struct* noundef %p) #22
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false9, %if.end
  %5 = trunc i64 %nice to i32
  %conv13 = add nsw i32 %5, 120
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  store i32 %conv13, i32* %static_prio, align 8
  br label %out_unlock

if.end14:                                         ; preds = %lor.lhs.false9
  %call15 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool16.not = icmp eq i32 %call15, 0
  %call17 = call fastcc i32 @task_current(%struct.rq* noundef %call7, %struct.task_struct* noundef %p) #22
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool16.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end14
  call fastcc void @dequeue_task(%struct.rq* noundef %call7, %struct.task_struct* noundef %p, i32 noundef 10) #22
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end14
  br i1 %tobool18.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  call fastcc void @put_prev_task(%struct.rq* noundef %call7, %struct.task_struct* noundef %p) #22
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %6 = trunc i64 %nice to i32
  %conv27 = add nsw i32 %6, 120
  %static_prio28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  store i32 %conv27, i32* %static_prio28, align 8
  call fastcc void @set_load_weight(%struct.task_struct* noundef %p, i1 noundef true) #22
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %7 = load i32, i32* %prio, align 4
  %call29 = call fastcc i32 @effective_prio(%struct.task_struct* noundef %p) #22
  store i32 %call29, i32* %prio, align 4
  br i1 %tobool16.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end25
  call fastcc void @enqueue_task(%struct.rq* noundef %call7, %struct.task_struct* noundef %p, i32 noundef 10) #22
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end25
  br i1 %tobool18.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end33
  call fastcc void @set_next_task(%struct.rq* noundef %call7, %struct.task_struct* noundef %p) #22
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %8 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %prio_changed = getelementptr inbounds %struct.sched_class, %struct.sched_class* %8, i64 0, i32 22
  %9 = load void (%struct.rq*, %struct.task_struct*, i32)*, void (%struct.rq*, %struct.task_struct*, i32)** %prio_changed, align 8
  call void %9(%struct.rq* noundef %call7, %struct.task_struct* noundef %p, i32 noundef %7) #23
  br label %out_unlock

out_unlock:                                       ; preds = %if.end36, %if.then12
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call7, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_nice(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %0 = load i32, i32* %static_prio, align 8
  %sub = add i32 %0, -120
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @effective_prio(%struct.task_struct* nocapture noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @normal_prio(%struct.task_struct* noundef %p) #22
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 17
  store i32 %call, i32* %normal_prio, align 4
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call1 = call fastcc i32 @rt_prio(i32 noundef %0) #22
  %tobool.not = icmp eq i32 %call1, 0
  %retval.0 = select i1 %tobool.not, i32 %call, i32 %0
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @can_nice(%struct.task_struct* nocapture noundef readonly %p, i32 noundef %nice) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %nice to i64
  %call = call fastcc i64 @nice_to_rlimit(i64 noundef %conv) #22
  %sext = shl i64 %call, 32
  %conv2 = ashr exact i64 %sext, 32
  %call3 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %p, i32 noundef 13) #22
  %cmp.not = icmp ugt i64 %conv2, %call3
  br i1 %cmp.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call5 = call i1 @capable(i32 noundef 23) #23
  %phi.cast = zext i1 %call5 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @nice_to_rlimit(i64 noundef %nice) unnamed_addr #2 {
entry:
  %add = sub i64 20, %nice
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %limit) unnamed_addr #4 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %limit to i64
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 %idxprom, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @task_prio(%struct.task_struct* nocapture noundef readonly %p) local_unnamed_addr #3 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %sub = add i32 %0, -100
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @available_idle_cpu(i32 noundef %cpu) local_unnamed_addr #3 {
entry:
  %call = call i32 @idle_cpu(i32 noundef %cpu) #22
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.task_struct* @idle_task(i32 noundef %cpu) local_unnamed_addr #3 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %idle = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 10
  %2 = load %struct.task_struct*, %struct.task_struct** %idle, align 16
  ret %struct.task_struct* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @effective_cpu_util(i32 noundef %cpu, i64 noundef %util_cfs, i64 noundef %max, i32 noundef %type, %struct.task_struct* nocapture readnone %p) local_unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %land.lhs.true2, label %if.end.thread

land.lhs.true2:                                   ; preds = %entry
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 6
  %call3 = call fastcc i1 @rt_rq_is_runnable(%struct.rt_rq* noundef %rt) #22
  br i1 %call3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true2
  %cmp5 = icmp eq i64 %max, 0
  br i1 %cmp5, label %cleanup, label %if.end15, !prof !49

if.end.thread:                                    ; preds = %entry
  %cmp574 = icmp eq i64 %max, 0
  br i1 %cmp574, label %cleanup, label %if.end15, !prof !49

if.end15:                                         ; preds = %if.end, %if.end.thread
  %call975 = call fastcc i64 @cpu_util_rt(%struct.rq* noundef %1) #22
  %util.0 = add i64 %call975, %util_cfs
  %call16 = call fastcc i64 @cpu_util_dl(%struct.rq* noundef %1) #22
  %add17 = add i64 %util.0, %call16
  %cmp18.not = icmp ult i64 %add17, %max
  br i1 %cmp18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end15
  %cmp22 = icmp eq i32 %type, 1
  %spec.select = select i1 %cmp22, i64 %add17, i64 %util.0
  br i1 %cmp, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end21
  %call32 = call fastcc i64 @cpu_bw_dl(%struct.rq* noundef %1) #22
  %add33 = add i64 %call32, %spec.select
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end21
  %util.2 = phi i64 [ %add33, %if.then31 ], [ %spec.select, %if.end21 ]
  %cmp36 = icmp ugt i64 %util.2, %max
  %cond = select i1 %cmp36, i64 %max, i64 %util.2
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end15, %if.end, %land.lhs.true2, %if.end34
  %retval.0 = phi i64 [ %cond, %if.end34 ], [ %max, %land.lhs.true2 ], [ 0, %if.end ], [ %max, %if.end15 ], [ 0, %if.end.thread ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rt_rq_is_runnable(%struct.rt_rq* nocapture noundef readonly %rt_rq) unnamed_addr #3 {
entry:
  %rt_queued = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 8
  %0 = load i32, i32* %rt_queued, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %1 = load i32, i32* %rt_nr_running, align 8
  %tobool1 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_util_rt(%struct.rq* noundef %rq) unnamed_addr #4 {
entry:
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 7
  %0 = load volatile i64, i64* %util_avg, align 16
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_util_dl(%struct.rq* noundef %rq) unnamed_addr #4 {
entry:
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 7
  %0 = load volatile i64, i64* %util_avg, align 16
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @cpu_bw_dl(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #3 {
entry:
  %running_bw = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 6
  %0 = load i64, i64* %running_bw, align 32
  %1 = lshr i64 %0, 10
  %shr = and i64 %1, 17592186044415
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @sched_cpu_util(i32 noundef %cpu, i64 noundef %max) local_unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call = call fastcc i64 @cpu_util_cfs(%struct.rq* noundef %1) #22
  %call2 = call i64 @effective_cpu_util(i32 noundef %cpu, i64 noundef %call, i64 noundef %max, i32 noundef 1, %struct.task_struct* undef) #22
  ret i64 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @cpu_util_cfs(%struct.rq* noundef %rq) unnamed_addr #4 {
entry:
  %util_avg = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 12, i32 7
  %0 = load volatile i64, i64* %util_avg, align 16
  %enqueued = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 12, i32 8, i32 0
  %1 = load volatile i32, i32* %enqueued, align 8
  %conv = zext i32 %1 to i64
  %cmp = icmp ugt i64 %0, %conv
  %cond = select i1 %cmp, i64 %0, i64 %conv
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_setscheduler(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_param* nocapture noundef readonly %param) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_sched_setscheduler(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_param* noundef %param, i1 noundef true) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_sched_setscheduler(%struct.task_struct* noundef %p, i32 noundef %policy, %struct.sched_param* nocapture noundef readonly %param, i1 noundef %check) unnamed_addr #0 {
entry:
  %attr = alloca %struct.sched_attr, align 8
  %0 = bitcast %struct.sched_attr* %attr to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #21
  %sched_policy = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 1
  %1 = bitcast %struct.sched_attr* %attr to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  store i32 %policy, i32* %sched_policy, align 4
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %2 = load i32, i32* %static_prio, align 8
  %sub = add i32 %2, -120
  store i32 %sub, i32* %sched_nice, align 8
  %sched_priority = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 4
  %sched_priority1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %param, i64 0, i32 0
  %3 = load i32, i32* %sched_priority1, align 4
  store i32 %3, i32* %sched_priority, align 4
  %cmp.not = icmp eq i32 %policy, -1
  %and = and i32 %policy, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  store i64 1, i64* %sched_flags, align 8
  %and2 = and i32 %policy, -1073741825
  store i32 %and2, i32* %sched_policy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @__sched_setscheduler(%struct.task_struct* noundef %p, %struct.sched_attr* noundef nonnull %attr, i1 noundef %check) #22
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_setattr(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sched_setscheduler(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr, i1 noundef true) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sched_setscheduler(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr, i1 noundef %user) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %sched_policy = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 1
  %0 = load i32, i32* %sched_policy, align 4
  %1 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #21
  %2 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %2, align 8, !annotation !28
  %call = call fastcc i32 @preempt_count() #22
  %call3 = call fastcc i32 @preempt_count() #22
  %call6 = call fastcc i32 @preempt_count() #22
  %3 = and i32 %call, 15728640
  %4 = and i32 %call3, 983040
  %or3 = or i32 %4, %3
  %5 = and i32 %call6, 65280
  %or95 = or i32 %or3, %5
  %tobool10.not = icmp eq i32 %or95, 0
  br i1 %tobool10.not, label %recheck.preheader, label %do.body14, !prof !16

recheck.preheader:                                ; preds = %entry
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %sched_reset_on_fork = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 45
  %policy22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %sched_priority = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 4
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  br label %recheck

do.body14:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 7225; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !78
  unreachable

recheck:                                          ; preds = %recheck.preheader, %if.then236
  %policy.0 = phi i32 [ -1, %if.then236 ], [ %0, %recheck.preheader ]
  %cmp = icmp slt i32 %policy.0, 0
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %recheck
  %bf.load = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %6 = load i32, i32* %policy22, align 16
  %.pre = load i64, i64* %sched_flags, align 8
  br label %if.end32

if.else:                                          ; preds = %recheck
  %7 = load i64, i64* %sched_flags, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 1
  %call29 = call fastcc i1 @valid_policy(i32 noundef %policy.0) #22
  br i1 %call29, label %if.end32, label %cleanup301

if.end32:                                         ; preds = %if.else, %if.then21
  %10 = phi i64 [ %.pre, %if.then21 ], [ %7, %if.else ]
  %oldpolicy.1 = phi i32 [ %6, %if.then21 ], [ -1, %if.else ]
  %policy.1 = phi i32 [ %6, %if.then21 ], [ %policy.0, %if.else ]
  %reset_on_fork.0 = phi i32 [ %bf.cast, %if.then21 ], [ %9, %if.else ]
  %and34 = and i64 %10, -268435584
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %cleanup301

if.end37:                                         ; preds = %if.end32
  %11 = load i32, i32* %sched_priority, align 4
  %cmp38 = icmp ugt i32 %11, 99
  br i1 %cmp38, label %cleanup301, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @dl_policy(i32 noundef %policy.1) #22
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end41
  %call44 = call i1 @__checkparam_dl(%struct.sched_attr* noundef %attr) #23
  br i1 %call44, label %land.lhs.true.lor.lhs.false_crit_edge, label %cleanup301

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  %.pre35 = load i32, i32* %sched_priority, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end41
  %12 = phi i32 [ %.pre35, %land.lhs.true.lor.lhs.false_crit_edge ], [ %11, %if.end41 ]
  %call45 = call fastcc i32 @rt_policy(i32 noundef %policy.1) #22
  %cmp47 = icmp ne i32 %12, 0
  %conv48 = zext i1 %cmp47 to i32
  %cmp49.not = icmp eq i32 %call45, %conv48
  br i1 %cmp49.not, label %if.end52, label %cleanup301

if.end52:                                         ; preds = %lor.lhs.false
  br i1 %user, label %land.lhs.true55, label %if.end133

land.lhs.true55:                                  ; preds = %if.end52
  %call56 = call i1 @capable(i32 noundef 23) #23
  br i1 %call56, label %if.then123, label %if.then57

if.then57:                                        ; preds = %land.lhs.true55
  %call58 = call fastcc i32 @fair_policy(i32 noundef %policy.1) #22
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end70, label %if.then60

if.then60:                                        ; preds = %if.then57
  %13 = load i32, i32* %sched_nice, align 8
  %call61 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #22
  %cmp62 = icmp slt i32 %13, %call61
  br i1 %cmp62, label %land.lhs.true64, label %if.end70

land.lhs.true64:                                  ; preds = %if.then60
  %call66 = call i32 @can_nice(%struct.task_struct* noundef %p, i32 noundef %13) #22
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup301, label %if.end70

if.end70:                                         ; preds = %if.then60, %land.lhs.true64, %if.then57
  %tobool72.not = icmp eq i32 %call45, 0
  br i1 %tobool72.not, label %if.end92, label %if.then73

if.then73:                                        ; preds = %if.end70
  %call74 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %p, i32 noundef 14) #22
  %14 = load i32, i32* %policy22, align 16
  %cmp76 = icmp eq i32 %policy.1, %14
  %tobool79 = icmp ne i64 %call74, 0
  %or.cond = select i1 %cmp76, i1 true, i1 %tobool79
  br i1 %or.cond, label %if.end81, label %cleanup301

if.end81:                                         ; preds = %if.then73
  %15 = load i32, i32* %sched_priority, align 4
  %16 = load i32, i32* %rt_priority, align 16
  %cmp83 = icmp ugt i32 %15, %16
  %conv87 = zext i32 %15 to i64
  %cmp88 = icmp ult i64 %call74, %conv87
  %or.cond6 = select i1 %cmp83, i1 %cmp88, i1 false
  %tobool43.not.not = xor i1 %tobool43.not, true
  %brmerge = select i1 %or.cond6, i1 true, i1 %tobool43.not.not
  br i1 %brmerge, label %cleanup301, label %if.end96

if.end92:                                         ; preds = %if.end70
  br i1 %tobool43.not, label %if.end96, label %cleanup301

if.end96:                                         ; preds = %if.end81, %if.end92
  %call97 = call fastcc i32 @task_has_idle_policy(%struct.task_struct* noundef %p) #22
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end108, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %if.end96
  %call100 = call fastcc i32 @idle_policy(i32 noundef %policy.1) #22
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %if.end108

if.then102:                                       ; preds = %land.lhs.true99
  %call103 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #22
  %call104 = call i32 @can_nice(%struct.task_struct* noundef %p, i32 noundef %call103) #22
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %cleanup301, label %if.end108

if.end108:                                        ; preds = %if.then102, %land.lhs.true99, %if.end96
  %call109 = call fastcc i1 @check_same_owner(%struct.task_struct* noundef %p) #22
  br i1 %call109, label %if.end111, label %cleanup301

if.end111:                                        ; preds = %if.end108
  %bf.load113 = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear114 = and i8 %bf.load113, 1
  %tobool116 = icmp eq i8 %bf.clear114, 0
  %tobool118 = icmp ne i32 %reset_on_fork.0, 0
  %or.cond314 = select i1 %tobool116, i1 true, i1 %tobool118
  br i1 %or.cond314, label %if.then123, label %cleanup301

if.then123:                                       ; preds = %land.lhs.true55, %if.end111
  %17 = load i64, i64* %sched_flags, align 8
  %and125 = and i64 %17, 268435456
  %tobool126.not = icmp eq i64 %and125, 0
  br i1 %tobool126.not, label %if.end128, label %cleanup301

if.end128:                                        ; preds = %if.then123
  %call129 = call fastcc i32 @security_task_setscheduler(%struct.task_struct* noundef %p) #22
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end133, label %cleanup301

if.end133:                                        ; preds = %if.end52, %if.end128
  %18 = load i64, i64* %sched_flags, align 8
  %and135 = and i64 %18, 96
  %tobool136.not = icmp eq i64 %and135, 0
  br i1 %tobool136.not, label %if.then144, label %cleanup301

if.then144:                                       ; preds = %if.end133
  %call146 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %call146) #22
  %stop = getelementptr inbounds %struct.rq, %struct.rq* %call146, i64 0, i32 11
  %19 = load %struct.task_struct*, %struct.task_struct** %stop, align 8
  %cmp147 = icmp eq %struct.task_struct* %19, %p
  br i1 %cmp147, label %unlock, label %if.end150

if.end150:                                        ; preds = %if.then144
  %20 = load i32, i32* %policy22, align 16
  %cmp152 = icmp eq i32 %policy.1, %20
  br i1 %cmp152, label %if.then161, label %change, !prof !49

if.then161:                                       ; preds = %if.end150
  %call162 = call fastcc i32 @fair_policy(i32 noundef %policy.1) #22
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end170, label %land.lhs.true164

land.lhs.true164:                                 ; preds = %if.then161
  %21 = load i32, i32* %sched_nice, align 8
  %call166 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #22
  %cmp167.not = icmp eq i32 %21, %call166
  br i1 %cmp167.not, label %if.end170, label %change

if.end170:                                        ; preds = %land.lhs.true164, %if.then161
  %tobool172.not = icmp eq i32 %call45, 0
  br i1 %tobool172.not, label %if.end179, label %land.lhs.true173

land.lhs.true173:                                 ; preds = %if.end170
  %22 = load i32, i32* %sched_priority, align 4
  %23 = load i32, i32* %rt_priority, align 16
  %cmp176.not = icmp eq i32 %22, %23
  br i1 %cmp176.not, label %if.end179, label %change

if.end179:                                        ; preds = %land.lhs.true173, %if.end170
  br i1 %tobool43.not, label %if.end186, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %if.end179
  %call183 = call i1 @dl_param_changed(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) #23
  br i1 %call183, label %change, label %if.end186

if.end186:                                        ; preds = %land.lhs.true182, %if.end179
  %24 = load i64, i64* %sched_flags, align 8
  %and188 = and i64 %24, 96
  %tobool189.not = icmp eq i64 %and188, 0
  br i1 %tobool189.not, label %if.end191, label %change

if.end191:                                        ; preds = %if.end186
  %25 = trunc i32 %reset_on_fork.0 to i8
  %bf.load193 = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear194 = and i8 %bf.load193, -2
  %bf.set = or i8 %bf.clear194, %25
  store i8 %bf.set, i8* %sched_reset_on_fork, align 4
  br label %unlock

change:                                           ; preds = %if.end150, %if.end186, %land.lhs.true182, %land.lhs.true173, %land.lhs.true164
  br i1 %user, label %if.then197, label %if.end221

if.then197:                                       ; preds = %change
  %call198 = call fastcc i32 @dl_bandwidth_enabled() #22
  %tobool199.not = icmp eq i32 %call198, 0
  %brmerge11 = select i1 %tobool199.not, i1 true, i1 %tobool43.not
  br i1 %brmerge11, label %if.end221, label %land.lhs.true203

land.lhs.true203:                                 ; preds = %if.then197
  %26 = load i64, i64* %sched_flags, align 8
  %and205 = and i64 %26, 268435456
  %tobool206.not = icmp eq i64 %and205, 0
  br i1 %tobool206.not, label %if.then207, label %if.end221

if.then207:                                       ; preds = %land.lhs.true203
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call146, i64 0, i32 21
  %27 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %27, i64 0, i32 3, i64 0
  %28 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call209 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %28) #22
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %unlock, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %if.then207
  %29 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %29, i64 0, i32 9, i32 1
  %30 = load i64, i64* %bw, align 8
  %cmp213 = icmp eq i64 %30, 0
  br i1 %cmp213, label %unlock, label %if.end221

if.end221:                                        ; preds = %if.then197, %lor.lhs.false211, %land.lhs.true203, %change
  %cmp222.not = icmp eq i32 %oldpolicy.1, -1
  br i1 %cmp222.not, label %if.end240, label %land.rhs224

land.rhs224:                                      ; preds = %if.end221
  %31 = load i32, i32* %policy22, align 16
  %cmp226.not = icmp eq i32 %oldpolicy.1, %31
  br i1 %cmp226.not, label %if.end240, label %if.then236, !prof !16

if.then236:                                       ; preds = %land.rhs224
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  br label %recheck

if.end240:                                        ; preds = %if.end221, %land.rhs224
  br i1 %tobool43.not, label %lor.lhs.false243, label %land.lhs.true246

lor.lhs.false243:                                 ; preds = %if.end240
  %call244 = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #22
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end250, label %land.lhs.true246

land.lhs.true246:                                 ; preds = %lor.lhs.false243, %if.end240
  %call247 = call i32 @sched_dl_overflow(%struct.task_struct* noundef %p, i32 noundef %policy.1, %struct.sched_attr* noundef %attr) #23
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %unlock

if.end250:                                        ; preds = %land.lhs.true246, %lor.lhs.false243
  %32 = trunc i32 %reset_on_fork.0 to i8
  %bf.load252 = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear254 = and i8 %bf.load252, -2
  %bf.set255 = or i8 %bf.clear254, %32
  store i8 %bf.set255, i8* %sched_reset_on_fork, align 4
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %33 = load i32, i32* %prio, align 4
  %34 = load i32, i32* %sched_priority, align 4
  %35 = load i32, i32* %sched_nice, align 8
  %call259 = call fastcc i32 @__normal_prio(i32 noundef %policy.1, i32 noundef %34, i32 noundef %35) #22
  %call262 = call fastcc i32 @rt_effective_prio(%struct.task_struct* noundef %p, i32 noundef %call259) #22
  %cmp263 = icmp eq i32 %call262, %33
  %queue_flags.0 = select i1 %cmp263, i32 10, i32 14
  %call269 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %call270 = call fastcc i32 @task_current(%struct.rq* noundef %call146, %struct.task_struct* noundef %p) #22
  %tobool271.not = icmp eq i32 %call269, 0
  br i1 %tobool271.not, label %if.end273, label %if.then272

if.then272:                                       ; preds = %if.end250
  call fastcc void @dequeue_task(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, i32 noundef %queue_flags.0) #22
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end250
  %tobool274.not = icmp eq i32 %call270, 0
  br i1 %tobool274.not, label %if.end276, label %if.then275

if.then275:                                       ; preds = %if.end273
  call fastcc void @put_prev_task(%struct.rq* noundef %call146, %struct.task_struct* noundef %p) #22
  br label %if.end276

if.end276:                                        ; preds = %if.then275, %if.end273
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %36 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %37 = load i64, i64* %sched_flags, align 8
  %and278 = and i64 %37, 16
  %tobool279.not = icmp eq i64 %and278, 0
  br i1 %tobool279.not, label %if.then280, label %if.end281

if.then280:                                       ; preds = %if.end276
  call fastcc void @__setscheduler_params(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) #22
  call fastcc void @__setscheduler_prio(%struct.task_struct* noundef %p, i32 noundef %call262) #22
  br label %if.end281

if.end281:                                        ; preds = %if.then280, %if.end276
  br i1 %tobool271.not, label %if.end290, label %if.then283

if.then283:                                       ; preds = %if.end281
  %38 = load i32, i32* %prio, align 4
  %cmp285 = icmp slt i32 %33, %38
  %or288 = or i32 %queue_flags.0, 16
  %spec.select = select i1 %cmp285, i32 %or288, i32 %queue_flags.0
  call fastcc void @enqueue_task(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, i32 noundef %spec.select) #22
  br label %if.end290

if.end290:                                        ; preds = %if.then283, %if.end281
  br i1 %tobool274.not, label %if.end293, label %if.then292

if.then292:                                       ; preds = %if.end290
  call fastcc void @set_next_task(%struct.rq* noundef %call146, %struct.task_struct* noundef %p) #22
  br label %if.end293

if.end293:                                        ; preds = %if.then292, %if.end290
  call fastcc void @check_class_changed(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, %struct.sched_class* noundef %36, i32 noundef %33) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !79
  %call294 = call fastcc %struct.callback_head* @splice_balance_callbacks(%struct.rq* noundef %call146) #22
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  call void @rt_mutex_adjust_pi(%struct.task_struct* noundef %p) #23
  call fastcc void @balance_callbacks(%struct.rq* noundef %call146, %struct.callback_head* noundef %call294) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !80
  br label %cleanup301

unlock:                                           ; preds = %lor.lhs.false211, %if.then207, %if.then144, %land.lhs.true246, %if.end191
  %retval2.5 = phi i32 [ 0, %if.end191 ], [ -16, %land.lhs.true246 ], [ -1, %lor.lhs.false211 ], [ -1, %if.then207 ], [ -22, %if.then144 ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call146, %struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  br label %cleanup301

cleanup301:                                       ; preds = %if.end81, %if.end133, %if.end128, %if.then123, %if.end111, %if.end108, %if.then102, %if.end92, %if.then73, %land.lhs.true64, %land.lhs.true, %lor.lhs.false, %if.end37, %if.end32, %if.else, %unlock, %if.end293
  %retval.4 = phi i32 [ %retval2.5, %unlock ], [ 0, %if.end293 ], [ -95, %if.end133 ], [ %call129, %if.end128 ], [ -22, %if.then123 ], [ -1, %if.end111 ], [ -1, %if.end108 ], [ -1, %if.then102 ], [ -1, %if.end92 ], [ -1, %if.then73 ], [ -1, %if.end81 ], [ -1, %land.lhs.true64 ], [ -22, %land.lhs.true ], [ -22, %lor.lhs.false ], [ -22, %if.end37 ], [ -22, %if.end32 ], [ -22, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #21
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_setattr_nocheck(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sched_setscheduler(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr, i1 noundef false) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_set_fifo(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %sp = alloca %struct.sched_param, align 4
  %0 = bitcast %struct.sched_param* %sp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %sp, i64 0, i32 0
  store i32 50, i32* %1, align 4
  %call = call i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef %p, i32 noundef 1, %struct.sched_param* noundef nonnull %sp) #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 7568; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_set_fifo_low(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %sp = alloca %struct.sched_param, align 4
  %0 = bitcast %struct.sched_param* %sp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %sp, i64 0, i32 0
  store i32 1, i32* %1, align 4
  %call = call i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef %p, i32 noundef 1, %struct.sched_param* noundef nonnull %sp) #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 7578; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_set_normal(%struct.task_struct* noundef %p, i32 noundef %nice) local_unnamed_addr #0 {
entry:
  %attr = alloca %struct.sched_attr, align 8
  %0 = bitcast %struct.sched_attr* %attr to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #21
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  %1 = bitcast %struct.sched_attr* %attr to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  store i32 %nice, i32* %sched_nice, align 8
  %call = call i32 @sched_setattr_nocheck(%struct.task_struct* noundef %p, %struct.sched_attr* noundef nonnull %attr) #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 7588; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_setscheduler(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_sched_setscheduler(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_setscheduler(i64 noundef %pid, i64 noundef %policy, i64 noundef %param) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %policy to i32
  %0 = inttoptr i64 %param to %struct.sched_param*
  %call = call fastcc i64 @__do_sys_sched_setscheduler(i32 noundef %conv, i32 noundef %conv1, %struct.sched_param* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_setparam(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_sched_setparam(i64 noundef %0, i64 noundef %1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_setparam(i64 noundef %pid, i64 noundef %param) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %param to %struct.sched_param*
  %call = call fastcc i64 @__do_sys_sched_setparam(i32 noundef %conv, %struct.sched_param* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_setattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_sched_setattr(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_setattr(i64 noundef %pid, i64 noundef %uattr, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %uattr to %struct.sched_attr*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_sched_setattr(i32 noundef %conv, %struct.sched_attr* noundef %0, i32 noundef %conv1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_getscheduler(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_sched_getscheduler(i64 noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_getscheduler(i64 noundef %pid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %call = call fastcc i64 @__do_sys_sched_getscheduler(i32 noundef %conv) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_getparam(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_sched_getparam(i64 noundef %0, i64 noundef %1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_getparam(i64 noundef %pid, i64 noundef %param) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %param to %struct.sched_param*
  %call = call fastcc i64 @__do_sys_sched_getparam(i32 noundef %conv, %struct.sched_param* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_getattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_sched_getattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_getattr(i64 noundef %pid, i64 noundef %uattr, i64 noundef %usize, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %uattr to %struct.sched_attr*
  %conv1 = trunc i64 %usize to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_sched_getattr(i32 noundef %conv, %struct.sched_attr* noundef %0, i32 noundef %conv1, i32 noundef %conv2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dl_task_check_affinity(%struct.task_struct* noundef %p, %struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @dl_bandwidth_enabled() #22
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @__rcu_read_lock() #23
  %call4 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call4 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 3, i64 0
  %call5 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %mask) #22
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 -16, i32 0
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_bandwidth_enabled() unnamed_addr #3 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  ret i32 %.lobit.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay2) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sched_setaffinity(i32 noundef %pid, %struct.cpumask* noundef %in_mask) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %call) #22
  call fastcc void @rcu_read_unlock() #22
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 67108864
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %out_put_task

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @check_same_owner(%struct.task_struct* noundef nonnull %call) #22
  br i1 %call6, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end5
  call fastcc void @__rcu_read_lock() #23
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 79
  %1 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 16
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call12 = call i1 @ns_capable(%struct.user_namespace* noundef %2, i32 noundef 23) #23
  call fastcc void @rcu_read_unlock() #22
  br i1 %call12, label %if.end15, label %out_put_task

if.end15:                                         ; preds = %if.then7, %if.end5
  %call16 = call fastcc i32 @security_task_setscheduler(%struct.task_struct* noundef nonnull %call) #22
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %out_put_task

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @__sched_setaffinity(%struct.task_struct* noundef nonnull %call, %struct.cpumask* noundef %in_mask) #22
  br label %out_put_task

out_put_task:                                     ; preds = %if.then7, %if.end, %if.end15, %if.end19
  %retval1.0 = phi i32 [ %call16, %if.end15 ], [ %call20, %if.end19 ], [ -22, %if.end ], [ -1, %if.then7 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #22
  %conv = sext i32 %retval1.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %out_put_task, %if.then
  %retval.0 = phi i64 [ %conv, %out_put_task ], [ -3, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #23
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.task_struct* [ %call, %cond.true ], [ %1, %cond.false ]
  ret %struct.task_struct* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_same_owner(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  call fastcc void @__rcu_read_lock() #23
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %4 to i64
  %coerce.dive11 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive11, align 4
  %coerce.val.ii12 = zext i32 %5 to i64
  %call13 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii12) #22
  br i1 %call13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive17, align 4
  %coerce.val.ii18 = zext i32 %6 to i64
  %call19 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii18) #22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %call19, %lor.rhs ]
  call fastcc void @rcu_read_unlock() #22
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_setscheduler(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_setscheduler(%struct.task_struct* noundef %p) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_setaffinity(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_sched_setaffinity(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_setaffinity(i64 noundef %pid, i64 noundef %len, i64 noundef %user_mask_ptr) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %len to i32
  %0 = inttoptr i64 %user_mask_ptr to i64*
  %call = call fastcc i64 @__do_sys_sched_setaffinity(i32 noundef %conv, i32 noundef %conv1, i64* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sched_getaffinity(i32 noundef %pid, %struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 102
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 27
  %call7 = call fastcc i32 @cpumask_and(%struct.cpumask* noundef %mask, %struct.cpumask* noundef %cpus_mask, %struct.cpumask* noundef nonnull @__cpu_active_mask) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call6) #22
  br label %out_unlock

out_unlock:                                       ; preds = %entry, %if.end
  %retval1.0 = phi i64 [ 0, %if.end ], [ -3, %entry ]
  call fastcc void @rcu_read_unlock() #22
  ret i64 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_getaffinity(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_sched_getaffinity(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_getaffinity(i64 noundef %pid, i64 noundef %len, i64 noundef %user_mask_ptr) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %len to i32
  %0 = inttoptr i64 %user_mask_ptr to i64*
  %call = call fastcc i64 @__do_sys_sched_getaffinity(i32 noundef %conv, i32 noundef %conv1, i64* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_yield(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  call fastcc void @do_sched_yield() #22
  ret i64 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_sched_yield() unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %call = call fastcc %struct.rq* @this_rq_lock_irq(%struct.rq_flags* noundef nonnull %rf) #22
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 19
  %3 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %yield_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %3, i64 0, i32 2
  %4 = load void (%struct.rq*)*, void (%struct.rq*)** %yield_task, align 8
  call void %4(%struct.rq* noundef %call) #23
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !84
  call fastcc void @rq_unlock_irq(%struct.rq* noundef %call) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !85
  call void @schedule() #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cond_resched() local_unnamed_addr #0 section ".sched.text" {
entry:
  %call = call fastcc i1 @should_resched() #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @preempt_schedule_common() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @rcu_all_qs() #23
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @should_resched() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %preempt_count = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1, i32 0
  %2 = load volatile i64, i64* %preempt_count, align 8
  %cmp = icmp eq i64 %2, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_schedule_common() unnamed_addr #0 section ".sched.text" {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !86
  call fastcc void @__schedule(i32 noundef 1) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !87
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 1) #23
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_all_qs() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cond_resched_lock(%struct.spinlock* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @should_resched() #22
  br i1 %call, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #23
  call fastcc void @preempt_schedule_common() #22
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #23
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cond_resched_rwlock_read(%struct.rwlock_t* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @should_resched() #22
  br i1 %call, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef %lock) #22
  call fastcc void @preempt_schedule_common() #22
  call fastcc void @__raw_read_lock(%struct.rwlock_t* noundef %lock) #22
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef %raw_lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !88
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !89
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef %raw_lock) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cond_resched_rwlock_write(%struct.rwlock_t* noundef %lock) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @should_resched() #22
  br i1 %call, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call fastcc void @__raw_write_unlock(%struct.rwlock_t* noundef %lock) #22
  call fastcc void @preempt_schedule_common() #22
  call fastcc void @__raw_write_lock(%struct.rwlock_t* noundef %lock) #22
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_unlock(%struct.qrwlock* noundef %raw_lock) #22
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !90
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock(%struct.rwlock_t* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !91
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_lock(%struct.qrwlock* noundef %raw_lock) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @yield() local_unnamed_addr #0 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !92
  call fastcc void @do_sched_yield() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @yield_to(%struct.task_struct* noundef %p, i1 noundef %preempt) local_unnamed_addr #0 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i64 @arch_local_irq_save() #22
  %call10 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call10, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 1
  br label %again

again:                                            ; preds = %if.then38, %entry
  %call18 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call18 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add19 = add i64 %3, ptrtoint (%struct.rq* @runqueues to i64)
  %4 = inttoptr i64 %add19 to %struct.rq*
  %5 = load i32, i32* %nr_running, align 4
  %cmp20 = icmp eq i32 %5, 1
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %again
  %nr_running22 = getelementptr inbounds %struct.rq, %struct.rq* %4, i64 0, i32 1
  %6 = load i32, i32* %nr_running22, align 4
  %cmp23 = icmp eq i32 %6, 1
  br i1 %cmp23, label %do.body76.thread, label %if.end

do.body76.thread:                                 ; preds = %land.lhs.true
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br label %if.end92

if.end:                                           ; preds = %land.lhs.true, %again
  call void @double_rq_lock(%struct.rq* noundef %2, %struct.rq* noundef %4) #22
  %call32 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom33 = zext i32 %call32 to i64
  %arrayidx34 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom33
  %7 = load i64, i64* %arrayidx34, align 8
  %add35 = add i64 %7, ptrtoint (%struct.rq* @runqueues to i64)
  %8 = inttoptr i64 %add35 to %struct.rq*
  %cmp36.not = icmp eq %struct.rq* %8, %4
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %4) #22
  br label %again

if.end39:                                         ; preds = %if.end
  %9 = inttoptr i64 %add19 to %struct.rq*
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 19
  %10 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %yield_to_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %10, i64 0, i32 3
  %11 = load i1 (%struct.rq*, %struct.task_struct*)*, i1 (%struct.rq*, %struct.task_struct*)** %yield_to_task, align 8
  %tobool.not = icmp eq i1 (%struct.rq*, %struct.task_struct*)* %11, null
  br i1 %tobool.not, label %if.end92.critedge130, label %if.end41

if.end41:                                         ; preds = %if.end39
  %sched_class43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %12 = load %struct.sched_class*, %struct.sched_class** %sched_class43, align 8
  %cmp44.not = icmp eq %struct.sched_class* %10, %12
  br i1 %cmp44.not, label %if.end47, label %if.end92.critedge

if.end47:                                         ; preds = %if.end41
  %call48 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #22
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end52, label %if.end92.critedge128

do.end52:                                         ; preds = %if.end47
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %13 = load volatile i32, i32* %__state, align 16
  %cmp54 = icmp eq i32 %13, 0
  br i1 %cmp54, label %if.end57, label %if.end92.critedge129

if.end57:                                         ; preds = %do.end52
  %call60 = call i1 %11(%struct.rq* noundef %2, %struct.task_struct* noundef %p) #23
  %brmerge.demorgan = and i1 %call60, %preempt
  %brmerge = xor i1 %brmerge.demorgan, true
  %cmp70.not = icmp eq %struct.rq* %2, %9
  %or.cond = select i1 %brmerge, i1 true, i1 %cmp70.not
  br i1 %or.cond, label %do.body76, label %if.then72

if.then72:                                        ; preds = %if.end57
  call void @resched_curr(%struct.rq* noundef %9) #22
  br label %do.body76

do.body76:                                        ; preds = %if.then72, %if.end57
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %9) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br i1 %call60, label %if.then91, label %if.end92

if.then91:                                        ; preds = %do.body76
  call void @schedule() #22
  br label %if.end92

if.end92.critedge:                                ; preds = %if.end41
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %9) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br label %if.end92

if.end92.critedge128:                             ; preds = %if.end47
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %9) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br label %if.end92

if.end92.critedge129:                             ; preds = %do.end52
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %9) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br label %if.end92

if.end92.critedge130:                             ; preds = %if.end39
  call fastcc void @double_rq_unlock(%struct.rq* noundef %2, %struct.rq* noundef %9) #22
  call fastcc void @arch_local_irq_restore(i64 noundef %call2) #22
  br label %if.end92

if.end92:                                         ; preds = %if.end92.critedge130, %if.end92.critedge129, %if.end92.critedge128, %if.end92.critedge, %do.body76.thread, %if.then91, %do.body76
  %yielded.1127 = phi i32 [ -3, %do.body76.thread ], [ 1, %if.then91 ], [ 0, %do.body76 ], [ 0, %if.end92.critedge ], [ 0, %if.end92.critedge128 ], [ 0, %if.end92.critedge129 ], [ 0, %if.end92.critedge130 ]
  ret i32 %yielded.1127
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #22
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_rq_unlock(%struct.rq* noundef %rq1, %struct.rq* noundef %rq2) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %rq1) #22
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %rq2) #22
  %cmp.not = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq2) #22
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq1) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #21, !srcloc !93
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @io_schedule_prepare() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %in_iowait = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 47
  %bf.load = load i8, i8* %in_iowait, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, i8* %in_iowait, align 8
  call fastcc void @blk_schedule_flush_plug(%struct.task_struct* noundef %1) #22
  ret i32 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @blk_schedule_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #0 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @blk_flush_plug_list(%struct.blk_plug* noundef nonnull %0, i1 noundef true) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_schedule_finish(i32 noundef %token) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %in_iowait = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 47
  %2 = trunc i32 %token to i8
  %bf.load = load i8, i8* %in_iowait, align 8
  %bf.value = shl i8 %2, 2
  %bf.shl = and i8 %bf.value, 4
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %in_iowait, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @io_schedule_timeout(i64 noundef %timeout) local_unnamed_addr #0 section ".sched.text" {
entry:
  %call = call i32 @io_schedule_prepare() #22
  %call1 = call i64 @schedule_timeout(i64 noundef %timeout) #23
  call void @io_schedule_finish(i32 noundef %call) #22
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_schedule() local_unnamed_addr #0 section ".sched.text" {
entry:
  %call = call i32 @io_schedule_prepare() #22
  call void @schedule() #22
  call void @io_schedule_finish(i32 noundef %call) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @__arm64_sys_sched_get_priority_max(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_sched_get_priority_max(i64 noundef %0) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__se_sys_sched_get_priority_max(i64 noundef %policy) unnamed_addr #2 {
entry:
  %conv = trunc i64 %policy to i32
  %call = call fastcc i64 @__do_sys_sched_get_priority_max(i32 noundef %conv) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @__arm64_sys_sched_get_priority_min(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_sched_get_priority_min(i64 noundef %0) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__se_sys_sched_get_priority_min(i64 noundef %policy) unnamed_addr #2 {
entry:
  %conv = trunc i64 %policy to i32
  %call = call fastcc i64 @__do_sys_sched_get_priority_min(i32 noundef %conv) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sched_rr_get_interval(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_sched_rr_get_interval(i64 noundef %0, i64 noundef %1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sched_rr_get_interval(i64 noundef %pid, i64 noundef %interval) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %0 = inttoptr i64 %interval to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_sched_rr_get_interval(i32 noundef %conv, %struct.__kernel_timespec* noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_show_task(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @try_get_task_stack(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 81, i64 0
  %call1 = call fastcc i8 @task_state_to_char(%struct.task_struct* noundef %p) #22
  %conv = zext i8 %call1 to i32
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %conv) #26
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #26
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end
  call fastcc void @__rcu_read_lock() #23
  %call15 = call fastcc i32 @pid_alive(%struct.task_struct* noundef %p) #22
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end14
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 52
  %1 = load volatile %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call26 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #22
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %if.end14
  %ppid.0 = phi i32 [ %call26, %if.then17 ], [ 0, %if.end14 ]
  call fastcc void @rcu_read_unlock() #22
  %call32 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %p) #22
  %call33 = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %p) #22
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %call33, i64 0, i32 0
  %2 = load i64, i64* %flags, align 8
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 noundef 0, i32 noundef %call32, i32 noundef %ppid.0, i64 noundef %2) #26
  call void @print_worker_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.task_struct* noundef %p) #23
  call void @print_stop_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.task_struct* noundef %p) #23
  call void @show_stack(%struct.task_struct* noundef %p, i64* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #23
  call void @put_task_stack(%struct.task_struct* noundef %p) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @try_get_task_stack(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 136
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %stack_refcount) #22
  br i1 %call, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #22
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i8 @task_state_to_char(%struct.task_struct* noundef %tsk) unnamed_addr #16 {
entry:
  %call = call fastcc i32 @task_state_index(%struct.task_struct* noundef %tsk) #22
  %call1 = call fastcc i8 @task_index_to_char(i32 noundef %call) #22
  ret i8 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pid_alive(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  %cmp = icmp ne %struct.pid* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_worker_info(i8* noundef, %struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_stop_info(i8* noundef, %struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_stack(%struct.task_struct* noundef, i64* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_state_filter(i32 noundef %state_filter) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #23
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr55 = getelementptr %struct.list_head, %struct.list_head* %0, i64 -42, i32 1
  %cmp.not56 = icmp eq %struct.list_head** %add.ptr55, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp.not56, label %for.end33, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %state_filter to i64
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc, %for.body
  %1 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr57, i64 83
  %2 = load volatile %struct.list_head*, %struct.list_head** %1, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %2, i64 -42, i32 1
  %cmp.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp.not, label %for.end33, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %add.ptr57 = phi %struct.list_head** [ %add.ptr55, %for.body.lr.ph ], [ %add.ptr, %for.cond.loopexit ]
  %signal = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr57, i64 177
  %3 = bitcast %struct.list_head** %signal to %struct.signal_struct**
  %4 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %next10 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 3, i32 0
  %.pn47 = load volatile %struct.list_head*, %struct.list_head** %next10, align 8
  %p.0.in48 = getelementptr %struct.list_head, %struct.list_head* %.pn47, i64 -70, i32 1
  %thread_node50 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.0.in48, i64 139
  %5 = bitcast %struct.list_head** %thread_node50 to %struct.list_head*
  %thread_head1851 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 3
  %cmp19.not52 = icmp eq %struct.list_head* %thread_head1851, %5
  br i1 %cmp19.not52, label %for.cond.loopexit, label %for.body20

for.body20:                                       ; preds = %for.body, %for.inc
  %thread_node54 = phi %struct.list_head** [ %thread_node, %for.inc ], [ %thread_node50, %for.body ]
  %p.053.in = phi %struct.list_head** [ %p.0.in, %for.inc ], [ %p.0.in48, %for.body ]
  %p.053 = bitcast %struct.list_head** %p.053.in to %struct.task_struct*
  %call = call fastcc i1 @state_filter_match(i64 noundef %conv, %struct.task_struct* noundef %p.053) #22
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body20
  call void @sched_show_task(%struct.task_struct* noundef %p.053) #22
  br label %for.inc

for.inc:                                          ; preds = %for.body20, %if.then
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node54, align 8
  %p.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.0.in, i64 139
  %6 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %7 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %thread_head18 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 3
  %cmp19.not = icmp eq %struct.list_head* %thread_head18, %6
  br i1 %cmp19.not, label %for.cond.loopexit, label %for.body20

for.end33:                                        ; preds = %for.cond.loopexit, %entry
  call fastcc void @rcu_read_unlock() #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @state_filter_match(i64 noundef %state_filter, %struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %tobool.not = icmp eq i64 %state_filter, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %0 to i64
  %and = and i64 %conv, %state_filter
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp = icmp ne i64 %state_filter, 2
  %cmp5 = icmp ne i32 %0, 1026
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ %or.cond, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_idle(%struct.task_struct* noundef %idle, i32 noundef %cpu) local_unnamed_addr #17 section ".init.text" {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @__sched_fork(%struct.task_struct* noundef %idle) #22
  call void @set_kthread_struct(%struct.task_struct* noundef %idle) #23
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 102
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #22
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %1) #22
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 1
  store i32 0, i32* %__state, align 16
  %call6 = call i64 @sched_clock() #23
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 20, i32 4
  store i64 %call6, i64* %exec_start, align 64
  %flags7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 4
  %2 = load i32, i32* %flags7, align 4
  %or = or i32 %2, 69206018
  store i32 %or, i32* %flags7, align 4
  call void @kthread_set_per_cpu(%struct.task_struct* noundef %idle, i32 noundef %cpu) #23
  %call8 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) #22
  call void @set_cpus_allowed_common(%struct.task_struct* noundef %idle, %struct.cpumask* noundef nonnull %call8, i32 noundef 0) #22
  call fastcc void @__rcu_read_lock() #23
  call fastcc void @__set_task_cpu(%struct.task_struct* noundef %idle, i32 noundef %cpu) #22
  call fastcc void @rcu_read_unlock() #22
  %idle9 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 10
  store %struct.task_struct* %idle, %struct.task_struct** %idle9, align 16
  %3 = ptrtoint %struct.task_struct* %idle to i64
  %curr23 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) %curr23, i64 %3) #21, !srcloc !94
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 14
  store i32 1, i32* %on_rq, align 32
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 6
  store i32 1, i32* %on_cpu, align 4
  call void @raw_spin_rq_unlock(%struct.rq* noundef %1) #22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call) #22
  %call42 = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %idle) #22
  %preempt_count = getelementptr inbounds %struct.thread_info, %struct.thread_info* %call42, i64 0, i32 1, i32 0
  store i64 4294967296, i64* %preempt_count, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 19
  store %struct.sched_class* @idle_sched_class, %struct.sched_class** %sched_class, align 8
  %arraydecay45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 81, i64 0
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %arraydecay45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %cpu) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_kthread_struct(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #2 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cpuset_cpumask_can_shrink(%struct.cpumask* noundef %cur, %struct.cpumask* noundef %trial) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %cur) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @dl_cpuset_cpumask_can_shrink(%struct.cpumask* noundef %cur, %struct.cpumask* noundef %trial) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dl_cpuset_cpumask_can_shrink(%struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @task_can_attach(%struct.task_struct* noundef %p, %struct.cpumask* noundef %cs_cpus_allowed) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 67108864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @dl_task(%struct.task_struct* noundef %p) #22
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %out, label %do.body

do.body:                                          ; preds = %if.end
  %call3 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %idxprom = zext i32 %call3 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 21
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 3, i64 0
  %call4 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %cs_cpus_allowed) #22
  br i1 %call4, label %out, label %if.then5

if.then5:                                         ; preds = %do.body
  %call6 = call i32 @dl_task_can_attach(%struct.task_struct* noundef %p, %struct.cpumask* noundef %cs_cpus_allowed) #23
  br label %out

out:                                              ; preds = %entry, %if.end, %do.body, %if.then5
  %ret.0 = phi i32 [ 0, %do.body ], [ %call6, %if.then5 ], [ 0, %if.end ], [ -22, %entry ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @dl_prio(i32 noundef %0) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay, i64* noundef %arraydecay2) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dl_task_can_attach(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_rq_online(%struct.rq* noundef %rq) local_unnamed_addr #0 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu, align 16
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 4, i64 0
  call fastcc void @cpumask_set_cpu(i32 noundef %1, %struct.cpumask* noundef %arraydecay) #22
  store i32 1, i32* %online, align 4
  br i1 icmp eq (%struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)), label %if.end6, label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %class.015 = phi %struct.sched_class* [ %incdec.ptr, %for.inc ], [ getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %if.then ]
  %rq_online = getelementptr inbounds %struct.sched_class, %struct.sched_class* %class.015, i64 0, i32 14
  %3 = load void (%struct.rq*)*, void (%struct.rq*)** %rq_online, align 8
  %tobool3.not = icmp eq void (%struct.rq*)* %3, null
  br i1 %tobool3.not, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  call void %3(%struct.rq* noundef %rq) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %incdec.ptr = getelementptr %struct.sched_class, %struct.sched_class* %class.015, i64 -1
  %cmp.not = icmp eq %struct.sched_class* %incdec.ptr, getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)
  br i1 %cmp.not, label %if.end6, label %for.body

if.end6:                                          ; preds = %for.inc, %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_rq_offline(%struct.rq* noundef %rq) local_unnamed_addr #0 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 icmp eq (%struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)), label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %class.015 = phi %struct.sched_class* [ %incdec.ptr, %for.inc ], [ getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %for.cond.preheader ]
  %rq_offline = getelementptr inbounds %struct.sched_class, %struct.sched_class* %class.015, i64 0, i32 15
  %1 = load void (%struct.rq*)*, void (%struct.rq*)** %rq_offline, align 8
  %tobool1.not = icmp eq void (%struct.rq*)* %1, null
  br i1 %tobool1.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  call void %1(%struct.rq* noundef %rq) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %incdec.ptr = getelementptr %struct.sched_class, %struct.sched_class* %class.015, i64 -1
  %cmp.not = icmp eq %struct.sched_class* %incdec.ptr, getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 4, i64 0
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay) #22
  store i32 0, i32* %online, align 4
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_cpu_activate(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  %3 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %3, align 8, !annotation !28
  call fastcc void @set_cpu_active(i32 noundef %cpu, i1 noundef true) #22
  %4 = load i8, i8* @sched_smp_initialized, align 1, !range !95
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @cpuset_cpu_active() #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %5 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %tobool2.not = icmp eq %struct.root_domain* %5, null
  br i1 %tobool2.not, label %if.end20, label %do.body4

do.body4:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %5, i64 0, i32 3, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #22
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body11, label %do.end19, !prof !49

do.body11:                                        ; preds = %do.body4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 9056; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !96
  unreachable

do.end19:                                         ; preds = %do.body4
  call void @set_rq_online(%struct.rq* noundef %1) #22
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  call fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_active(i32 noundef %cpu, i1 noundef %active) unnamed_addr #0 {
entry:
  br i1 %active, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #22
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuset_cpu_active() unnamed_addr #0 {
entry:
  %0 = load i8, i8* @cpuhp_tasks_frozen, align 1, !range !95
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @partition_sched_domains(i32 noundef 1, [1 x %struct.cpumask]* noundef null, %struct.sched_domain_attr* noundef null) #23
  %1 = load i32, i32* @num_cpus_frozen, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* @num_cpus_frozen, align 4
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.then, %entry
  call fastcc void @cpuset_update_active_cpus() #22
  br label %return

return:                                           ; preds = %if.then, %if.end3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #4 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_cpu_deactivate(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  %3 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %3, align 8, !annotation !28
  call fastcc void @set_cpu_active(i32 noundef %cpu, i1 noundef false) #22
  call void @synchronize_rcu() #23
  call fastcc void @rq_lock_irqsave(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 21
  %4 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %tobool.not = icmp eq %struct.root_domain* %4, null
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  call void @update_rq_clock(%struct.rq* noundef %1) #22
  %5 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %5, i64 0, i32 3, i64 0
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %arraydecay) #22
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body9, label %do.end16, !prof !49

do.body9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 9101; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !97
  unreachable

do.end16:                                         ; preds = %if.then
  call void @set_rq_offline(%struct.rq* noundef %1) #22
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %entry
  call fastcc void @rq_unlock_irqrestore(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  %6 = load i8, i8* @sched_smp_initialized, align 1, !range !95
  %tobool18.not = icmp eq i8 %6, 0
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  %call21 = call fastcc i32 @cpuset_cpu_inactive(i32 noundef %cpu) #22
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end20
  call fastcc void @set_cpu_active(i32 noundef %cpu, i1 noundef true) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17, %if.then23
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ 0, %if.end17 ], [ 0, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuset_cpu_inactive(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %0 = load i8, i8* @cpuhp_tasks_frozen, align 1, !range !95
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i1 @dl_cpu_busy(i32 noundef %cpu) #23
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @cpuset_update_active_cpus() #22
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @num_cpus_frozen, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @num_cpus_frozen, align 4
  call void @partition_sched_domains(i32 noundef 1, [1 x %struct.cpumask]* noundef null, %struct.sched_domain_attr* noundef null) #23
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_cpu_starting(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call fastcc void @sched_rq_cpu_starting(i32 noundef %cpu) #22
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_rq_cpu_starting(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = load i64, i64* @calc_load_update, align 8
  %calc_load_update = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 43
  store i64 %2, i64* %calc_load_update, align 8
  call void @update_max_interval() #23
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @sched_init_smp() local_unnamed_addr #17 section ".init.text" {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @sched_domains_mutex) #23
  %call = call i32 @sched_init_domains(%struct.cpumask* noundef nonnull @__cpu_active_mask) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sched_domains_mutex) #23
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call3 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 9238; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !98
  unreachable

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, -67108865
  store i32 %and, i32* %flags, align 4
  call void @sched_init_granularity() #23
  call void @init_sched_rt_class() #23
  call void @init_sched_dl_class() #23
  store i8 1, i8* @sched_smp_initialized, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_init_domains(%struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init_granularity() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_rt_class() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_dl_class() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @migration_init() #17 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i32 @sched_cpu_starting(i32 noundef %1) #22
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @in_sched_functions(i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %call = call i32 @in_lock_functions(i64 noundef %addr) #23
  %tobool.not = icmp ne i32 %call, 0
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @__sched_text_start to i64)
  %cmp1 = icmp ult i64 %addr, ptrtoint ([0 x i8]* @__sched_text_end to i64)
  %0 = and i1 %cmp, %cmp1
  %narrow = or i1 %0, %tobool.not
  %1 = zext i1 %narrow to i32
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_lock_functions(i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @sched_init() local_unnamed_addr #17 section ".init.text" {
entry:
  br i1 select (i1 icmp ne (%struct.sched_class* getelementptr inbounds (%struct.sched_class, %struct.sched_class* @idle_sched_class, i64 1), %struct.sched_class* @fair_sched_class), i1 true, i1 select (i1 icmp ne (%struct.sched_class* getelementptr inbounds (%struct.sched_class, %struct.sched_class* @fair_sched_class, i64 1), %struct.sched_class* @rt_sched_class), i1 true, i1 icmp ne (%struct.sched_class* getelementptr inbounds (%struct.sched_class, %struct.sched_class* @rt_sched_class, i64 1), %struct.sched_class* @dl_sched_class))), label %do.body2, label %do.body8, !prof !49

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 9292; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !99
  unreachable

do.body8:                                         ; preds = %entry
  br i1 icmp ne (%struct.sched_class* getelementptr inbounds (%struct.sched_class, %struct.sched_class* @dl_sched_class, i64 1), %struct.sched_class* @stop_sched_class), label %do.body12, label %do.end20, !prof !49

do.body12:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 9294; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !100
  unreachable

do.end20:                                         ; preds = %do.body8
  call void @wait_bit_init() #26
  %call24 = call fastcc i64 @global_rt_period() #22
  %call25 = call fastcc i64 @global_rt_runtime() #22, !range !101
  call void @init_rt_bandwidth(%struct.rt_bandwidth* noundef nonnull @def_rt_bandwidth, i64 noundef %call24, i64 noundef %call25) #23
  %call26 = call fastcc i64 @global_rt_period() #22
  %call27 = call fastcc i64 @global_rt_runtime() #22, !range !101
  call void @init_dl_bandwidth(%struct.dl_bandwidth* noundef nonnull @def_dl_bandwidth, i64 noundef %call26, i64 noundef %call27) #23
  call void @init_defrootdomain() #23
  %call28104 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp105 = icmp ult i32 %call28104, %0
  br i1 %cmp105, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %do.end20
  %1 = load i32, i32* @sysctl_sched_migration_cost, align 4
  %mul = shl i32 %1, 1
  %conv39 = zext i32 %mul to i64
  %conv41 = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call28106 = phi i32 [ %call28104, %for.body.lr.ph ], [ %call28, %for.body ]
  %idxprom = sext i32 %call28106 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add to %struct.rq*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 64
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 1
  store i32 0, i32* %nr_running, align 4
  %calc_load_active = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 44
  store i64 0, i64* %calc_load_active, align 16
  %4 = load volatile i64, i64* @jiffies, align 64
  %add37 = add i64 %4, 1251
  %calc_load_update = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 43
  store i64 %add37, i64* %calc_load_update, align 8
  %cfs = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 5
  call void @init_cfs_rq(%struct.cfs_rq* noundef %cfs) #23
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 6
  call void @init_rt_rq(%struct.rt_rq* noundef %rt) #23
  %dl = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 7
  call void @init_dl_rq(%struct.dl_rq* noundef %dl) #23
  %5 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %rt_runtime = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 6, i32 11
  store i64 %5, i64* %rt_runtime, align 16
  %sd = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 22
  store %struct.sched_domain* null, %struct.sched_domain** %sd, align 8
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 21
  store %struct.root_domain* null, %struct.root_domain** %rd, align 32
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 24
  store i64 1024, i64* %cpu_capacity_orig, align 8
  %cpu_capacity = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 23
  store i64 1024, i64* %cpu_capacity, align 16
  %balance_callback = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 25
  store %struct.callback_head* @balance_push_callback, %struct.callback_head** %balance_callback, align 64
  %active_balance = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 29
  store i32 0, i32* %active_balance, align 8
  %6 = load volatile i64, i64* @jiffies, align 64
  %next_balance = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 12
  store i64 %6, i64* %next_balance, align 32
  %push_cpu = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 30
  store i32 0, i32* %push_cpu, align 4
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 32
  store i32 %call28106, i32* %cpu, align 16
  %online = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 33
  store i32 0, i32* %online, align 4
  %idle_stamp = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 38
  store i64 0, i64* %idle_stamp, align 64
  %avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 39
  store i64 %conv39, i64* %avg_idle, align 8
  %7 = load volatile i64, i64* @jiffies, align 64
  %wake_stamp = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 40
  store i64 %7, i64* %wake_stamp, align 16
  %wake_avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 41
  store i64 %conv39, i64* %wake_avg_idle, align 8
  %max_idle_balance_cost = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 42
  store i64 %conv41, i64* %max_idle_balance_cost, align 32
  %cfs_tasks = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 34
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %cfs_tasks) #22
  call void @rq_attach_root(%struct.rq* noundef %3, %struct.root_domain* noundef nonnull @def_root_domain) #23
  %counter.i = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 19, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %call28 = call i32 @cpumask_next(i32 noundef %call28106, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #27
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call28, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end20
  call fastcc void @set_load_weight(%struct.task_struct* noundef nonnull @init_task, i1 noundef false) #22
  call fastcc void @mmgrab(%struct.mm_struct* noundef nonnull @init_mm) #22
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add52 = add i64 %call51, ptrtoint (i32* @cpu_number to i64)
  %11 = inttoptr i64 %add52 to i32*
  %12 = load i32, i32* %11, align 4
  call void @init_idle(%struct.task_struct* noundef %10, i32 noundef %12) #28
  %13 = load volatile i64, i64* @jiffies, align 64
  %add53 = add i64 %13, 1251
  store i64 %add53, i64* @calc_load_update, align 8
  call void @idle_thread_set_boot_cpu() #23
  %call61 = call fastcc i64 @__kern_my_cpu_offset() #22
  call void @init_sched_fair_class() #23
  store i32 1, i32* @scheduler_running, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @wait_bit_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rt_bandwidth(%struct.rt_bandwidth* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_period() unnamed_addr #3 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_period, align 4
  %conv = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_runtime() unnamed_addr #3 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 1000
  %retval.0 = select i1 %cmp, i64 -1, i64 %mul
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_bandwidth(%struct.dl_bandwidth* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_defrootdomain() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cfs_rq(%struct.cfs_rq* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rt_rq(%struct.rt_rq* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_rq(%struct.dl_rq* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_attach_root(%struct.rq* noundef, %struct.root_domain* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_count) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_thread_set_boot_cpu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_fair_class() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dump_cpu_task(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef %cpu) #26
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  call void @sched_show_task(%struct.task_struct* noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @call_trace_sched_update_nr_running(%struct.rq* nocapture noundef %rq, i32 noundef %count) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #21, !srcloc !102
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #21, !srcloc !103
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !16

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0, i32 noundef 1) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #23
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #23
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_rq_clock_pelt(%struct.rq* nocapture noundef %rq, i64 noundef %delta) unnamed_addr #6 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 4
  %1 = load i32, i32* %flags.i, align 4
  %and.i = and i32 %1, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #22
  %clock_pelt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  store i64 %call2, i64* %clock_pelt, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #22
  %call4 = call fastcc i64 @topology_get_cpu_scale(i32 noundef %call3) #22
  %mul = mul i64 %call4, %delta
  %shr = lshr i64 %mul, 10
  %call6 = call fastcc i64 @topology_get_freq_scale(i32 noundef %call3) #22
  %mul7 = mul i64 %shr, %call6
  %shr8 = lshr i64 %mul7, 10
  %clock_pelt9 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  %2 = load i64, i64* %clock_pelt9, align 8
  %add = add i64 %shr8, %2
  store i64 %add, i64* %clock_pelt9, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_task(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #3 {
entry:
  %clock_task = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 16
  %0 = load i64, i64* %clock_task, align 64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_freq_scale(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @arch_freq_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #21, !srcloc !104
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #21, !srcloc !105
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #23
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !49

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !16

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #23
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !106
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #23
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #21, !srcloc !107
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !16

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !108
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #22
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %div.i = lshr i32 %flag, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #18

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef %0, i64* noundef %flags) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !109
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__set_cpus_allowed_ptr_locked(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags, %struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readonly %rf) unnamed_addr #0 {
entry:
  call fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef %p) #22
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags1, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  call void @update_rq_clock(%struct.rq* noundef %rq) #22
  br i1 %tobool.not, label %lor.lhs.false, label %if.end8

lor.lhs.false:                                    ; preds = %entry
  %call3 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %p) #22
  %spec.select = select i1 %call3, %struct.cpumask* @__cpu_online_mask, %struct.cpumask* @__cpu_active_mask
  %call5 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %new_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %out, label %if.end8

if.end8:                                          ; preds = %entry, %lor.lhs.false
  %cpu_valid_mask.0100 = phi %struct.cpumask* [ %spec.select, %lor.lhs.false ], [ @__cpu_online_mask, %entry ]
  %and9 = and i32 %flags, 1
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end16, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8
  %1 = load i32, i32* %flags1, align 4
  %and13 = and i32 %1, 67108864
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %out

if.end16:                                         ; preds = %land.lhs.true11, %if.end8
  %and17 = and i32 %flags, 4
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end49

if.then19:                                        ; preds = %if.end16
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  %call20 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %cpus_mask, %struct.cpumask* noundef %new_mask) #22
  br i1 %call20, label %out, label %if.end22

if.end22:                                         ; preds = %if.then19
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %3, %p
  br i1 %cmp, label %land.lhs.true24, label %if.end49

land.lhs.true24:                                  ; preds = %if.end22
  %call25 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %p) #22
  br i1 %call25, label %land.rhs, label %if.end49

land.rhs:                                         ; preds = %land.lhs.true24
  %call26 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %call27 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call26, %struct.cpumask* noundef %new_mask) #22
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then37, label %if.end49, !prof !49

if.then37:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2798; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !110
  br label %out

if.end49:                                         ; preds = %if.end22, %land.lhs.true24, %land.rhs, %if.end16
  %call50 = call i32 @cpumask_any_and_distribute(%struct.cpumask* noundef nonnull %cpu_valid_mask.0100, %struct.cpumask* noundef %new_mask) #23
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp51.not = icmp ult i32 %call50, %4
  br i1 %cmp51.not, label %if.end54, label %out

if.end54:                                         ; preds = %if.end49
  call fastcc void @__do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef %new_mask, i32 noundef %flags) #22
  %and55 = and i32 %flags, 8
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end54
  %call58 = call fastcc %struct.cpumask* @clear_user_cpus_ptr(%struct.task_struct* noundef %p) #22
  %phi.cast = bitcast %struct.cpumask* %call58 to i8*
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54
  %user_mask.0 = phi i8* [ %phi.cast, %if.then57 ], [ null, %if.end54 ]
  %call60 = call fastcc i32 @affine_move_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf, i32 noundef %call50, i32 noundef %flags) #22
  call void @kfree(i8* noundef %user_mask.0) #23
  br label %cleanup

out:                                              ; preds = %if.then37, %if.end49, %land.lhs.true11, %lor.lhs.false, %if.then19
  %ret.0 = phi i32 [ 0, %if.then19 ], [ -22, %lor.lhs.false ], [ -22, %land.lhs.true11 ], [ -16, %if.then37 ], [ -22, %if.end49 ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end59
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call60, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_equal(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_equal(i64* noundef %arraydecay, i64* noundef %arraydecay2) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(%struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @affine_move_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* nocapture noundef readonly %rf, i32 noundef %dest_cpu, i32 noundef %flags) unnamed_addr #0 {
entry:
  %my_pending = alloca %struct.set_affinity_pending, align 8
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 8
  %0 = bitcast %struct.set_affinity_pending* %my_pending to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  %call1 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call, %struct.cpumask* noundef %cpus_mask) #22
  %tobool.not = icmp eq i32 %call1, 0
  %and25 = and i32 %flags, 4
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool26.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %migration_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 30
  %1 = load i16, i16* %migration_flags, align 2
  %2 = and i16 %1, 1
  %tobool4.not = icmp eq i16 %2, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %push_busy = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 46
  %3 = load i32, i32* %push_busy, align 4
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true5
  store i32 1, i32* %push_busy, align 4
  %call9 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %p) #22
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true5, %land.lhs.true, %if.then
  %push_task.0 = phi %struct.task_struct* [ null, %land.lhs.true5 ], [ %p, %if.then7 ], [ null, %land.lhs.true ], [ null, %if.then ]
  %migration_pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 28
  %4 = bitcast i8** %migration_pending to %struct.set_affinity_pending**
  %5 = load %struct.set_affinity_pending*, %struct.set_affinity_pending** %4, align 8
  %tobool10.not = icmp eq %struct.set_affinity_pending* %5, null
  br i1 %tobool10.not, label %if.end16, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end
  %stop_pending12 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %5, i64 0, i32 1
  %6 = load i32, i32* %stop_pending12, align 4
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true11
  store i8* null, i8** %migration_pending, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true11, %if.end
  %complete.0.off0 = phi i1 [ false, %land.lhs.true11 ], [ true, %if.then14 ], [ false, %if.end ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  %tobool17.not = icmp eq %struct.task_struct* %push_task.0, null
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %7 = load i32, i32* %cpu, align 16
  %8 = bitcast %struct.task_struct* %p to i8*
  %push_work = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 47
  %call19 = call i1 @stop_one_cpu_nowait(i32 noundef %7, i32 (i8*)* noundef nonnull @push_cpu_stop, i8* noundef %8, %struct.cpu_stop_work* noundef %push_work) #23
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  br i1 %complete.0.off0, label %if.then22, label %cleanup168

if.then22:                                        ; preds = %if.end20
  %done = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %5, i64 0, i32 2
  call void @complete_all(%struct.completion* noundef %done) #23
  br label %cleanup168

if.end24:                                         ; preds = %entry
  br i1 %tobool26.not, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.end24
  %migration_pending28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 28
  %9 = load i8*, i8** %migration_pending28, align 8
  %tobool29.not = icmp eq i8* %9, null
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  %refs = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %refs) #22
  %done31 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 2
  call fastcc void @init_completion(%struct.completion* noundef %done31) #22
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 4, i32 0
  store %struct.task_struct* %p, %struct.task_struct** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx180 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 4, i32 1
  store i32 %dest_cpu, i32* %.compoundliteral.sroa.2.0..sroa_idx180, align 8
  %.compoundliteral.sroa.3181.0..sroa_idx182 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 4, i32 2
  store %struct.set_affinity_pending* %my_pending, %struct.set_affinity_pending** %.compoundliteral.sroa.3181.0..sroa_idx182, align 8
  %10 = bitcast i8** %migration_pending28 to %struct.set_affinity_pending**
  store %struct.set_affinity_pending* %my_pending, %struct.set_affinity_pending** %10, align 8
  br label %if.end40

if.else:                                          ; preds = %if.then27
  %refs36 = bitcast i8* %9 to %struct.refcount_struct*
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef nonnull %refs36) #22
  %dest_cpu38 = getelementptr inbounds i8, i8* %9, i64 96
  %11 = bitcast i8* %dest_cpu38 to i32*
  store i32 %dest_cpu, i32* %11, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %if.else, %if.end24
  %migration_pending41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 28
  %12 = bitcast i8** %migration_pending41 to %struct.set_affinity_pending**
  %13 = load %struct.set_affinity_pending*, %struct.set_affinity_pending** %12, align 8
  %tobool42.not = icmp eq %struct.set_affinity_pending* %13, null
  br i1 %tobool42.not, label %if.then52, label %if.end63, !prof !49

if.then52:                                        ; preds = %if.end40
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2683; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !111
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  br label %cleanup168

if.end63:                                         ; preds = %if.end40
  %call64 = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #22
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end, label %if.then68

do.end:                                           ; preds = %if.end63
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %14 = load volatile i32, i32* %__state, align 16
  %cmp = icmp eq i32 %14, 512
  br i1 %cmp, label %if.then68, label %if.else93

if.then68:                                        ; preds = %do.end, %if.end63
  %stop_pending69 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 1
  %15 = load i32, i32* %stop_pending69, align 4
  %tobool70.not = icmp eq i32 %15, 0
  br i1 %tobool70.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then68
  store i32 1, i32* %stop_pending69, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then68
  br i1 %tobool26.not, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end74
  %migration_flags78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 30
  %16 = load i16, i16* %migration_flags78, align 2
  %17 = and i16 %16, -2
  store i16 %17, i16* %migration_flags78, align 2
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end74
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  br i1 %tobool70.not, label %if.then84, label %if.end88

if.then84:                                        ; preds = %if.end82
  %call85 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #22
  %arg86 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 4
  %18 = bitcast %struct.migration_arg* %arg86 to i8*
  %stop_work = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 3
  %call87 = call i1 @stop_one_cpu_nowait(i32 noundef %call85, i32 (i8*)* noundef nonnull @migration_cpu_stop, i8* noundef %18, %struct.cpu_stop_work* noundef %stop_work) #23
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end82
  br i1 %tobool26.not, label %if.end111, label %cleanup168

if.else93:                                        ; preds = %do.end
  %call94 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %p) #22
  br i1 %call94, label %if.end111.critedge, label %if.then95

if.then95:                                        ; preds = %if.else93
  %call96 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %if.then95
  %call99 = call fastcc %struct.rq* @move_queued_task(%struct.rq* noundef %rq, %struct.rq_flags* noundef %rf, %struct.task_struct* noundef %p, i32 noundef %dest_cpu) #22
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then95
  %rq.addr.0 = phi %struct.rq* [ %call99, %if.then98 ], [ %rq, %if.then95 ]
  %stop_pending101 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 1
  %19 = load i32, i32* %stop_pending101, align 4
  %tobool102.not = icmp eq i32 %19, 0
  br i1 %tobool102.not, label %if.then103, label %if.end111.critedge243

if.then103:                                       ; preds = %if.end100
  store i8* null, i8** %migration_pending41, align 8
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq.addr.0, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  %done109 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 2
  call void @complete_all(%struct.completion* noundef %done109) #23
  br label %if.end111

if.end111.critedge:                               ; preds = %if.else93
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  br label %if.end111

if.end111.critedge243:                            ; preds = %if.end100
  call fastcc void @task_rq_unlock(%struct.rq* noundef %rq.addr.0, %struct.task_struct* noundef %p, %struct.rq_flags* noundef %rf) #22
  br label %if.end111

if.end111:                                        ; preds = %if.end111.critedge243, %if.end111.critedge, %if.then103, %if.end88
  %done112 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 2
  call void @wait_for_completion(%struct.completion* noundef %done112) #23
  %refs113 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %13, i64 0, i32 0
  %call114 = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refs113) #22
  br i1 %call114, label %if.then115, label %do.end124

if.then115:                                       ; preds = %if.end111
  %20 = bitcast %struct.set_affinity_pending* %13 to i8*
  call void @wake_up_var(i8* noundef nonnull %20) #23
  br label %do.end124

do.end124:                                        ; preds = %if.end111, %if.then115
  %refs125 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 0
  %call126 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef nonnull %refs125) #22
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.end142, label %if.end129

if.end129:                                        ; preds = %do.end124
  %call131 = call %struct.wait_queue_head* @__var_waitqueue(i8* noundef nonnull %0) #23
  %21 = bitcast %struct.wait_bit_queue_entry* %__wbq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %21) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %21, i8 0, i64 64, i1 false), !annotation !28
  call void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef nonnull %__wbq_entry, i8* noundef nonnull %0, i32 noundef 0) #23
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, %struct.wait_bit_queue_entry* %__wbq_entry, i64 0, i32 1
  %call133246 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call131, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #23
  %call135247 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef nonnull %refs125) #22
  %tobool136.not248 = icmp eq i32 %call135247, 0
  br i1 %tobool136.not248, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end129, %cleanup
  call void @schedule() #22
  %call133 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %call131, %struct.wait_queue_entry* noundef %wq_entry, i32 noundef 2) #23
  %call135 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef nonnull %refs125) #22
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end129
  call void @finish_wait(%struct.wait_queue_head* noundef %call131, %struct.wait_queue_entry* noundef %wq_entry) #23
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %21) #21
  br label %do.end142

do.end142:                                        ; preds = %do.end124, %for.end
  %stop_pending144 = getelementptr inbounds %struct.set_affinity_pending, %struct.set_affinity_pending* %my_pending, i64 0, i32 1
  %22 = load i32, i32* %stop_pending144, align 4
  %tobool145.not = icmp eq i32 %22, 0
  br i1 %tobool145.not, label %cleanup168, label %if.then158, !prof !16

if.then158:                                       ; preds = %do.end142
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2739; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !112
  br label %cleanup168

cleanup168:                                       ; preds = %do.end142, %if.then158, %if.end88, %if.end20, %if.then22, %if.then52
  %retval.0 = phi i32 [ -22, %if.then52 ], [ 0, %if.then22 ], [ 0, %if.end20 ], [ 0, %if.end88 ], [ 0, %if.then158 ], [ 0, %do.end142 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_equal(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %src1 to i8*
  %1 = bitcast i64* %src2 to i8*
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 32) #23
  %tobool9.not = icmp eq i32 %call, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  ret i32 %lnot.ext11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @stop_one_cpu_nowait(i32 noundef, i32 (i8*)* noundef, i8* noundef, %struct.cpu_stop_work* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #11 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rq* @move_queued_task(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readnone %rf, %struct.task_struct* noundef %p, i32 noundef %new_cpu) unnamed_addr #0 {
entry:
  call void @deactivate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef 8) #22
  call void @set_task_cpu(%struct.task_struct* noundef %p, i32 noundef %new_cpu) #22
  call fastcc void @rq_unlock(%struct.rq* noundef %rq) #22
  %idxprom = sext i32 %new_cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @rq_lock(%struct.rq* noundef %1, %struct.rq_flags* noundef %rf) #22
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %p) #22
  %cmp.not = icmp eq i32 %call, %new_cpu
  br i1 %cmp.not, label %do.end8, label %do.body4, !prof !16

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 2238; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !113
  unreachable

do.end8:                                          ; preds = %entry
  call void @activate_task(%struct.rq* noundef %1, %struct.task_struct* noundef %p, i32 noundef 0) #22
  call void @check_preempt_curr(%struct.rq* noundef %1, %struct.task_struct* noundef %p, i32 noundef 0) #22
  ret %struct.rq* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.wait_queue_head* @__var_waitqueue(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(%struct.wait_bit_queue_entry* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_set_notify_resume(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  %0 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %tobool.not = icmp eq %struct.rseq* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %t, i32 noundef 2) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpwait_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call i64 asm sideeffect "\09sevl\0A\09wfe\0A\09ldxr\09${0:w}, $1\0A\09eor\09${0:w}, ${0:w}, ${2:w}\0A\09cbnz\09${0:w}, 1f\0A\09wfe\0A1:", "=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #21, !srcloc !114
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ttwu_do_wakeup(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  call void @check_preempt_curr(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %wake_flags) #22
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %task_woken = getelementptr inbounds %struct.sched_class, %struct.sched_class* %0, i64 0, i32 12
  %1 = load void (%struct.rq*, %struct.task_struct*)*, void (%struct.rq*, %struct.task_struct*)** %task_woken, align 8
  %tobool.not = icmp eq void (%struct.rq*, %struct.task_struct*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idle_stamp = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 38
  %2 = load i64, i64* %idle_stamp, align 64
  %tobool7.not = icmp eq i64 %2, 0
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end
  %call = call fastcc i64 @rq_clock(%struct.rq* noundef %rq) #22
  %sub = sub i64 %call, %2
  %max_idle_balance_cost = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 42
  %3 = load i64, i64* %max_idle_balance_cost, align 32
  %mul = shl i64 %3, 1
  %avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 39
  call fastcc void @update_avg(i64* noundef %avg_idle, i64 noundef %sub) #22
  %4 = load i64, i64* %avg_idle, align 8
  %cmp = icmp ugt i64 %4, %mul
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  store i64 %mul, i64* %avg_idle, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8
  %5 = phi i64 [ %mul, %if.then11 ], [ %4, %if.then8 ]
  %6 = load volatile i64, i64* @jiffies, align 64
  %wake_stamp = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 40
  store i64 %6, i64* %wake_stamp, align 16
  %div = lshr i64 %5, 1
  %wake_avg_idle = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 41
  store i64 %div, i64* %wake_avg_idle, align 8
  store i64 0, i64* %idle_stamp, align 64
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #3 {
entry:
  %clock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 15
  %0 = load i64, i64* %clock, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @update_avg(i64* nocapture noundef %avg, i64 noundef %sample) unnamed_addr #6 {
entry:
  %0 = load i64, i64* %avg, align 8
  %sub = sub i64 %sample, %0
  %div = sdiv i64 %sub, 8
  %add = add i64 %div, %0
  store i64 %add, i64* %avg, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !116
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !117
  call void @rcu_read_unlock_strict() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ttwu_runnable(%struct.task_struct* noundef %p, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %call = call %struct.rq* @__task_rq_lock(%struct.task_struct* noundef %p, %struct.rq_flags* noundef nonnull %rf) #22
  %call1 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @update_rq_clock(%struct.rq* noundef %call) #22
  call fastcc void @ttwu_do_wakeup(%struct.rq* noundef %call, %struct.task_struct* noundef %p, i32 noundef %wake_flags) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  call fastcc void @__task_rq_unlock(%struct.rq* noundef %call) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ttwu_queue_wakelist(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @ttwu_queue_cond(i32 noundef %cpu, i32 noundef %wake_flags) #22
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, %cpu
  br i1 %cmp, label %if.then9, label %if.end20, !prof !49

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 3744; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #21, !srcloc !118
  br label %return

if.end20:                                         ; preds = %if.then
  %call21 = call i64 @sched_clock_cpu(i32 noundef %cpu) #23
  call fastcc void @__ttwu_queue_wakelist(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) #22
  br label %return

return:                                           ; preds = %if.then9, %entry, %if.end20
  %retval.0 = phi i1 [ true, %if.end20 ], [ false, %if.then9 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ttwu_queue(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %2 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #21
  %call = call fastcc i1 @ttwu_queue_wakelist(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) #22
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @rq_lock(%struct.rq* noundef %1, %struct.rq_flags* noundef nonnull %rf) #22
  call void @update_rq_clock(%struct.rq* noundef %1) #22
  call fastcc void @ttwu_do_activate(%struct.rq* noundef %1, %struct.task_struct* noundef %p, i32 noundef %wake_flags) #22
  call fastcc void @rq_unlock(%struct.rq* noundef %1) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__task_rq_unlock(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #22
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i1 @ttwu_queue_cond(i32 noundef %cpu, i32 noundef %wake_flags) unnamed_addr #13 {
entry:
  %call = call fastcc i1 @cpu_active(i32 noundef %cpu) #22
  br i1 %call, label %do.body, label %return

do.body:                                          ; preds = %entry
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call3 = call i1 @cpus_share_cache(i32 noundef %1, i32 noundef %cpu) #22
  br i1 %call3, label %if.end5, label %return

if.end5:                                          ; preds = %do.body
  %and = and i32 %wake_flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %do.body6

do.body6:                                         ; preds = %if.end5
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add12 = add i64 %2, ptrtoint (%struct.rq* @runqueues to i64)
  %3 = inttoptr i64 %add12 to %struct.rq*
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %3, i64 0, i32 1
  %4 = load i32, i32* %nr_running, align 4
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %return, label %if.end14

if.end14:                                         ; preds = %do.body6, %if.end5
  br label %return

return:                                           ; preds = %do.body6, %do.body, %entry, %if.end14
  %retval.0 = phi i1 [ false, %if.end14 ], [ false, %entry ], [ true, %do.body ], [ true, %do.body6 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ttwu_queue_wakelist(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %wake_flags) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %sched_remote_wakeup = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 47
  %2 = trunc i32 %wake_flags to i8
  %3 = lshr i8 %2, 5
  %4 = and i8 %3, 1
  %bf.load = load i8, i8* %sched_remote_wakeup, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %4
  store i8 %bf.set, i8* %sched_remote_wakeup, align 8
  %ttwu_pending = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 2
  store volatile i32 1, i32* %ttwu_pending, align 8
  %llist = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 7, i32 0
  call void @__smp_call_single_queue(i32 noundef %cpu, %struct.llist_node* noundef %llist) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__smp_call_single_queue(i32 noundef, %struct.llist_node* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_task_timer(%struct.sched_dl_entity* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_inactive_task_timer(%struct.sched_dl_entity* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dl_clear_params(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_policy(i32 noundef %policy) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %policy, 6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_policy(i32 noundef %policy) unnamed_addr #2 {
entry:
  %0 = add i32 %policy, -1
  %1 = icmp ult i32 %0, 2
  %lor.ext = zext i1 %1 to i32
  ret i32 %lor.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_has_idle_policy(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %call = call fastcc i32 @idle_policy(i32 noundef %0) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reweight_task(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @idle_policy(i32 noundef %policy) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %policy, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #22
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %0 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %0) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef %p) #22
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i1 @cpu_online(i32 noundef %cpu) #22
  br label %return

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2097152
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %call7 = call fastcc i1 @cpu_active(i32 noundef %cpu) #22
  br i1 %call7, label %land.rhs, label %return

land.rhs:                                         ; preds = %if.then6
  call fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef %p) #22
  %call9 = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %tobool10 = icmp ne i32 %call9, 0
  br label %return

if.end11:                                         ; preds = %if.end4
  %call12 = call i1 @kthread_is_per_cpu(%struct.task_struct* noundef %p) #23
  br i1 %call12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %call14 = call fastcc i1 @cpu_online(i32 noundef %cpu) #22
  br label %return

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i1 @cpu_dying(i32 noundef %cpu) #22
  br i1 %call16, label %return, label %if.end18

if.end18:                                         ; preds = %if.end15
  %call19 = call fastcc i1 @cpu_online(i32 noundef %cpu) #22
  br label %return

return:                                           ; preds = %if.end15, %if.then6, %land.rhs, %entry, %if.end18, %if.then13, %if.then2
  %retval.0 = phi i1 [ %call3, %if.then2 ], [ %call14, %if.then13 ], [ %call19, %if.end18 ], [ false, %entry ], [ false, %if.then6 ], [ %tobool10, %land.rhs ], [ false, %if.end15 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_fallback_rq(i32 noundef %cpu, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %dest_cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %dest_cpu.0, %struct.cpumask* noundef nonnull @__cpu_online_mask) #27
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1 = icmp ult i32 %call, %0
  br i1 %cmp1, label %for.body, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %call2 = call fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %call) #22
  br i1 %call2, label %cleanup, label %for.cond

for.cond6:                                        ; preds = %for.body9, %for.cond5.preheader
  %dest_cpu.1 = phi i32 [ -1, %for.cond5.preheader ], [ %call7, %for.body9 ]
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call7 = call i32 @cpumask_next(i32 noundef %dest_cpu.1, %struct.cpumask* noundef %1) #27
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %2
  br i1 %cmp8, label %for.body9, label %sw.bb17

for.body9:                                        ; preds = %for.cond6
  %call10 = call fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %call7) #22
  br i1 %call10, label %out, label %for.cond6

sw.bb17:                                          ; preds = %for.cond6
  call fastcc void @task_cpu_possible_mask(%struct.task_struct* noundef %p) #22
  call void @do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  br label %for.cond6.1

for.cond6.1:                                      ; preds = %for.body9.1, %sw.bb17
  %dest_cpu.1.1 = phi i32 [ -1, %sw.bb17 ], [ %call7.1, %for.body9.1 ]
  %3 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %call7.1 = call i32 @cpumask_next(i32 noundef %dest_cpu.1.1, %struct.cpumask* noundef %3) #27
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp8.1 = icmp ult i32 %call7.1, %4
  br i1 %cmp8.1, label %for.body9.1, label %do.body

for.body9.1:                                      ; preds = %for.cond6.1
  %call10.1 = call fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %call7.1) #22
  br i1 %call10.1, label %out, label %for.cond6.1

do.body:                                          ; preds = %for.cond6.1
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 3366; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !119
  unreachable

out:                                              ; preds = %for.body9.1, %for.body9
  %call7.lcssa73 = phi i32 [ %call7, %for.body9 ], [ %call7.1, %for.body9.1 ]
  br i1 %cmp8, label %cleanup, label %if.then24

if.then24:                                        ; preds = %out
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 35
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %5, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24
  %call25 = call i32 @__printk_ratelimit(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.select_fallback_rq, i64 0, i64 0)) #23
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %do.end30

do.end30:                                         ; preds = %land.lhs.true
  %call31 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %p) #22
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 81, i64 0
  %call32 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call31, i8* noundef %arraydecay, i32 noundef %cpu) #26
  br label %cleanup

cleanup:                                          ; preds = %for.body, %out, %do.end30, %land.lhs.true, %if.then24
  %retval.0 = phi i32 [ %call7.lcssa73, %if.then24 ], [ %call7.lcssa73, %land.lhs.true ], [ %call7.lcssa73, %do.end30 ], [ %call7.lcssa73, %out ], [ %call, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #23
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kthread_is_per_cpu(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_dying(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_dying_mask) #22
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_count_set() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.4* %2 to i32*
  store volatile i32 0, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_task(%struct.task_struct* noundef %prev) unnamed_addr #0 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 6
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %on_cpu, i32 0) #21, !srcloc !120
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finish_lock_switch(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call fastcc void @__balance_callbacks(%struct.rq* noundef %rq) #22
  call fastcc void @raw_spin_rq_unlock_irq(%struct.rq* noundef %rq) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @membarrier_mm_sync_core_before_usermode(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %cmp.not = icmp eq %struct.mm_struct* %2, %mm
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 9, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #23
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !49

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_struct_rcu_user(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_unlock_irq(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #22
  call fastcc void @arch_local_irq_enable() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !121
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rq* @__migrate_task(%struct.rq* noundef %rq, %struct.rq_flags* nocapture noundef readnone %rf, %struct.task_struct* noundef %p, i32 noundef %dest_cpu) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_cpu_allowed(%struct.task_struct* noundef %p, i32 noundef %dest_cpu) #22
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @update_rq_clock(%struct.rq* noundef %rq) #22
  %call1 = call fastcc %struct.rq* @move_queued_task(%struct.rq* noundef %rq, %struct.rq_flags* noundef %rf, %struct.task_struct* noundef %p, i32 noundef %dest_cpu) #22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.rq* [ %call1, %if.end ], [ %rq, %entry ]
  ret %struct.rq* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prefetch(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void asm sideeffect "prfm pldl1keep, ${0:a}\0A", "r"(i8* %ptr) #21, !srcloc !122
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_debug(%struct.task_struct* noundef %prev) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @preempt_count() #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call fastcc void @__schedule_bug(%struct.task_struct* noundef %prev) #22
  call fastcc void @preempt_count_set() #22
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_note_context_switch(i1 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending_state(i32 noundef %state, %struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %and = and i32 %state, 257
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @signal_pending(%struct.task_struct* noundef %p) #22
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %state, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end3
  %call6 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #22
  %tobool7 = icmp ne i32 %call6, 0
  %phi.cast = zext i1 %tobool7 to i32
  br label %return

return:                                           ; preds = %if.end3, %lor.rhs, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.end3 ], [ %phi.cast, %lor.rhs ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @pick_next_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @__pick_next_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) #22
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc void @clear_preempt_need_resched() unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %preempt = bitcast %union.anon.4* %2 to %struct.anon.5*
  %need_resched = getelementptr inbounds %struct.anon.5, %struct.anon.5* %preempt, i64 0, i32 1
  store i32 1, i32* %need_resched, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @migrate_disable_switch(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 29
  %0 = load i16, i16* %migration_disabled, align 16
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %return, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 25
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 27
  %cmp.not = icmp eq %struct.cpumask* %1, %cpus_mask
  br i1 %cmp.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.end
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %call = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %2) #22
  call fastcc void @__do_set_cpus_allowed(%struct.task_struct* noundef %p, %struct.cpumask* noundef nonnull %call, i32 noundef 2) #22
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__schedule_bug(%struct.task_struct* noundef %prev) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !22
  %1 = load i32, i32* @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 50
  %2 = load i32, i32* %pid, align 32
  %call2 = call fastcc i32 @preempt_count() #22
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %2, i32 noundef %call2) #26
  %call6 = call fastcc i64 @arch_local_save_flags() #22
  %call16 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call6) #22
  %3 = load i32, i32* @panic_on_warn, align 4
  %tobool20.not = icmp eq i32 %3, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0)) #29
  unreachable

if.end22:                                         ; preds = %do.end
  call void @dump_stack() #26
  call void @add_taint(i32 noundef 9, i32 noundef 0) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end22
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #19

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !16

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

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
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #21, !srcloc !123
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @__pick_next_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) unnamed_addr #0 {
entry:
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp ugt %struct.sched_class* %0, @fair_sched_class
  br i1 %cmp.not, label %restart, label %land.rhs, !prof !49

land.rhs:                                         ; preds = %entry
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 4
  %h_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 5, i32 2
  %2 = load i32, i32* %h_nr_running, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then, label %restart, !prof !16

if.then:                                          ; preds = %land.rhs
  %call = call %struct.task_struct* @pick_next_task_fair(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) #23
  %magicptr = ptrtoint %struct.task_struct* %call to i64
  switch i64 %magicptr, label %cleanup [
    i64 -1, label %restart
    i64 0, label %if.then14
  ], !prof !124

if.then14:                                        ; preds = %if.then
  call fastcc void @put_prev_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) #22
  %call15 = call %struct.task_struct* @pick_next_task_idle(%struct.rq* noundef %rq) #23
  br label %cleanup

restart:                                          ; preds = %entry, %if.then, %land.rhs
  call fastcc void @put_prev_task_balance(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) #22
  br i1 icmp eq (%struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %struct.sched_class* getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)), label %do.body, label %for.body

for.cond:                                         ; preds = %for.body
  %cmp18.not = icmp eq %struct.sched_class* %incdec.ptr, getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__begin_sched_classes, i64 0, i64 -1)
  br i1 %cmp18.not, label %do.body, label %for.body

for.body:                                         ; preds = %restart, %for.cond
  %class.046 = phi %struct.sched_class* [ %incdec.ptr, %for.cond ], [ getelementptr ([0 x %struct.sched_class], [0 x %struct.sched_class]* @__end_sched_classes, i64 0, i64 -1), %restart ]
  %pick_next_task = getelementptr inbounds %struct.sched_class, %struct.sched_class* %class.046, i64 0, i32 5
  %3 = load %struct.task_struct* (%struct.rq*)*, %struct.task_struct* (%struct.rq*)** %pick_next_task, align 8
  %call20 = call %struct.task_struct* %3(%struct.rq* noundef %rq) #23
  %tobool21.not = icmp eq %struct.task_struct* %call20, null
  %incdec.ptr = getelementptr %struct.sched_class, %struct.sched_class* %class.046, i64 -1
  br i1 %tobool21.not, label %for.cond, label %cleanup

do.body:                                          ; preds = %for.cond, %restart
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/core.c\22; .popsection; .long 14472b - 14470b; .short 5584; .short 0; .popsection; 14471: brk 0x800", ""() #21, !srcloc !125
  unreachable

cleanup:                                          ; preds = %for.body, %if.then14, %if.then
  %retval.0 = phi %struct.task_struct* [ %call15, %if.then14 ], [ %call, %if.then ], [ %call20, %for.body ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pick_next_task_fair(%struct.rq* noundef, %struct.task_struct* noundef, %struct.rq_flags* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pick_next_task_idle(%struct.rq* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_prev_task_balance(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) unnamed_addr #0 {
entry:
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 19
  %0 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not7 = icmp eq %struct.sched_class* %0, @idle_sched_class
  br i1 %cmp.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %class.08 = phi %struct.sched_class* [ %incdec.ptr, %for.body ], [ %0, %entry ]
  %balance = getelementptr inbounds %struct.sched_class, %struct.sched_class* %class.08, i64 0, i32 8
  %1 = load i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)*, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)** %balance, align 8
  %call = call i32 %1(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev, %struct.rq_flags* noundef %rf) #23
  %tobool.not = icmp ne i32 %call, 0
  %incdec.ptr = getelementptr %struct.sched_class, %struct.sched_class* %class.08, i64 -1
  %cmp.not = icmp eq %struct.sched_class* %incdec.ptr, @idle_sched_class
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call fastcc void @put_prev_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %prev) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #21, !srcloc !126
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prepare_task_switch(%struct.task_struct* noundef %prev, %struct.task_struct* noundef %next) unnamed_addr #0 {
entry:
  call fastcc void @rseq_preempt(%struct.task_struct* noundef %prev) #22
  call fastcc void @prepare_task(%struct.task_struct* noundef %next) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @membarrier_switch_mm(%struct.rq* noundef %rq, %struct.mm_struct* noundef readnone %prev_mm, %struct.mm_struct* noundef %next_mm) unnamed_addr #11 {
entry:
  %cmp = icmp eq %struct.mm_struct* %prev_mm, %next_mm
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %next_mm, i64 0, i32 0, i32 9, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %membarrier_state2 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 20
  %1 = load volatile i32, i32* %membarrier_state2, align 4
  %cmp3 = icmp eq i32 %1, %0
  br i1 %cmp3, label %cleanup, label %do.body10

do.body10:                                        ; preds = %if.end
  store volatile i32 %0, i32* %membarrier_state2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %do.body10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @switch_mm(%struct.mm_struct* noundef readnone %prev, %struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.mm_struct* %prev, %next
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__switch_mm(%struct.mm_struct* noundef %next) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @__switch_to(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_preempt(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 123
  %0 = load i64, i64* %rseq_event_mask, align 8
  %or.i = or i64 %0, 1
  store i64 %or.i, i64* %rseq_event_mask, align 8
  call fastcc void @rseq_set_notify_resume(%struct.task_struct* noundef %t) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @prepare_task(%struct.task_struct* noundef %next) unnamed_addr #11 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next, i64 0, i32 6
  store volatile i32 1, i32* %on_cpu, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__switch_mm(%struct.mm_struct* noundef %next) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.mm_struct* %next, @init_mm
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @check_and_switch_context(%struct.mm_struct* noundef %next) #23
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #21, !srcloc !127
  call void asm sideeffect "isb", "~{memory}"() #21, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(%struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_sleeping(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_wq_worker_sleeping(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @tsk_is_pi_blocked(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 106
  %0 = load %struct.rt_mutex_waiter*, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  %cmp = icmp ne %struct.rt_mutex_waiter* %0, null
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_needs_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #4 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list) #22
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 1
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %cb_list) #22
  %tobool4.not = icmp eq i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %tobool4.not, %lor.rhs ]
  ret i1 %1
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_running(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_wq_worker_running(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @dl_time_before(i64 noundef %a, i64 noundef %b) unnamed_addr #2 {
entry:
  %sub = sub i64 %a, %b
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_balance_callbacks(%struct.rq* noundef %rq, %struct.callback_head* noundef %head) unnamed_addr #0 {
entry:
  %tobool.not10 = icmp eq %struct.callback_head* %head, null
  br i1 %tobool.not10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %head.addr.011 = phi %struct.callback_head* [ %2, %while.body ], [ %head, %entry ]
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head.addr.011, i64 0, i32 1
  %0 = bitcast void (%struct.callback_head*)** %func1 to void (%struct.rq*)**
  %1 = load void (%struct.rq*)*, void (%struct.rq*)** %0, align 8
  %next2 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head.addr.011, i64 0, i32 0
  %2 = load %struct.callback_head*, %struct.callback_head** %next2, align 8
  store %struct.callback_head* null, %struct.callback_head** %next2, align 8
  call void %1(%struct.rq* noundef %rq) #23
  %tobool.not = icmp eq %struct.callback_head* %2, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.callback_head* @splice_balance_callbacks(%struct.rq* nocapture noundef %rq) unnamed_addr #6 {
entry:
  %balance_callback = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 25
  %0 = load %struct.callback_head*, %struct.callback_head** %balance_callback, align 64
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.callback_head* null, %struct.callback_head** %balance_callback, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.callback_head* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @normal_prio(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  %1 = load i32, i32* %rt_priority, align 16
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %2 = load i32, i32* %static_prio, align 8
  %sub = add i32 %2, -120
  %call = call fastcc i32 @__normal_prio(i32 noundef %0, i32 noundef %1, i32 noundef %sub) #22
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__normal_prio(i32 noundef %policy, i32 noundef %rt_prio, i32 noundef %nice) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @dl_policy(i32 noundef %policy) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %call1 = call fastcc i32 @rt_policy(i32 noundef %policy) #22
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  %sub = sub i32 99, %rt_prio
  br label %if.end5

if.else4:                                         ; preds = %if.else
  %add = add i32 %nice, 120
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then3, %if.else4
  %prio.0 = phi i32 [ %sub, %if.then3 ], [ %add, %if.else4 ], [ -1, %entry ]
  ret i32 %prio.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @valid_policy(i32 noundef %policy) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @idle_policy(i32 noundef %policy) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @fair_policy(i32 noundef %policy) #22
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @rt_policy(i32 noundef %policy) #22
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false3
  %call6 = call fastcc i32 @dl_policy(i32 noundef %policy) #22
  %tobool7 = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %entry
  %0 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool7, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__checkparam_dl(%struct.sched_attr* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fair_policy(i32 noundef %policy) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %policy, 0
  %cmp1 = icmp eq i32 %policy, 3
  %0 = or i1 %cmp, %cmp1
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dl_param_changed(%struct.task_struct* noundef, %struct.sched_attr* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_dl_overflow(%struct.task_struct* noundef, i32 noundef, %struct.sched_attr* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_effective_prio(%struct.task_struct* nocapture noundef readonly %p, i32 noundef %prio) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.task_struct* @rt_mutex_get_top_task(%struct.task_struct* noundef %p) #22
  %call1 = call fastcc i32 @__rt_effective_prio(%struct.task_struct* noundef %call, i32 noundef %prio) #22
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__setscheduler_params(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) unnamed_addr #0 {
entry:
  %sched_policy = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 1
  %0 = load i32, i32* %sched_policy, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %policy1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %1 = load i32, i32* %policy1, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %policy.0 = phi i32 [ %1, %if.then ], [ %0, %entry ]
  %policy2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  store i32 %policy.0, i32* %policy2, align 16
  %call = call fastcc i32 @dl_policy(i32 noundef %policy.0) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__setparam_dl(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) #23
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call4 = call fastcc i32 @fair_policy(i32 noundef %policy.0) #22
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.else
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  %2 = load i32, i32* %sched_nice, align 8
  %add = add i32 %2, 120
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  store i32 %add, i32* %static_prio, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6, %if.then3
  %sched_priority = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 4
  %3 = load i32, i32* %sched_priority, align 4
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  store i32 %3, i32* %rt_priority, align 16
  %call9 = call fastcc i32 @normal_prio(%struct.task_struct* noundef %p) #22
  %normal_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 17
  store i32 %call9, i32* %normal_prio, align 4
  call fastcc void @set_load_weight(%struct.task_struct* noundef %p, i1 noundef true) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_adjust_pi(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @balance_callbacks(%struct.rq* noundef %rq, %struct.callback_head* noundef %head) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.callback_head* %head, null
  br i1 %tobool.not, label %if.end, label %do.body, !prof !16

do.body:                                          ; preds = %entry
  %call = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) #22
  call fastcc void @do_balance_callbacks(%struct.rq* noundef %rq, %struct.callback_head* noundef nonnull %head) #22
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %call) #22
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.task_struct* @rt_mutex_get_top_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %pi_top_task = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 105
  %0 = load %struct.task_struct*, %struct.task_struct** %pi_top_task, align 8
  ret %struct.task_struct* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__setparam_dl(%struct.task_struct* noundef, %struct.sched_attr* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_setscheduler(i32 noundef %pid, i32 noundef %policy, %struct.sched_param* noundef %param) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %policy, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_sched_setscheduler(i32 noundef %pid, i32 noundef %policy, %struct.sched_param* noundef %param) #22
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_sched_setscheduler(i32 noundef %pid, i32 noundef %policy, %struct.sched_param* noundef %param) unnamed_addr #0 {
entry:
  %lparam = alloca %struct.sched_param, align 4
  %0 = bitcast %struct.sched_param* %lparam to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %lparam, i64 0, i32 0, !annotation !28
  store i32 0, i32* %1, align 4, !annotation !28
  %tobool = icmp eq %struct.sched_param* %param, null
  %cmp = icmp slt i32 %pid, 0
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sched_param* %param to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 4) #23
  %tobool2.not = icmp eq i64 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @__rcu_read_lock() #23
  %call5 = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool6.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool6.not, label %if.end22.critedge, label %if.then9, !prof !49

if.then9:                                         ; preds = %if.end4
  %call10 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %call5) #22
  call fastcc void @rcu_read_unlock() #22
  %call21 = call i32 @sched_setscheduler(%struct.task_struct* noundef nonnull %call5, i32 noundef %policy, %struct.sched_param* noundef nonnull %lparam) #22
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call5) #22
  br label %cleanup

if.end22.critedge:                                ; preds = %if.end4
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end22.critedge, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -14, %if.end ], [ %call21, %if.then9 ], [ -3, %if.end22.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #22
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !49

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #22
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !16

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #23
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_setparam(i32 noundef %pid, %struct.sched_param* noundef %param) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_sched_setscheduler(i32 noundef %pid, i32 noundef -1, %struct.sched_param* noundef %param) #22
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_setattr(i32 noundef %pid, %struct.sched_attr* noundef %uattr, i32 noundef %flags) unnamed_addr #0 {
entry:
  %attr = alloca %struct.sched_attr, align 8
  %0 = bitcast %struct.sched_attr* %attr to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !annotation !28
  %tobool = icmp eq %struct.sched_attr* %uattr, null
  %cmp = icmp slt i32 %pid, 0
  %or.cond = or i1 %cmp, %tobool
  %tobool3 = icmp ne i32 %flags, 0
  %or.cond42 = or i1 %or.cond, %tobool3
  br i1 %or.cond42, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @sched_copy_attr(%struct.sched_attr* noundef nonnull %uattr, %struct.sched_attr* noundef nonnull %attr) #22
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sched_policy = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 1
  %1 = load i32, i32* %sched_policy, align 4
  %cmp7 = icmp slt i32 %1, 0
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %2 = load i64, i64* %sched_flags, align 8
  %and = and i64 %2, 8
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  store i32 -1, i32* %sched_policy, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  call fastcc void @__rcu_read_lock() #23
  %call15 = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool16.not = icmp eq %struct.task_struct* %call15, null
  br i1 %tobool16.not, label %if.end38.critedge, label %if.then20, !prof !49

if.then20:                                        ; preds = %if.end14
  %call21 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %call15) #22
  call fastcc void @rcu_read_unlock() #22
  %3 = load i64, i64* %sched_flags, align 8
  %and33 = and i64 %3, 16
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then20
  call fastcc void @get_params(%struct.task_struct* noundef nonnull %call15, %struct.sched_attr* noundef nonnull %attr) #22
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then20
  %call37 = call i32 @sched_setattr(%struct.task_struct* noundef nonnull %call15, %struct.sched_attr* noundef nonnull %attr) #22
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call15) #22
  %phi.cast = sext i32 %call37 to i64
  br label %cleanup

if.end38.critedge:                                ; preds = %if.end14
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end38.critedge, %if.end6, %entry, %if.then5
  %retval.0 = phi i64 [ %conv, %if.then5 ], [ -22, %entry ], [ -22, %if.end6 ], [ %phi.cast, %if.end36 ], [ -3, %if.end38.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sched_copy_attr(%struct.sched_attr* noundef %uattr, %struct.sched_attr* noundef %attr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sched_attr* %attr to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 56) #23
  %1 = bitcast %struct.sched_attr* %uattr to i8*
  %call2 = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #22
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #22
  %2 = bitcast i8* %call3 to i32*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %2, i32 -14, i32 0) #21, !srcloc !129
  %asmresult = extractvalue { i32, i64 } %3, 0
  %asmresult7 = extractvalue { i32, i64 } %3, 1
  %conv = trunc i64 %asmresult7 to i32
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end
  %tobool16.not = icmp eq i32 %conv, 0
  %spec.store.select = select i1 %tobool16.not, i32 48, i32 %conv
  %4 = add i32 %spec.store.select, -4097
  %5 = icmp ult i32 %4, -4049
  br i1 %5, label %err_size, label %if.end24

if.end24:                                         ; preds = %if.end15
  %6 = icmp ult i32 %spec.store.select, 56
  %cond.i115 = select i1 %6, i32 %spec.store.select, i32 56
  %7 = zext i32 %cond.i115 to i64
  %narrow = select i1 %6, i32 56, i32 %spec.store.select
  %narrow116 = sub nuw nsw i32 %narrow, %cond.i115
  %sub.i = zext i32 %narrow116 to i64
  br i1 %6, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end24
  %add.ptr.i = getelementptr i8, i8* %0, i64 %7
  %call.i = call i8* @memset(i8* noundef %add.ptr.i, i32 noundef 0, i64 noundef %sub.i) #23
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end24
  %cmp.i.not = icmp eq i32 %spec.store.select, 56
  br i1 %cmp.i.not, label %if.end19.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  %add.ptr10.i = getelementptr i8, i8* %1, i64 %7
  %call11.i = call i32 @check_zeroed_user(i8* noundef %add.ptr10.i, i64 noundef %sub.i) #23
  %cmp12.i = icmp slt i32 %call11.i, 1
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %..i = select i1 %tobool.not.i, i32 -7, i32 %call11.i
  br i1 %cmp12.i, label %copy_struct_from_user.exit, label %if.end19.i

if.end19.i:                                       ; preds = %if.then9.i, %if.else.i, %if.then.i
  %call2.i.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef %7) #23
  %tobool21.not.i = icmp eq i64 %call2.i.i, 0
  br i1 %tobool21.not.i, label %if.end33, label %cleanup

copy_struct_from_user.exit:                       ; preds = %if.then9.i
  %cond114 = icmp eq i32 %..i, -7
  br i1 %cond114, label %err_size, label %cleanup

if.end33:                                         ; preds = %if.end19.i
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 2
  %8 = load i64, i64* %sched_flags, align 8
  %and = and i64 %8, 96
  %tobool34 = icmp ne i64 %and, 0
  %or.cond71 = select i1 %tobool34, i1 %6, i1 false
  br i1 %or.cond71, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end33
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  %9 = load i32, i32* %sched_nice, align 8
  %cmp40 = icmp sgt i32 %9, -20
  %cond = select i1 %cmp40, i32 %9, i32 -20
  %cmp43 = icmp slt i32 %cond, 19
  %cond48 = select i1 %cmp43, i32 %cond, i32 19
  store i32 %cond48, i32* %sched_nice, align 8
  br label %cleanup

err_size:                                         ; preds = %copy_struct_from_user.exit, %if.end15
  %call53 = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #22
  %tobool54.not = icmp eq i64 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.then55

if.then55:                                        ; preds = %err_size
  %call56 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #22
  %10 = bitcast i8* %call56 to i32*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 56, i32* %10, i32 -14, i32 0) #21, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %copy_struct_from_user.exit, %if.end19.i, %entry, %if.then55, %err_size, %if.end33, %if.end, %if.end38
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %asmresult, %if.end ], [ %..i, %copy_struct_from_user.exit ], [ -22, %if.end33 ], [ -7, %err_size ], [ -7, %if.then55 ], [ -14, %entry ], [ -14, %if.end19.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_params(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @task_has_dl_policy(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__getparam_dl(%struct.task_struct* noundef %p, %struct.sched_attr* noundef %attr) #23
  br label %if.end6

if.else:                                          ; preds = %entry
  %call1 = call fastcc i32 @task_has_rt_policy(%struct.task_struct* noundef %p) #22
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 18
  %0 = load i32, i32* %rt_priority, align 16
  %sched_priority = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 4
  store i32 %0, i32* %sched_priority, align 4
  br label %if.end6

if.else4:                                         ; preds = %if.else
  %call5 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #22
  %sched_nice = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %attr, i64 0, i32 3
  store i32 %call5, i32* %sched_nice, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__getparam_dl(%struct.task_struct* noundef, %struct.sched_attr* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_getscheduler(i32 noundef %pid) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %pid, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %sched_reset_on_fork = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 45
  %bf.load = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear = and i8 %bf.load, 1
  %1 = zext i8 %bf.clear to i32
  %2 = shl nuw nsw i32 %1, 30
  %or = or i32 %2, %0
  %phi.cast = sext i32 %or to i64
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end
  %retval1.0 = phi i64 [ %phi.cast, %if.then2 ], [ -3, %if.end ]
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i64 [ %retval1.0, %if.end8 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_getparam(i32 noundef %pid, %struct.sched_param* noundef %param) unnamed_addr #0 {
entry:
  %lp = alloca %struct.sched_param, align 4
  %0 = bitcast %struct.sched_param* %lp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %lp, i64 0, i32 0
  store i32 0, i32* %1, align 4
  %tobool = icmp eq %struct.sched_param* %param, null
  %cmp = icmp slt i32 %pid, 0
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool2.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool2.not, label %out_unlock, label %if.end4

if.end4:                                          ; preds = %if.end
  %call9 = call fastcc i32 @task_has_rt_policy(%struct.task_struct* noundef nonnull %call) #22
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end4
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 18
  %2 = load i32, i32* %rt_priority, align 16
  store i32 %2, i32* %1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end4
  call fastcc void @rcu_read_unlock() #22
  %3 = bitcast %struct.sched_param* %param to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef 4) #23
  %tobool14.not = icmp eq i64 %call2.i, 0
  %conv = select i1 %tobool14.not, i64 0, i64 -14
  br label %cleanup

out_unlock:                                       ; preds = %if.end
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock, %if.end12
  %retval.0 = phi i64 [ -3, %out_unlock ], [ %conv, %if.end12 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #22
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #22
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #23
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_getattr(i32 noundef %pid, %struct.sched_attr* noundef %uattr, i32 noundef %usize, i32 noundef %flags) unnamed_addr #0 {
entry:
  %kattr = alloca %struct.sched_attr, align 8
  %0 = bitcast %struct.sched_attr* %kattr to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %tobool = icmp eq %struct.sched_attr* %uattr, null
  %cmp = icmp slt i32 %pid, 0
  %or.cond = or i1 %cmp, %tobool
  %1 = add i32 %usize, -4097
  %2 = icmp ult i32 %1, -4049
  %3 = or i1 %or.cond, %2
  %tobool9 = icmp ne i32 %flags, 0
  %or.cond28 = or i1 %tobool9, %3
  br i1 %or.cond28, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool10.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool10.not, label %out_unlock, label %if.end12

if.end12:                                         ; preds = %if.end
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 23
  %4 = load i32, i32* %policy, align 16
  %sched_policy = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %kattr, i64 0, i32 1
  store i32 %4, i32* %sched_policy, align 4
  %sched_reset_on_fork = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 45
  %bf.load = load i8, i8* %sched_reset_on_fork, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool17.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end12
  %sched_flags = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %kattr, i64 0, i32 2
  store i64 1, i64* %sched_flags, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end12
  call fastcc void @get_params(%struct.task_struct* noundef nonnull %call, %struct.sched_attr* noundef nonnull %kattr) #22
  %sched_flags20 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %kattr, i64 0, i32 2
  %5 = load i64, i64* %sched_flags20, align 8
  %and = and i64 %5, 127
  store i64 %and, i64* %sched_flags20, align 8
  call fastcc void @rcu_read_unlock() #22
  %call21 = call fastcc i32 @sched_attr_copy_to_user(%struct.sched_attr* noundef nonnull %uattr, %struct.sched_attr* noundef nonnull %kattr, i32 noundef %usize) #22
  %conv22 = sext i32 %call21 to i64
  br label %cleanup

out_unlock:                                       ; preds = %if.end
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock, %if.end19
  %retval.0 = phi i64 [ -3, %out_unlock ], [ %conv22, %if.end19 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sched_attr_copy_to_user(%struct.sched_attr* noundef %uattr, %struct.sched_attr* noundef %kattr, i32 noundef %usize) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.sched_attr* %uattr to i8*
  %conv = zext i32 %usize to i64
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef %conv) #22
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i32 %usize, 56
  %cond = select i1 %cmp, i32 %usize, i32 56
  %size = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %kattr, i64 0, i32 0
  store i32 %cond, i32* %size, align 8
  %1 = bitcast %struct.sched_attr* %kattr to i8*
  %conv3 = zext i32 %cond to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef %1, i64 noundef %conv3) #23
  %tobool5.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #23
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #22
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #22
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #2 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setscheduler(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_setaffinity(i32 noundef %pid, i32 noundef %len, i64* noundef %user_mask_ptr) unnamed_addr #0 {
entry:
  %new_mask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %new_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !28
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %new_mask, i64 0, i64 0
  %call2 = call fastcc i32 @get_user_cpu_mask(i64* noundef %user_mask_ptr, i32 noundef %len, %struct.cpumask* noundef nonnull %arraydecay) #22
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %entry
  %call5 = call i64 @sched_setaffinity(i32 noundef %pid, %struct.cpumask* noundef nonnull %arraydecay) #22
  %conv = trunc i64 %call5 to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry
  %retval1.0 = phi i32 [ %conv, %if.then3 ], [ %call2, %entry ]
  %conv8 = sext i32 %retval1.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i64 %conv8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_user_cpu_mask(i64* noundef %user_mask_ptr, i32 noundef %len, %struct.cpumask* noundef %new_mask) unnamed_addr #0 {
entry:
  %cmp = icmp ult i32 %len, 32
  br i1 %cmp, label %if.then, label %copy_from_user.exit

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %new_mask) #22
  %phi.cast = zext i32 %len to i64
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %entry, %if.then
  %len.addr.0 = phi i64 [ %phi.cast, %if.then ], [ 32, %entry ]
  %0 = bitcast %struct.cpumask* %new_mask to i8*
  %1 = bitcast i64* %user_mask_ptr to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef %len.addr.0) #23
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #23
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_getaffinity(i32 noundef %pid, i32 noundef %len, i64* noundef %user_mask_ptr) unnamed_addr #0 {
entry:
  %mask = alloca [1 x %struct.cpumask], align 8
  %0 = bitcast [1 x %struct.cpumask]* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !28
  %mul = shl i32 %len, 3
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp uge i32 %mul, %1
  %2 = and i32 %len, 7
  %tobool.not = icmp eq i32 %2, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end2, label %cleanup

if.end2:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  %call5 = call i64 @sched_getaffinity(i32 noundef %pid, %struct.cpumask* noundef nonnull %arraydecay) #22
  %conv6 = trunc i64 %call5 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end2
  %cmp11 = icmp ult i32 %len, 32
  %cond = select i1 %cmp11, i32 %len, i32 32
  %3 = bitcast i64* %user_mask_ptr to i8*
  %conv14 = zext i32 %cond to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef %conv14) #23
  %tobool16.not = icmp eq i64 %call2.i, 0
  %cond. = select i1 %tobool16.not, i32 %cond, i32 -14
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.end2
  %ret.1 = phi i32 [ %cond., %if.then9 ], [ %conv6, %if.end2 ]
  %conv21 = sext i32 %ret.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end19
  %retval.0 = phi i64 [ %conv21, %if.end19 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #21
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rq* @this_rq_lock_irq(%struct.rq_flags* nocapture noundef readnone %rf) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #22
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %0 = inttoptr i64 %add to %struct.rq*
  call fastcc void @rq_lock(%struct.rq* noundef %0, %struct.rq_flags* noundef %rf) #22
  ret %struct.rq* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_unlock_irq(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call fastcc void @raw_spin_rq_unlock_irq(%struct.rq* noundef %rq) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %cnts) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #21, !srcloc !131
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %cnts1) #23
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef %lock) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #21, !srcloc !132
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %wlocked = bitcast %struct.qrwlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %wlocked, i8 0) #21, !srcloc !133
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock(%struct.qrwlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 255) #23
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef %lock) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_plug_list(%struct.blk_plug* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__do_sys_sched_get_priority_max(i32 noundef %policy) unnamed_addr #2 {
entry:
  %0 = icmp ult i32 %policy, 7
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %policy to i64
  %switch.gep = getelementptr inbounds [7 x i64], [7 x i64]* @switch.table.__do_sys_sched_get_priority_max, i64 0, i64 %1
  %switch.load = load i64, i64* %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  %ret.0 = phi i64 [ -22, %entry ], [ %switch.load, %switch.lookup ]
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__do_sys_sched_get_priority_min(i32 noundef %policy) unnamed_addr #2 {
entry:
  %0 = icmp ult i32 %policy, 7
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %policy to i64
  %switch.gep = getelementptr inbounds [7 x i64], [7 x i64]* @switch.table.__do_sys_sched_get_priority_min, i64 0, i64 %1
  %switch.load = load i64, i64* %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  %ret.0 = phi i64 [ -22, %entry ], [ %switch.load, %switch.lookup ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sched_rr_get_interval(i32 noundef %pid, %struct.__kernel_timespec* noundef %interval) unnamed_addr #0 {
entry:
  %t = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !28
  %call = call fastcc i32 @sched_rr_get_interval(i32 noundef %pid, %struct.timespec64* noundef nonnull %t) #22
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @put_timespec64(%struct.timespec64* noundef nonnull %t, %struct.__kernel_timespec* noundef %interval) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %retval1.0 = phi i32 [ %call2, %if.then ], [ %call, %entry ]
  %conv = sext i32 %retval1.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #21
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sched_rr_get_interval(i32 noundef %pid, %struct.timespec64* noundef %t) unnamed_addr #0 {
entry:
  %rf = alloca %struct.rq_flags, align 8
  %0 = bitcast %struct.rq_flags* %rf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #21
  %1 = getelementptr inbounds %struct.rq_flags, %struct.rq_flags* %rf, i64 0, i32 0, !annotation !28
  store i64 0, i64* %1, align 8, !annotation !28
  %cmp = icmp slt i32 %pid, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #23
  %call = call fastcc %struct.task_struct* @find_process_by_pid(i32 noundef %pid) #22
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.end3

if.end3:                                          ; preds = %if.end
  %call8 = call %struct.rq* @task_rq_lock(%struct.task_struct* noundef nonnull %call, %struct.rq_flags* noundef nonnull %rf) #22
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 19
  %2 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %get_rr_interval = getelementptr inbounds %struct.sched_class, %struct.sched_class* %2, i64 0, i32 23
  %3 = load i32 (%struct.rq*, %struct.task_struct*)*, i32 (%struct.rq*, %struct.task_struct*)** %get_rr_interval, align 8
  %tobool9.not = icmp eq i32 (%struct.rq*, %struct.task_struct*)* %3, null
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end3
  %call13 = call i32 %3(%struct.rq* noundef %call8, %struct.task_struct* noundef nonnull %call) #23
  %phi.cast = zext i32 %call13 to i64
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end3
  %time_slice.0 = phi i64 [ %phi.cast, %if.then10 ], [ 0, %if.end3 ]
  call fastcc void @task_rq_unlock(%struct.rq* noundef %call8, %struct.task_struct* noundef nonnull %call, %struct.rq_flags* noundef nonnull %rf) #22
  call fastcc void @rcu_read_unlock() #22
  call void @jiffies_to_timespec64(i64 noundef %time_slice.0, %struct.timespec64* noundef %t) #23
  br label %cleanup

out_unlock:                                       ; preds = %if.end
  call fastcc void @rcu_read_unlock() #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock, %if.end14
  %retval.0 = phi i32 [ -3, %out_unlock ], [ 0, %if.end14 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i64 noundef, %struct.timespec64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #22
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #23
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !16

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !16

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #23
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @task_index_to_char(i32 noundef %state) unnamed_addr #2 {
entry:
  %idxprom = zext i32 %state to i64
  %arrayidx = getelementptr [10 x i8], [10 x i8]* @task_index_to_char.state_char, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_state_index(%struct.task_struct* noundef %tsk) unnamed_addr #16 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 39
  %1 = load i32, i32* %exit_state, align 4
  %or = or i32 %1, %0
  %and = and i32 %or, 127
  %cmp = icmp eq i32 %0, 1026
  %spec.store.select = select i1 %cmp, i32 128, i32 %and
  %tobool.not.i = icmp eq i32 %spec.store.select, 0
  %2 = call i32 @llvm.ctlz.i32(i32 %spec.store.select, i1 false) #21, !range !134
  %narrow.i = sub nuw nsw i32 32, %2
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  ret i32 %narrow3.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #23
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @partition_sched_domains(i32 noundef, [1 x %struct.cpumask]* noundef, %struct.sched_domain_attr* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuset_update_active_cpus() unnamed_addr #0 {
entry:
  call void @partition_sched_domains(i32 noundef 1, [1 x %struct.cpumask]* noundef null, %struct.sched_domain_attr* noundef null) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dl_cpu_busy(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_max_interval() local_unnamed_addr #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { noinline nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nobuiltin "no-builtins" }
attributes #23 = { nobuiltin nounwind "no-builtins" }
attributes #24 = { nounwind readonly }
attributes #25 = { nounwind readnone }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #28 = { cold nobuiltin "no-builtins" }
attributes #29 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 2157496561}
!9 = !{i64 2157496733}
!10 = !{i64 2149985434}
!11 = !{i64 2149992715}
!12 = !{i64 2157497046}
!13 = !{i64 2157497236}
!14 = !{i64 2149965892}
!15 = !{i64 2149969949}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2112748}
!18 = !{i64 2149970433}
!19 = !{i64 2149996276}
!20 = !{i64 2157503610}
!21 = !{i64 2149367558, i64 2149367605, i64 2149367611, i64 2149367648, i64 2149367666, i64 2149368593, i64 2149368641, i64 2149368689, i64 2149368752, i64 2149368801, i64 2149367744, i64 2149367769, i64 2149367795, i64 2149367801, i64 2149367838, i64 2149367844, i64 2149367894, i64 2149367940, i64 2149367973}
!22 = !{i64 503960}
!23 = !{i64 2157512643}
!24 = !{i64 2157513428}
!25 = !{i64 2157513587}
!26 = !{i64 2157513630}
!27 = !{i64 2157514415}
!28 = !{!"auto-init"}
!29 = !{i64 2149974726}
!30 = !{i64 2149999579}
!31 = !{i64 2157538643}
!32 = !{i64 2157387503}
!33 = !{i64 2157549146}
!34 = !{i64 2157549211}
!35 = !{i64 2157550026}
!36 = !{i64 2157587046}
!37 = !{i64 2157589020}
!38 = !{i64 2157596974}
!39 = !{i64 2157636365}
!40 = !{i64 2157617352}
!41 = !{i64 2157619514}
!42 = !{i64 2157619584}
!43 = !{i64 2157622137}
!44 = !{i64 2157624551}
!45 = !{i64 2157628788}
!46 = !{i64 2157632569}
!47 = !{i64 2157656374}
!48 = !{i64 2157658964, i64 2157659002, i64 2157659019, i64 2157659053, i64 2157659075, i64 2157659101, i64 2157659119, i64 2157659277, i64 2157659318, i64 2157659340, i64 2157659386}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2157653063}
!51 = !{i64 4659048, i64 4659131, i64 4659355, i64 4659575, i64 4659598}
!52 = !{i64 4663750, i64 4663774}
!53 = !{i64 2152216534}
!54 = !{i64 2157519683}
!55 = !{i64 2157522316}
!56 = !{i64 2157691384}
!57 = !{i64 2157680629}
!58 = !{i64 2157660913}
!59 = !{i64 2157694921}
!60 = !{i64 2157694973}
!61 = !{i64 2157694675}
!62 = !{i64 2157694734}
!63 = !{i64 2157696526}
!64 = !{i64 2157696960}
!65 = !{i64 2157697008}
!66 = !{i64 2157699657}
!67 = !{i64 2157700014}
!68 = !{i64 2157700198}
!69 = !{i64 2149232243, i64 2149232290, i64 2149232296, i64 2149232333, i64 2149232351, i64 2149233662, i64 2149233710, i64 2149233758, i64 2149233821, i64 2149233870, i64 2149232429, i64 2149232454, i64 2149232480, i64 2149232486, i64 2149233328, i64 2149233368, i64 2149233386, i64 2149233418, i64 2149233446, i64 2149233500, i64 2149233520, i64 2149233617, i64 2149232509, i64 2149232523, i64 2149232529, i64 2149232579, i64 2149232625, i64 2149232658}
!70 = !{i64 2149234422, i64 2149234469, i64 2149234475, i64 2149234512, i64 2149234530, i64 2149235473, i64 2149235521, i64 2149235569, i64 2149235632, i64 2149235681, i64 2149234608, i64 2149234633, i64 2149234659, i64 2149234665, i64 2149234702, i64 2149234708, i64 2149234758, i64 2149234804, i64 2149234837}
!71 = !{i64 2149217084, i64 2149217131, i64 2149217137, i64 2149217174, i64 2149217192, i64 2149218532, i64 2149218580, i64 2149218628, i64 2149218691, i64 2149218740, i64 2149217270, i64 2149217295, i64 2149217321, i64 2149217327, i64 2149218198, i64 2149218238, i64 2149218256, i64 2149218288, i64 2149218316, i64 2149218370, i64 2149218390, i64 2149218487, i64 2149217350, i64 2149217364, i64 2149217370, i64 2149217420, i64 2149217466, i64 2149217499}
!72 = !{i64 2149226540, i64 2149226587, i64 2149226593, i64 2149226630, i64 2149226648, i64 2149227989, i64 2149228037, i64 2149228085, i64 2149228148, i64 2149228197, i64 2149226726, i64 2149226751, i64 2149226777, i64 2149226783, i64 2149227655, i64 2149227695, i64 2149227713, i64 2149227745, i64 2149227773, i64 2149227827, i64 2149227847, i64 2149227944, i64 2149226806, i64 2149226820, i64 2149226826, i64 2149226876, i64 2149226922, i64 2149226955}
!73 = !{i64 2157709941}
!74 = !{i64 2157711543}
!75 = !{i64 2157711900}
!76 = !{i64 2157711948}
!77 = !{i64 2157403569}
!78 = !{i64 2157722917}
!79 = !{i64 2157723936}
!80 = !{i64 2157723984}
!81 = !{i64 2157725643}
!82 = !{i64 2157727452}
!83 = !{i64 2157729262}
!84 = !{i64 2157836471}
!85 = !{i64 2157836519}
!86 = !{i64 2157697177}
!87 = !{i64 2157697229}
!88 = !{i64 2150092958}
!89 = !{i64 2150038004}
!90 = !{i64 2150089593}
!91 = !{i64 2150082057}
!92 = !{i64 2157840382}
!93 = !{i64 2149238256, i64 2149238303, i64 2149238309, i64 2149238346, i64 2149238364, i64 2149239675, i64 2149239723, i64 2149239771, i64 2149239834, i64 2149239883, i64 2149238442, i64 2149238467, i64 2149238493, i64 2149238499, i64 2149239341, i64 2149239381, i64 2149239399, i64 2149239431, i64 2149239459, i64 2149239513, i64 2149239533, i64 2149239630, i64 2149238522, i64 2149238536, i64 2149238542, i64 2149238592, i64 2149238638, i64 2149238671}
!94 = !{i64 2157936828}
!95 = !{i8 0, i8 2}
!96 = !{i64 2157944675}
!97 = !{i64 2157950990}
!98 = !{i64 2157953345}
!99 = !{i64 2157960462}
!100 = !{i64 2157961888}
!101 = !{i64 -1, i64 2147483647001}
!102 = !{i64 2148272399, i64 2148272432, i64 2148272485, i64 2148272544, i64 2148272578, i64 2148272633, i64 2148272662, i64 2148272682}
!103 = !{i64 2149939563}
!104 = !{i64 2148265861, i64 2148265894, i64 2148265946, i64 2148266005, i64 2148266039, i64 2148266094, i64 2148266123, i64 2148266143}
!105 = !{i64 2148267479, i64 2148267512, i64 2148267563, i64 2148267619, i64 2148267652, i64 2148267706, i64 2148267735, i64 2148267755}
!106 = !{i64 2148182501, i64 2148183165, i64 2148183195, i64 2148183227, i64 2148183261, i64 2148183296, i64 2148183321}
!107 = !{i64 2150144739}
!108 = !{i64 2148194283, i64 2148194957, i64 2148194987, i64 2148195019, i64 2148195053, i64 2148195089, i64 2148195114}
!109 = !{i64 2148245617, i64 2148246128, i64 2148246158, i64 2148246184, i64 2148246216, i64 2148246245}
!110 = !{i64 2157535899}
!111 = !{i64 2157528317}
!112 = !{i64 2157533953}
!113 = !{i64 2157516885}
!114 = !{i64 2148339223, i64 2148339243, i64 2148339261, i64 2148339304, i64 2148339357, i64 2148339390, i64 2148339408}
!115 = !{i64 2148186258, i64 2148186774, i64 2148186804, i64 2148186831, i64 2148186865, i64 2148186895}
!116 = !{i64 2149740945}
!117 = !{i64 2149741162}
!118 = !{i64 2157610887}
!119 = !{i64 2157551510}
!120 = !{i64 2157644568}
!121 = !{i64 2148187110, i64 2148187758, i64 2148187788, i64 2148187820, i64 2148187854, i64 2148187890, i64 2148187915}
!122 = !{i64 2110073}
!123 = !{i64 2148176537, i64 2148177053, i64 2148177083, i64 2148177110, i64 2148177144, i64 2148177174}
!124 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!125 = !{i64 2157677795}
!126 = !{i64 2148256187, i64 2148256708, i64 2148256738, i64 2148256764, i64 2148256796, i64 2148256825}
!127 = !{i64 2155197401}
!128 = !{i64 2155197547}
!129 = !{i64 2157732264, i64 2157732301, i64 2157732318, i64 2157732353, i64 2157732375, i64 2157732401, i64 2157732424, i64 2157732442, i64 2157732601, i64 2157732642, i64 2157732664, i64 2157732710}
!130 = !{i64 2157746923, i64 2157746961, i64 2157746978, i64 2157747012, i64 2157747034, i64 2157747060, i64 2157747078, i64 2157747236, i64 2157747277, i64 2157747299, i64 2157747345}
!131 = !{i64 2148190169, i64 2148190835, i64 2148190865, i64 2148190897, i64 2148190931, i64 2148190967, i64 2148190992}
!132 = !{i64 2148179421, i64 2148180087, i64 2148180117, i64 2148180150, i64 2148180184, i64 2148180219, i64 2148180244}
!133 = !{i64 2149949221}
!134 = !{i32 0, i32 33}
