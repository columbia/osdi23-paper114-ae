; ModuleID = 'kernel/sched/pelt.c'
source_filename = "kernel/sched/pelt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sched_statistics = type {}
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i64, i64, %struct.rb_root_cached, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, [32 x i8], %struct.sched_avg, %struct.anon }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.anon = type { %struct.raw_spinlock, i32, i64, i64, i64, [32 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
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
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type opaque

@runnable_avg_yN_inv = internal unnamed_addr constant [32 x i32] [i32 -1, i32 -92032294, i32 -182092524, i32 -270222950, i32 -356464922, i32 -440858906, i32 -523444501, i32 -604260458, i32 -683344695, i32 -760734319, i32 -836465644, i32 -910574203, i32 -983094768, i32 -1054061367, i32 -1123507298, i32 -1191465146, i32 -1257966797, i32 -1323043455, i32 -1386725655, i32 -1449043276, i32 -1510025559, i32 -1569701118, i32 -1628097953, i32 -1685243463, i32 -1741164464, i32 -1795887192, i32 -1849437325, i32 -1901839990, i32 -1953119773, i32 -2003300736, i32 -2052406425, i32 -2100459880], align 4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @__update_load_avg_blocked_se(i64 noundef %now, %struct.sched_entity* noundef %se) local_unnamed_addr #0 {
entry:
  %avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11
  %last_update_time.i = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 0
  %0 = load i64, i64* %last_update_time.i, align 64
  %sub.i = sub i64 %now, %0
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i64 %now, i64* %last_update_time.i, align 64
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shr.i = lshr i64 %sub.i, 10
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %0
  store i64 %add.i, i64* %last_update_time.i, align 64
  %period_contrib.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 4
  %1 = load i32, i32* %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %1 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %2 = load i64, i64* %load_sum.i.i, align 8
  %call.i.i = call fastcc i64 @decay_load(i64 noundef %2, i64 noundef %div.i.i) #7
  store i64 %call.i.i, i64* %load_sum.i.i, align 8
  %runnable_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  %3 = load i64, i64* %runnable_sum.i.i, align 16
  %call3.i.i = call fastcc i64 @decay_load(i64 noundef %3, i64 noundef %div.i.i) #7
  store i64 %call3.i.i, i64* %runnable_sum.i.i, align 16
  %util_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  %4 = load i32, i32* %util_sum.i.i, align 8
  %conv5.i.i = zext i32 %4 to i64
  %call6.i.i = call fastcc i64 @decay_load(i64 noundef %conv5.i.i, i64 noundef %div.i.i) #7
  %conv7.i.i = trunc i64 %call6.i.i to i32
  store i32 %conv7.i.i, i32* %util_sum.i.i, align 8
  %5 = trunc i64 %add.i.i to i32
  %conv1567.i.i = and i32 %5, 1023
  br label %___update_load_sum.exit

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv15.i.i = trunc i64 %add.i.i to i32
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.then.i.i, %if.end14.i.i
  %storemerge = phi i32 [ %conv1567.i.i, %if.then.i.i ], [ %conv15.i.i, %if.end14.i.i ]
  store i32 %storemerge, i32* %period_contrib.i.i, align 4
  %conv36.i.i = trunc i64 %div.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %call2 = call fastcc i64 @se_weight(%struct.sched_entity* noundef %se) #8
  %call.i = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #7
  %load_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %6 = load i64, i64* %load_sum.i, align 8
  %mul.i = mul i64 %6, %call2
  %call1.i = call fastcc i64 @div_u64(i64 noundef %mul.i, i32 noundef %call.i) #7
  %load_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  store i64 %call1.i, i64* %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  %7 = load i64, i64* %runnable_sum.i, align 16
  %call2.i = call fastcc i64 @div_u64(i64 noundef %7, i32 noundef %call.i) #7
  %runnable_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 6
  store i64 %call2.i, i64* %runnable_avg.i, align 8
  %util_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  %8 = load i32, i32* %util_sum.i, align 8
  %div.i = udiv i32 %8, %call.i
  %conv.i = zext i32 %div.i to i64
  %util_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 7
  store volatile i64 %conv.i, i64* %util_avg.i, align 16
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %___update_load_sum.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @se_weight(%struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #1 {
entry:
  %weight = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  %tobool.not = icmp eq i64 %0, 0
  %shr = lshr i64 %0, 10
  %1 = icmp ugt i64 %shr, 2
  %cond = select i1 %1, i64 %shr, i64 2
  %__w.0 = select i1 %tobool.not, i64 0, i64 %cond
  ret i64 %__w.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @__update_load_avg_se(i64 noundef %now, %struct.cfs_rq* nocapture noundef readonly %cfs_rq, %struct.sched_entity* noundef %se) local_unnamed_addr #0 {
entry:
  %avg = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool.not = icmp eq i32 %0, 0
  %call = call fastcc i64 @se_runnable(%struct.sched_entity* noundef %se) #8, !range !7
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %1 = load %struct.sched_entity*, %struct.sched_entity** %curr, align 64
  %cmp = icmp ne %struct.sched_entity* %1, %se
  %last_update_time.i = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 0
  %2 = load i64, i64* %last_update_time.i, align 64
  %sub.i = sub i64 %now, %2
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i64 %now, i64* %last_update_time.i, align 64
  br label %return

if.end.i:                                         ; preds = %entry
  %shr.i = lshr i64 %sub.i, 10
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %2
  store i64 %add.i, i64* %last_update_time.i, align 64
  %spec.select.i = select i1 %tobool.not, i64 0, i64 %call
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 4
  %3 = load i32, i32* %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %3 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %4 = load i64, i64* %load_sum.i.i, align 8
  %call.i.i = call fastcc i64 @decay_load(i64 noundef %4, i64 noundef %div.i.i) #7
  store i64 %call.i.i, i64* %load_sum.i.i, align 8
  %runnable_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  %5 = load i64, i64* %runnable_sum.i.i, align 16
  %call3.i.i = call fastcc i64 @decay_load(i64 noundef %5, i64 noundef %div.i.i) #7
  store i64 %call3.i.i, i64* %runnable_sum.i.i, align 16
  %util_sum.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  %6 = load i32, i32* %util_sum.i.i, align 8
  %conv5.i.i = zext i32 %6 to i64
  %call6.i.i = call fastcc i64 @decay_load(i64 noundef %conv5.i.i, i64 noundef %div.i.i) #7
  %conv7.i.i = trunc i64 %call6.i.i to i32
  store i32 %conv7.i.i, i32* %util_sum.i.i, align 8
  %rem.i.i = and i64 %add.i.i, 1023
  br i1 %tobool.not, label %if.end14.thread.i.i, label %if.end14.thread71.i.i

if.end14.thread.i.i:                              ; preds = %if.then.i.i
  %conv1567.i.i = trunc i64 %rem.i.i to i32
  store i32 %conv1567.i.i, i32* %period_contrib.i.i, align 4
  br label %if.end22.i.i

if.end14.thread71.i.i:                            ; preds = %if.then.i.i
  %sub.i.i = sub i32 1024, %3
  %conv12.i.i = trunc i64 %rem.i.i to i32
  %call13.i.i = call fastcc i32 @__accumulate_pelt_segments(i64 noundef %div.i.i, i32 noundef %sub.i.i, i32 noundef %conv12.i.i) #7
  store i32 %conv12.i.i, i32* %period_contrib.i.i, align 4
  br label %if.then18.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv15.i.i = trunc i64 %add.i.i to i32
  store i32 %conv15.i.i, i32* %period_contrib.i.i, align 4
  br i1 %tobool.not, label %if.end22.i.i, label %if.end14.if.then18_crit_edge.i.i

if.end14.if.then18_crit_edge.i.i:                 ; preds = %if.end14.i.i
  %load_sum20.phi.trans.insert.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %.pre.i.i = load i64, i64* %load_sum20.phi.trans.insert.i.i, align 8
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end14.if.then18_crit_edge.i.i, %if.end14.thread71.i.i
  %7 = phi i64 [ %call.i.i, %if.end14.thread71.i.i ], [ %.pre.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %contrib.076.i.i = phi i32 [ %call13.i.i, %if.end14.thread71.i.i ], [ %conv.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %mul.i.i = zext i32 %contrib.076.i.i to i64
  %load_sum20.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %add21.i.i = add i64 %7, %mul.i.i
  store i64 %add21.i.i, i64* %load_sum20.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %contrib.069.i.i = phi i32 [ %conv.i.i, %if.end14.thread.i.i ], [ %contrib.076.i.i, %if.then18.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %tobool23.not.i.i = icmp eq i64 %spec.select.i, 0
  br i1 %tobool23.not.i.i, label %if.end29.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %conv25.i.i = zext i32 %contrib.069.i.i to i64
  %mul26.i.i = shl nuw nsw i64 %spec.select.i, 10
  %shl.i.i = mul nuw nsw i64 %mul26.i.i, %conv25.i.i
  %runnable_sum27.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  %8 = load i64, i64* %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %8, %shl.i.i
  store i64 %add28.i.i, i64* %runnable_sum27.i.i, align 16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i
  %tobool30.not.i.i = or i1 %tobool.not, %cmp
  br i1 %tobool30.not.i.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %shl32.i.i = shl i32 %contrib.069.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  %9 = load i32, i32* %util_sum33.i.i, align 8
  %add34.i.i = add i32 %9, %shl32.i.i
  store i32 %add34.i.i, i32* %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end29.i.i, %if.then31.i.i
  %conv36.i.i = trunc i64 %div.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %call6 = call fastcc i64 @se_weight(%struct.sched_entity* noundef %se) #8
  %call.i = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #7
  %load_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 1
  %10 = load i64, i64* %load_sum.i, align 8
  %mul.i = mul i64 %10, %call6
  %call1.i = call fastcc i64 @div_u64(i64 noundef %mul.i, i32 noundef %call.i) #7
  %load_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 5
  store i64 %call1.i, i64* %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 2
  %11 = load i64, i64* %runnable_sum.i, align 16
  %call2.i = call fastcc i64 @div_u64(i64 noundef %11, i32 noundef %call.i) #7
  %runnable_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 6
  store i64 %call2.i, i64* %runnable_avg.i, align 8
  %util_sum.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 3
  %12 = load i32, i32* %util_sum.i, align 8
  %div.i = udiv i32 %12, %call.i
  %conv.i = zext i32 %div.i to i64
  %util_avg.i = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 11, i32 7
  store volatile i64 %conv.i, i64* %util_avg.i, align 16
  call fastcc void @cfs_se_util_change(%struct.sched_avg* noundef %avg) #8
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %___update_load_sum.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @se_runnable(%struct.sched_entity* nocapture noundef readonly %se) unnamed_addr #1 {
entry:
  %on_rq = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %se, i64 0, i32 3
  %0 = load i32, i32* %on_rq, align 8
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  ret i64 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @cfs_se_util_change(%struct.sched_avg* noundef %avg) unnamed_addr #2 {
entry:
  %enqueued1 = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 8, i32 0
  %0 = load i32, i32* %enqueued1, align 8
  %tobool.not = icmp sgt i32 %0, -1
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 2147483647
  store volatile i32 %and2, i32* %enqueued1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @__update_load_avg_cfs_rq(i64 noundef %now, %struct.cfs_rq* noundef %cfs_rq) local_unnamed_addr #0 {
entry:
  %avg = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12
  %weight = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 0, i32 0
  %0 = load i64, i64* %weight, align 64
  %tobool.not = icmp eq i64 %0, 0
  %shr = lshr i64 %0, 10
  %1 = icmp ugt i64 %shr, 2
  %cond = select i1 %1, i64 %shr, i64 2
  %__w.0 = select i1 %tobool.not, i64 0, i64 %cond
  %h_nr_running = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 2
  %2 = load i32, i32* %h_nr_running, align 4
  %conv = zext i32 %2 to i64
  %curr = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 7
  %3 = load %struct.sched_entity*, %struct.sched_entity** %curr, align 64
  %cmp2.not = icmp eq %struct.sched_entity* %3, null
  %last_update_time.i = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 0
  %4 = load i64, i64* %last_update_time.i, align 64
  %sub.i = sub i64 %now, %4
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i64 %now, i64* %last_update_time.i, align 64
  br label %return

if.end.i:                                         ; preds = %entry
  %shr.i = lshr i64 %sub.i, 10
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %4
  store i64 %add.i, i64* %last_update_time.i, align 64
  %spec.select.i = select i1 %tobool.not, i64 0, i64 %conv
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 4
  %5 = load i32, i32* %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %5 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  %6 = load i64, i64* %load_sum.i.i, align 8
  %call.i.i = call fastcc i64 @decay_load(i64 noundef %6, i64 noundef %div.i.i) #7
  store i64 %call.i.i, i64* %load_sum.i.i, align 8
  %runnable_sum.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  %7 = load i64, i64* %runnable_sum.i.i, align 16
  %call3.i.i = call fastcc i64 @decay_load(i64 noundef %7, i64 noundef %div.i.i) #7
  store i64 %call3.i.i, i64* %runnable_sum.i.i, align 16
  %util_sum.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  %8 = load i32, i32* %util_sum.i.i, align 8
  %conv5.i.i = zext i32 %8 to i64
  %call6.i.i = call fastcc i64 @decay_load(i64 noundef %conv5.i.i, i64 noundef %div.i.i) #7
  %conv7.i.i = trunc i64 %call6.i.i to i32
  store i32 %conv7.i.i, i32* %util_sum.i.i, align 8
  %rem.i.i = and i64 %add.i.i, 1023
  br i1 %tobool.not, label %if.end14.thread.i.i, label %if.end14.thread71.i.i

if.end14.thread.i.i:                              ; preds = %if.then.i.i
  %conv1567.i.i = trunc i64 %rem.i.i to i32
  store i32 %conv1567.i.i, i32* %period_contrib.i.i, align 4
  br label %if.end22.i.i

if.end14.thread71.i.i:                            ; preds = %if.then.i.i
  %sub.i.i = sub i32 1024, %5
  %conv12.i.i = trunc i64 %rem.i.i to i32
  %call13.i.i = call fastcc i32 @__accumulate_pelt_segments(i64 noundef %div.i.i, i32 noundef %sub.i.i, i32 noundef %conv12.i.i) #7
  store i32 %conv12.i.i, i32* %period_contrib.i.i, align 4
  br label %if.then18.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv15.i.i = trunc i64 %add.i.i to i32
  store i32 %conv15.i.i, i32* %period_contrib.i.i, align 4
  br i1 %tobool.not, label %if.end22.i.i, label %if.end14.if.then18_crit_edge.i.i

if.end14.if.then18_crit_edge.i.i:                 ; preds = %if.end14.i.i
  %load_sum20.phi.trans.insert.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  %.pre.i.i = load i64, i64* %load_sum20.phi.trans.insert.i.i, align 8
  br label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end14.if.then18_crit_edge.i.i, %if.end14.thread71.i.i
  %9 = phi i64 [ %call.i.i, %if.end14.thread71.i.i ], [ %.pre.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %contrib.076.i.i = phi i32 [ %call13.i.i, %if.end14.thread71.i.i ], [ %conv.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %conv19.i.i = zext i32 %contrib.076.i.i to i64
  %mul.i.i = mul i64 %__w.0, %conv19.i.i
  %load_sum20.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  %add21.i.i = add i64 %mul.i.i, %9
  store i64 %add21.i.i, i64* %load_sum20.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i, %if.end14.thread.i.i
  %contrib.069.i.i = phi i32 [ %conv.i.i, %if.end14.thread.i.i ], [ %contrib.076.i.i, %if.then18.i.i ], [ %conv.i.i, %if.end14.i.i ]
  %tobool23.not.i.i = icmp eq i64 %spec.select.i, 0
  br i1 %tobool23.not.i.i, label %if.end29.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  %conv25.i.i = zext i32 %contrib.069.i.i to i64
  %mul26.i.i = shl nuw nsw i64 %spec.select.i, 10
  %shl.i.i = mul i64 %mul26.i.i, %conv25.i.i
  %runnable_sum27.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  %10 = load i64, i64* %runnable_sum27.i.i, align 16
  %add28.i.i = add i64 %10, %shl.i.i
  store i64 %add28.i.i, i64* %runnable_sum27.i.i, align 16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then24.i.i, %if.end22.i.i
  %tobool30.not.i.i = or i1 %tobool.not, %cmp2.not
  br i1 %tobool30.not.i.i, label %___update_load_sum.exit, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %shl32.i.i = shl i32 %contrib.069.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  %11 = load i32, i32* %util_sum33.i.i, align 8
  %add34.i.i = add i32 %11, %shl32.i.i
  store i32 %add34.i.i, i32* %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end29.i.i, %if.then31.i.i
  %conv36.i.i = trunc i64 %div.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then5

if.then5:                                         ; preds = %___update_load_sum.exit
  %call.i = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg) #7
  %load_sum.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 1
  %12 = load i64, i64* %load_sum.i, align 8
  %call1.i = call fastcc i64 @div_u64(i64 noundef %12, i32 noundef %call.i) #7
  %load_avg.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 5
  store i64 %call1.i, i64* %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 2
  %13 = load i64, i64* %runnable_sum.i, align 16
  %call2.i = call fastcc i64 @div_u64(i64 noundef %13, i32 noundef %call.i) #7
  %runnable_avg.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 6
  store i64 %call2.i, i64* %runnable_avg.i, align 8
  %util_sum.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 3
  %14 = load i32, i32* %util_sum.i, align 8
  %div.i = udiv i32 %14, %call.i
  %conv.i = zext i32 %div.i to i64
  %util_avg.i = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %cfs_rq, i64 0, i32 12, i32 7
  store volatile i64 %conv.i, i64* %util_avg.i, align 16
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %___update_load_sum.exit, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @update_rt_rq_load_avg(i64 noundef %now, %struct.rq* noundef %rq, i32 noundef %running) local_unnamed_addr #0 {
entry:
  %avg_rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36
  %conv = sext i32 %running to i64
  %last_update_time.i = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg_rt, i64 0, i32 0
  %0 = load i64, i64* %last_update_time.i, align 64
  %sub.i = sub i64 %now, %0
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i64 %now, i64* %last_update_time.i, align 64
  br label %return

if.end.i:                                         ; preds = %entry
  %shr.i = lshr i64 %sub.i, 10
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %0
  store i64 %add.i, i64* %last_update_time.i, align 64
  %tobool5.not.i = icmp eq i32 %running, 0
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 4
  %1 = load i32, i32* %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %1 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 1
  %2 = load i64, i64* %load_sum.i.i, align 8
  %call.i.i = call fastcc i64 @decay_load(i64 noundef %2, i64 noundef %div.i.i) #7
  store i64 %call.i.i, i64* %load_sum.i.i, align 8
  %runnable_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 2
  %3 = load i64, i64* %runnable_sum.i.i, align 16
  %call3.i.i = call fastcc i64 @decay_load(i64 noundef %3, i64 noundef %div.i.i) #7
  store i64 %call3.i.i, i64* %runnable_sum.i.i, align 16
  %util_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 3
  %4 = load i32, i32* %util_sum.i.i, align 8
  %conv5.i.i = zext i32 %4 to i64
  %call6.i.i = call fastcc i64 @decay_load(i64 noundef %conv5.i.i, i64 noundef %div.i.i) #7
  %conv7.i.i = trunc i64 %call6.i.i to i32
  store i32 %conv7.i.i, i32* %util_sum.i.i, align 8
  %rem.i.i = and i64 %add.i.i, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread71.i.i

if.end14.thread.i.i:                              ; preds = %if.then.i.i
  %conv1567.i.i = trunc i64 %rem.i.i to i32
  store i32 %conv1567.i.i, i32* %period_contrib.i.i, align 4
  br label %___update_load_sum.exit

if.end14.thread71.i.i:                            ; preds = %if.then.i.i
  %sub.i.i = sub i32 1024, %1
  %conv12.i.i = trunc i64 %rem.i.i to i32
  %call13.i.i = call fastcc i32 @__accumulate_pelt_segments(i64 noundef %div.i.i, i32 noundef %sub.i.i, i32 noundef %conv12.i.i) #7
  store i32 %conv12.i.i, i32* %period_contrib.i.i, align 4
  br label %if.then31.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv15.i.i = trunc i64 %add.i.i to i32
  store i32 %conv15.i.i, i32* %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %___update_load_sum.exit, label %if.end14.if.then18_crit_edge.i.i

if.end14.if.then18_crit_edge.i.i:                 ; preds = %if.end14.i.i
  %load_sum20.phi.trans.insert.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 1
  %.pre.i.i = load i64, i64* %load_sum20.phi.trans.insert.i.i, align 8
  %runnable_sum27.i.i.phi.trans.insert = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 2
  %.pre = load i64, i64* %runnable_sum27.i.i.phi.trans.insert, align 16
  br label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end14.if.then18_crit_edge.i.i, %if.end14.thread71.i.i
  %5 = phi i64 [ %call3.i.i, %if.end14.thread71.i.i ], [ %.pre, %if.end14.if.then18_crit_edge.i.i ]
  %6 = phi i64 [ %call.i.i, %if.end14.thread71.i.i ], [ %.pre.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %contrib.076.i.i = phi i32 [ %call13.i.i, %if.end14.thread71.i.i ], [ %conv.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %conv19.i.i = zext i32 %contrib.076.i.i to i64
  %mul.i.i = mul nsw i64 %conv19.i.i, %conv
  %load_sum20.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 1
  %add21.i.i = add i64 %mul.i.i, %6
  store i64 %add21.i.i, i64* %load_sum20.i.i, align 8
  %mul26.i.i = shl nsw i64 %conv, 10
  %shl.i.i = mul i64 %mul26.i.i, %conv19.i.i
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 2
  %add28.i.i = add i64 %5, %shl.i.i
  store i64 %add28.i.i, i64* %runnable_sum27.i.i, align 16
  %shl32.i.i = shl i32 %contrib.076.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 3
  %7 = load i32, i32* %util_sum33.i.i, align 8
  %add34.i.i = add i32 %7, %shl32.i.i
  store i32 %add34.i.i, i32* %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end14.i.i, %if.end14.thread.i.i, %if.then31.i.i
  %conv36.i.i = trunc i64 %div.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %call.i = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg_rt) #7
  %load_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 1
  %8 = load i64, i64* %load_sum.i, align 8
  %call1.i = call fastcc i64 @div_u64(i64 noundef %8, i32 noundef %call.i) #7
  %load_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 5
  store i64 %call1.i, i64* %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 2
  %9 = load i64, i64* %runnable_sum.i, align 16
  %call2.i = call fastcc i64 @div_u64(i64 noundef %9, i32 noundef %call.i) #7
  %runnable_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 6
  store i64 %call2.i, i64* %runnable_avg.i, align 8
  %util_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 3
  %10 = load i32, i32* %util_sum.i, align 8
  %div.i = udiv i32 %10, %call.i
  %conv.i = zext i32 %div.i to i64
  %util_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 36, i32 7
  store volatile i64 %conv.i, i64* %util_avg.i, align 16
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %___update_load_sum.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @update_dl_rq_load_avg(i64 noundef %now, %struct.rq* noundef %rq, i32 noundef %running) local_unnamed_addr #0 {
entry:
  %avg_dl = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37
  %conv = sext i32 %running to i64
  %last_update_time.i = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg_dl, i64 0, i32 0
  %0 = load i64, i64* %last_update_time.i, align 64
  %sub.i = sub i64 %now, %0
  %cmp.i = icmp slt i64 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i64 %now, i64* %last_update_time.i, align 64
  br label %return

if.end.i:                                         ; preds = %entry
  %shr.i = lshr i64 %sub.i, 10
  %tobool.not.i = icmp ult i64 %sub.i, 1024
  br i1 %tobool.not.i, label %return, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %shl.i = and i64 %sub.i, -1024
  %add.i = add i64 %shl.i, %0
  store i64 %add.i, i64* %last_update_time.i, align 64
  %tobool5.not.i = icmp eq i32 %running, 0
  %conv.i.i = trunc i64 %shr.i to i32
  %period_contrib.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 4
  %1 = load i32, i32* %period_contrib.i.i, align 4
  %conv1.i.i = zext i32 %1 to i64
  %add.i.i = add nuw nsw i64 %shr.i, %conv1.i.i
  %div.i.i = lshr i64 %add.i.i, 10
  %tobool.not.i.i = icmp ult i64 %add.i.i, 1024
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %load_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 1
  %2 = load i64, i64* %load_sum.i.i, align 8
  %call.i.i = call fastcc i64 @decay_load(i64 noundef %2, i64 noundef %div.i.i) #7
  store i64 %call.i.i, i64* %load_sum.i.i, align 8
  %runnable_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 2
  %3 = load i64, i64* %runnable_sum.i.i, align 16
  %call3.i.i = call fastcc i64 @decay_load(i64 noundef %3, i64 noundef %div.i.i) #7
  store i64 %call3.i.i, i64* %runnable_sum.i.i, align 16
  %util_sum.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 3
  %4 = load i32, i32* %util_sum.i.i, align 8
  %conv5.i.i = zext i32 %4 to i64
  %call6.i.i = call fastcc i64 @decay_load(i64 noundef %conv5.i.i, i64 noundef %div.i.i) #7
  %conv7.i.i = trunc i64 %call6.i.i to i32
  store i32 %conv7.i.i, i32* %util_sum.i.i, align 8
  %rem.i.i = and i64 %add.i.i, 1023
  br i1 %tobool5.not.i, label %if.end14.thread.i.i, label %if.end14.thread71.i.i

if.end14.thread.i.i:                              ; preds = %if.then.i.i
  %conv1567.i.i = trunc i64 %rem.i.i to i32
  store i32 %conv1567.i.i, i32* %period_contrib.i.i, align 4
  br label %___update_load_sum.exit

if.end14.thread71.i.i:                            ; preds = %if.then.i.i
  %sub.i.i = sub i32 1024, %1
  %conv12.i.i = trunc i64 %rem.i.i to i32
  %call13.i.i = call fastcc i32 @__accumulate_pelt_segments(i64 noundef %div.i.i, i32 noundef %sub.i.i, i32 noundef %conv12.i.i) #7
  store i32 %conv12.i.i, i32* %period_contrib.i.i, align 4
  br label %if.then31.i.i

if.end14.i.i:                                     ; preds = %if.end3.i
  %conv15.i.i = trunc i64 %add.i.i to i32
  store i32 %conv15.i.i, i32* %period_contrib.i.i, align 4
  br i1 %tobool5.not.i, label %___update_load_sum.exit, label %if.end14.if.then18_crit_edge.i.i

if.end14.if.then18_crit_edge.i.i:                 ; preds = %if.end14.i.i
  %load_sum20.phi.trans.insert.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 1
  %.pre.i.i = load i64, i64* %load_sum20.phi.trans.insert.i.i, align 8
  %runnable_sum27.i.i.phi.trans.insert = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 2
  %.pre = load i64, i64* %runnable_sum27.i.i.phi.trans.insert, align 16
  br label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.end14.if.then18_crit_edge.i.i, %if.end14.thread71.i.i
  %5 = phi i64 [ %call3.i.i, %if.end14.thread71.i.i ], [ %.pre, %if.end14.if.then18_crit_edge.i.i ]
  %6 = phi i64 [ %call.i.i, %if.end14.thread71.i.i ], [ %.pre.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %contrib.076.i.i = phi i32 [ %call13.i.i, %if.end14.thread71.i.i ], [ %conv.i.i, %if.end14.if.then18_crit_edge.i.i ]
  %conv19.i.i = zext i32 %contrib.076.i.i to i64
  %mul.i.i = mul nsw i64 %conv19.i.i, %conv
  %load_sum20.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 1
  %add21.i.i = add i64 %mul.i.i, %6
  store i64 %add21.i.i, i64* %load_sum20.i.i, align 8
  %mul26.i.i = shl nsw i64 %conv, 10
  %shl.i.i = mul i64 %mul26.i.i, %conv19.i.i
  %runnable_sum27.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 2
  %add28.i.i = add i64 %5, %shl.i.i
  store i64 %add28.i.i, i64* %runnable_sum27.i.i, align 16
  %shl32.i.i = shl i32 %contrib.076.i.i, 10
  %util_sum33.i.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 3
  %7 = load i32, i32* %util_sum33.i.i, align 8
  %add34.i.i = add i32 %7, %shl32.i.i
  store i32 %add34.i.i, i32* %util_sum33.i.i, align 8
  br label %___update_load_sum.exit

___update_load_sum.exit:                          ; preds = %if.end14.i.i, %if.end14.thread.i.i, %if.then31.i.i
  %conv36.i.i = trunc i64 %div.i.i to i32
  %tobool8.not.i.not = icmp eq i32 %conv36.i.i, 0
  br i1 %tobool8.not.i.not, label %return, label %if.then

if.then:                                          ; preds = %___update_load_sum.exit
  %call.i = call fastcc i32 @get_pelt_divider(%struct.sched_avg* noundef %avg_dl) #7
  %load_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 1
  %8 = load i64, i64* %load_sum.i, align 8
  %call1.i = call fastcc i64 @div_u64(i64 noundef %8, i32 noundef %call.i) #7
  %load_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 5
  store i64 %call1.i, i64* %load_avg.i, align 32
  %runnable_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 2
  %9 = load i64, i64* %runnable_sum.i, align 16
  %call2.i = call fastcc i64 @div_u64(i64 noundef %9, i32 noundef %call.i) #7
  %runnable_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 6
  store i64 %call2.i, i64* %runnable_avg.i, align 8
  %util_sum.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 3
  %10 = load i32, i32* %util_sum.i, align 8
  %div.i = udiv i32 %10, %call.i
  %conv.i = zext i32 %div.i to i64
  %util_avg.i = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 37, i32 7
  store volatile i64 %conv.i, i64* %util_avg.i, align 16
  br label %return

return:                                           ; preds = %if.end.i, %if.then.i, %___update_load_sum.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %___update_load_sum.exit ], [ 0, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @decay_load(i64 noundef %val, i64 noundef %n) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i64 %n, 2016
  br i1 %cmp, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %0 = and i64 %n, 4294967264
  %cmp3.not = icmp eq i64 %0, 0
  br i1 %cmp3.not, label %if.end13, label %if.then12, !prof !9

if.then12:                                        ; preds = %if.end
  %div = lshr i64 %n, 5
  %shr = lshr i64 %val, %div
  %rem = and i64 %n, 31
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %val.addr.0 = phi i64 [ %shr, %if.then12 ], [ %val, %if.end ]
  %local_n.0 = phi i64 [ %rem, %if.then12 ], [ %n, %if.end ]
  %arrayidx = getelementptr [32 x i32], [32 x i32]* @runnable_avg_yN_inv, i64 0, i64 %local_n.0
  %1 = load i32, i32* %arrayidx, align 4
  %call = call fastcc i64 @mul_u64_u32_shr(i64 noundef %val.addr.0, i32 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  %retval.0 = phi i64 [ %call, %if.end13 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__accumulate_pelt_segments(i64 noundef %periods, i32 noundef %d1, i32 noundef %d3) unnamed_addr #4 {
entry:
  %conv = zext i32 %d1 to i64
  %call = call fastcc i64 @decay_load(i64 noundef %conv, i64 noundef %periods) #8
  %conv1 = trunc i64 %call to i32
  %call2 = call fastcc i64 @decay_load(i64 noundef 47742, i64 noundef %periods) #8
  %0 = trunc i64 %call2 to i32
  %conv4 = add i32 %d3, 46718
  %add = add i32 %conv4, %conv1
  %add5 = sub i32 %add, %0
  ret i32 %add5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @mul_u64_u32_shr(i64 noundef %a, i32 noundef %mul) unnamed_addr #4 {
entry:
  %conv = zext i64 %a to i128
  %conv1 = zext i32 %mul to i128
  %mul2 = mul nuw nsw i128 %conv1, %conv
  %shr = lshr i128 %mul2, 32
  %conv3 = trunc i128 %shr to i64
  ret i64 %conv3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_pelt_divider(%struct.sched_avg* nocapture noundef readonly %avg) unnamed_addr #1 {
entry:
  %period_contrib = getelementptr inbounds %struct.sched_avg, %struct.sched_avg* %avg, i64 0, i32 4
  %0 = load i32, i32* %period_contrib, align 4
  %add = add i32 %0, 46718
  ret i32 %add
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #5 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #6 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
