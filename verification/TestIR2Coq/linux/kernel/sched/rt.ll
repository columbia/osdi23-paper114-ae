; ModuleID = 'kernel/sched/rt.c'
source_filename = "kernel/sched/rt.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i64, i64, %struct.rb_root_cached, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity*, [32 x i8], %struct.sched_avg, %struct.anon.3 }
%struct.load_weight = type { i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics, [24 x i8], %struct.sched_avg }
%struct.sched_statistics = type {}
%struct.anon.3 = type { %struct.raw_spinlock, i32, i64, i64, i64, [32 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [2 x i64], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.4, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.4 = type { i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.94, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
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
%struct.irq_work = type { %struct.__call_single_node, {}* }
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
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.task_group = type opaque

@sched_rr_timeslice = dso_local local_unnamed_addr global i32 25, align 4
@sysctl_sched_rr_timeslice = dso_local local_unnamed_addr global i32 100, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@local_cpu_mask = internal global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@rt_sched_class = dso_local constant %struct.sched_class { void (%struct.rq*, %struct.task_struct*, i32)* @enqueue_task_rt, void (%struct.rq*, %struct.task_struct*, i32)* @dequeue_task_rt, void (%struct.rq*)* @yield_task_rt, i1 (%struct.rq*, %struct.task_struct*)* null, void (%struct.rq*, %struct.task_struct*, i32)* @check_preempt_curr_rt, %struct.task_struct* (%struct.rq*)* @pick_next_task_rt, void (%struct.rq*, %struct.task_struct*)* @put_prev_task_rt, void (%struct.rq*, %struct.task_struct*, i1)* @set_next_task_rt, i32 (%struct.rq*, %struct.task_struct*, %struct.rq_flags*)* @balance_rt, i32 (%struct.task_struct*, i32, i32)* @select_task_rq_rt, %struct.task_struct* (%struct.rq*)* @pick_task_rt, void (%struct.task_struct*, i32)* null, void (%struct.rq*, %struct.task_struct*)* @task_woken_rt, void (%struct.task_struct*, %struct.cpumask*, i32)* @set_cpus_allowed_common, void (%struct.rq*)* @rq_online_rt, void (%struct.rq*)* @rq_offline_rt, %struct.rq* (%struct.task_struct*, %struct.rq*)* @find_lock_lowest_rq, void (%struct.rq*, %struct.task_struct*, i32)* @task_tick_rt, void (%struct.task_struct*)* null, void (%struct.task_struct*)* null, void (%struct.rq*, %struct.task_struct*)* @switched_from_rt, void (%struct.rq*, %struct.task_struct*)* @switched_to_rt, void (%struct.rq*, %struct.task_struct*, i32)* @prio_changed_rt, i32 (%struct.rq*, %struct.task_struct*)* @get_rr_interval_rt, void (%struct.rq*)* @update_curr_rt }, section "__rt_sched_class", align 8
@sched_rt_handler.mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_rt_handler.mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_rt_handler.mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sched_rr_handler.mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_rr_handler.mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_rr_handler.mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@def_rt_bandwidth = dso_local global %struct.rt_bandwidth zeroinitializer, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@rt_push_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 8
@balance_push_callback = external dso_local global %struct.callback_head, align 8
@scheduler_running = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@rt_pull_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 8
@sched_rt_runtime_exceeded.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [32 x i8] c"sched: RT throttling activated\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_rt_bandwidth(%struct.rt_bandwidth* noundef %rt_b, i64 noundef %period, i64 noundef %runtime) local_unnamed_addr #0 {
entry:
  %rt_period = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 1
  store i64 %period, i64* %rt_period, align 8
  %rt_runtime = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 2
  store i64 %runtime, i64* %rt_runtime, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %rt_period_timer = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 3
  call void @hrtimer_init(%struct.hrtimer* noundef %rt_period_timer, i32 noundef 1, i32 noundef 9) #16
  %function = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 3, i32 2
  store i32 (%struct.hrtimer*)* @sched_rt_period_timer, i32 (%struct.hrtimer*)** %function, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sched_rt_period_timer(%struct.hrtimer* noundef %timer) #0 {
entry:
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %timer, i64 -1, i32 2
  %0 = bitcast i32 (%struct.hrtimer*)** %add.ptr to %struct.rt_bandwidth*
  %rt_runtime_lock = bitcast i32 (%struct.hrtimer*)** %add.ptr to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %rt_period = getelementptr inbounds i32 (%struct.hrtimer*)*, i32 (%struct.hrtimer*)** %add.ptr, i64 1
  %1 = bitcast i32 (%struct.hrtimer*)** %rt_period to i64*
  %2 = load i64, i64* %1, align 8
  %call22 = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %timer, i64 noundef %2) #17
  %conv23 = trunc i64 %call22 to i32
  %tobool.not24 = icmp eq i32 %conv23, 0
  br i1 %tobool.not24, label %if.end6, label %if.end

if.end:                                           ; preds = %entry, %if.end
  %conv25 = phi i32 [ %conv, %if.end ], [ %conv23, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %call2 = call fastcc i32 @do_sched_rt_period_timer(%struct.rt_bandwidth* noundef %0, i32 noundef %conv25) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %3 = load i64, i64* %1, align 8
  %call = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %timer, i64 noundef %3) #17
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %for.end, label %if.end

for.end:                                          ; preds = %if.end
  %phi.cmp = icmp eq i32 %call2, 0
  br i1 %phi.cmp, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.end
  %rt_period_active = getelementptr inbounds i32 (%struct.hrtimer*)*, i32 (%struct.hrtimer*)** %add.ptr, i64 11
  %4 = bitcast i32 (%struct.hrtimer*)** %rt_period_active to i32*
  store i32 0, i32* %4, align 8
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then5, %for.end
  %idle.0.lcssa27 = phi i32 [ 0, %if.then5 ], [ 1, %for.end ], [ 1, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  ret i32 %idle.0.lcssa27
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @init_rt_rq(%struct.rt_rq* noundef %rt_rq) local_unnamed_addr #2 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %add.ptr = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 1, i64 %indvars.iv
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %add.ptr) #17
  %rem.i = and i64 %indvars.iv, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %indvars.iv, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 0, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr.i22 = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %add.ptr.i22, align 8
  %or.i = or i64 %1, 68719476736
  store i64 %or.i, i64* %add.ptr.i22, align 8
  %curr = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 3, i32 0
  store i32 99, i32* %curr, align 8
  %next = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 3, i32 1
  store i32 99, i32* %next, align 4
  %rt_nr_migratory = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 4
  store i32 0, i32* %rt_nr_migratory, align 8
  %overloaded = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 6
  store i32 0, i32* %overloaded, align 8
  %pushable_tasks = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 7
  call fastcc void @plist_head_init(%struct.plist_head* noundef %pushable_tasks) #17
  %rt_queued = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 8
  store i32 0, i32* %rt_queued, align 8
  %rt_time = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 10
  store i64 0, i64* %rt_time, align 8
  %rt_throttled = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 9
  store i32 0, i32* %rt_throttled, align 4
  %rt_runtime = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 11
  store i64 0, i64* %rt_runtime, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 12, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_head_init(%struct.plist_head* noundef %head) unnamed_addr #2 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @free_rt_sched_group(%struct.task_group* nocapture noundef %tg) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @alloc_rt_sched_group(%struct.task_group* nocapture noundef readnone %tg, %struct.task_group* nocapture noundef readnone %parent) local_unnamed_addr #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @sched_rt_bandwidth_account(%struct.rt_rq* nocapture noundef readonly %rt_rq) local_unnamed_addr #0 {
entry:
  %call1 = call i1 @hrtimer_active(%struct.hrtimer* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 3)) #16
  br i1 %call1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %rt_time = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 10
  %0 = load i64, i64* %rt_time, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %cmp = icmp ult i64 %0, %1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @hrtimer_active(%struct.hrtimer* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rto_push_irq_work_func(%struct.irq_work* noundef %work) local_unnamed_addr #0 {
entry:
  %add.ptr30 = getelementptr %struct.irq_work, %struct.irq_work* %work, i64 -9
  %0 = bitcast %struct.irq_work* %add.ptr30 to %struct.root_domain*
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %call6 = call fastcc i32 @has_pushable_tasks(%struct.rq* noundef %1) #17
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %1) #17
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then
  %call7 = call fastcc i32 @push_rt_task(%struct.rq* noundef %1, i1 noundef true) #17
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  call void @raw_spin_rq_unlock(%struct.rq* noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %rto_lock = getelementptr %struct.irq_work, %struct.irq_work* %work, i64 1
  %2 = bitcast %struct.irq_work* %rto_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %2) #17
  %call9 = call fastcc i32 @rto_next_cpu(%struct.root_domain* noundef %0) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %2) #17
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @sched_put_rd(%struct.root_domain* noundef %0) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = call i1 @irq_work_queue_on(%struct.irq_work* noundef %work, i32 noundef %call9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @has_pushable_tasks(%struct.rq* noundef %rq) unnamed_addr #5 {
entry:
  %pushable_tasks = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 7
  %call = call fastcc i32 @plist_head_empty(%struct.plist_head* noundef %pushable_tasks) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @push_rt_task(%struct.rq* noundef %rq, i1 noundef %pull) unnamed_addr #0 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 6
  %0 = load i32, i32* %overloaded, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup73, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.task_struct* @pick_next_pushable_task(%struct.rq* noundef %rq) #17
  %tobool1.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool1.not, label %cleanup73, label %retry.preheader

retry.preheader:                                  ; preds = %if.end
  %call4130 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef nonnull %call) #17
  br i1 %call4130, label %if.then5, label %if.end23.lr.ph

if.end23.lr.ph:                                   ; preds = %retry.preheader
  %curr24 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  br label %if.end23

if.then5:                                         ; preds = %cleanup70, %retry.preheader
  br i1 %pull, label %lor.lhs.false, label %cleanup73

lor.lhs.false:                                    ; preds = %if.then5
  %push_busy = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 46
  %1 = load i32, i32* %push_busy, align 4
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup73

if.end9:                                          ; preds = %lor.lhs.false
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call10 = call fastcc i32 @find_lowest_rq(%struct.task_struct* noundef %2) #17
  %cmp = icmp eq i32 %call10, -1
  br i1 %cmp, label %cleanup73, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end9
  %cpu12 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %3 = load i32, i32* %cpu12, align 16
  %cmp13 = icmp eq i32 %call10, %3
  br i1 %cmp13, label %cleanup73, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false11
  %call16 = call fastcc %struct.task_struct* @get_push_task(%struct.rq* noundef %rq) #17
  %tobool17.not = icmp eq %struct.task_struct* %call16, null
  br i1 %tobool17.not, label %cleanup73, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #16
  %4 = load i32, i32* %cpu12, align 16
  %5 = bitcast %struct.task_struct* %call16 to i8*
  %push_work = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 47
  %call20 = call i1 @stop_one_cpu_nowait(i32 noundef %4, i32 (i8*)* noundef nonnull @push_cpu_stop, i8* noundef nonnull %5, %struct.cpu_stop_work* noundef %push_work) #16
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #17
  br label %cleanup73

if.end23:                                         ; preds = %if.end23.lr.ph, %cleanup70
  %next_task.0131 = phi %struct.task_struct* [ %call, %if.end23.lr.ph ], [ %call62, %cleanup70 ]
  %6 = load %struct.task_struct*, %struct.task_struct** %curr24, align 8
  %cmp25 = icmp eq %struct.task_struct* %next_task.0131, %6
  br i1 %cmp25, label %if.then33, label %if.end44, !prof !9

if.then33:                                        ; preds = %if.end23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1916; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !10
  br label %cleanup73

if.end44:                                         ; preds = %if.end23
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %next_task.0131, i64 0, i32 15
  %7 = load i32, i32* %prio, align 4
  %prio46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 15
  %8 = load i32, i32* %prio46, align 4
  %cmp47 = icmp slt i32 %7, %8
  br i1 %cmp47, label %if.then56, label %if.end57, !prof !9

if.then56:                                        ; preds = %if.end44
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %cleanup73

if.end57:                                         ; preds = %if.end44
  %call58 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef nonnull %next_task.0131) #17
  %call59 = call %struct.rq* @find_lock_lowest_rq(%struct.task_struct* noundef nonnull %next_task.0131, %struct.rq* noundef %rq) #17
  %tobool60.not = icmp eq %struct.rq* %call59, null
  br i1 %tobool60.not, label %if.then61, label %if.end71

if.then61:                                        ; preds = %if.end57
  %call62 = call fastcc %struct.task_struct* @pick_next_pushable_task(%struct.rq* noundef %rq) #17
  %cmp63 = icmp eq %struct.task_struct* %call62, %next_task.0131
  %tobool67.not = icmp eq %struct.task_struct* %call62, null
  %or.cond = or i1 %cmp63, %tobool67.not
  br i1 %or.cond, label %out, label %cleanup70

cleanup70:                                        ; preds = %if.then61
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %next_task.0131) #17
  %call4 = call fastcc i1 @is_migration_disabled(%struct.task_struct* noundef nonnull %call62) #17
  br i1 %call4, label %if.then5, label %if.end23

if.end71:                                         ; preds = %if.end57
  call void @deactivate_task(%struct.rq* noundef %rq, %struct.task_struct* noundef nonnull %next_task.0131, i32 noundef 0) #16
  %cpu72 = getelementptr inbounds %struct.rq, %struct.rq* %call59, i64 0, i32 32
  %9 = load i32, i32* %cpu72, align 16
  call void @set_task_cpu(%struct.task_struct* noundef nonnull %next_task.0131, i32 noundef %9) #16
  call void @activate_task(%struct.rq* noundef nonnull %call59, %struct.task_struct* noundef nonnull %next_task.0131, i32 noundef 0) #16
  call void @resched_curr(%struct.rq* noundef nonnull %call59) #16
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef nonnull %call59) #17
  br label %out

out:                                              ; preds = %if.then61, %if.end71
  %ret.0 = phi i32 [ 1, %if.end71 ], [ 0, %if.then61 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %next_task.0131) #17
  br label %cleanup73

cleanup73:                                        ; preds = %if.then33, %lor.lhs.false, %if.then5, %lor.lhs.false11, %if.end9, %if.then18, %if.end15, %if.end, %entry, %out, %if.then56
  %retval.1 = phi i32 [ 0, %if.then56 ], [ %ret.0, %out ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end15 ], [ 0, %if.then18 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false11 ], [ 0, %if.then5 ], [ 0, %lor.lhs.false ], [ 0, %if.then33 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(%struct.rq* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rto_next_cpu(%struct.root_domain* noundef %rd) unnamed_addr #0 {
entry:
  %rto_cpu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 15
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 18, i64 0
  %0 = load i32, i32* %rto_cpu, align 8
  %call20 = call i32 @cpumask_next(i32 noundef %0, %struct.cpumask* noundef %arraydecay) #20
  store i32 %call20, i32* %rto_cpu, align 8
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %1
  br i1 %cmp21, label %cleanup, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %counter.i.i = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 16, i32 0
  %rto_loop = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 14
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end6
  store i32 -1, i32* %rto_cpu, align 8
  %2 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i) #19, !srcloc !12
  %3 = load i32, i32* %rto_loop, align 4
  %cmp4 = icmp eq i32 %3, %2
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  store i32 %2, i32* %rto_loop, align 4
  %4 = load i32, i32* %rto_cpu, align 8
  %call = call i32 @cpumask_next(i32 noundef %4, %struct.cpumask* noundef %arraydecay) #20
  store i32 %call, i32* %rto_cpu, align 8
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ %call20, %entry ], [ -1, %if.end ], [ %call, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_put_rd(%struct.root_domain* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @irq_work_queue_on(%struct.irq_work* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_sched_rt_class() local_unnamed_addr #6 section ".init.text" {
entry:
  %call9 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call11 = phi i32 [ %call, %do.body ], [ %call9, %entry ]
  %idxprom = zext i32 %call11 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint ([1 x %struct.cpumask]* @local_cpu_mask to i64)
  %2 = inttoptr i64 %add to [1 x %struct.cpumask]*
  call fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %2) #17
  %call = call i32 @cpumask_next(i32 noundef %call11, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var_node([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @enqueue_task_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #0 {
entry:
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %timeout = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 1
  store i64 0, i64* %timeout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @enqueue_rt_entity(%struct.sched_rt_entity* noundef %rt, i32 noundef %flags) #17
  %call = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call fastcc void @enqueue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dequeue_task_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #0 {
entry:
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  call void @update_curr_rt(%struct.rq* noundef %rq) #17
  call fastcc void @dequeue_rt_entity(%struct.sched_rt_entity* noundef %rt, i32 noundef %flags) #17
  call fastcc void @dequeue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal void @yield_task_rt(%struct.rq* nocapture noundef readonly %rq) #2 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  call fastcc void @requeue_task_rt(%struct.task_struct* noundef %0, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @check_preempt_curr_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %flags) #0 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %1 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %prio1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 15
  %2 = load i32, i32* %prio1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %if.end8

if.end:                                           ; preds = %entry
  %cmp5 = icmp eq i32 %0, %2
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call fastcc void @check_preempt_equal_prio(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then7, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @pick_next_task_rt(%struct.rq* noundef %rq) #0 {
entry:
  %call = call %struct.task_struct* @pick_task_rt(%struct.rq* noundef %rq) #17
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @set_next_task_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef nonnull %call, i1 noundef true) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @put_prev_task_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #0 {
entry:
  call void @update_curr_rt(%struct.rq* noundef %rq) #17
  %call = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #17
  %call1 = call i32 @update_rt_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef 1) #16
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  %call2 = call fastcc i32 @on_rt_rq(%struct.sched_rt_entity* noundef %rt) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @enqueue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @set_next_task_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i1 noundef %first) #0 {
entry:
  %call = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #17
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 4
  store i64 %call, i64* %exec_start, align 64
  call fastcc void @dequeue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  br i1 %first, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp eq %struct.sched_class* %1, @rt_sched_class
  br i1 %cmp.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #17
  %call3 = call i32 @update_rt_rq_load_avg(i64 noundef %call2, %struct.rq* noundef %rq, i32 noundef 0) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  call fastcc void @rt_queue_push_tasks(%struct.rq* noundef %rq) #17
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @balance_rt(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* nocapture noundef readonly %p, %struct.rq_flags* nocapture noundef readnone %rf) #0 {
entry:
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  %call = call fastcc i32 @on_rt_rq(%struct.sched_rt_entity* noundef %rt) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @need_pull_rt_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @pull_rt_task(%struct.rq* noundef %rq) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call2 = call fastcc i1 @sched_stop_runnable(%struct.rq* noundef %rq) #17
  br i1 %call2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call fastcc i1 @sched_dl_runnable(%struct.rq* noundef %rq) #17
  br i1 %call3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call4 = call fastcc i1 @sched_rt_runnable(%struct.rq* noundef %rq) #17
  %phi.cast = zext i1 %call4 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @select_task_rq_rt(%struct.task_struct* noundef %p, i32 noundef %cpu, i32 noundef %flags) #0 {
entry:
  %and = and i32 %flags, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup48, label %do.body

do.body:                                          ; preds = %entry
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  call fastcc void @__rcu_read_lock() #16
  %curr6 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 9
  %2 = load volatile %struct.task_struct*, %struct.task_struct** %curr6, align 8
  %tobool7.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool7.not, label %out_unlock, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %call = call fastcc i32 @rt_task(%struct.task_struct* noundef nonnull %2) #17
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %out_unlock, label %land.rhs, !prof !14

land.rhs:                                         ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.end27, label %land.end

land.end:                                         ; preds = %land.rhs
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 15
  %4 = load i32, i32* %prio, align 4
  %prio12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %5 = load i32, i32* %prio12, align 4
  %cmp13.not = icmp sgt i32 %4, %5
  br i1 %cmp13.not, label %out_unlock, label %if.end27

if.end27:                                         ; preds = %land.rhs, %land.end
  %call19 = call fastcc i32 @find_lowest_rq(%struct.task_struct* noundef %p) #17
  %cmp22.not = icmp eq i32 %call19, -1
  br i1 %cmp22.not, label %out_unlock, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end27
  %prio31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %6 = load i32, i32* %prio31, align 4
  %idxprom39 = sext i32 %call19 to i64
  %arrayidx40 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom39
  %7 = load i64, i64* %arrayidx40, align 8
  %add41 = add i64 %7, ptrtoint (%struct.rq* @runqueues to i64)
  %8 = inttoptr i64 %add41 to %struct.rq*
  %curr42 = getelementptr inbounds %struct.rq, %struct.rq* %8, i64 0, i32 6, i32 3, i32 0
  %9 = load i32, i32* %curr42, align 8
  %cmp43 = icmp slt i32 %6, %9
  %spec.select = select i1 %cmp43, i32 %call19, i32 %cpu
  br label %out_unlock

out_unlock:                                       ; preds = %do.body, %land.lhs.true, %land.end, %land.lhs.true30, %if.end27
  %cpu.addr.2 = phi i32 [ %cpu, %if.end27 ], [ %spec.select, %land.lhs.true30 ], [ %cpu, %land.end ], [ %cpu, %land.lhs.true ], [ %cpu, %do.body ]
  call fastcc void @rcu_read_unlock() #17
  br label %cleanup48

cleanup48:                                        ; preds = %out_unlock, %entry
  %cpu.addr.3 = phi i32 [ %cpu.addr.2, %out_unlock ], [ %cpu, %entry ]
  ret i32 %cpu.addr.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.task_struct* @pick_task_rt(%struct.rq* nocapture noundef readonly %rq) #0 {
entry:
  %call = call fastcc i1 @sched_rt_runnable(%struct.rq* noundef %rq) #17
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.task_struct* @_pick_next_task_rt(%struct.rq* noundef %rq) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.task_struct* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_woken_rt(%struct.rq* noundef %rq, %struct.task_struct* nocapture noundef readonly %p) #0 {
entry:
  %call = call fastcc i32 @task_running(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call1 = call fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %0) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %2 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %call6 = call fastcc i32 @dl_task(%struct.task_struct* noundef %2) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %call9 = call fastcc i32 @rt_task(%struct.task_struct* noundef %2) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true4
  %nr_cpus_allowed12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed12, align 4
  %cmp13 = icmp slt i32 %3, 2
  br i1 %cmp13, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 15
  %4 = load i32, i32* %prio, align 4
  %prio15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %5 = load i32, i32* %prio15, align 4
  %cmp16.not = icmp sgt i32 %4, %5
  br i1 %cmp16.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.rhs, %lor.rhs
  call void @push_rt_tasks(%struct.rq* noundef %rq) #17
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true3, %lor.lhs.false, %if.then, %lor.rhs
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(%struct.task_struct* noundef, %struct.cpumask* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rq_online_rt(%struct.rq* noundef %rq) #0 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 6
  %0 = load i32, i32* %overloaded, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rt_set_overload(%struct.rq* noundef %rq) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__enable_runtime(%struct.rq* noundef %rq) #17
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 3, i32 0
  %3 = load i32, i32* %curr, align 8
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %2, i32 noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rq_offline_rt(%struct.rq* noundef %rq) #0 {
entry:
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 6
  %0 = load i32, i32* %overloaded, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rt_clear_overload(%struct.rq* noundef %rq) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__disable_runtime(%struct.rq* noundef %rq) #17
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %2, i32 noundef -1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.rq* @find_lock_lowest_rq(%struct.task_struct* noundef %task, %struct.rq* noundef %rq) #0 {
entry:
  %cpu2 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 15
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 27
  br label %for.body

for.body:                                         ; preds = %entry, %if.end47
  %tries.088 = phi i32 [ 0, %entry ], [ %inc, %if.end47 ]
  %call = call fastcc i32 @find_lowest_rq(%struct.task_struct* noundef %task) #17
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %0 = load i32, i32* %cpu2, align 16
  %cmp3 = icmp eq i32 %call, %0
  br i1 %cmp3, label %for.end, label %do.body

do.body:                                          ; preds = %lor.lhs.false
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 6, i32 3, i32 0
  %3 = load i32, i32* %curr, align 8
  %4 = load i32, i32* %prio, align 4
  %cmp5.not = icmp sgt i32 %3, %4
  br i1 %cmp5.not, label %if.end7, label %for.end

if.end7:                                          ; preds = %do.body
  %call8 = call fastcc i32 @double_lock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %2) #17
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end39, label %do.body10

do.body10:                                        ; preds = %if.end7
  %call17 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #17
  %idxprom18 = zext i32 %call17 to i64
  %arrayidx19 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom18
  %5 = load i64, i64* %arrayidx19, align 8
  %add20 = add i64 %5, ptrtoint (%struct.rq* @runqueues to i64)
  %6 = inttoptr i64 %add20 to %struct.rq*
  %cmp21.not = icmp eq %struct.rq* %6, %rq
  br i1 %cmp21.not, label %lor.lhs.false22, label %if.then37, !prof !14

lor.lhs.false22:                                  ; preds = %do.body10
  %cpu23 = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 32
  %7 = load i32, i32* %cpu23, align 16
  %call24 = call fastcc i32 @cpumask_test_cpu(i32 noundef %7, %struct.cpumask* noundef %cpus_mask) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then37, label %lor.lhs.false26, !prof !9

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = call fastcc i32 @task_running(%struct.task_struct* noundef %task) #17
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.then37, !prof !14

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = call fastcc i32 @rt_task(%struct.task_struct* noundef %task) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then37, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %lor.lhs.false29
  %call32 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %task) #17
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then37, label %if.end39, !prof !9

if.then37:                                        ; preds = %do.body10, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false29, %lor.rhs
  %8 = inttoptr i64 %add to %struct.rq*
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %8) #17
  br label %for.end

if.end39:                                         ; preds = %lor.rhs, %if.end7
  %9 = load i32, i32* %curr, align 8
  %10 = load i32, i32* %prio, align 4
  %cmp44 = icmp sgt i32 %9, %10
  br i1 %cmp44, label %for.end.loopexit.split.loop.exit, label %if.end47

if.end47:                                         ; preds = %if.end39
  call fastcc void @double_unlock_balance(%struct.rq* noundef %rq, %struct.rq* noundef %2) #17
  %inc = add nuw nsw i32 %tries.088, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end.loopexit.split.loop.exit:                 ; preds = %if.end39
  %11 = inttoptr i64 %add to %struct.rq*
  br label %for.end

for.end:                                          ; preds = %do.body, %for.body, %lor.lhs.false, %if.end47, %for.end.loopexit.split.loop.exit, %if.then37
  %lowest_rq.1 = phi %struct.rq* [ null, %if.then37 ], [ %11, %for.end.loopexit.split.loop.exit ], [ null, %if.end47 ], [ null, %lor.lhs.false ], [ null, %for.body ], [ null, %do.body ]
  ret %struct.rq* %lowest_rq.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @task_tick_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef %p, i32 noundef %queued) #0 {
entry:
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  call void @update_curr_rt(%struct.rq* noundef %rq) #17
  %call = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #17
  %call1 = call i32 @update_rt_rq_load_avg(i64 noundef %call, %struct.rq* noundef %rq, i32 noundef 1) #16
  call fastcc void @watchdog(%struct.task_struct* noundef %p) #17
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %time_slice = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 3
  %1 = load i32, i32* %time_slice, align 32
  %dec = add i32 %1, -1
  store i32 %dec, i32* %time_slice, align 32
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* @sched_rr_timeslice, align 4
  store i32 %2, i32* %time_slice, align 32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end4
  %rt_se.0 = phi %struct.sched_rt_entity* [ %rt, %if.end4 ], [ null, %for.body ]
  %tobool7.not = icmp eq %struct.sched_rt_entity* %rt_se.0, null
  br i1 %tobool7.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %prev = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se.0, i64 0, i32 0, i32 1
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se.0, i64 0, i32 0, i32 0
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8
  %cmp9.not = icmp eq %struct.list_head* %3, %4
  br i1 %cmp9.not, label %for.cond, label %if.then10

if.then10:                                        ; preds = %for.body
  call fastcc void @requeue_task_rt(%struct.task_struct* noundef %p, i32 noundef 0) #17
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %if.then10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @switched_from_rt(%struct.rq* nocapture noundef %rq, %struct.task_struct* nocapture noundef readonly %p) #8 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rt_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 1
  %0 = load i32, i32* %rt_nr_running, align 16
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @rt_queue_pull_task(%struct.rq* noundef %rq) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @switched_to_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef readonly %p) #0 {
entry:
  %call = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @rq_clock_pelt(%struct.rq* noundef %rq) #17
  %call2 = call i32 @update_rt_rq_load_avg(i64 noundef %call1, %struct.rq* noundef %rq, i32 noundef 0) #16
  br label %if.end16

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #17
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %0 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.then5
  %overloaded = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 6
  %1 = load i32, i32* %overloaded, align 8
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  call fastcc void @rt_queue_push_tasks(%struct.rq* noundef %rq) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.then5
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %2 = load i32, i32* %prio, align 4
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %3 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %prio9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 15
  %4 = load i32, i32* %prio9, align 4
  %cmp10 = icmp slt i32 %2, %4
  br i1 %cmp10, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = call fastcc i32 @cpu_of(%struct.rq* noundef %rq) #17
  %call13 = call fastcc i1 @cpu_online(i32 noundef %call12) #17
  br i1 %call13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true11
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %if.end16

if.end16:                                         ; preds = %if.end8, %land.lhs.true11, %if.then14, %if.then, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @prio_changed_rt(%struct.rq* noundef %rq, %struct.task_struct* noundef readonly %p, i32 noundef %oldprio) #0 {
entry:
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end16, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) #17
  %tobool2.not = icmp eq i32 %call1, 0
  %prio10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio10, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %cmp = icmp sgt i32 %0, %oldprio
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then3
  call fastcc void @rt_queue_pull_task(%struct.rq* noundef %rq) #17
  %.pre = load i32, i32* %prio10, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then3
  %1 = phi i32 [ %.pre, %if.then4 ], [ %0, %if.then3 ]
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 3, i32 0
  %2 = load i32, i32* %curr, align 8
  %cmp7 = icmp sgt i32 %1, %2
  br i1 %cmp7, label %if.end16.sink.split, label %if.end16

if.else:                                          ; preds = %if.end
  %curr11 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %3 = load %struct.task_struct*, %struct.task_struct** %curr11, align 8
  %prio12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 15
  %4 = load i32, i32* %prio12, align 4
  %cmp13 = icmp slt i32 %0, %4
  br i1 %cmp13, label %if.end16.sink.split, label %if.end16

if.end16.sink.split:                              ; preds = %if.else, %if.end5
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else, %if.end5, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @get_rr_interval_rt(%struct.rq* nocapture noundef readnone %rq, %struct.task_struct* nocapture noundef readonly %task) #9 {
entry:
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %cmp = icmp eq i32 %0, 2
  %1 = load i32, i32* @sched_rr_timeslice, align 4
  %retval.0 = select i1 %cmp, i32 %1, i32 0
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @update_curr_rt(%struct.rq* noundef %rq) #0 {
entry:
  %curr1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr1, align 8
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 21
  %sched_class = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 19
  %1 = load %struct.sched_class*, %struct.sched_class** %sched_class, align 8
  %cmp.not = icmp eq %struct.sched_class* %1, @rt_sched_class
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @rq_clock_task(%struct.rq* noundef %rq) #17
  %exec_start = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20, i32 4
  %2 = load i64, i64* %exec_start, align 64
  %sub = sub i64 %call, %2
  %cmp2 = icmp slt i64 %sub, 1
  br i1 %cmp2, label %cleanup, label %do.end, !prof !9

do.end:                                           ; preds = %if.end
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 20, i32 5
  %3 = load i64, i64* %sum_exec_runtime, align 8
  %add = add i64 %3, %sub
  store i64 %add, i64* %sum_exec_runtime, align 8
  call fastcc void @account_group_exec_runtime(%struct.task_struct* noundef %0, i64 noundef %sub) #17
  store i64 %call, i64* %exec_start, align 64
  %call9 = call fastcc i32 @rt_bandwidth_enabled() #17
  %tobool10.not = icmp eq i32 %call9, 0
  %tobool13.not52 = icmp eq %struct.sched_rt_entity* %rt, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool13.not52
  br i1 %or.cond, label %cleanup, label %for.body

for.body:                                         ; preds = %do.end
  %call14 = call fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef nonnull %rt) #17
  %call15 = call fastcc i64 @sched_rt_runtime(%struct.rt_rq* noundef %call14) #17
  %cmp16.not = icmp eq i64 %call15, -1
  br i1 %cmp16.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %for.body
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call14, i64 0, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %rt_time = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call14, i64 0, i32 10
  %4 = load i64, i64* %rt_time, align 8
  %add19 = add i64 %4, %sub
  store i64 %add19, i64* %rt_time, align 8
  %call20 = call fastcc i32 @sched_rt_runtime_exceeded(%struct.rt_rq* noundef %call14) #17
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then18
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then18
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end23, %do.end, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_rt_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @sched_rt_handler.mutex) #16
  %0 = load i32, i32* @sysctl_sched_rt_period, align 4
  %1 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %call = call i32 @proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #16
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @sched_rt_global_validate() #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %undo

if.end:                                           ; preds = %if.then
  %call5 = call i32 @sched_dl_global_validate() #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %undo

if.end8:                                          ; preds = %if.end
  call fastcc void @sched_rt_global_constraints() #17
  call fastcc void @sched_rt_do_global() #17
  call void @sched_dl_do_global() #16
  br label %if.end15

undo:                                             ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call5, %if.end ]
  store i32 %0, i32* @sysctl_sched_rt_period, align 4
  store i32 %1, i32* @sysctl_sched_rt_runtime, align 4
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.end8, %undo
  %ret.1 = phi i32 [ %ret.0, %undo ], [ 0, %if.end8 ], [ %call, %entry ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sched_rt_handler.mutex) #16
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sched_rt_global_validate() unnamed_addr #9 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_period, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %cmp1.not = icmp eq i32 %1, -1
  br i1 %cmp1.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %conv = sext i32 %1 to i64
  %cmp3 = icmp ugt i32 %1, %0
  %mul = mul nsw i64 %conv, 1000
  %cmp6 = icmp ugt i64 %mul, 17592186044415
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp6
  br i1 %or.cond, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry ], [ -22, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_dl_global_validate() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_rt_global_constraints() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__raw_spin_lock_irqsave() #17
  %call11 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp22 = icmp ult i32 %call11, %0
  br i1 %cmp22, label %for.body, label %do.body11

for.body:                                         ; preds = %entry, %for.body
  %call13 = phi i32 [ %call1, %for.body ], [ %call11, %entry ]
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rq* @runqueues to i64)
  %2 = inttoptr i64 %add to %struct.rq*
  %rt_runtime_lock = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 6, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %call9 = call fastcc i64 @global_rt_runtime() #17
  %rt_runtime = getelementptr inbounds %struct.rq, %struct.rq* %2, i64 0, i32 6, i32 11
  store i64 %call9, i64* %rt_runtime, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %call1 = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %3
  br i1 %cmp2, label %for.body, label %do.body11

do.body11:                                        ; preds = %for.body, %entry
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sched_rt_do_global() unnamed_addr #8 {
entry:
  %call = call fastcc i64 @global_rt_runtime() #17
  store i64 %call, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %call1 = call fastcc i64 @global_rt_period() #17, !range !15
  store i64 %call1, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_dl_do_global() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_rr_handler(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @sched_rr_handler.mutex) #16
  %call = call i32 @proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #16
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @sysctl_sched_rr_timeslice, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cond.end, label %if.else.i

if.else.i:                                        ; preds = %if.then
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %0) #16
  %phi.cast = trunc i64 %call2.i to i32
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.else.i
  %cond = phi i32 [ %phi.cast, %if.else.i ], [ 25, %if.then ]
  store i32 %cond, i32* @sched_rr_timeslice, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sched_rr_handler.mutex) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef %timer, i64 noundef %interval) unnamed_addr #0 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #16
  %call1 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %interval) #16
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_sched_rt_period_timer(%struct.rt_bandwidth* nocapture noundef readonly %rt_b, i32 noundef %overrun) unnamed_addr #0 {
entry:
  %call1145 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp146 = icmp ult i32 %call1145, %0
  br i1 %cmp146, label %for.body.lr.ph, label %land.lhs.true67

for.body.lr.ph:                                   ; preds = %entry
  %rt_runtime5 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 2
  %conv = sext i32 %overrun to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %call1150 = phi i32 [ %call1145, %for.body.lr.ph ], [ %call1, %cleanup ]
  %idle.0149 = phi i32 [ 1, %for.body.lr.ph ], [ %idle.3, %cleanup ]
  %throttled.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %throttled.2, %cleanup ]
  %call2 = call fastcc %struct.rt_rq* @sched_rt_period_rt_rq(i32 noundef %call1150) #17
  %call3 = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %call2) #17
  %rt_runtime_lock = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %rt_runtime = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 11
  %1 = load i64, i64* %rt_runtime, align 8
  %cmp4.not = icmp eq i64 %1, -1
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i64, i64* %rt_runtime5, align 8
  store i64 %2, i64* %rt_runtime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %rt_time = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 10
  %3 = load i64, i64* %rt_time, align 8
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end11.critedge

land.rhs:                                         ; preds = %if.end
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 1
  %4 = load i32, i32* %rt_nr_running, align 8
  %tobool7.not = icmp eq i32 %4, 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  br i1 %tobool7.not, label %cleanup, label %if.end11

if.end11.critedge:                                ; preds = %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %land.rhs
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %call3) #17
  call void @update_rq_clock(%struct.rq* noundef %call3) #16
  %5 = load i64, i64* %rt_time, align 8
  %tobool13.not = icmp eq i64 %5, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %rt_throttled = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 9
  %6 = load i32, i32* %rt_throttled, align 4
  %7 = load i64, i64* %rt_runtime, align 8
  %8 = load i64, i64* %rt_time, align 8
  %mul = mul i64 %7, %conv
  %9 = call i64 @llvm.usub.sat.i64(i64 %8, i64 %mul)
  store i64 %9, i64* %rt_time, align 8
  %tobool25.not = icmp ne i32 %6, 0
  %cmp27 = icmp ult i64 %9, %7
  %or.cond = select i1 %tobool25.not, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.then14
  store i32 0, i32* %rt_throttled, align 4
  %rt_nr_running31 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 1
  %10 = load i32, i32* %rt_nr_running31, align 8
  %tobool32.not = icmp eq i32 %10, 0
  br i1 %tobool32.not, label %if.end39, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then29
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %call3, i64 0, i32 9
  %11 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %idle34 = getelementptr inbounds %struct.rq, %struct.rq* %call3, i64 0, i32 10
  %12 = load %struct.task_struct*, %struct.task_struct** %idle34, align 16
  %cmp35 = icmp eq %struct.task_struct* %11, %12
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call fastcc void @rq_clock_cancel_skipupdate(%struct.rq* noundef %call3) #17
  %.pr.pre = load i64, i64* %rt_time, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %land.lhs.true33, %if.then37, %if.then14
  %13 = phi i64 [ %9, %if.then14 ], [ %.pr.pre, %if.then37 ], [ %9, %land.lhs.true33 ], [ %9, %if.then29 ]
  %tobool41.not = icmp eq i64 %13, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.then44

lor.lhs.false:                                    ; preds = %if.end39
  %rt_nr_running42 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 1
  %14 = load i32, i32* %rt_nr_running42, align 8
  %tobool43.not = icmp eq i32 %14, 0
  br i1 %tobool43.not, label %if.end55, label %if.then44

if.then44:                                        ; preds = %lor.lhs.false, %if.end39
  br label %if.end55

if.else:                                          ; preds = %if.end11
  %rt_nr_running47 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 1
  %15 = load i32, i32* %rt_nr_running47, align 8
  %tobool48.not = icmp eq i32 %15, 0
  br i1 %tobool48.not, label %if.end55.thread, label %if.then49

if.then49:                                        ; preds = %if.else
  %call50 = call fastcc i32 @rt_rq_throttled(%struct.rt_rq* noundef %call2) #17
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end55.thread136, label %if.end55.thread

if.end55.thread136:                               ; preds = %if.then49
  %rt_throttled56139 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 9
  %16 = load i32, i32* %rt_throttled56139, align 4
  %tobool57.not140 = icmp eq i32 %16, 0
  %spec.select127141 = select i1 %tobool57.not140, i32 %throttled.0147, i32 1
  br label %if.then61

if.end55.thread:                                  ; preds = %if.else, %if.then49
  %idle.2.ph = phi i32 [ 0, %if.then49 ], [ %idle.0149, %if.else ]
  %rt_throttled56130 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call2, i64 0, i32 9
  %17 = load i32, i32* %rt_throttled56130, align 4
  %tobool57.not131 = icmp eq i32 %17, 0
  %spec.select127132 = select i1 %tobool57.not131, i32 %throttled.0147, i32 1
  br label %if.end62

if.end55:                                         ; preds = %lor.lhs.false, %if.then44
  %idle.1 = phi i32 [ 0, %if.then44 ], [ %idle.0149, %lor.lhs.false ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock) #17
  %18 = load i32, i32* %rt_throttled, align 4
  %tobool57.not = icmp eq i32 %18, 0
  %spec.select127 = select i1 %tobool57.not, i32 %throttled.0147, i32 1
  br i1 %or.cond, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end55.thread136, %if.end55
  %spec.select127144 = phi i32 [ %spec.select127141, %if.end55.thread136 ], [ %spec.select127, %if.end55 ]
  %idle.2143 = phi i32 [ 0, %if.end55.thread136 ], [ %idle.1, %if.end55 ]
  call fastcc void @sched_rt_rq_enqueue(%struct.rt_rq* noundef %call2) #17
  br label %if.end62

if.end62:                                         ; preds = %if.end55.thread, %if.then61, %if.end55
  %spec.select127135 = phi i32 [ %spec.select127132, %if.end55.thread ], [ %spec.select127144, %if.then61 ], [ %spec.select127, %if.end55 ]
  %idle.2134 = phi i32 [ %idle.2.ph, %if.end55.thread ], [ %idle.2143, %if.then61 ], [ %idle.1, %if.end55 ]
  call void @raw_spin_rq_unlock(%struct.rq* noundef %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end62
  %throttled.2 = phi i32 [ %spec.select127135, %if.end62 ], [ %throttled.0147, %land.rhs ]
  %idle.3 = phi i32 [ %idle.2134, %if.end62 ], [ %idle.0149, %land.rhs ]
  %call1 = call i32 @cpumask_next(i32 noundef %call1150, %struct.cpumask* noundef nonnull @__cpu_online_mask) #20
  %19 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %19
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup
  %tobool66.not = icmp eq i32 %throttled.2, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %if.end75

land.lhs.true67:                                  ; preds = %entry, %for.end
  %idle.0.lcssa157 = phi i32 [ %idle.3, %for.end ], [ 1, %entry ]
  %call68 = call fastcc i32 @rt_bandwidth_enabled() #17
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup76, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %land.lhs.true67
  %rt_runtime71 = getelementptr inbounds %struct.rt_bandwidth, %struct.rt_bandwidth* %rt_b, i64 0, i32 2
  %20 = load i64, i64* %rt_runtime71, align 8
  %cmp72 = icmp eq i64 %20, -1
  br i1 %cmp72, label %cleanup76, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false70, %for.end
  %idle.0.lcssa156 = phi i32 [ %idle.0.lcssa157, %lor.lhs.false70 ], [ %idle.3, %for.end ]
  br label %cleanup76

cleanup76:                                        ; preds = %land.lhs.true67, %lor.lhs.false70, %if.end75
  %retval.0 = phi i32 [ %idle.0.lcssa156, %if.end75 ], [ 1, %lor.lhs.false70 ], [ 1, %land.lhs.true67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(%struct.hrtimer* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.rt_rq* @sched_rt_period_rt_rq(i32 noundef %cpu) unnamed_addr #9 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 6
  ret %struct.rt_rq* %rt
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef readnone %rt_rq) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 -1, i32 0, i32 1, i64 85
  %0 = bitcast %struct.list_head* %add.ptr to %struct.rq*
  ret %struct.rq* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(%struct.rq* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rq_clock_cancel_skipupdate(%struct.rq* nocapture noundef %rq) unnamed_addr #8 {
entry:
  %clock_update_flags = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 14
  %0 = load i32, i32* %clock_update_flags, align 16
  %and = and i32 %0, -2
  store i32 %and, i32* %clock_update_flags, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_rq_throttled(%struct.rt_rq* nocapture noundef readonly %rt_rq) unnamed_addr #9 {
entry:
  %rt_throttled = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 9
  %0 = load i32, i32* %rt_throttled, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_rt_rq_enqueue(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %0 = load i32, i32* %rt_nr_running, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  call fastcc void @enqueue_top_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  call void @resched_curr(%struct.rq* noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_bandwidth_enabled() unnamed_addr #9 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  ret i32 %.lobit.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef readnone %rq) unnamed_addr #3 {
entry:
  %__lock = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 0
  ret %struct.raw_spinlock* %__lock
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_top_rt_rq(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6
  %cmp.not = icmp eq %struct.rt_rq* %rt, %rt_rq
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !14

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1059; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !16
  unreachable

do.end7:                                          ; preds = %entry
  %rt_queued = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 8
  %0 = load i32, i32* %rt_queued, align 8
  %tobool8.not = icmp eq i32 %0, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %do.end7
  %call11 = call fastcc i32 @rt_rq_throttled(%struct.rt_rq* noundef %rt_rq) #17
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end10
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %1 = load i32, i32* %rt_nr_running, align 8
  %tobool15.not = icmp eq i32 %1, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end14
  call fastcc void @add_nr_running(%struct.rq* noundef %call, i32 noundef %1) #17
  store i32 1, i32* %rt_queued, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then16, %if.end10, %do.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(%struct.rq* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @add_nr_running(%struct.rq* nocapture noundef %rq, i32 noundef %count) unnamed_addr #2 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %add = add i32 %0, %count
  store i32 %add, i32* %nr_running, align 4
  %cmp = icmp ult i32 %0, 2
  %cmp3 = icmp ugt i32 %add, 1
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %overload = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 5
  %2 = load volatile i32, i32* %overload, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %do.end
  store volatile i32 1, i32* %overload, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %do.body10, %entry
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @plist_head_empty(%struct.plist_head* noundef %head) unnamed_addr #5 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node_list) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(%struct.rq* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @pick_next_pushable_task(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @has_pushable_tasks(%struct.rq* noundef %rq) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pushable_tasks = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 7
  %call1 = call fastcc %struct.plist_node* @plist_first(%struct.plist_head* noundef %pushable_tasks) #17
  %add.ptr110 = getelementptr %struct.plist_node, %struct.plist_node* %call1, i64 -17
  %0 = bitcast %struct.plist_node* %add.ptr110 to %struct.task_struct*
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu, align 16
  %call3 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %0) #17
  %cmp.not = icmp eq i32 %1, %call3
  br i1 %cmp.not, label %do.body16, label %do.body7, !prof !14

do.body7:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1859; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !17
  unreachable

do.body16:                                        ; preds = %if.end
  %call17 = call fastcc i32 @task_current(%struct.rq* noundef %rq, %struct.task_struct* noundef %0) #17
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body36, label %do.body27, !prof !14

do.body27:                                        ; preds = %do.body16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1860; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !18
  unreachable

do.body36:                                        ; preds = %do.body16
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 24
  %2 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp37 = icmp slt i32 %2, 2
  br i1 %cmp37, label %do.body47, label %do.body56, !prof !9

do.body47:                                        ; preds = %do.body36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1861; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !19
  unreachable

do.body56:                                        ; preds = %do.body36
  %call57 = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef %0) #17
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body69, label %do.body78, !prof !9

do.body69:                                        ; preds = %do.body56
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1863; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !20
  unreachable

do.body78:                                        ; preds = %do.body56
  %call79 = call fastcc i32 @rt_task(%struct.task_struct* noundef %0) #17
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body91, label %cleanup, !prof !9

do.body91:                                        ; preds = %do.body78
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1864; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !21
  unreachable

cleanup:                                          ; preds = %do.body78, %entry
  %retval.0 = phi %struct.task_struct* [ null, %entry ], [ %0, %do.body78 ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_migration_disabled(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #9 {
entry:
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 29
  %0 = load i16, i16* %migration_disabled, align 16
  %tobool = icmp ne i16 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_lowest_rq(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  %add = add i64 %call, ptrtoint ([1 x %struct.cpumask]* @local_cpu_mask to i64)
  %0 = inttoptr i64 %add to %struct.cpumask*
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  %call11 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #17
  %tobool.not = icmp eq i64 %add, 0
  br i1 %tobool.not, label %cleanup112, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %cleanup112, label %if.end17

if.end17:                                         ; preds = %if.end
  %call19 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #17
  %cmp20 = icmp sgt i32 %call19, 0
  %call38 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %task) #17
  %idxprom = zext i32 %call38 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add39 = add i64 %4, ptrtoint (%struct.rq* @runqueues to i64)
  %5 = inttoptr i64 %add39 to %struct.rq*
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %5, i64 0, i32 21
  %6 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %6, i64 0, i32 19
  br i1 %cmp20, label %do.body31, label %do.body41, !prof !9

do.body31:                                        ; preds = %if.end17
  %call40 = call i32 @cpupri_find_fitness(%struct.cpupri* noundef %cpupri, %struct.task_struct* noundef %task, %struct.cpumask* noundef nonnull %0, i1 (%struct.task_struct*, i32)* noundef nonnull @rt_task_fits_capacity) #16
  br label %if.end55

do.body41:                                        ; preds = %if.end17
  %call54 = call i32 @cpupri_find(%struct.cpupri* noundef %cpupri, %struct.task_struct* noundef %task, %struct.cpumask* noundef nonnull %0) #16
  br label %if.end55

if.end55:                                         ; preds = %do.body41, %do.body31
  %ret.0 = phi i32 [ %call40, %do.body31 ], [ %call54, %do.body41 ]
  %tobool56.not = icmp eq i32 %ret.0, 0
  br i1 %tobool56.not, label %cleanup112, label %if.end58

if.end58:                                         ; preds = %if.end55
  %call59 = call fastcc i32 @cpumask_test_cpu(i32 noundef %call11, %struct.cpumask* noundef nonnull %0) #17
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %cleanup112

if.end62:                                         ; preds = %if.end58
  %call63 = call fastcc i32 @cpumask_test_cpu(i32 noundef %2, %struct.cpumask* noundef nonnull %0) #17
  %tobool64.not = icmp eq i32 %call63, 0
  %spec.select = select i1 %tobool64.not, i32 -1, i32 %2
  call fastcc void @__rcu_read_lock() #16
  %idxprom78 = sext i32 %call11 to i64
  %arrayidx79 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom78
  %7 = load i64, i64* %arrayidx79, align 8
  %add80 = add i64 %7, ptrtoint (%struct.rq* @runqueues to i64)
  %8 = inttoptr i64 %add80 to %struct.rq*
  %sd81 = getelementptr inbounds %struct.rq, %struct.rq* %8, i64 0, i32 22
  %9 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd81, align 8
  %tobool86.not161 = icmp eq %struct.sched_domain* %9, null
  br i1 %tobool86.not161, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end62
  %cmp89.not = icmp eq i32 %spec.select, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %sd.0162 = phi %struct.sched_domain* [ %9, %for.body.lr.ph ], [ %12, %for.inc ]
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0162, i64 0, i32 9
  %10 = load i32, i32* %flags, align 8
  %and = and i32 %10, 16
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %for.inc, label %if.then88

if.then88:                                        ; preds = %for.body
  %.pre = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %sd.0162) #17
  br i1 %cmp89.not, label %if.end95, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then88
  %call92 = call fastcc i32 @cpumask_test_cpu(i32 noundef %spec.select, %struct.cpumask* noundef %.pre) #17
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %land.lhs.true
  call fastcc void @rcu_read_unlock() #17
  br label %cleanup112

if.end95:                                         ; preds = %if.then88, %land.lhs.true
  %call97 = call i32 @cpumask_any_and_distribute(%struct.cpumask* noundef nonnull %0, %struct.cpumask* noundef %.pre) #16
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp98 = icmp ult i32 %call97, %11
  br i1 %cmp98, label %if.then100, label %for.inc

if.then100:                                       ; preds = %if.end95
  call fastcc void @rcu_read_unlock() #17
  br label %cleanup112

for.inc:                                          ; preds = %if.end95, %for.body
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.0162, i64 0, i32 0
  %12 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool86.not = icmp eq %struct.sched_domain* %12, null
  br i1 %tobool86.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end62
  call fastcc void @rcu_read_unlock() #17
  %cmp103.not = icmp eq i32 %spec.select, -1
  br i1 %cmp103.not, label %if.end106, label %cleanup112

if.end106:                                        ; preds = %for.end
  %call107 = call i32 @cpumask_any_distribute(%struct.cpumask* noundef nonnull %0) #16
  %13 = load i32, i32* @nr_cpu_ids, align 4
  %cmp108 = icmp ult i32 %call107, %13
  %call107. = select i1 %cmp108, i32 %call107, i32 -1
  br label %cleanup112

cleanup112:                                       ; preds = %if.then94, %if.then100, %if.end106, %for.end, %if.end58, %if.end55, %if.end, %entry
  %retval.3 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end55 ], [ %call11, %if.end58 ], [ %spec.select, %for.end ], [ %call107., %if.end106 ], [ %spec.select, %if.then94 ], [ %call97, %if.then100 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_push_task(%struct.rq* nocapture noundef %rq) unnamed_addr #0 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %push_busy = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 46
  %1 = load i32, i32* %push_busy, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 24
  %2 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %migration_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 29
  %3 = load i16, i16* %migration_disabled, align 16
  %tobool3.not = icmp eq i16 %3, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  store i32 1, i32* %push_busy, align 4
  %call = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end5
  %retval.0 = phi %struct.task_struct* [ %0, %if.end5 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end2 ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @stop_one_cpu_nowait(i32 noundef, i32 (i8*)* noundef, i8* noundef, %struct.cpu_stop_work* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @push_cpu_stop(i8* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #17
  ret %struct.task_struct* %t
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(%struct.rq* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @double_unlock_balance(%struct.rq* noundef readnone %this_rq, %struct.rq* noundef %busiest) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %this_rq) #17
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %busiest) #17
  %cmp.not = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @raw_spin_rq_unlock(%struct.rq* noundef %busiest) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.plist_node* @plist_first(%struct.plist_head* nocapture noundef readonly %head) unnamed_addr #9 {
entry:
  %0 = bitcast %struct.plist_head* %head to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.plist_node*
  ret %struct.plist_node* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #5 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_current(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* noundef readnone %p) unnamed_addr #9 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %cmp = icmp eq %struct.task_struct* %0, %p
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_on_rq_queued(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #9 {
entry:
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 14
  %0 = load i32, i32* %on_rq, align 32
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #9 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #5 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find_fitness(%struct.cpupri* noundef, %struct.task_struct* noundef, %struct.cpumask* noundef, i1 (%struct.task_struct*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @rt_task_fits_capacity(%struct.task_struct* nocapture noundef readnone %p, i32 noundef %cpu) #3 {
entry:
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find(%struct.cpupri* noundef, %struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef readnone %sd) unnamed_addr #3 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 20, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(%struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(%struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !23
  call void @rcu_read_unlock_strict() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #16
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !9

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !14

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #16
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !24
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #16
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !25
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !14

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !26
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #19, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #19, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_rt_entity(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_se(%struct.sched_rt_entity* noundef %rt_se) #17
  call fastcc void @dequeue_rt_stack(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) #17
  %tobool.not6 = icmp eq %struct.sched_rt_entity* %rt_se, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  call fastcc void @__enqueue_rt_entity(%struct.sched_rt_entity* noundef nonnull %rt_se, i32 noundef %flags) #17
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6
  call fastcc void @enqueue_top_rt_rq(%struct.rt_rq* noundef %rt) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @enqueue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %pushable_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 33
  %pushable_tasks1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 7
  call void @plist_del(%struct.plist_node* noundef %pushable_tasks, %struct.plist_head* noundef %pushable_tasks1) #16
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  call fastcc void @plist_node_init(%struct.plist_node* noundef %pushable_tasks, i32 noundef %0) #17
  call void @plist_add(%struct.plist_node* noundef %pushable_tasks, %struct.plist_head* noundef %pushable_tasks1) #16
  %1 = load i32, i32* %prio, align 4
  %next = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 3, i32 1
  %2 = load i32, i32* %next, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %1, i32* %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.rq* @rq_of_rt_se(%struct.sched_rt_entity* noundef %rt_se) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef %rt_se) #17
  %call2 = call fastcc i32 @task_cpu(%struct.task_struct* noundef %call) #17
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  ret %struct.rq* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_rt_stack(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not19 = icmp eq %struct.sched_rt_entity* %rt_se, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %back1 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 6
  store %struct.sched_rt_entity* null, %struct.sched_rt_entity** %back1, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call = call fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef %rt_se) #17
  call fastcc void @dequeue_top_rt_rq(%struct.rt_rq* noundef %call) #17
  %tobool3.not22 = icmp eq %struct.sched_rt_entity* %rt_se, null
  br i1 %tobool3.not22, label %for.end9, label %for.body4

for.body4:                                        ; preds = %for.end, %for.inc7
  %rt_se.addr.123 = phi %struct.sched_rt_entity* [ %0, %for.inc7 ], [ %rt_se, %for.end ]
  %call5 = call fastcc i32 @on_rt_rq(%struct.sched_rt_entity* noundef nonnull %rt_se.addr.123) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc7, label %if.then

if.then:                                          ; preds = %for.body4
  call fastcc void @__dequeue_rt_entity(%struct.sched_rt_entity* noundef nonnull %rt_se.addr.123, i32 noundef %flags) #17
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4, %if.then
  %back8 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se.addr.123, i64 0, i32 6
  %0 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %back8, align 8
  %tobool3.not = icmp eq %struct.sched_rt_entity* %0, null
  br i1 %tobool3.not, label %for.end9, label %for.body4

for.end9:                                         ; preds = %for.inc7, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__enqueue_rt_entity(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef %rt_se) #17
  %call3 = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %idx.ext = sext i32 %call3 to i64
  %add.ptr = getelementptr %struct.rt_rq, %struct.rt_rq* %call, i64 0, i32 0, i32 1, i64 %idx.ext
  %call10 = call fastcc i1 @move_entity(i32 noundef %flags) #17
  br i1 %call10, label %if.then11, label %if.end37

if.then11:                                        ; preds = %entry
  %on_list12 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 5
  %0 = load i16, i16* %on_list12, align 2
  %tobool13.not = icmp eq i16 %0, 0
  br i1 %tobool13.not, label %if.end22, label %if.then21, !prof !14

if.then21:                                        ; preds = %if.then11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1294; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !29
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then11
  %and = and i32 %flags, 16
  %tobool30.not = icmp eq i32 %and, 0
  %run_list32 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end22
  call fastcc void @list_add(%struct.list_head* noundef %run_list32, %struct.list_head* noundef %add.ptr) #17
  br label %if.end33

if.else:                                          ; preds = %if.end22
  call fastcc void @list_add_tail(%struct.list_head* noundef %run_list32, %struct.list_head* noundef %add.ptr) #17
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %call34 = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %rem.i = and i32 %call34, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %call34, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.rt_rq, %struct.rt_rq* %call, i64 0, i32 0, i32 0, i64 %idx.ext.i
  %1 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %shl.i, %1
  store i64 %or.i, i64* %add.ptr.i, align 8
  store i16 1, i16* %on_list12, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %entry
  %on_rq = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 4
  store i16 1, i16* %on_rq, align 4
  call fastcc void @inc_rt_tasks(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef readnone %rt_se) unnamed_addr #3 {
entry:
  %add.ptr = getelementptr %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 -7, i32 1
  %0 = bitcast i64* %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_top_rt_rq(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6
  %cmp.not = icmp eq %struct.rt_rq* %rt, %rt_rq
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !14

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1042; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !30
  unreachable

do.end7:                                          ; preds = %entry
  %rt_queued = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 8
  %0 = load i32, i32* %rt_queued, align 8
  %tobool8.not = icmp eq i32 %0, 0
  br i1 %tobool8.not, label %cleanup, label %do.body11

do.body11:                                        ; preds = %do.end7
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 1
  %1 = load i32, i32* %nr_running, align 4
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %do.body23, label %do.end31, !prof !9

do.body23:                                        ; preds = %do.body11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1047; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !31
  unreachable

do.end31:                                         ; preds = %do.body11
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %2 = load i32, i32* %rt_nr_running, align 8
  call fastcc void @sub_nr_running(%struct.rq* noundef %call, i32 noundef %2) #17
  store i32 0, i32* %rt_queued, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef %rt_se) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_se(%struct.sched_rt_entity* noundef %rt_se) #17
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6
  ret %struct.rt_rq* %rt
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @on_rt_rq(%struct.sched_rt_entity* nocapture noundef readonly %rt_se) unnamed_addr #9 {
entry:
  %on_rq = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 4
  %0 = load i16, i16* %on_rq, align 4
  %conv = zext i16 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dequeue_rt_entity(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef %rt_se) #17
  %active = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call, i64 0, i32 0
  %call1 = call fastcc i1 @move_entity(i32 noundef %flags) #17
  br i1 %call1, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %on_list = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 5
  %0 = load i16, i16* %on_list, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.then10, label %if.end, !prof !9

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1314; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  call fastcc void @__delist_rt_entity(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_prio_array* noundef %active) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  %on_rq = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 4
  store i16 0, i16* %on_rq, align 4
  call fastcc void @dec_rt_tasks(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sub_nr_running(%struct.rq* nocapture noundef %rq, i32 noundef %count) unnamed_addr #8 {
entry:
  %nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 1
  %0 = load i32, i32* %nr_running, align 4
  %sub = sub i32 %0, %count
  store i32 %sub, i32* %nr_running, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @move_entity(i32 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i32 %flags, 6
  %cmp = icmp ne i32 %and, 2
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__delist_rt_entity(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_prio_array* noundef %array) unnamed_addr #2 {
entry:
  %run_list = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %run_list) #17
  %call = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr %struct.rt_prio_array, %struct.rt_prio_array* %array, i64 0, i32 1, i64 %idx.ext
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %add.ptr) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %rem.i = and i32 %call2, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %call2, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.rt_prio_array, %struct.rt_prio_array* %array, i64 0, i32 0, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %on_list = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 5
  store i16 0, i16* %on_list, align 2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_rt_tasks(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %call1 = call fastcc i32 @rt_prio(i32 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1241; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %0 = load i32, i32* %rt_nr_running, align 8
  %tobool18.not = icmp eq i32 %0, 0
  br i1 %tobool18.not, label %if.then33, label %if.end34, !prof !9

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1242; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !34
  %.pre = load i32, i32* %rt_nr_running, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  %1 = phi i32 [ %.pre, %if.then33 ], [ %0, %if.end ]
  %sub = add i32 %1, -1
  store i32 %sub, i32* %rt_nr_running, align 8
  %call45 = call fastcc i32 @rt_se_rr_nr_running(%struct.sched_rt_entity* noundef %rt_se) #17
  %rr_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 2
  %2 = load i32, i32* %rr_nr_running, align 4
  %sub46 = sub i32 %2, %call45
  store i32 %sub46, i32* %rr_nr_running, align 4
  %call47 = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  call fastcc void @dec_rt_prio(%struct.rt_rq* noundef %rt_rq, i32 noundef %call47) #17
  call fastcc void @dec_rt_migration(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %rt_rq) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef readonly %rt_se) unnamed_addr #9 {
entry:
  %call = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef %rt_se) #17
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_se_rr_nr_running(%struct.sched_rt_entity* noundef readonly %rt_se) unnamed_addr #9 {
entry:
  %call1 = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef %rt_se) #17
  %policy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 23
  %0 = load i32, i32* %policy, align 16
  %cmp = icmp eq i32 %0, 2
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_rt_prio(%struct.rt_rq* noundef %rt_rq, i32 noundef %prio) unnamed_addr #0 {
entry:
  %curr = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 3, i32 0
  %0 = load i32, i32* %curr, align 8
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %1 = load i32, i32* %rt_nr_running, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end24.sink.split, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %0, %prio
  br i1 %cmp, label %if.then8, label %if.end, !prof !9

if.then8:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1138; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !35
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %cmp16 = icmp eq i32 %0, %prio
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 0, i64 0
  %call = call fastcc i32 @sched_find_first_bit(i64* noundef %arraydecay) #17
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %entry, %if.then18
  %call.sink = phi i32 [ %call, %if.then18 ], [ 99, %entry ]
  store i32 %call.sink, i32* %curr, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.end
  call fastcc void @dec_rt_prio_smp(%struct.rt_rq* noundef %rt_rq, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_rt_migration(%struct.sched_rt_entity* noundef readonly %rt_se, %struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef %rt_se) #17
  %call1 = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %rt_nr_total = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6, i32 5
  %0 = load i32, i32* %rt_nr_total, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %rt_nr_total, align 4
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rt_nr_migratory = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6, i32 4
  %2 = load i32, i32* %rt_nr_migratory, align 8
  %dec2 = add i32 %2, -1
  store i32 %dec2, i32* %rt_nr_migratory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6
  call fastcc void @update_rt_migration(%struct.rt_rq* noundef %rt) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sched_find_first_bit(i64* nocapture noundef readonly %b) unnamed_addr #11 {
entry:
  %0 = load i64, i64* %b, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = call i64 @llvm.cttz.i64(i64 %0, i1 true) #19, !range !36
  %conv = trunc i64 %1 to i32
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr i64, i64* %b, i64 1
  %2 = load i64, i64* %arrayidx2, align 8
  %3 = call i64 @llvm.cttz.i64(i64 %2, i1 false) #19, !range !36
  %4 = trunc i64 %3 to i32
  %conv4 = add nuw nsw i32 %4, 64
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %conv4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_rt_prio_smp(%struct.rt_rq* noundef readonly %rt_rq, i32 noundef %prev_prio) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %online = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %curr = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 3, i32 0
  %1 = load i32, i32* %curr, align 8
  %cmp.not = icmp eq i32 %1, %prev_prio
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %3 = load i32, i32* %cpu, align 16
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %3, i32 noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(%struct.cpupri* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_rt_migration(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %rt_nr_migratory = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 4
  %0 = load i32, i32* %rt_nr_migratory, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %rt_nr_total = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 5
  %1 = load i32, i32* %rt_nr_total, align 4
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %overloaded = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 6
  %2 = load i32, i32* %overloaded, align 8
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  call fastcc void @rt_set_overload(%struct.rq* noundef %call) #17
  store i32 1, i32* %overloaded, align 8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %overloaded4 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 6
  %3 = load i32, i32* %overloaded4, align 8
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %call7 = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  call fastcc void @rt_clear_overload(%struct.rq* noundef %call7) #17
  store i32 0, i32* %overloaded4, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %if.then, %if.then2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rt_set_overload(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu, align 16
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 18, i64 0
  call fastcc void @cpumask_set_cpu(i32 noundef %1, %struct.cpumask* noundef %arraydecay) #17
  call void asm sideeffect "dmb ishst", "~{memory}"() #19, !srcloc !37
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_count = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %rto_count) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rt_clear_overload(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_count = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %rto_count) #16
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 18, i64 0
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #17
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !40
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
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !41
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_rt_tasks(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %call1 = call fastcc i32 @rt_prio(i32 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1229; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rt_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 1
  %0 = load i32, i32* %rt_nr_running, align 8
  %add = add i32 %0, 1
  store i32 %add, i32* %rt_nr_running, align 8
  %call18 = call fastcc i32 @rt_se_rr_nr_running(%struct.sched_rt_entity* noundef %rt_se) #17
  %rr_nr_running = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 2
  %1 = load i32, i32* %rr_nr_running, align 4
  %add19 = add i32 %1, %call18
  store i32 %add19, i32* %rr_nr_running, align 4
  call fastcc void @inc_rt_prio(%struct.rt_rq* noundef %rt_rq, i32 noundef %call) #17
  call fastcc void @inc_rt_migration(%struct.sched_rt_entity* noundef %rt_se, %struct.rt_rq* noundef %rt_rq) #17
  call fastcc void @inc_rt_group() #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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
define internal fastcc void @inc_rt_prio(%struct.rt_rq* noundef %rt_rq, i32 noundef %prio) unnamed_addr #0 {
entry:
  %curr = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 3, i32 0
  %0 = load i32, i32* %curr, align 8
  %cmp = icmp sgt i32 %0, %prio
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %prio, i32* %curr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @inc_rt_prio_smp(%struct.rt_rq* noundef %rt_rq, i32 noundef %prio, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_rt_migration(%struct.sched_rt_entity* noundef readonly %rt_se, %struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef %rt_se) #17
  %call1 = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %rt_nr_total = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6, i32 5
  %0 = load i32, i32* %rt_nr_total, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %rt_nr_total, align 4
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rt_nr_migratory = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6, i32 4
  %2 = load i32, i32* %rt_nr_migratory, align 8
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %rt_nr_migratory, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call1, i64 0, i32 6
  call fastcc void @update_rt_migration(%struct.rt_rq* noundef %rt) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_rt_group() unnamed_addr #0 {
entry:
  call fastcc void @start_rt_bandwidth() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inc_rt_prio_smp(%struct.rt_rq* noundef readonly %rt_rq, i32 noundef %prio, i32 noundef %prev_prio) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  %online = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp ne i32 %0, 0
  %cmp = icmp slt i32 %prio, %prev_prio
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 19
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 32
  %2 = load i32, i32* %cpu, align 16
  call void @cpupri_set(%struct.cpupri* noundef %cpupri, i32 noundef %2, i32 noundef %prio) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @start_rt_bandwidth() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @rt_bandwidth_enabled() #17
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %cmp = icmp eq i64 %0, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  %1 = load i32, i32* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 4), align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 4), align 8
  %call5 = call fastcc i64 @hrtimer_forward_now(%struct.hrtimer* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 3), i64 noundef 0) #17
  call fastcc void @hrtimer_start_expires() #17
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  br label %return

return:                                           ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires() #17
  %call1 = call fastcc i64 @hrtimer_get_expires() #17
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 3), i64 noundef %call, i64 noundef %sub, i32 noundef 10) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires() unnamed_addr #9 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 3, i32 1), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires() unnamed_addr #9 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 3, i32 0, i32 1), align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_node_init(%struct.plist_node* noundef %node, i32 noundef %prio) unnamed_addr #2 {
entry:
  %prio1 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  store i32 %prio, i32* %prio1, align 8
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %prio_list) #17
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_rt_entity(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.rq* @rq_of_rt_se(%struct.sched_rt_entity* noundef %rt_se) #17
  call fastcc void @dequeue_rt_stack(%struct.sched_rt_entity* noundef %rt_se, i32 noundef %flags) #17
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %call, i64 0, i32 6
  call fastcc void @enqueue_top_rt_rq(%struct.rt_rq* noundef %rt) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dequeue_pushable_task(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %pushable_tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 33
  %pushable_tasks1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 7
  call void @plist_del(%struct.plist_node* noundef %pushable_tasks, %struct.plist_head* noundef %pushable_tasks1) #16
  %call = call fastcc i32 @has_pushable_tasks(%struct.rq* noundef %rq) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call fastcc %struct.plist_node* @plist_first(%struct.plist_head* noundef %pushable_tasks1) #17
  %add.ptr15 = getelementptr %struct.plist_node, %struct.plist_node* %call4, i64 -17
  %0 = bitcast %struct.plist_node* %add.ptr15 to %struct.task_struct*
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 15
  %1 = load i32, i32* %prio, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.sink = phi i32 [ %1, %if.then ], [ 99, %entry ]
  %2 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 3, i32 1
  store i32 %.sink, i32* %2, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @requeue_task_rt(%struct.task_struct* noundef %p, i32 noundef %head) unnamed_addr #2 {
entry:
  %rt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21
  %tobool.not1 = icmp eq %struct.sched_rt_entity* %rt, null
  br i1 %tobool.not1, label %for.end, label %for.body

for.body:                                         ; preds = %entry
  %call = call fastcc %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* noundef nonnull %rt) #17
  call fastcc void @requeue_rt_entity(%struct.rt_rq* noundef %call, %struct.sched_rt_entity* noundef nonnull %rt, i32 noundef %head) #17
  br label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @requeue_rt_entity(%struct.rt_rq* noundef %rt_rq, %struct.sched_rt_entity* noundef %rt_se, i32 noundef %head) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @on_rt_rq(%struct.sched_rt_entity* noundef %rt_se) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @rt_se_prio(%struct.sched_rt_entity* noundef %rt_se) #17
  %idx.ext = sext i32 %call2 to i64
  %add.ptr = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 1, i64 %idx.ext
  %tobool3.not = icmp eq i32 %head, 0
  %run_list5 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %rt_se, i64 0, i32 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call fastcc void @list_move(%struct.list_head* noundef %run_list5, %struct.list_head* noundef %add.ptr) #17
  br label %if.end6

if.else:                                          ; preds = %if.then
  call fastcc void @list_move_tail(%struct.list_head* noundef %run_list5, %struct.list_head* noundef %add.ptr) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #17
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #17
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_preempt_equal_prio(%struct.rq* noundef %rq, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 9
  %0 = load %struct.task_struct*, %struct.task_struct** %curr, align 8
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 24
  %1 = load i32, i32* %nr_cpus_allowed, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 19
  %call = call i32 @cpupri_find(%struct.cpupri* noundef %cpupri, %struct.task_struct* noundef %0, %struct.cpumask* noundef null) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %nr_cpus_allowed2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 24
  %3 = load i32, i32* %nr_cpus_allowed2, align 4
  %cmp3.not = icmp eq i32 %3, 1
  br i1 %cmp3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %cpupri5 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %4, i64 0, i32 19
  %call6 = call i32 @cpupri_find(%struct.cpupri* noundef %cpupri5, %struct.task_struct* noundef %p, %struct.cpumask* noundef null) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end
  call fastcc void @requeue_task_rt(%struct.task_struct* noundef %p, i32 noundef 1) #17
  call void @resched_curr(%struct.rq* noundef %rq) #16
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %lor.lhs.false, %if.end9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #5 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 1
  %conv.i = and i32 %2, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_rt_rq_load_avg(i64 noundef, %struct.rq* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_pelt(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %clock_pelt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 17
  %0 = load i64, i64* %clock_pelt, align 8
  %lost_idle_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 18
  %1 = load i64, i64* %lost_idle_time, align 16
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rq_clock_task(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %clock_task = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 16
  %0 = load i64, i64* %clock_task, align 64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @rt_queue_push_tasks(%struct.rq* noundef %rq) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @has_pushable_tasks(%struct.rq* noundef %rq) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.callback_head* @rt_push_head to i64)
  %2 = inttoptr i64 %add to %struct.callback_head*
  call fastcc void @queue_balance_callback(%struct.rq* noundef %rq, %struct.callback_head* noundef %2, void (%struct.rq*)* noundef nonnull @push_rt_tasks) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @queue_balance_callback(%struct.rq* nocapture noundef %rq, %struct.callback_head* noundef %head, void (%struct.rq*)* noundef %func) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 0
  %0 = load %struct.callback_head*, %struct.callback_head** %next, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  br i1 %tobool.not, label %lor.rhs, label %return, !prof !14

lor.rhs:                                          ; preds = %entry
  %balance_callback = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 25
  %1 = load %struct.callback_head*, %struct.callback_head** %balance_callback, align 64
  %cmp = icmp eq %struct.callback_head* %1, @balance_push_callback
  br i1 %cmp, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %lor.rhs
  %func3 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 1
  %2 = bitcast void (%struct.callback_head*)** %func3 to void (%struct.rq*)**
  store void (%struct.rq*)* %func, void (%struct.rq*)** %2, align 8
  %3 = load %struct.callback_head*, %struct.callback_head** %balance_callback, align 64
  store %struct.callback_head* %3, %struct.callback_head** %next, align 8
  store %struct.callback_head* %head, %struct.callback_head** %balance_callback, align 64
  br label %return

return:                                           ; preds = %entry, %lor.rhs, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @push_rt_tasks(%struct.rq* noundef %rq) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = call fastcc i32 @push_rt_task(%struct.rq* noundef %rq, i1 noundef false) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @need_pull_rt_task(%struct.rq* nocapture noundef readonly %rq, %struct.task_struct* nocapture noundef readonly %prev) unnamed_addr #9 {
entry:
  %online = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 33
  %0 = load i32, i32* %online, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %curr = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 3, i32 0
  %1 = load i32, i32* %curr, align 8
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %prev, i64 0, i32 15
  %2 = load i32, i32* %prio, align 4
  %cmp = icmp sgt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pull_rt_task(%struct.rq* nocapture noundef readonly %this_rq) #0 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 32
  %call = call fastcc i32 @rt_overloaded(%struct.rq* noundef %this_rq) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !14

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !43
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %0 = load i32, i32* %cpu, align 16
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %this_rq, i64 0, i32 21
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 18, i64 0
  %call7 = call fastcc i32 @cpumask_test_cpu(i32 noundef %0, %struct.cpumask* noundef %arraydecay) #17
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %if.end
  call fastcc void @tell_cpu_to_push(%struct.rq* noundef %this_rq) #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_stop_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %stop = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 11
  %0 = load %struct.task_struct*, %struct.task_struct** %stop, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i32 @task_on_rq_queued(%struct.task_struct* noundef nonnull %0) #17
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_dl_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %dl_nr_running = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 7, i32 1
  %0 = load i32, i32* %dl_nr_running, align 16
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sched_rt_runnable(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %rt_queued = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 8
  %0 = load i32, i32* %rt_queued, align 64
  %cmp = icmp sgt i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rt_overloaded(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #5 {
entry:
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %counter.i = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 1, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tell_cpu_to_push(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %rd = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_loop_next = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %rto_loop_next) #16
  %1 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_loop_start = getelementptr inbounds %struct.root_domain, %struct.root_domain* %1, i64 0, i32 17
  %call = call fastcc i1 @rto_start_trylock(%struct.atomic_t* noundef %rto_loop_start) #17
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_lock = getelementptr inbounds %struct.root_domain, %struct.root_domain* %2, i64 0, i32 13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rto_lock) #17
  %3 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_cpu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %3, i64 0, i32 15
  %4 = load i32, i32* %rto_cpu, align 8
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc i32 @rto_next_cpu(%struct.root_domain* noundef %3) #17
  %.pre = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %5 = phi %struct.root_domain* [ %.pre, %if.then4 ], [ %3, %if.end ]
  %cpu.0 = phi i32 [ %call6, %if.then4 ], [ -1, %if.end ]
  %rto_lock9 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %5, i64 0, i32 13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rto_lock9) #17
  %6 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_loop_start11 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %6, i64 0, i32 17
  call fastcc void @rto_start_unlock(%struct.atomic_t* noundef %rto_loop_start11) #17
  %cmp12 = icmp sgt i32 %cpu.0, -1
  br i1 %cmp12, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end7
  %7 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  call void @sched_get_rd(%struct.root_domain* noundef %7) #16
  %8 = load %struct.root_domain*, %struct.root_domain** %rd, align 32
  %rto_push_work = getelementptr inbounds %struct.root_domain, %struct.root_domain* %8, i64 0, i32 12
  %call16 = call i1 @irq_work_queue_on(%struct.irq_work* noundef %rto_push_work, i32 noundef %cpu.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then13, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @_double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rto_start_trylock(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.atomic_t* %v to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %tobool.not = icmp eq i32 %call11.i.i, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rto_start_unlock(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %counter.i.i, i32 0) #19, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_get_rd(%struct.root_domain* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_double_lock_balance(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %this_rq) #17
  %call1 = call fastcc %struct.raw_spinlock* @__rq_lockp(%struct.rq* noundef %busiest) #17
  %cmp = icmp eq %struct.raw_spinlock* %call, %call1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i1 @raw_spin_rq_trylock(%struct.rq* noundef %busiest) #16
  br i1 %call2, label %return, label %if.end5, !prof !14

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @rq_order_less(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #17
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %busiest, i32 noundef 1) #16
  br label %return

if.end8:                                          ; preds = %if.end5
  call void @raw_spin_rq_unlock(%struct.rq* noundef %this_rq) #16
  call void @double_rq_lock(%struct.rq* noundef %this_rq, %struct.rq* noundef %busiest) #16
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end8, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @raw_spin_rq_trylock(%struct.rq* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @rq_order_less(%struct.rq* nocapture noundef readonly %rq1, %struct.rq* nocapture noundef readonly %rq2) unnamed_addr #9 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq1, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %cpu1 = getelementptr inbounds %struct.rq, %struct.rq* %rq2, i64 0, i32 32
  %1 = load i32, i32* %cpu1, align 16
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(%struct.rq* noundef, %struct.rq* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_running(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #9 {
entry:
  %on_cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 6
  %0 = load i32, i32* %on_cpu, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @_pick_next_task_rt(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #0 {
entry:
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6
  %call = call fastcc %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rt_rq* noundef %rt) #17
  %tobool.not = icmp eq %struct.sched_rt_entity* %call, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !9

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1622; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !45
  unreachable

do.end10:                                         ; preds = %entry
  %call15 = call fastcc %struct.task_struct* @rt_task_of(%struct.sched_rt_entity* noundef nonnull %call) #17
  ret %struct.task_struct* %call15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_rt_entity* @pick_next_rt_entity(%struct.rt_rq* nocapture noundef readonly %rt_rq) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 0, i64 0
  %call = call fastcc i32 @sched_find_first_bit(i64* noundef %arraydecay) #17
  %cmp = icmp sgt i32 %call, 99
  br i1 %cmp, label %do.body2, label %do.end7, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 1607; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !46
  unreachable

do.end7:                                          ; preds = %entry
  %idx.ext = sext i32 %call to i64
  %next10 = getelementptr %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 0, i32 1, i64 %idx.ext, i32 0
  %0 = bitcast %struct.list_head** %next10 to %struct.sched_rt_entity**
  %1 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %0, align 8
  ret %struct.sched_rt_entity* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @dl_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #9 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @dl_prio(i32 noundef %0) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @dl_prio(i32 noundef %prio) unnamed_addr #3 {
entry:
  %prio.lobit = lshr i32 %prio, 31
  ret i32 %prio.lobit
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__enable_runtime(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @scheduler_running, align 4
  %tobool.not = icmp eq i32 %0, 0
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6
  %tobool4.not21 = icmp eq %struct.rt_rq* %rt, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not21
  br i1 %or.cond, label %cleanup, label %for.body, !prof !47

for.body:                                         ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  %rt_runtime_lock5 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock5) #17
  %1 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %rt_runtime6 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 11
  store i64 %1, i64* %rt_runtime6, align 8
  %rt_time = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 10
  store i64 0, i64* %rt_time, align 8
  %rt_throttled = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 9
  store i32 0, i32* %rt_throttled, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock5) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__disable_runtime(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %rd1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd1, align 32
  %1 = load i32, i32* @scheduler_running, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup72, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %rt = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6
  %tobool5.not140 = icmp eq %struct.rt_rq* %rt, null
  br i1 %tobool5.not140, label %cleanup72, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 3, i64 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  %rt_runtime_lock6 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock6) #17
  %rt_runtime = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 11
  %2 = load i64, i64* %rt_runtime, align 8
  %cmp = icmp eq i64 %2, -1
  %3 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %cmp10 = icmp eq i64 %2, %3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %balanced, label %if.end13

if.end13:                                         ; preds = %for.body.lr.ph
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock6) #17
  %4 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %5 = load i64, i64* %rt_runtime, align 8
  %sub = sub i64 %4, %5
  %call18136 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %arraydecay) #20
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp19137 = icmp ult i32 %call18136, %6
  br i1 %cmp19137, label %for.body21, label %for.end

for.body21:                                       ; preds = %if.end13, %cleanup
  %7 = phi i32 [ %10, %cleanup ], [ %6, %if.end13 ]
  %call18139 = phi i32 [ %call18, %cleanup ], [ %call18136, %if.end13 ]
  %want.0138 = phi i64 [ %want.2, %cleanup ], [ %sub, %if.end13 ]
  %call23 = call fastcc %struct.rt_rq* @sched_rt_period_rt_rq(i32 noundef %call18139) #17
  %cmp24 = icmp eq %struct.rt_rq* %call23, %rt
  br i1 %cmp24, label %cleanup, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %for.body21
  %rt_runtime27 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call23, i64 0, i32 11
  %8 = load i64, i64* %rt_runtime27, align 8
  %cmp28 = icmp eq i64 %8, -1
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false26
  %rt_runtime_lock32 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %call23, i64 0, i32 12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock32) #17
  %cmp33 = icmp sgt i64 %want.0138, 0
  %9 = load i64, i64* %rt_runtime27, align 8
  br i1 %cmp33, label %if.end45, label %if.end45.thread

if.end45.thread:                                  ; preds = %if.end31
  %sub43 = sub i64 %9, %want.0138
  store i64 %sub43, i64* %rt_runtime27, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock32) #17
  br label %for.end.thread

if.end45:                                         ; preds = %if.end31
  %cmp37 = icmp slt i64 %9, %want.0138
  %cond = select i1 %cmp37, i64 %9, i64 %want.0138
  %sub40 = sub i64 %9, %cond
  store i64 %sub40, i64* %rt_runtime27, align 8
  %sub41 = sub i64 %want.0138, %cond
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock32) #17
  %tobool47.not = icmp eq i64 %sub41, 0
  br i1 %tobool47.not, label %for.end.thread, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

for.end.thread:                                   ; preds = %if.end45, %if.end45.thread
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock6) #17
  br label %balanced

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %for.body21, %lor.lhs.false26
  %10 = phi i32 [ %7, %lor.lhs.false26 ], [ %7, %for.body21 ], [ %.pre, %if.end45.cleanup_crit_edge ]
  %want.2 = phi i64 [ %want.0138, %lor.lhs.false26 ], [ %want.0138, %for.body21 ], [ %sub41, %if.end45.cleanup_crit_edge ]
  %call18 = call i32 @cpumask_next(i32 noundef %call18139, %struct.cpumask* noundef %arraydecay) #20
  %cmp19 = icmp ult i32 %call18, %10
  br i1 %cmp19, label %for.body21, label %for.end

for.end:                                          ; preds = %cleanup, %if.end13
  %want.0.lcssa = phi i64 [ %sub, %if.end13 ], [ %want.2, %cleanup ]
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rt_runtime_lock6) #17
  %tobool52.not = icmp eq i64 %want.0.lcssa, 0
  br i1 %tobool52.not, label %balanced, label %do.body61, !prof !14

do.body61:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/rt.c\22; .popsection; .long 14472b - 14470b; .short 799; .short 0; .popsection; 14471: brk 0x800", ""() #19, !srcloc !48
  unreachable

balanced:                                         ; preds = %for.end.thread, %for.end, %for.body.lr.ph
  store i64 -1, i64* %rt_runtime, align 8
  %rt_throttled = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 6, i32 9
  store i32 0, i32* %rt_throttled, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rt_runtime_lock6) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  call fastcc void @sched_rt_rq_enqueue(%struct.rt_rq* noundef nonnull %rt) #17
  br label %cleanup72

cleanup72:                                        ; preds = %if.end, %balanced, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @watchdog(%struct.task_struct* nocapture noundef %p) unnamed_addr #5 {
entry:
  %call = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %p) #17
  %call1 = call fastcc i64 @task_rlimit_max(%struct.task_struct* noundef %p) #17
  %cmp.not = icmp eq i64 %call, -1
  br i1 %cmp.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %watchdog_stamp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 2
  %0 = load i64, i64* %watchdog_stamp, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %cmp2.not = icmp eq i64 %0, %1
  %timeout9.phi.trans.insert = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 21, i32 1
  %.pre = load i64, i64* %timeout9.phi.trans.insert, align 16
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %inc = add i64 %.pre, 1
  store i64 %inc, i64* %timeout9.phi.trans.insert, align 16
  %2 = load volatile i64, i64* @jiffies, align 64
  store i64 %2, i64* %watchdog_stamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %3 = phi i64 [ %inc, %if.then3 ], [ %.pre, %if.then ]
  %cmp7 = icmp ult i64 %call, %call1
  %cond = select i1 %cmp7, i64 %call, i64 %call1
  %sub = add i64 %cond, 3999
  %div = udiv i64 %sub, 4000
  %cmp10 = icmp ugt i64 %3, %div
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %posix_cputimers = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 77
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 20, i32 5
  %4 = load i64, i64* %sum_exec_runtime, align 8
  call fastcc void @posix_cputimers_rt_watchdog(%struct.posix_cputimers* noundef %posix_cputimers, i64 noundef %4) #17
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then11, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 15, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit_max(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_max = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 15, i32 1
  %1 = load volatile i64, i64* %rlim_max, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @posix_cputimers_rt_watchdog(%struct.posix_cputimers* nocapture noundef writeonly %pct, i64 noundef %runtime) unnamed_addr #13 {
entry:
  %nextevt = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  store i64 %runtime, i64* %nextevt, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rt_queue_pull_task(%struct.rq* nocapture noundef %rq) unnamed_addr #8 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.callback_head* @rt_pull_head to i64)
  %2 = inttoptr i64 %add to %struct.callback_head*
  call fastcc void @queue_balance_callback(%struct.rq* noundef %rq, %struct.callback_head* noundef %2, void (%struct.rq*)* noundef nonnull @pull_rt_task) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #17
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cpu_of(%struct.rq* nocapture noundef readonly %rq) unnamed_addr #9 {
entry:
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %0 = load i32, i32* %cpu, align 16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @account_group_exec_runtime(%struct.task_struct* nocapture noundef readonly %tsk, i64 noundef %ns) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* noundef %tsk) #17
  %tobool.not = icmp eq %struct.thread_group_cputimer* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sum_exec_runtime = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %call, i64 0, i32 0, i32 2
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %ns, %struct.atomic64_t* noundef %sum_exec_runtime) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @sched_rt_runtime(%struct.rt_rq* nocapture noundef readonly %rt_rq) unnamed_addr #9 {
entry:
  %rt_runtime = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 11
  %0 = load i64, i64* %rt_runtime, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sched_rt_runtime_exceeded(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @sched_rt_runtime(%struct.rt_rq* noundef %rt_rq) #17
  %rt_throttled = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 9
  %0 = load i32, i32* %rt_throttled, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @rt_rq_throttled(%struct.rt_rq* noundef %rt_rq) #17
  br label %cleanup47

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @sched_rt_period() #17
  %cmp.not = icmp ult i64 %call, %call2
  br i1 %cmp.not, label %if.end8, label %cleanup47

if.end8:                                          ; preds = %if.end
  %rt_time = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %rt_rq, i64 0, i32 10
  %1 = load i64, i64* %rt_time, align 8
  %cmp9 = icmp ugt i64 %1, %call
  br i1 %cmp9, label %if.then10, label %cleanup47

if.then10:                                        ; preds = %if.end8
  %2 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 2), align 8
  %tobool12.not = icmp eq i64 %2, 0
  br i1 %tobool12.not, label %if.else, label %if.then15, !prof !9

if.then15:                                        ; preds = %if.then10
  store i32 1, i32* %rt_throttled, align 4
  %.b64 = load i1, i1* @sched_rt_runtime_exceeded.__already_done, align 1
  br i1 %.b64, label %if.end41, label %if.then29, !prof !14

if.then29:                                        ; preds = %if.then15
  store i1 true, i1* @sched_rt_runtime_exceeded.__already_done, align 1
  %call30 = call i32 (i8*, ...) @_printk_deferred(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)) #21
  br label %if.end41

if.else:                                          ; preds = %if.then10
  store i64 0, i64* %rt_time, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then15, %if.then29, %if.else
  %call42 = call fastcc i32 @rt_rq_throttled(%struct.rt_rq* noundef %rt_rq) #17
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup47, label %if.then44

if.then44:                                        ; preds = %if.end41
  call fastcc void @sched_rt_rq_dequeue(%struct.rt_rq* noundef %rt_rq) #17
  br label %cleanup47

cleanup47:                                        ; preds = %if.end8, %if.end41, %if.then44, %if.end, %if.then
  %retval.1 = phi i32 [ %call1, %if.then ], [ 1, %if.then44 ], [ 0, %if.end ], [ 0, %if.end41 ], [ 0, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.thread_group_cputimer* @get_running_cputimer(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %timers_active = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 20, i32 1
  %1 = load volatile i32, i32* %timers_active, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cputimer1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 19
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %tobool3.not = icmp eq %struct.sighand_struct* %2, null
  %.cputimer1 = select i1 %tobool3.not, %struct.thread_group_cputimer* null, %struct.thread_group_cputimer* %cputimer1, !prof !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi %struct.thread_group_cputimer* [ null, %entry ], [ %.cputimer1, %if.end ]
  ret %struct.thread_group_cputimer* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @sched_rt_period() unnamed_addr #9 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 1), align 8
  ret i64 %0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(i8* noundef, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sched_rt_rq_dequeue(%struct.rt_rq* noundef %rt_rq) unnamed_addr #0 {
entry:
  call fastcc void @dequeue_top_rt_rq(%struct.rt_rq* noundef %rt_rq) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  call fastcc void @do_raw_spin_lock_flags() #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_runtime() unnamed_addr #9 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_runtime, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 1000
  %retval.0 = select i1 %cmp, i64 -1, i64 %mul
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0)) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rt_bandwidth* @def_rt_bandwidth to i8*), i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.rt_bandwidth, %struct.rt_bandwidth* @def_rt_bandwidth, i64 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #19, !srcloc !52
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #19, !srcloc !53
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #19, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #19, !srcloc !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @global_rt_period() unnamed_addr #9 {
entry:
  %0 = load i32, i32* @sysctl_sched_rt_period, align 4
  %conv = zext i32 %0 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  ret i64 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2149208474, i64 2149208521, i64 2149208527, i64 2149208564, i64 2149208582, i64 2149209509, i64 2149209557, i64 2149209605, i64 2149209668, i64 2149209717, i64 2149208660, i64 2149208685, i64 2149208711, i64 2149208717, i64 2149208754, i64 2149208760, i64 2149208810, i64 2149208856, i64 2149208889}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2157287162}
!11 = !{i64 2149826350}
!12 = !{i64 2148289949}
!13 = !{i64 2149833631}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 0, i64 4294967295001}
!16 = !{i64 2157218117}
!17 = !{i64 2157280046}
!18 = !{i64 2157281420}
!19 = !{i64 2157282802}
!20 = !{i64 2157284180}
!21 = !{i64 2157285538}
!22 = !{i64 2149581861}
!23 = !{i64 2149582078}
!24 = !{i64 2148016155, i64 2148016819, i64 2148016849, i64 2148016881, i64 2148016915, i64 2148016950, i64 2148016975}
!25 = !{i64 2149985655}
!26 = !{i64 2148027937, i64 2148028611, i64 2148028641, i64 2148028673, i64 2148028707, i64 2148028743, i64 2148028768}
!27 = !{i64 2148106053, i64 2148106086, i64 2148106139, i64 2148106198, i64 2148106232, i64 2148106287, i64 2148106316, i64 2148106336}
!28 = !{i64 2149780479}
!29 = !{i64 2157227228}
!30 = !{i64 2157215383}
!31 = !{i64 2157216749}
!32 = !{i64 2157228922}
!33 = !{i64 2157223768}
!34 = !{i64 2157225365}
!35 = !{i64 2157219724}
!36 = !{i64 0, i64 65}
!37 = !{i64 2157196987}
!38 = !{i64 2148079271, i64 2148079782, i64 2148079812, i64 2148079838, i64 2148079870, i64 2148079899}
!39 = !{i64 2148010191, i64 2148010707, i64 2148010737, i64 2148010764, i64 2148010798, i64 2148010828}
!40 = !{i64 2148019912, i64 2148020428, i64 2148020458, i64 2148020485, i64 2148020519, i64 2148020549}
!41 = !{i64 2148089841, i64 2148090362, i64 2148090392, i64 2148090418, i64 2148090450, i64 2148090479}
!42 = !{i64 2157221996}
!43 = !{i64 2157291061}
!44 = !{i64 2148293466}
!45 = !{i64 2157242556}
!46 = !{i64 2157234920}
!47 = !{!"branch_weights", i32 2002, i32 2000}
!48 = !{i64 2157209367}
!49 = !{i64 2148050877, i64 2148051391, i64 2148051421, i64 2148051447, i64 2148051479, i64 2148051508}
!50 = !{i64 2149811349}
!51 = !{i64 2149837192}
!52 = !{i64 2149065897, i64 2149065944, i64 2149065950, i64 2149065987, i64 2149066005, i64 2149067316, i64 2149067364, i64 2149067412, i64 2149067475, i64 2149067524, i64 2149066083, i64 2149066108, i64 2149066134, i64 2149066140, i64 2149066982, i64 2149067022, i64 2149067040, i64 2149067072, i64 2149067100, i64 2149067154, i64 2149067174, i64 2149067271, i64 2149066163, i64 2149066177, i64 2149066183, i64 2149066233, i64 2149066279, i64 2149066312}
!53 = !{i64 2149068076, i64 2149068123, i64 2149068129, i64 2149068166, i64 2149068184, i64 2149069127, i64 2149069175, i64 2149069223, i64 2149069286, i64 2149069335, i64 2149068262, i64 2149068287, i64 2149068313, i64 2149068319, i64 2149068356, i64 2149068362, i64 2149068412, i64 2149068458, i64 2149068491}
!54 = !{i64 2149060194, i64 2149060241, i64 2149060247, i64 2149060284, i64 2149060302, i64 2149061643, i64 2149061691, i64 2149061739, i64 2149061802, i64 2149061851, i64 2149060380, i64 2149060405, i64 2149060431, i64 2149060437, i64 2149061309, i64 2149061349, i64 2149061367, i64 2149061399, i64 2149061427, i64 2149061481, i64 2149061501, i64 2149061598, i64 2149060460, i64 2149060474, i64 2149060480, i64 2149060530, i64 2149060576, i64 2149060609}
!55 = !{i64 2149071910, i64 2149071957, i64 2149071963, i64 2149072000, i64 2149072018, i64 2149073329, i64 2149073377, i64 2149073425, i64 2149073488, i64 2149073537, i64 2149072096, i64 2149072121, i64 2149072147, i64 2149072153, i64 2149072995, i64 2149073035, i64 2149073053, i64 2149073085, i64 2149073113, i64 2149073167, i64 2149073187, i64 2149073284, i64 2149072176, i64 2149072190, i64 2149072196, i64 2149072246, i64 2149072292, i64 2149072325}
