; ModuleID = 'mm/memblock.c'
source_filename = "mm/memblock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.memblock_region = type { i64, i64, i32 }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, %struct.memblock_region*, i8* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.atomic64_t = type { i64 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.42 }
%union.anon.42 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.44 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.48 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.46, %struct.qspinlock }
%union.anon.46 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.48 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
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
%struct.cgroup_namespace = type opaque
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.39, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.39 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }

@memblock_memory_init_regions = internal global [128 x %struct.memblock_region] zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@memblock_reserved_init_regions = internal global [128 x %struct.memblock_region] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@memblock = dso_local global %struct.memblock { i8 0, i64 -1, %struct.memblock_type { i64 1, i64 128, i64 0, %struct.memblock_region* getelementptr inbounds ([128 x %struct.memblock_region], [128 x %struct.memblock_region]* @memblock_memory_init_regions, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0) }, %struct.memblock_type { i64 1, i64 128, i64 0, %struct.memblock_region* getelementptr inbounds ([128 x %struct.memblock_region], [128 x %struct.memblock_region]* @memblock_reserved_init_regions, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) } }, align 8
@memblock_debug = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\016%s: [%pa-%pa] nid=%d %pS\0A\00", align 1
@__func__.memblock_add_node = private unnamed_addr constant [18 x i8] c"memblock_add_node\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"\016%s: [%pa-%pa] %pS\0A\00", align 1
@__func__.memblock_add = private unnamed_addr constant [13 x i8] c"memblock_add\00", align 1
@__func__.memblock_remove = private unnamed_addr constant [16 x i8] c"memblock_remove\00", align 1
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@__func__.memblock_free = private unnamed_addr constant [14 x i8] c"memblock_free\00", align 1
@__func__.memblock_reserve = private unnamed_addr constant [17 x i8] c"memblock_reserve\00", align 1
@system_has_some_mirror = internal unnamed_addr global i1 false, align 1
@__next_mem_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Usage of MAX_NUMNODES is deprecated. Use NUMA_NO_NODE instead\0A\00", align 1
@__next_mem_range_rev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@memblock_alloc_range_nid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\014Could not allocate %pap bytes of mirrored memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\016%s: %llu bytes align=0x%llx from=%pa max_addr=%pa %pS\0A\00", align 1
@__func__.memblock_phys_alloc_range = private unnamed_addr constant [26 x i8] c"memblock_phys_alloc_range\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"\016%s: %llu bytes align=0x%llx nid=%d from=%pa max_addr=%pa %pS\0A\00", align 1
@__func__.memblock_alloc_exact_nid_raw = private unnamed_addr constant [29 x i8] c"memblock_alloc_exact_nid_raw\00", align 1
@__func__.memblock_alloc_try_nid_raw = private unnamed_addr constant [27 x i8] c"memblock_alloc_try_nid_raw\00", align 1
@__func__.memblock_alloc_try_nid = private unnamed_addr constant [23 x i8] c"memblock_alloc_try_nid\00", align 1
@__func__.__memblock_free_late = private unnamed_addr constant [21 x i8] c"__memblock_free_late\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\014%s: No memory registered yet\0A\00", align 1
@__func__.memblock_cap_memory_range = private unnamed_addr constant [26 x i8] c"memblock_cap_memory_range\00", align 1
@memblock_can_resize = internal unnamed_addr global i1 false, align 4
@__setup_str_early_memblock = internal constant [9 x i8] c"memblock\00", section ".init.rodata", align 1
@__setup_early_memblock = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_early_memblock, i32 0, i32 0), i32 (i8*)* @early_memblock, i32 1 }, section ".init.setup", align 8
@reset_managed_pages_done = internal unnamed_addr global i1 false, section ".init.data", align 4
@contig_page_data = dso_local local_unnamed_addr global %struct.pglist_data zeroinitializer, section ".ref.data", align 64
@max_low_pfn = dso_local local_unnamed_addr global i64 0, align 8
@min_low_pfn = dso_local local_unnamed_addr global i64 0, align 8
@max_pfn = dso_local local_unnamed_addr global i64 0, align 8
@max_possible_pfn = dso_local local_unnamed_addr global i64 0, align 8
@memblock_memory_in_slab = internal unnamed_addr global i32 0, align 4
@memblock_reserved_in_slab = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [65 x i8] c"\013memblock: Failed to double %s array from %ld to %ld entries !\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"\016memblock: %s is doubled to %ld at [%pa-%pa]\00", align 1
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"\016MEMBLOCK configuration:\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\016 memory size = %pa reserved size = %pa\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"\016 %s.cnt  = 0x%lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\016 %s[%#x]\09[%pa-%pa], %pa bytes%s flags: %#x\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_early_memblock to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i1 @memblock_overlaps_region(%struct.memblock_type* nocapture noundef readonly %type, i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i64 @memblock_cap_size(i64 noundef %base, i64* noundef nonnull %size.addr) #16
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %0 = load i64, i64* %cnt, align 8
  %cmp17.not = icmp eq i64 %0, 0
  br i1 %cmp17.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %2 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %base121 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 0, i32 0
  %3 = load i64, i64* %base121, align 8
  %size422 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 0, i32 1
  %4 = load i64, i64* %size422, align 8
  %call523 = call fastcc i64 @memblock_addrs_overlap(i64 noundef %base, i64 noundef %1, i64 noundef %3, i64 noundef %4) #16
  %tobool.not24 = icmp eq i64 %call523, 0
  br i1 %tobool.not24, label %for.cond, label %for.end

for.cond:                                         ; preds = %for.body.lr.ph, %for.body
  %inc25 = phi i64 [ %inc, %for.body ], [ 1, %for.body.lr.ph ]
  %exitcond.not = icmp eq i64 %inc25, %0
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %base1 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %inc25, i32 0
  %5 = load i64, i64* %base1, align 8
  %size4 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %inc25, i32 1
  %6 = load i64, i64* %size4, align 8
  %call5 = call fastcc i64 @memblock_addrs_overlap(i64 noundef %base, i64 noundef %1, i64 noundef %5, i64 noundef %6) #16
  %tobool.not = icmp eq i64 %call5, 0
  %inc = add nuw i64 %inc25, 1
  br i1 %tobool.not, label %for.cond, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.cond, %for.body
  %cmp.le = icmp ult i64 %inc25, %0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph, %entry
  %cmp.lcssa = phi i1 [ false, %entry ], [ true, %for.body.lr.ph ], [ %cmp.le, %for.end.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @memblock_cap_size(i64 noundef %base, i64* nocapture noundef %size) unnamed_addr #2 {
entry:
  %0 = load i64, i64* %size, align 8
  %sub = xor i64 %base, -1
  %cmp = icmp ult i64 %0, %sub
  %cond = select i1 %cmp, i64 %0, i64 %sub
  store i64 %cond, i64* %size, align 8
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @memblock_addrs_overlap(i64 noundef %base1, i64 noundef %size1, i64 noundef %base2, i64 noundef %size2) unnamed_addr #3 {
entry:
  %add = add i64 %size2, %base2
  %cmp = icmp ugt i64 %add, %base1
  %add1 = add i64 %size1, %base1
  %cmp2 = icmp ugt i64 %add1, %base2
  %narrow = and i1 %cmp2, %cmp
  %0 = zext i1 %narrow to i64
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_add_node(i64 noundef %base, i64 noundef %size, i32 noundef %nid) local_unnamed_addr #4 {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.memblock_add_node, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i32 noundef %nid, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %call15 = call fastcc i32 @memblock_add_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %5, i64 noundef %size) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %call15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memblock_add_range(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %size) unnamed_addr #4 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i64 @memblock_cap_size(i64 noundef %base, i64* noundef nonnull %size.addr) #16
  %add = add i64 %call, %base
  %0 = load i64, i64* %size.addr, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup116, label %if.end

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %1 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %size1 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %1, i64 0, i32 1
  %2 = load i64, i64* %size1, align 8
  %cmp = icmp eq i64 %2, 0
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  br i1 %cmp, label %if.then2, label %repeat.preheader

repeat.preheader:                                 ; preds = %if.end
  %max = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 1
  %3 = load i64, i64* %cnt, align 8
  %cmp3811.not = icmp eq i64 %3, 0
  br i1 %cmp3811.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %repeat.preheader
  %base4037 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %1, i64 0, i32 0
  %4 = load i64, i64* %base4037, align 8
  %cmp43.not39 = icmp ult i64 %4, %add
  br i1 %cmp43.not39, label %if.end46.lr.ph, label %for.end

if.end46.lr.ph:                                   ; preds = %for.body.preheader
  %add4238 = add i64 %2, %4
  br label %if.end46

if.then2:                                         ; preds = %if.end
  %5 = load i64, i64* %cnt, align 8
  %cmp3.not = icmp eq i64 %5, 1
  br i1 %cmp3.not, label %lor.rhs, label %if.then12

lor.rhs:                                          ; preds = %if.then2
  %total_size = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 2
  %6 = load i64, i64* %total_size, align 8
  %tobool4.not = icmp eq i64 %6, 0
  br i1 %tobool4.not, label %if.end13, label %if.then12, !prof !7

if.then12:                                        ; preds = %if.then2, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 582; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !8
  %.pre28 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.rhs
  %7 = phi %struct.memblock_region* [ %.pre28, %if.then12 ], [ %1, %lor.rhs ]
  %base23 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %7, i64 0, i32 0
  store i64 %base, i64* %base23, align 8
  %8 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %size26 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %8, i64 0, i32 1
  store i64 %0, i64* %size26, align 8
  %9 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %flags29 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %9, i64 0, i32 2
  store i32 0, i32* %flags29, align 8
  %total_size32 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 2
  store i64 %0, i64* %total_size32, align 8
  br label %cleanup116

repeat.loopexit:                                  ; preds = %while.body.while.cond_crit_edge, %if.end103
  %.lcssa = phi i64 [ %25, %if.end103 ], [ %.pre25, %while.body.while.cond_crit_edge ]
  %10 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %cmp3811.not.1 = icmp eq i64 %.lcssa, 0
  br i1 %cmp3811.not.1, label %for.end.1, label %for.body.1

for.body.1:                                       ; preds = %repeat.loopexit, %for.inc.1
  %11 = phi i64 [ %16, %for.inc.1 ], [ %.lcssa, %repeat.loopexit ]
  %12 = phi %struct.memblock_region* [ %17, %for.inc.1 ], [ %10, %repeat.loopexit ]
  %base.addr.015.1 = phi i64 [ %base.addr.1.ph.1, %for.inc.1 ], [ %base, %repeat.loopexit ]
  %rgn.014.1 = phi %struct.memblock_region* [ %arrayidx91.1, %for.inc.1 ], [ %10, %repeat.loopexit ]
  %nr_new.013.1 = phi i32 [ %nr_new.2.ph.1, %for.inc.1 ], [ 0, %repeat.loopexit ]
  %idx.012.1 = phi i32 [ %inc89.1, %for.inc.1 ], [ 0, %repeat.loopexit ]
  %base40.1 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.014.1, i64 0, i32 0
  %13 = load i64, i64* %base40.1, align 8
  %size41.1 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.014.1, i64 0, i32 1
  %14 = load i64, i64* %size41.1, align 8
  %add42.1 = add i64 %14, %13
  %cmp43.not.1 = icmp ult i64 %13, %add
  br i1 %cmp43.not.1, label %if.end46.1, label %for.end.1

if.end46.1:                                       ; preds = %for.body.1
  %cmp47.not.1 = icmp ugt i64 %add42.1, %base.addr.015.1
  br i1 %cmp47.not.1, label %if.end50.1, label %for.inc.1

if.end50.1:                                       ; preds = %if.end46.1
  %cmp51.1 = icmp ugt i64 %13, %base.addr.015.1
  br i1 %cmp51.1, label %if.then53.1, label %if.end84.1

if.then53.1:                                      ; preds = %if.end50.1
  %flags55.1 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.014.1, i64 0, i32 2
  %15 = load i32, i32* %flags55.1, align 8
  %cmp56.not.1 = icmp eq i32 %15, 0
  br i1 %cmp56.not.1, label %if.then81.1, label %if.then70.1, !prof !7

if.then70.1:                                      ; preds = %if.then53.1
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 615; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %if.then81.1

if.then81.1:                                      ; preds = %if.then53.1, %if.then70.1
  %inc.1 = add i32 %nr_new.013.1, 1
  %inc82.1 = add i32 %idx.012.1, 1
  %sub.1 = sub i64 %13, %base.addr.015.1
  call fastcc void @memblock_insert_region(%struct.memblock_type* noundef %type, i32 noundef %idx.012.1, i64 noundef %base.addr.015.1, i64 noundef %sub.1, i32 noundef 0) #16
  br label %if.end84.1

if.end84.1:                                       ; preds = %if.then81.1, %if.end50.1
  %idx.1.1 = phi i32 [ %inc82.1, %if.then81.1 ], [ %idx.012.1, %if.end50.1 ]
  %nr_new.1.1 = phi i32 [ %inc.1, %if.then81.1 ], [ %nr_new.013.1, %if.end50.1 ]
  %cmp86.1 = icmp ult i64 %add42.1, %add
  %cond.1 = select i1 %cmp86.1, i64 %add42.1, i64 %add
  %.pre26 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %.pre27 = load i64, i64* %cnt, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end84.1, %if.end46.1
  %16 = phi i64 [ %11, %if.end46.1 ], [ %.pre27, %if.end84.1 ]
  %17 = phi %struct.memblock_region* [ %12, %if.end46.1 ], [ %.pre26, %if.end84.1 ]
  %idx.2.ph.1 = phi i32 [ %idx.012.1, %if.end46.1 ], [ %idx.1.1, %if.end84.1 ]
  %nr_new.2.ph.1 = phi i32 [ %nr_new.013.1, %if.end46.1 ], [ %nr_new.1.1, %if.end84.1 ]
  %base.addr.1.ph.1 = phi i64 [ %base.addr.015.1, %if.end46.1 ], [ %cond.1, %if.end84.1 ]
  %inc89.1 = add i32 %idx.2.ph.1, 1
  %idxprom.1 = sext i32 %inc89.1 to i64
  %arrayidx91.1 = getelementptr %struct.memblock_region, %struct.memblock_region* %17, i64 %idxprom.1
  %cmp38.1 = icmp ugt i64 %16, %idxprom.1
  br i1 %cmp38.1, label %for.body.1, label %for.end.1

for.end.1:                                        ; preds = %for.body.1, %for.inc.1, %repeat.loopexit
  %idx.0.lcssa.1 = phi i32 [ 0, %repeat.loopexit ], [ %idx.012.1, %for.body.1 ], [ %inc89.1, %for.inc.1 ]
  %nr_new.0.lcssa.1 = phi i32 [ 0, %repeat.loopexit ], [ %nr_new.013.1, %for.body.1 ], [ %nr_new.2.ph.1, %for.inc.1 ]
  %base.addr.0.lcssa.1 = phi i64 [ %base, %repeat.loopexit ], [ %base.addr.015.1, %for.body.1 ], [ %base.addr.1.ph.1, %for.inc.1 ]
  %cmp92.1 = icmp ugt i64 %add, %base.addr.0.lcssa.1
  br i1 %cmp92.1, label %if.then97.1, label %if.end100.1

if.then97.1:                                      ; preds = %for.end.1
  %inc95.1 = add i32 %nr_new.0.lcssa.1, 1
  %sub98.1 = sub i64 %add, %base.addr.0.lcssa.1
  call fastcc void @memblock_insert_region(%struct.memblock_type* noundef %type, i32 noundef %idx.0.lcssa.1, i64 noundef %base.addr.0.lcssa.1, i64 noundef %sub98.1, i32 noundef 0) #16
  br label %if.end100.1

if.end100.1:                                      ; preds = %if.then97.1, %for.end.1
  %nr_new.4.1 = phi i32 [ %inc95.1, %if.then97.1 ], [ %nr_new.0.lcssa.1, %for.end.1 ]
  %tobool101.not.1 = icmp eq i32 %nr_new.4.1, 0
  br i1 %tobool101.not.1, label %cleanup116, label %if.else

if.end46:                                         ; preds = %if.end46.lr.ph, %for.inc.for.body_crit_edge
  %add4246 = phi i64 [ %add4238, %if.end46.lr.ph ], [ %add42, %for.inc.for.body_crit_edge ]
  %18 = phi i64 [ %4, %if.end46.lr.ph ], [ %24, %for.inc.for.body_crit_edge ]
  %idx.01245 = phi i32 [ 0, %if.end46.lr.ph ], [ %inc89, %for.inc.for.body_crit_edge ]
  %nr_new.01344 = phi i32 [ 0, %if.end46.lr.ph ], [ %nr_new.2.ph, %for.inc.for.body_crit_edge ]
  %rgn.01443 = phi %struct.memblock_region* [ %1, %if.end46.lr.ph ], [ %arrayidx91, %for.inc.for.body_crit_edge ]
  %base.addr.01542 = phi i64 [ %base, %if.end46.lr.ph ], [ %base.addr.1.ph, %for.inc.for.body_crit_edge ]
  %19 = phi %struct.memblock_region* [ %1, %if.end46.lr.ph ], [ %23, %for.inc.for.body_crit_edge ]
  %20 = phi i64 [ %3, %if.end46.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %.pre232941 = phi %struct.memblock_region* [ %1, %if.end46.lr.ph ], [ %.pre2330, %for.inc.for.body_crit_edge ]
  %.pre243240 = phi i64 [ %3, %if.end46.lr.ph ], [ %.pre2433, %for.inc.for.body_crit_edge ]
  %cmp47.not = icmp ugt i64 %add4246, %base.addr.01542
  br i1 %cmp47.not, label %if.end50, label %for.inc

if.end50:                                         ; preds = %if.end46
  %cmp51 = icmp ugt i64 %18, %base.addr.01542
  br i1 %cmp51, label %if.then53, label %if.end84

if.then53:                                        ; preds = %if.end50
  %flags55 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.01443, i64 0, i32 2
  %21 = load i32, i32* %flags55, align 8
  %cmp56.not = icmp eq i32 %21, 0
  br i1 %cmp56.not, label %if.end71.if.end84_crit_edge, label %if.then70, !prof !7

if.then70:                                        ; preds = %if.then53
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 615; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %if.end71.if.end84_crit_edge

if.end71.if.end84_crit_edge:                      ; preds = %if.then53, %if.then70
  %inc = add i32 %nr_new.01344, 1
  %.pre23.pre = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %.pre24.pre = load i64, i64* %cnt, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.end71.if.end84_crit_edge, %if.end50
  %.pre24 = phi i64 [ %.pre24.pre, %if.end71.if.end84_crit_edge ], [ %.pre243240, %if.end50 ]
  %.pre23 = phi %struct.memblock_region* [ %.pre23.pre, %if.end71.if.end84_crit_edge ], [ %.pre232941, %if.end50 ]
  %nr_new.1 = phi i32 [ %inc, %if.end71.if.end84_crit_edge ], [ %nr_new.01344, %if.end50 ]
  %cmp86 = icmp ult i64 %add4246, %add
  %cond = select i1 %cmp86, i64 %add4246, i64 %add
  br label %for.inc

for.inc:                                          ; preds = %if.end84, %if.end46
  %.pre2433 = phi i64 [ %.pre243240, %if.end46 ], [ %.pre24, %if.end84 ]
  %.pre2330 = phi %struct.memblock_region* [ %.pre232941, %if.end46 ], [ %.pre23, %if.end84 ]
  %22 = phi i64 [ %20, %if.end46 ], [ %.pre24, %if.end84 ]
  %23 = phi %struct.memblock_region* [ %19, %if.end46 ], [ %.pre23, %if.end84 ]
  %nr_new.2.ph = phi i32 [ %nr_new.01344, %if.end46 ], [ %nr_new.1, %if.end84 ]
  %base.addr.1.ph = phi i64 [ %base.addr.01542, %if.end46 ], [ %cond, %if.end84 ]
  %inc89 = add i32 %idx.01245, 1
  %idxprom = sext i32 %inc89 to i64
  %cmp38 = icmp ugt i64 %22, %idxprom
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx91 = getelementptr %struct.memblock_region, %struct.memblock_region* %23, i64 %idxprom
  %size41.phi.trans.insert = getelementptr %struct.memblock_region, %struct.memblock_region* %23, i64 %idxprom, i32 1
  %.pre = load i64, i64* %size41.phi.trans.insert, align 8
  %base40 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx91, i64 0, i32 0
  %24 = load i64, i64* %base40, align 8
  %add42 = add i64 %.pre, %24
  %cmp43.not = icmp ult i64 %24, %add
  br i1 %cmp43.not, label %if.end46, label %for.end

for.end:                                          ; preds = %for.inc.for.body_crit_edge, %for.inc, %for.body.preheader, %repeat.preheader
  %25 = phi i64 [ 0, %repeat.preheader ], [ %3, %for.body.preheader ], [ %22, %for.inc ], [ %22, %for.inc.for.body_crit_edge ]
  %nr_new.0.lcssa = phi i32 [ 0, %repeat.preheader ], [ 0, %for.body.preheader ], [ %nr_new.2.ph, %for.inc ], [ %nr_new.2.ph, %for.inc.for.body_crit_edge ]
  %base.addr.0.lcssa = phi i64 [ %base, %repeat.preheader ], [ %base, %for.body.preheader ], [ %base.addr.1.ph, %for.inc ], [ %base.addr.1.ph, %for.inc.for.body_crit_edge ]
  %cmp92 = icmp ugt i64 %add, %base.addr.0.lcssa
  %inc95 = zext i1 %cmp92 to i32
  %spec.select = add i32 %nr_new.0.lcssa, %inc95
  %tobool101.not = icmp eq i32 %spec.select, 0
  br i1 %tobool101.not, label %cleanup116, label %if.end103

if.end103:                                        ; preds = %for.end
  %conv107 = sext i32 %spec.select to i64
  %add10852 = add i64 %25, %conv107
  %26 = load i64, i64* %max, align 8
  %cmp10953 = icmp ugt i64 %add10852, %26
  br i1 %cmp10953, label %while.body, label %repeat.loopexit

while.body:                                       ; preds = %if.end103, %while.body.while.cond_crit_edge
  %call111 = call fastcc i32 @memblock_double_array(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %0) #16
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %cleanup116, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  %.pre25 = load i64, i64* %cnt, align 8
  %add108 = add i64 %.pre25, %conv107
  %27 = load i64, i64* %max, align 8
  %cmp109 = icmp ugt i64 %add108, %27
  br i1 %cmp109, label %while.body, label %repeat.loopexit

if.else:                                          ; preds = %if.end100.1
  call fastcc void @memblock_merge_regions(%struct.memblock_type* noundef %type) #16
  br label %cleanup116

cleanup116:                                       ; preds = %while.body, %for.end, %if.end100.1, %entry, %if.else, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %if.else ], [ 0, %entry ], [ 0, %if.end100.1 ], [ 0, %for.end ], [ -12, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_add(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.memblock_add, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %call15 = call fastcc i32 @memblock_add_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %5, i64 noundef %size) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %call15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_remove(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.memblock_remove, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %call15 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %5, i64 noundef %size) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %call15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %size) unnamed_addr #4 {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  %0 = bitcast i32* %start_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %start_rgn, align 4, !annotation !10
  %1 = bitcast i32* %end_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %end_rgn, align 4, !annotation !10
  %call = call fastcc i32 @memblock_isolate_range(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %size, i32* noundef nonnull %start_rgn, i32* noundef nonnull %end_rgn) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %end_rgn, align 4
  %3 = load i32, i32* %start_rgn, align 4
  %i.010 = add i32 %2, -1
  %cmp.not11 = icmp slt i32 %i.010, %3
  br i1 %cmp.not11, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.012 = phi i32 [ %i.0, %for.body ], [ %i.010, %if.end ]
  %conv = sext i32 %i.012 to i64
  call fastcc void @memblock_remove_region(%struct.memblock_type* noundef %type, i64 noundef %conv) #16
  %i.0 = add i32 %i.012, -1
  %cmp.not = icmp slt i32 %i.0, %3
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @memblock_free_ptr(i8* noundef %ptr, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint i8* %ptr to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  %call = call i32 @memblock_free(i64 noundef %cond, i64 noundef %size) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_free(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.memblock_free, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %call15 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %5, i64 noundef %size) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %call15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_reserve(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.memblock_reserve, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %call15 = call fastcc i32 @memblock_add_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %5, i64 noundef %size) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %call15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_mark_hotplug(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef 1, i32 noundef 1) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef %set, i32 noundef %flag) unnamed_addr #4 {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  %0 = bitcast i32* %start_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %start_rgn, align 4, !annotation !10
  %1 = bitcast i32* %end_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %end_rgn, align 4, !annotation !10
  %call = call fastcc i32 @memblock_isolate_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %base, i64 noundef %size, i32* noundef nonnull %start_rgn, i32* noundef nonnull %end_rgn) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %start_rgn, align 4
  %3 = load i32, i32* %end_rgn, align 4
  %cmp20 = icmp slt i32 %2, %3
  br i1 %cmp20, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool1.not = icmp eq i32 %set, 0
  %neg = xor i32 %flag, -1
  %4 = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %5 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %flags3 = getelementptr %struct.memblock_region, %struct.memblock_region* %5, i64 %indvars.iv, i32 2
  %6 = load i32, i32* %flags3, align 8
  %and = and i32 %6, %neg
  %or = or i32 %6, %flag
  %and.sink = select i1 %tobool1.not, i32 %and, i32 %or
  store i32 %and.sink, i32* %flags3, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @memblock_merge_regions(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2)) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_clear_hotplug(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef 0, i32 noundef 1) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_mark_mirror(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  store i1 true, i1* @system_has_some_mirror, align 1
  %call = call fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef 1, i32 noundef 2) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_mark_nomap(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef 1, i32 noundef 4) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @memblock_clear_nomap(i64 noundef %base, i64 noundef %size) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @memblock_setclr_flag(i64 noundef %base, i64 noundef %size, i32 noundef 0, i32 noundef 4) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__next_mem_range(i64* nocapture noundef %idx, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef %type_a, %struct.memblock_type* noundef readonly %type_b, i64* noundef writeonly %out_start, i64* noundef writeonly %out_end, i32* noundef writeonly %out_nid) local_unnamed_addr #4 {
entry:
  %0 = load i64, i64* %idx, align 8
  %shr = lshr i64 %0, 32
  %conv1 = trunc i64 %shr to i32
  %cmp = icmp eq i32 %nid, 1
  %.b216 = load i1, i1* @__next_mem_range.__already_done, align 1
  %lnot6 = xor i1 %.b216, true
  %1 = select i1 %cmp, i1 %lnot6, i1 false
  br i1 %1, label %if.then, label %if.end33, !prof !11

if.then:                                          ; preds = %entry
  store i1 true, i1* @__next_mem_range.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 1022; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %if.end33

if.end33:                                         ; preds = %if.then, %entry
  %spec.select = select i1 %cmp, i32 -1, i32 %nid
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_a, i64 0, i32 0
  %2 = load i64, i64* %cnt, align 8
  %sext = shl i64 %0, 32
  %conv45246 = ashr exact i64 %sext, 32
  %cmp46247 = icmp ugt i64 %2, %conv45246
  br i1 %cmp46247, label %for.body.lr.ph, label %cleanup144

for.body.lr.ph:                                   ; preds = %if.end33
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_a, i64 0, i32 3
  %3 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %tobool52.not = icmp eq %struct.memblock_type* %type_b, null
  %cnt68 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_b, i64 0, i32 0
  %regions73 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_b, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc141
  %conv45252 = phi i64 [ %conv45246, %for.body.lr.ph ], [ %conv45, %for.inc141 ]
  %idx_b.0248 = phi i32 [ %conv1, %for.body.lr.ph ], [ %idx_b.5.ph, %for.inc141 ]
  %arrayidx = getelementptr %struct.memblock_region, %struct.memblock_region* %3, i64 %conv45252
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx, i64 0, i32 0
  %4 = load i64, i64* %base, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %3, i64 %conv45252, i32 1
  %5 = load i64, i64* %size, align 8
  %add = add i64 %5, %4
  %call49 = call fastcc i1 @should_skip_region(%struct.memblock_type* noundef %type_a, %struct.memblock_region* noundef %arrayidx, i32 noundef %spec.select, i32 noundef %flags) #16
  br i1 %call49, label %for.inc141, label %if.end51

if.end51:                                         ; preds = %for.body
  br i1 %tobool52.not, label %if.then53, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %if.end51
  %6 = load i64, i64* %cnt68, align 8
  %add69 = add i64 %6, 1
  %conv67241 = sext i32 %idx_b.0248 to i64
  %cmp70242 = icmp ugt i64 %add69, %conv67241
  br i1 %cmp70242, label %for.body72.lr.ph, label %for.inc141

for.body72.lr.ph:                                 ; preds = %for.cond66.preheader
  %7 = load %struct.memblock_region*, %struct.memblock_region** %regions73, align 8
  br label %for.body72

if.then53:                                        ; preds = %if.end51
  %tobool54.not = icmp eq i64* %out_start, null
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.then53
  store i64 %4, i64* %out_start, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  %tobool57.not = icmp eq i64* %out_end, null
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end56
  store i64 %add, i64* %out_end, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56
  %tobool60.not = icmp eq i32* %out_nid, null
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end59
  store i32 0, i32* %out_nid, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  %inc = add nsw i64 %conv45252, 1
  %conv63 = and i64 %inc, 4294967295
  %conv64217 = zext i32 %idx_b.0248 to i64
  %shl = shl nuw i64 %conv64217, 32
  %or = or i64 %shl, %conv63
  br label %cleanup144

for.body72:                                       ; preds = %for.body72.lr.ph, %for.inc
  %conv67244 = phi i64 [ %conv67241, %for.body72.lr.ph ], [ %conv67, %for.inc ]
  %indvars = trunc i64 %conv67244 to i32
  %arrayidx75 = getelementptr %struct.memblock_region, %struct.memblock_region* %7, i64 %conv67244
  %tobool76.not = icmp eq i32 %indvars, 0
  br i1 %tobool76.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body72
  %arrayidx77 = getelementptr %struct.memblock_region, %struct.memblock_region* %arrayidx75, i64 -1
  %base78 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx77, i64 0, i32 0
  %8 = load i64, i64* %base78, align 8
  %size80 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx77, i64 0, i32 1
  %9 = load i64, i64* %size80, align 8
  %add81 = add i64 %9, %8
  br label %cond.end

cond.end:                                         ; preds = %for.body72, %cond.true
  %cond = phi i64 [ %add81, %cond.true ], [ 0, %for.body72 ]
  %cmp84 = icmp ugt i64 %6, %conv67244
  br i1 %cmp84, label %cond.true86, label %cond.end89

cond.true86:                                      ; preds = %cond.end
  %base87 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx75, i64 0, i32 0
  %10 = load i64, i64* %base87, align 8
  br label %cond.end89

cond.end89:                                       ; preds = %cond.end, %cond.true86
  %cond90 = phi i64 [ %10, %cond.true86 ], [ -1, %cond.end ]
  %cmp91.not = icmp ult i64 %cond, %add
  br i1 %cmp91.not, label %if.end94, label %for.inc141.loopexit.split.loop.exit

if.end94:                                         ; preds = %cond.end89
  %cmp95 = icmp ult i64 %4, %cond90
  br i1 %cmp95, label %if.then97, label %for.inc

if.then97:                                        ; preds = %if.end94
  %tobool98.not = icmp eq i64* %out_start, null
  br i1 %tobool98.not, label %if.end107, label %if.then99

if.then99:                                        ; preds = %if.then97
  %cmp101 = icmp ugt i64 %4, %cond
  %cond106 = select i1 %cmp101, i64 %4, i64 %cond
  store i64 %cond106, i64* %out_start, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then99, %if.then97
  %tobool108.not = icmp eq i64* %out_end, null
  br i1 %tobool108.not, label %if.end117, label %if.then109

if.then109:                                       ; preds = %if.end107
  %cmp111 = icmp ult i64 %add, %cond90
  %cond116 = select i1 %cmp111, i64 %add, i64 %cond90
  store i64 %cond116, i64* %out_end, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then109, %if.end107
  %tobool118.not = icmp eq i32* %out_nid, null
  br i1 %tobool118.not, label %cleanup.thread, label %if.then119

if.then119:                                       ; preds = %if.end117
  store i32 0, i32* %out_nid, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end117, %if.then119
  %cmp121.not = icmp ugt i64 %add, %cond90
  %inc125 = zext i1 %cmp121.not to i64
  %idx_b.2 = add nsw i64 %conv67244, %inc125
  %not.cmp121.not = xor i1 %cmp121.not, true
  %inc124 = zext i1 %not.cmp121.not to i64
  %idx_a.2 = add nsw i64 %conv45252, %inc124
  %conv127 = and i64 %idx_a.2, 4294967295
  %conv128218 = shl i64 %idx_b.2, 32
  %or130 = or i64 %conv128218, %conv127
  br label %cleanup144

for.inc:                                          ; preds = %if.end94
  %inc134 = add i32 %indvars, 1
  %conv67 = sext i32 %inc134 to i64
  %cmp70 = icmp ugt i64 %add69, %conv67
  br i1 %cmp70, label %for.body72, label %for.inc141

for.inc141.loopexit.split.loop.exit:              ; preds = %cond.end89
  %indvars.le = trunc i64 %conv67244 to i32
  br label %for.inc141

for.inc141:                                       ; preds = %for.inc, %for.inc141.loopexit.split.loop.exit, %for.cond66.preheader, %for.body
  %idx_b.5.ph = phi i32 [ %idx_b.0248, %for.body ], [ %idx_b.0248, %for.cond66.preheader ], [ %indvars.le, %for.inc141.loopexit.split.loop.exit ], [ %inc134, %for.inc ]
  %inc142 = shl nsw i64 %conv45252, 32
  %sext267 = add i64 %inc142, 4294967296
  %conv45 = ashr exact i64 %sext267, 32
  %cmp46 = icmp ugt i64 %2, %conv45
  br i1 %cmp46, label %for.body, label %cleanup144

cleanup144:                                       ; preds = %for.inc141, %if.end33, %if.end62, %cleanup.thread
  %or.sink = phi i64 [ %or, %if.end62 ], [ %or130, %cleanup.thread ], [ -1, %if.end33 ], [ -1, %for.inc141 ]
  store i64 %or.sink, i64* %idx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @should_skip_region(%struct.memblock_type* noundef readnone %type, %struct.memblock_region* nocapture noundef readonly %m, i32 noundef %nid, i32 noundef %flags) unnamed_addr #8 {
entry:
  %cmp.not = icmp eq %struct.memblock_type* %type, bitcast (i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0) to %struct.memblock_type*)
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %nid, label %cleanup [
    i32 -1, label %if.end4
    i32 0, label %if.end4
  ]

if.end4:                                          ; preds = %if.end, %if.end
  %and11 = and i32 %flags, 2
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end4
  %call14 = call fastcc i1 @memblock_is_mirror(%struct.memblock_region* noundef %m) #16
  br i1 %call14, label %if.end16, label %cleanup

if.end16:                                         ; preds = %land.lhs.true13, %if.end4
  %and17 = and i32 %flags, 4
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end22

land.lhs.true19:                                  ; preds = %if.end16
  %call20 = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %m) #16
  br i1 %call20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %land.lhs.true19, %if.end16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true19, %land.lhs.true13, %if.end, %entry, %if.end22
  %retval.0 = phi i1 [ false, %if.end22 ], [ false, %entry ], [ true, %if.end ], [ true, %land.lhs.true13 ], [ true, %land.lhs.true19 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__next_mem_range_rev(i64* nocapture noundef %idx, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef %type_a, %struct.memblock_type* noundef readonly %type_b, i64* noundef writeonly %out_start, i64* noundef writeonly %out_end, i32* noundef writeonly %out_nid) local_unnamed_addr #4 {
entry:
  %0 = load i64, i64* %idx, align 8
  %shr = lshr i64 %0, 32
  %conv1 = trunc i64 %shr to i32
  %cmp = icmp eq i32 %nid, 1
  %.b226 = load i1, i1* @__next_mem_range_rev.__already_done, align 1
  %lnot6 = xor i1 %.b226, true
  %1 = select i1 %cmp, i1 %lnot6, i1 false
  br i1 %1, label %if.then, label %if.end33, !prof !11

if.then:                                          ; preds = %entry
  store i1 true, i1* @__next_mem_range_rev.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 1118; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  %.pre = load i64, i64* %idx, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then, %entry
  %2 = phi i64 [ %.pre, %if.then ], [ %0, %entry ]
  %spec.select = select i1 %cmp, i32 -1, i32 %nid
  %cmp45 = icmp eq i64 %2, -1
  br i1 %cmp45, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end33
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_a, i64 0, i32 0
  %3 = load i64, i64* %cnt, align 8
  %sub = add i64 %3, -1
  %cmp49.not = icmp eq %struct.memblock_type* %type_b, null
  br i1 %cmp49.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.then47
  %cnt52 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_b, i64 0, i32 0
  %4 = load i64, i64* %cnt52, align 8
  %conv53 = trunc i64 %4 to i32
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.then51, %if.end33
  %idx_b.0 = phi i32 [ %conv53, %if.then51 ], [ %conv1, %if.end33 ], [ 0, %if.then47 ]
  %idx_a.0.in = phi i64 [ %sub, %if.then51 ], [ %0, %if.end33 ], [ %sub, %if.then47 ]
  %idx_a.0 = trunc i64 %idx_a.0.in to i32
  %cmp56255 = icmp sgt i32 %idx_a.0, -1
  br i1 %cmp56255, label %for.body.lr.ph, label %cleanup152

for.body.lr.ph:                                   ; preds = %if.end55
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_a, i64 0, i32 3
  %5 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %tobool62.not = icmp eq %struct.memblock_type* %type_b, null
  %regions80 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_b, i64 0, i32 3
  %cnt90 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type_b, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc149
  %idx_a.1257 = phi i32 [ %idx_a.0, %for.body.lr.ph ], [ %dec150, %for.inc149 ]
  %idx_b.1256 = phi i32 [ %idx_b.0, %for.body.lr.ph ], [ %idx_b.6.ph, %for.inc149 ]
  %idxprom243 = zext i32 %idx_a.1257 to i64
  %arrayidx = getelementptr %struct.memblock_region, %struct.memblock_region* %5, i64 %idxprom243
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx, i64 0, i32 0
  %6 = load i64, i64* %base, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %5, i64 %idxprom243, i32 1
  %7 = load i64, i64* %size, align 8
  %add = add i64 %7, %6
  %call59 = call fastcc i1 @should_skip_region(%struct.memblock_type* noundef %type_a, %struct.memblock_region* noundef %arrayidx, i32 noundef %spec.select, i32 noundef %flags) #16
  br i1 %call59, label %for.inc149, label %if.end61

if.end61:                                         ; preds = %for.body
  br i1 %tobool62.not, label %if.then63, label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %if.end61
  %cmp77252 = icmp sgt i32 %idx_b.1256, -1
  br i1 %cmp77252, label %for.body79.lr.ph, label %for.inc149

for.body79.lr.ph:                                 ; preds = %for.cond76.preheader
  %8 = load %struct.memblock_region*, %struct.memblock_region** %regions80, align 8
  %9 = load i64, i64* %cnt90, align 8
  %10 = zext i32 %idx_b.1256 to i64
  br label %for.body79

if.then63:                                        ; preds = %if.end61
  %tobool64.not = icmp eq i64* %out_start, null
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then63
  store i64 %6, i64* %out_start, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then63
  %tobool67.not = icmp eq i64* %out_end, null
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end66
  store i64 %add, i64* %out_end, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  %tobool70.not = icmp eq i32* %out_nid, null
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end69
  store i32 0, i32* %out_nid, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69
  %dec = add nsw i32 %idx_a.1257, -1
  %conv73 = zext i32 %dec to i64
  %conv74227 = zext i32 %idx_b.1256 to i64
  %shl = shl nuw i64 %conv74227, 32
  %or = or i64 %shl, %conv73
  br label %cleanup152

for.body79:                                       ; preds = %for.body79.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %10, %for.body79.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx82 = getelementptr %struct.memblock_region, %struct.memblock_region* %8, i64 %indvars.iv
  %tobool83.not = icmp eq i64 %indvars.iv, 0
  br i1 %tobool83.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body79
  %arrayidx84 = getelementptr %struct.memblock_region, %struct.memblock_region* %arrayidx82, i64 -1
  %base85 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx84, i64 0, i32 0
  %11 = load i64, i64* %base85, align 8
  %size87 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx84, i64 0, i32 1
  %12 = load i64, i64* %size87, align 8
  %add88 = add i64 %12, %11
  br label %cond.end

cond.end:                                         ; preds = %for.body79, %cond.true
  %cond = phi i64 [ %add88, %cond.true ], [ 0, %for.body79 ]
  %cmp91 = icmp ugt i64 %9, %indvars.iv
  br i1 %cmp91, label %cond.true93, label %cond.end96

cond.true93:                                      ; preds = %cond.end
  %base94 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx82, i64 0, i32 0
  %13 = load i64, i64* %base94, align 8
  br label %cond.end96

cond.end96:                                       ; preds = %cond.end, %cond.true93
  %cond97 = phi i64 [ %13, %cond.true93 ], [ -1, %cond.end ]
  %cmp98.not = icmp ugt i64 %cond97, %6
  br i1 %cmp98.not, label %if.end101, label %for.inc149.loopexit.split.loop.exit

if.end101:                                        ; preds = %cond.end96
  %cmp102 = icmp ugt i64 %add, %cond
  br i1 %cmp102, label %if.then104, label %for.inc

if.then104:                                       ; preds = %if.end101
  %tobool105.not = icmp eq i64* %out_start, null
  br i1 %tobool105.not, label %if.end114, label %if.then106

if.then106:                                       ; preds = %if.then104
  %cmp108 = icmp ugt i64 %6, %cond
  %cond113 = select i1 %cmp108, i64 %6, i64 %cond
  store i64 %cond113, i64* %out_start, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %if.then104
  %tobool115.not = icmp eq i64* %out_end, null
  br i1 %tobool115.not, label %if.end124, label %if.then116

if.then116:                                       ; preds = %if.end114
  %cmp118 = icmp ult i64 %add, %cond97
  %cond123 = select i1 %cmp118, i64 %add, i64 %cond97
  store i64 %cond123, i64* %out_end, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %if.end114
  %tobool125.not = icmp eq i32* %out_nid, null
  br i1 %tobool125.not, label %cleanup.thread, label %if.then126

if.then126:                                       ; preds = %if.end124
  store i32 0, i32* %out_nid, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end124, %if.then126
  %cmp128.not = icmp ult i64 %6, %cond
  %dec133 = sext i1 %cmp128.not to i64
  %idx_b.3 = add nsw i64 %indvars.iv, %dec133
  %not.cmp128.not = xor i1 %cmp128.not, true
  %dec131 = sext i1 %not.cmp128.not to i32
  %idx_a.3 = add i32 %idx_a.1257, %dec131
  %conv135 = zext i32 %idx_a.3 to i64
  %conv136228 = shl i64 %idx_b.3, 32
  %or138 = or i64 %conv136228, %conv135
  br label %cleanup152

for.inc:                                          ; preds = %if.end101
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp77 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp77, label %for.body79, label %for.inc149

for.inc149.loopexit.split.loop.exit:              ; preds = %cond.end96
  %14 = trunc i64 %indvars.iv to i32
  br label %for.inc149

for.inc149:                                       ; preds = %for.inc, %for.inc149.loopexit.split.loop.exit, %for.cond76.preheader, %for.body
  %idx_b.6.ph = phi i32 [ %idx_b.1256, %for.body ], [ %idx_b.1256, %for.cond76.preheader ], [ %14, %for.inc149.loopexit.split.loop.exit ], [ -1, %for.inc ]
  %dec150 = add nsw i32 %idx_a.1257, -1
  %cmp56 = icmp sgt i32 %idx_a.1257, 0
  br i1 %cmp56, label %for.body, label %cleanup152

cleanup152:                                       ; preds = %for.inc149, %if.end55, %if.end72, %cleanup.thread
  %or.sink = phi i64 [ %or, %if.end72 ], [ %or138, %cleanup.thread ], [ -1, %if.end55 ], [ -1, %for.inc149 ]
  store i64 %or.sink, i64* %idx, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @__next_mem_pfn_range(i32* nocapture noundef %idx, i32 noundef %nid, i64* noundef writeonly %out_start_pfn, i64* noundef writeonly %out_end_pfn, i32* noundef writeonly %out_nid) local_unnamed_addr #0 {
entry:
  %switch = icmp ult i32 %nid, 2
  %.pre = load i32, i32* %idx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i32 [ %inc, %while.body ], [ %.pre, %entry ]
  %inc = add i32 %0, 1
  store i32 %inc, i32* %idx, align 4
  %conv = sext i32 %inc to i64
  %1 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %cmp = icmp ugt i64 %1, %conv
  br i1 %cmp, label %while.body, label %if.then17

while.body:                                       ; preds = %while.cond
  %2 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %base = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %conv, i32 0
  %3 = load i64, i64* %base, align 8
  %sub = add i64 %3, 4095
  %shr = lshr i64 %sub, 12
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %conv, i32 1
  %4 = load i64, i64* %size, align 8
  %add3 = add i64 %4, %3
  %shr4 = lshr i64 %add3, 12
  %cmp5.not = icmp ult i64 %shr, %shr4
  %or.cond = and i1 %switch, %cmp5.not
  br i1 %or.cond, label %if.end18, label %while.cond

if.then17:                                        ; preds = %while.cond
  store i32 -1, i32* %idx, align 4
  br label %cleanup

if.end18:                                         ; preds = %while.body
  %tobool.not = icmp eq i64* %out_start_pfn, null
  br i1 %tobool.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end18
  store i64 %shr, i64* %out_start_pfn, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end18
  %tobool25.not = icmp eq i64* %out_end_pfn, null
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end24
  %5 = load i64, i64* %base, align 8
  %6 = load i64, i64* %size, align 8
  %add29 = add i64 %6, %5
  %shr30 = lshr i64 %add29, 12
  store i64 %shr30, i64* %out_end_pfn, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end24
  %tobool32.not = icmp eq i32* %out_nid, null
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.end31
  store i32 0, i32* %out_nid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then33, %if.then17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @memblock_set_node(i64 noundef %base, i64 noundef %size, %struct.memblock_type* nocapture noundef readnone %type, i32 noundef %nid) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @memblock_alloc_range_nid(i64 noundef %size, i64 noundef %align, i64 noundef %start, i64 noundef %end, i32 noundef %nid, i1 noundef %exact_nid) local_unnamed_addr #9 section ".init.text" {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i32 @choose_memblock_flags() #16
  %cmp = icmp eq i32 %nid, 1
  %.b98 = load i1, i1* @memblock_alloc_range_nid.__already_done, align 1
  %lnot4 = xor i1 %.b98, true
  %0 = select i1 %cmp, i1 %lnot4, i1 false
  br i1 %0, label %if.then, label %if.end30, !prof !11

if.then:                                          ; preds = %entry
  store i1 true, i1* @memblock_alloc_range_nid.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %entry
  %spec.select = select i1 %cmp, i32 -1, i32 %nid
  %tobool42.not = icmp eq i64 %align, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end30
  call void @dump_stack() #18
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end30
  %align.addr.0 = phi i64 [ %align, %if.end30 ], [ 64, %if.then43 ]
  %cmp51.not = icmp eq i32 %spec.select, -1
  %brmerge = or i1 %cmp51.not, %exact_nid
  %1 = and i32 %call, -3
  br label %again

again:                                            ; preds = %if.then65, %if.end44
  %2 = phi i64 [ %size, %if.end44 ], [ %.pre, %if.then65 ]
  %flags.0 = phi i32 [ %call, %if.end44 ], [ %1, %if.then65 ]
  %call45 = call fastcc i64 @memblock_find_in_range_node(i64 noundef %2, i64 noundef %align.addr.0, i64 noundef %start, i64 noundef %end, i32 noundef %spec.select, i32 noundef %flags.0) #16
  %tobool46.not = icmp eq i64 %call45, 0
  br i1 %tobool46.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %again
  %3 = load i64, i64* %size.addr, align 8
  %call47 = call i32 @memblock_reserve(i64 noundef %call45, i64 noundef %3) #16
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup, label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %again
  br i1 %brmerge, label %if.end63, label %if.then55

if.then55:                                        ; preds = %if.end50
  %4 = load i64, i64* %size.addr, align 8
  %call56 = call fastcc i64 @memblock_find_in_range_node(i64 noundef %4, i64 noundef %align.addr.0, i64 noundef %start, i64 noundef %end, i32 noundef -1, i32 noundef %flags.0) #16
  %tobool57.not = icmp eq i64 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.then55
  %5 = load i64, i64* %size.addr, align 8
  %call59 = call i32 @memblock_reserve(i64 noundef %call56, i64 noundef %5) #16
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.end50, %if.then55, %land.lhs.true58
  %and = and i32 %flags.0, 2
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %cleanup, label %if.then65

if.then65:                                        ; preds = %if.end63
  %call71 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %size.addr) #18
  %.pre = load i64, i64* %size.addr, align 8
  br label %again

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true58, %if.end63
  %retval.0 = phi i64 [ 0, %if.end63 ], [ %call56, %land.lhs.true58 ], [ %call45, %land.lhs.true ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @choose_memblock_flags() unnamed_addr #8 {
entry:
  %.b1 = load i1, i1* @system_has_some_mirror, align 1
  %cond = select i1 %.b1, i32 2, i32 0
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @memblock_find_in_range_node(i64 noundef %size, i64 noundef %align, i64 noundef %start, i64 noundef %end, i32 noundef %nid, i32 noundef %flags) unnamed_addr #4 {
entry:
  %0 = icmp ult i64 %end, 2
  %1 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  %spec.select = select i1 %0, i64 %1, i64 %end
  %cmp2 = icmp ugt i64 %start, 4096
  %cond = select i1 %cmp2, i64 %start, i64 4096
  %cmp4 = icmp ugt i64 %cond, %spec.select
  %cond8 = select i1 %cmp4, i64 %cond, i64 %spec.select
  %call = call fastcc i1 @memblock_bottom_up() #16
  br i1 %call, label %if.then9, label %if.else

if.then9:                                         ; preds = %entry
  %call10 = call fastcc i64 @__memblock_find_range_bottom_up(i64 noundef %cond, i64 noundef %cond8, i64 noundef %size, i64 noundef %align, i32 noundef %nid, i32 noundef %flags) #16
  br label %return

if.else:                                          ; preds = %entry
  %call11 = call fastcc i64 @__memblock_find_range_top_down(i64 noundef %cond, i64 noundef %cond8, i64 noundef %size, i64 noundef %align, i32 noundef %nid, i32 noundef %flags) #16
  br label %return

return:                                           ; preds = %if.else, %if.then9
  %retval.0 = phi i64 [ %call10, %if.then9 ], [ %call11, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @memblock_phys_alloc_range(i64 noundef %size, i64 noundef %align, i64 noundef %start, i64 noundef %end) local_unnamed_addr #9 section ".init.text" {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end11

do.end:                                           ; preds = %entry
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool2.not, i64 %and10, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.memblock_phys_alloc_range, i64 0, i64 0), i64 noundef %size, i64 noundef %align, i64* noundef nonnull %start.addr, i64* noundef nonnull %end.addr, i8* noundef %3) #18
  %.pre = load i64, i64* %start.addr, align 8
  %.pre15 = load i64, i64* %end.addr, align 8
  br label %do.end11

do.end11:                                         ; preds = %entry, %do.end
  %4 = phi i64 [ %end, %entry ], [ %.pre15, %do.end ]
  %5 = phi i64 [ %start, %entry ], [ %.pre, %do.end ]
  %call12 = call i64 @memblock_alloc_range_nid(i64 noundef %size, i64 noundef %align, i64 noundef %5, i64 noundef %4, i32 noundef -1, i1 noundef false) #20
  ret i64 %call12
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i64 @memblock_phys_alloc_try_nid(i64 noundef %size, i64 noundef %align, i32 noundef %nid) local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call i64 @memblock_alloc_range_nid(i64 noundef %size, i64 noundef %align, i64 noundef 0, i64 noundef 0, i32 noundef %nid, i1 noundef false) #20
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @memblock_alloc_exact_nid_raw(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #9 section ".init.text" {
entry:
  %min_addr.addr = alloca i64, align 8
  %max_addr.addr = alloca i64, align 8
  store i64 %min_addr, i64* %min_addr.addr, align 8
  store i64 %max_addr, i64* %max_addr.addr, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end11

do.end:                                           ; preds = %entry
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool2.not, i64 %and10, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.memblock_alloc_exact_nid_raw, i64 0, i64 0), i64 noundef %size, i64 noundef %align, i32 noundef %nid, i64* noundef nonnull %min_addr.addr, i64* noundef nonnull %max_addr.addr, i8* noundef %3) #18
  %.pre = load i64, i64* %min_addr.addr, align 8
  %.pre16 = load i64, i64* %max_addr.addr, align 8
  br label %do.end11

do.end11:                                         ; preds = %entry, %do.end
  %4 = phi i64 [ %max_addr, %entry ], [ %.pre16, %do.end ]
  %5 = phi i64 [ %min_addr, %entry ], [ %.pre, %do.end ]
  %call12 = call fastcc i8* @memblock_alloc_internal(i64 noundef %size, i64 noundef %align, i64 noundef %5, i64 noundef %4, i32 noundef %nid, i1 noundef true) #20
  ret i8* %call12
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i8* @memblock_alloc_internal(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef %max_addr, i32 noundef %nid, i1 noundef %exact_nid) unnamed_addr #9 section ".init.text" {
entry:
  %call = call i1 @slab_is_available() #19
  br i1 %call, label %if.then, label %if.end17, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 1473; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  %call16 = call fastcc i8* @kzalloc_node(i64 noundef %size) #16
  br label %cleanup

if.end17:                                         ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  %cmp = icmp ult i64 %0, %max_addr
  %spec.select = select i1 %cmp, i64 %0, i64 %max_addr
  %call22 = call i64 @memblock_alloc_range_nid(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef %spec.select, i32 noundef %nid, i1 noundef %exact_nid) #20
  %tobool23 = icmp eq i64 %call22, 0
  %tobool24 = icmp ne i64 %min_addr, 0
  %or.cond = and i1 %tobool24, %tobool23
  br i1 %or.cond, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end17
  %call27 = call i64 @memblock_alloc_range_nid(i64 noundef %size, i64 noundef %align, i64 noundef 0, i64 noundef %spec.select, i32 noundef %nid, i1 noundef %exact_nid) #20
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end17
  %alloc.0 = phi i64 [ %call27, %if.then25 ], [ %call22, %if.end17 ]
  %tobool29.not = icmp eq i64 %alloc.0, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end28
  %call32 = call fastcc i8* @phys_to_virt(i64 noundef %alloc.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end31, %if.then
  %retval.0 = phi i8* [ %call16, %if.then ], [ %call32, %if.end31 ], [ null, %if.end28 ]
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @memblock_alloc_try_nid_raw(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #9 section ".init.text" {
entry:
  %min_addr.addr = alloca i64, align 8
  %max_addr.addr = alloca i64, align 8
  store i64 %min_addr, i64* %min_addr.addr, align 8
  store i64 %max_addr, i64* %max_addr.addr, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end11

do.end:                                           ; preds = %entry
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool2.not, i64 %and10, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.memblock_alloc_try_nid_raw, i64 0, i64 0), i64 noundef %size, i64 noundef %align, i32 noundef %nid, i64* noundef nonnull %min_addr.addr, i64* noundef nonnull %max_addr.addr, i8* noundef %3) #18
  %.pre = load i64, i64* %min_addr.addr, align 8
  %.pre16 = load i64, i64* %max_addr.addr, align 8
  br label %do.end11

do.end11:                                         ; preds = %entry, %do.end
  %4 = phi i64 [ %max_addr, %entry ], [ %.pre16, %do.end ]
  %5 = phi i64 [ %min_addr, %entry ], [ %.pre, %do.end ]
  %call12 = call fastcc i8* @memblock_alloc_internal(i64 noundef %size, i64 noundef %align, i64 noundef %5, i64 noundef %4, i32 noundef %nid, i1 noundef false) #20
  ret i8* %call12
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @memblock_alloc_try_nid(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef %max_addr, i32 noundef %nid) local_unnamed_addr #9 section ".init.text" {
entry:
  %min_addr.addr = alloca i64, align 8
  %max_addr.addr = alloca i64, align 8
  store i64 %min_addr, i64* %min_addr.addr, align 8
  store i64 %max_addr, i64* %max_addr.addr, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end12

do.end:                                           ; preds = %entry
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl5.neg = shl nsw i64 -1, %2
  %or = or i64 %shl5.neg, %1
  %and8 = and i64 %shl5.neg, 36028797018963967
  %neg = xor i64 %and8, -1
  %and10 = and i64 %neg, %1
  %cond = select i1 %tobool2.not, i64 %and10, i64 %or
  %3 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.memblock_alloc_try_nid, i64 0, i64 0), i64 noundef %size, i64 noundef %align, i32 noundef %nid, i64* noundef nonnull %min_addr.addr, i64* noundef nonnull %max_addr.addr, i8* noundef %3) #18
  %.pre = load i64, i64* %min_addr.addr, align 8
  %.pre25 = load i64, i64* %max_addr.addr, align 8
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry
  %4 = phi i64 [ %.pre25, %do.end ], [ %max_addr, %entry ]
  %5 = phi i64 [ %.pre, %do.end ], [ %min_addr, %entry ]
  %call13 = call fastcc i8* @memblock_alloc_internal(i64 noundef %size, i64 noundef %align, i64 noundef %5, i64 noundef %4, i32 noundef %nid, i1 noundef false) #20
  %tobool14.not = icmp eq i8* %call13, null
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %do.end12
  %call16 = call i8* @memset(i8* noundef nonnull %call13, i32 noundef 0, i64 noundef %size) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end12
  ret i8* %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @__memblock_free_late(i64 noundef %base, i64 noundef %size) local_unnamed_addr #9 section ".init.text" {
entry:
  %base.addr = alloca i64, align 8
  %end = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  %0 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %base, -1
  %sub = add i64 %add, %size
  store i64 %sub, i64* %end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end, label %do.end14

do.end:                                           ; preds = %entry
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, 36028797018963968
  %tobool2.not = icmp eq i64 %and, 0
  %3 = load i64, i64* @vabits_actual, align 8
  %shl7.neg = shl nsw i64 -1, %3
  %or = or i64 %shl7.neg, %2
  %and10 = and i64 %shl7.neg, 36028797018963967
  %neg = xor i64 %and10, -1
  %and12 = and i64 %neg, %2
  %cond = select i1 %tobool2.not, i64 %and12, i64 %or
  %4 = inttoptr i64 %cond to i8*
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.__memblock_free_late, i64 0, i64 0), i64* noundef nonnull %base.addr, i64* noundef nonnull %end, i8* noundef %4) #18
  %.pre = load i64, i64* %base.addr, align 8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %entry
  %5 = phi i64 [ %.pre, %do.end ], [ %base, %entry ]
  %sub16 = add i64 %5, 4095
  %shr = lshr i64 %sub16, 12
  %add17 = add i64 %5, %size
  %shr18 = lshr i64 %add17, 12
  store i64 %shr18, i64* %end, align 8
  %cmp27 = icmp ult i64 %shr, %shr18
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %do.end14, %for.body
  %cursor.028 = phi i64 [ %inc, %for.body ], [ %shr, %do.end14 ]
  %6 = load i64, i64* @memstart_addr, align 8
  %shr19 = ashr i64 %6, 12
  %idx.neg = sub nsw i64 0, %shr19
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr20 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %cursor.028
  call void @memblock_free_pages(%struct.page* noundef %add.ptr20, i64 noundef %cursor.028, i32 noundef 0) #19
  call fastcc void @totalram_pages_inc() #16
  %inc = add nuw i64 %cursor.028, 1
  %7 = load i64, i64* %end, align 8
  %cmp = icmp ult i64 %inc, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_pages(%struct.page* noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @totalram_pages_inc() unnamed_addr #4 {
entry:
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @memblock_phys_mem_size() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 2), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @memblock_reserved_size() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3, i32 2), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @memblock_start_of_DRAM() local_unnamed_addr #8 {
entry:
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %0, i64 0, i32 0
  %1 = load i64, i64* %base, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @memblock_end_of_DRAM() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %1 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %conv = shl i64 %0, 32
  %sext = add i64 %conv, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %base = getelementptr %struct.memblock_region, %struct.memblock_region* %1, i64 %idxprom, i32 0
  %2 = load i64, i64* %base, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %1, i64 %idxprom, i32 1
  %3 = load i64, i64* %size, align 8
  %add = add i64 %3, %2
  ret i64 %add
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memblock_enforce_memory_limit(i64 noundef %limit) local_unnamed_addr #9 section ".init.text" {
entry:
  %tobool.not = icmp eq i64 %limit, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @__find_max_addr(i64 noundef %limit) #16
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %call, i64 noundef -1) #16
  %call4 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %call, i64 noundef -1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__find_max_addr(i64 noundef %limit) unnamed_addr #10 {
entry:
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %1
  %cmp13 = icmp ult %struct.memblock_region* %0, %add.ptr
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %r.015 = phi %struct.memblock_region* [ %incdec.ptr, %if.end ], [ %0, %entry ]
  %limit.addr.014 = phi i64 [ %sub, %if.end ], [ %limit, %entry ]
  %size = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %r.015, i64 0, i32 1
  %2 = load i64, i64* %size, align 8
  %cmp1.not = icmp ugt i64 %limit.addr.014, %2
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %r.015, i64 0, i32 0
  %3 = load i64, i64* %base, align 8
  %add = add i64 %3, %limit.addr.014
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub = sub i64 %limit.addr.014, %2
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %r.015, i64 1
  %cmp = icmp ult %struct.memblock_region* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry, %if.then
  %max_addr.0 = phi i64 [ %add, %if.then ], [ -1, %entry ], [ -1, %if.end ]
  ret i64 %max_addr.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memblock_cap_memory_range(i64 noundef %base, i64 noundef %size) local_unnamed_addr #9 section ".init.text" {
entry:
  %start_rgn = alloca i32, align 4
  %end_rgn = alloca i32, align 4
  %0 = bitcast i32* %start_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %start_rgn, align 4, !annotation !10
  %1 = bitcast i32* %end_rgn to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %end_rgn, align 4, !annotation !10
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 2), align 8
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.memblock_cap_memory_range, i64 0, i64 0)) #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @memblock_isolate_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %base, i64 noundef %size, i32* noundef nonnull %start_rgn, i32* noundef nonnull %end_rgn) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %3 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %4 = trunc i64 %3 to i32
  %5 = load i32, i32* %end_rgn, align 4
  %i.046 = add i32 %4, -1
  %cmp.not47 = icmp slt i32 %i.046, %5
  br i1 %cmp.not47, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end7
  %.pre52 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %6 = phi %struct.memblock_region* [ %7, %for.inc ], [ %.pre52, %for.body.preheader ]
  %i.048 = phi i32 [ %i.0, %for.inc ], [ %i.046, %for.body.preheader ]
  %idxprom = sext i32 %i.048 to i64
  %arrayidx = getelementptr %struct.memblock_region, %struct.memblock_region* %6, i64 %idxprom
  %call9 = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %arrayidx) #16
  br i1 %call9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  call fastcc void @memblock_remove_region(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %idxprom) #16
  %.pre = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %7 = phi %struct.memblock_region* [ %6, %for.body ], [ %.pre, %if.then10 ]
  %i.0 = add i32 %i.048, -1
  %cmp.not = icmp slt i32 %i.0, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %start_rgn, align 4
  %i.149 = add i32 %8, -1
  %cmp1550 = icmp sgt i32 %i.149, -1
  br i1 %cmp1550, label %for.body17.preheader, label %for.end26

for.body17.preheader:                             ; preds = %for.end
  %.pre54 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader, %for.inc24
  %9 = phi %struct.memblock_region* [ %10, %for.inc24 ], [ %.pre54, %for.body17.preheader ]
  %i.151 = phi i32 [ %i.1, %for.inc24 ], [ %i.149, %for.body17.preheader ]
  %idxprom1845 = zext i32 %i.151 to i64
  %arrayidx19 = getelementptr %struct.memblock_region, %struct.memblock_region* %9, i64 %idxprom1845
  %call20 = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %arrayidx19) #16
  br i1 %call20, label %for.inc24, label %if.then21

if.then21:                                        ; preds = %for.body17
  call fastcc void @memblock_remove_region(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %idxprom1845) #16
  %.pre53 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body17, %if.then21
  %10 = phi %struct.memblock_region* [ %9, %for.body17 ], [ %.pre53, %if.then21 ]
  %i.1 = add i32 %i.151, -1
  %cmp15 = icmp sgt i32 %i.1, -1
  br i1 %cmp15, label %for.body17, label %for.end26

for.end26:                                        ; preds = %for.inc24, %for.end
  %call27 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef 0, i64 noundef %base) #16
  %add = add i64 %size, %base
  %call28 = call fastcc i32 @memblock_remove_range(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %add, i64 noundef -1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %for.end26, %do.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memblock_isolate_range(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %size, i32* nocapture noundef writeonly %start_rgn, i32* nocapture noundef %end_rgn) unnamed_addr #4 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i64 @memblock_cap_size(i64 noundef %base, i64* noundef nonnull %size.addr) #16
  %add = add i64 %call, %base
  store i32 0, i32* %end_rgn, align 4
  store i32 0, i32* %start_rgn, align 4
  %0 = load i64, i64* %size.addr, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup53, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %max = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %1 = load i64, i64* %cnt, align 8
  %add1 = add i64 %1, 2
  %2 = load i64, i64* %max, align 8
  %cmp = icmp ugt i64 %add1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call fastcc i32 @memblock_double_array(%struct.memblock_type* noundef %type, i64 noundef %base, i64 noundef %0) #16
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %cleanup53, label %while.cond

while.end:                                        ; preds = %while.cond
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %cmp7119.not = icmp eq i64 %1, 0
  br i1 %cmp7119.not, label %cleanup53, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %while.end
  %3 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %total_size38 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %rgn.0121 = phi %struct.memblock_region* [ %3, %for.body.lr.ph ], [ %arrayidx52, %for.inc ]
  %idx.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %base9 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.0121, i64 0, i32 0
  %4 = load i64, i64* %base9, align 8
  %size10 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.0121, i64 0, i32 1
  %5 = load i64, i64* %size10, align 8
  %add11 = add i64 %5, %4
  %cmp12.not = icmp ugt i64 %add, %4
  br i1 %cmp12.not, label %if.end15, label %cleanup53

if.end15:                                         ; preds = %for.body
  %cmp16.not = icmp ugt i64 %add11, %base
  br i1 %cmp16.not, label %if.end19, label %for.inc

if.end19:                                         ; preds = %if.end15
  %cmp20 = icmp ult i64 %4, %base
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  store i64 %base, i64* %base9, align 8
  %sub = sub i64 %base, %4
  %sub25 = sub i64 %5, %sub
  store i64 %sub25, i64* %size10, align 8
  %6 = load i64, i64* %total_size38, align 8
  %sub27 = sub i64 %6, %sub
  store i64 %sub27, i64* %total_size38, align 8
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.0121, i64 0, i32 2
  %7 = load i32, i32* %flags, align 8
  call fastcc void @memblock_insert_region(%struct.memblock_type* noundef %type, i32 noundef %idx.0120, i64 noundef %4, i64 noundef %sub, i32 noundef %7) #16
  br label %for.inc

if.else:                                          ; preds = %if.end19
  %cmp30 = icmp ugt i64 %add11, %add
  br i1 %cmp30, label %if.then32, label %if.else43

if.then32:                                        ; preds = %if.else
  store i64 %add, i64* %base9, align 8
  %sub34 = sub i64 %add, %4
  %sub36 = sub i64 %5, %sub34
  store i64 %sub36, i64* %size10, align 8
  %8 = load i64, i64* %total_size38, align 8
  %sub39 = sub i64 %8, %sub34
  store i64 %sub39, i64* %total_size38, align 8
  %dec = add i32 %idx.0120, -1
  %flags42 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.0121, i64 0, i32 2
  %9 = load i32, i32* %flags42, align 8
  call fastcc void @memblock_insert_region(%struct.memblock_type* noundef %type, i32 noundef %idx.0120, i64 noundef %4, i64 noundef %sub34, i32 noundef %9) #16
  br label %for.inc

if.else43:                                        ; preds = %if.else
  %10 = load i32, i32* %end_rgn, align 4
  %tobool44.not = icmp eq i32 %10, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else43
  store i32 %idx.0120, i32* %start_rgn, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.else43
  %add47 = add i32 %idx.0120, 1
  store i32 %add47, i32* %end_rgn, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.then32, %if.end46, %if.then22
  %idx.2.ph = phi i32 [ %idx.0120, %if.end46 ], [ %dec, %if.then32 ], [ %idx.0120, %if.then22 ], [ %idx.0120, %if.end15 ]
  %inc = add i32 %idx.2.ph, 1
  %11 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx52 = getelementptr %struct.memblock_region, %struct.memblock_region* %11, i64 %idxprom
  %12 = load i64, i64* %cnt, align 8
  %cmp7 = icmp ugt i64 %12, %idxprom
  br i1 %cmp7, label %for.body, label %cleanup53

cleanup53:                                        ; preds = %while.body, %for.inc, %for.body, %while.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %while.end ], [ 0, %for.body ], [ 0, %for.inc ], [ -12, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @memblock_is_nomap(%struct.memblock_region* nocapture noundef readonly %m) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %m, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_remove_region(%struct.memblock_type* nocapture noundef %type, i64 noundef %r) unnamed_addr #4 {
entry:
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %0 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %r, i32 1
  %1 = load i64, i64* %size, align 8
  %total_size = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 2
  %2 = load i64, i64* %total_size, align 8
  %sub = sub i64 %2, %1
  store i64 %sub, i64* %total_size, align 8
  %arrayidx2 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %r
  %3 = bitcast %struct.memblock_region* %arrayidx2 to i8*
  %add = add i64 %r, 1
  %arrayidx4 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %add
  %4 = bitcast %struct.memblock_region* %arrayidx4 to i8*
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %5 = load i64, i64* %cnt, align 8
  %sub6 = sub i64 %5, %add
  %mul = mul i64 %sub6, 24
  %call = call i8* @memmove(i8* noundef %3, i8* noundef %4, i64 noundef %mul) #19
  %6 = load i64, i64* %cnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %cnt, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %total_size, align 8
  %cmp10.not = icmp eq i64 %7, 0
  br i1 %cmp10.not, label %if.end, label %if.then17, !prof !7

if.then17:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 348; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  store i64 1, i64* %cnt, align 8
  %8 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %8, i64 0, i32 0
  store i64 0, i64* %base, align 8
  %9 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %size30 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %9, i64 0, i32 1
  store i64 0, i64* %size30, align 8
  %10 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %10, i64 0, i32 2
  store i32 0, i32* %flags, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memblock_mem_limit_remove_map(i64 noundef %limit) local_unnamed_addr #9 section ".init.text" {
entry:
  %tobool.not = icmp eq i64 %limit, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @__find_max_addr(i64 noundef %limit) #16
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  call void @memblock_cap_memory_range(i64 noundef 0, i64 noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @memblock_is_reserved(i64 noundef %addr) local_unnamed_addr #10 {
entry:
  %call = call fastcc i32 @memblock_search(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %addr) #16
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @memblock_search(%struct.memblock_type* nocapture noundef readonly %type, i64 noundef %addr) unnamed_addr #10 {
entry:
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %0 = load i64, i64* %cnt, align 8
  %conv = trunc i64 %0 to i32
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %1 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %left.0 = phi i32 [ 0, %entry ], [ %left.2.ph, %do.cond ]
  %right.0 = phi i32 [ %conv, %entry ], [ %right.2.ph, %do.cond ]
  %add = add i32 %right.0, %left.0
  %div = lshr i32 %add, 1
  %idxprom = zext i32 %div to i64
  %base = getelementptr %struct.memblock_region, %struct.memblock_region* %1, i64 %idxprom, i32 0
  %2 = load i64, i64* %base, align 8
  %cmp = icmp ugt i64 %2, %addr
  br i1 %cmp, label %do.cond, label %if.else

if.else:                                          ; preds = %do.body
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %1, i64 %idxprom, i32 1
  %3 = load i64, i64* %size, align 8
  %add9 = add i64 %3, %2
  %cmp10.not = icmp ugt i64 %add9, %addr
  br i1 %cmp10.not, label %cleanup18, label %if.then12

if.then12:                                        ; preds = %if.else
  %add13 = add nuw i32 %div, 1
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then12
  %left.2.ph = phi i32 [ %left.0, %do.body ], [ %add13, %if.then12 ]
  %right.2.ph = phi i32 [ %div, %do.body ], [ %right.0, %if.then12 ]
  %cmp16 = icmp ult i32 %left.2.ph, %right.2.ph
  br i1 %cmp16, label %do.body, label %cleanup18

cleanup18:                                        ; preds = %if.else, %do.cond
  %retval.2 = phi i32 [ -1, %do.cond ], [ %div, %if.else ]
  ret i32 %retval.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @memblock_is_memory(i64 noundef %addr) local_unnamed_addr #10 {
entry:
  %call = call fastcc i32 @memblock_search(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %addr) #16
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @memblock_is_map_memory(i64 noundef %addr) local_unnamed_addr #10 {
entry:
  %call = call fastcc i32 @memblock_search(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %addr) #16
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom
  %call1 = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %arrayidx) #16
  %lnot = xor i1 %call1, true
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %lnot, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @memblock_search_pfn_nid(i64 noundef %pfn, i64* nocapture noundef writeonly %start_pfn, i64* nocapture noundef writeonly %end_pfn) local_unnamed_addr #0 {
entry:
  %shl = shl i64 %pfn, 12
  %call = call fastcc i32 @memblock_search(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %shl) #16
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %idxprom = sext i32 %call to i64
  %base = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom, i32 0
  %1 = load i64, i64* %base, align 8
  %shr = lshr i64 %1, 12
  store i64 %shr, i64* %start_pfn, align 8
  %2 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %base4 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %idxprom, i32 0
  %3 = load i64, i64* %base4, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %idxprom, i32 1
  %4 = load i64, i64* %size, align 8
  %add = add i64 %4, %3
  %shr8 = lshr i64 %add, 12
  store i64 %shr8, i64* %end_pfn, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i1 @memblock_is_region_memory(i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i32 @memblock_search(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %base) #16
  %call1 = call fastcc i64 @memblock_cap_size(i64 noundef %base, i64* noundef nonnull %size.addr) #16
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %call1, %base
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %idxprom = sext i32 %call to i64
  %base2 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom, i32 0
  %1 = load i64, i64* %base2, align 8
  %size5 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom, i32 1
  %2 = load i64, i64* %size5, align 8
  %add6 = add i64 %2, %1
  %cmp7 = icmp uge i64 %add6, %add
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp7, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i1 @memblock_is_region_reserved(i64 noundef %base, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call i1 @memblock_overlaps_region(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64 noundef %base, i64 noundef %size) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @memblock_trim_memory(i64 noundef %align) local_unnamed_addr #4 {
entry:
  %0 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr35 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %1
  %cmp36 = icmp ult %struct.memblock_region* %0, %add.ptr35
  br i1 %cmp36, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub2 = add i64 %align, -1
  %neg = sub i64 0, %align
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi %struct.memblock_region* [ %0, %for.body.lr.ph ], [ %5, %for.inc ]
  %r.037 = phi %struct.memblock_region* [ %0, %for.body.lr.ph ], [ %incdec.ptr13, %for.inc ]
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %r.037, i64 0, i32 0
  %3 = load i64, i64* %base, align 8
  %size = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %r.037, i64 0, i32 1
  %4 = load i64, i64* %size, align 8
  %add = add i64 %4, %3
  %sub = add i64 %3, -1
  %or = or i64 %sub, %sub2
  %add3 = add i64 %or, 1
  %and = and i64 %add, %neg
  %cmp5 = icmp eq i64 %add3, %3
  %cmp6 = icmp eq i64 %and, %add
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  br i1 %or.cond, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %cmp7 = icmp ugt i64 %and, %add3
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  store i64 %add3, i64* %base, align 8
  %sub10 = sub i64 %and, %add3
  store i64 %sub10, i64* %size, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint %struct.memblock_region* %r.037 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.memblock_region* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  call fastcc void @memblock_remove_region(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), i64 noundef %sub.ptr.div) #16
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %r.037, i64 -1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8, %if.else
  %r.1 = phi %struct.memblock_region* [ %r.037, %if.then8 ], [ %incdec.ptr, %if.else ], [ %r.037, %for.body ]
  %incdec.ptr13 = getelementptr %struct.memblock_region, %struct.memblock_region* %r.1, i64 1
  %5 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %5, i64 %6
  %cmp = icmp ult %struct.memblock_region* %incdec.ptr13, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @memblock_set_current_limit(i64 noundef %limit) local_unnamed_addr #11 {
entry:
  store i64 %limit, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @memblock_get_current_limit() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @memblock_dump_all() local_unnamed_addr #4 {
entry:
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__memblock_dump_all() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__memblock_dump_all() unnamed_addr #4 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #18
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 2), i64* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3, i32 2)) #18
  call fastcc void @memblock_dump(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2)) #16
  call fastcc void @memblock_dump(%struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3)) #16
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define dso_local void @memblock_allow_resize() local_unnamed_addr #12 section ".init.text" {
entry:
  store i1 true, i1* @memblock_can_resize, align 4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_memblock(i8* noundef %p) #9 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i8* @strstr(i8* noundef nonnull %p, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #19
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* @memblock_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @reset_node_managed_pages(%struct.pglist_data* noundef %pgdat) local_unnamed_addr #13 {
entry:
  %arraydecay = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 0
  %add.ptr = getelementptr %struct.pglist_data, %struct.pglist_data* %pgdat, i64 0, i32 0, i64 4
  %cmp7 = icmp ult %struct.zone* %arraydecay, %add.ptr
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %z.08 = phi %struct.zone* [ %incdec.ptr, %for.body ], [ %arraydecay, %entry ]
  %counter.i.i = getelementptr inbounds %struct.zone, %struct.zone* %z.08, i64 0, i32 10, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  %incdec.ptr = getelementptr %struct.zone, %struct.zone* %z.08, i64 1
  %cmp = icmp ult %struct.zone* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @reset_all_zones_managed_pages() local_unnamed_addr #9 section ".init.text" {
entry:
  %.b = load i1, i1* @reset_managed_pages_done, align 4
  br i1 %.b, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.pglist_data* @first_online_pgdat() #19
  %tobool1.not6 = icmp eq %struct.pglist_data* %call, null
  br i1 %tobool1.not6, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %pgdat.07 = phi %struct.pglist_data* [ %call2, %for.body ], [ %call, %if.end ]
  call void @reset_node_managed_pages(%struct.pglist_data* noundef nonnull %pgdat.07) #16
  %call2 = call %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef nonnull %pgdat.07) #19
  %tobool1.not = icmp eq %struct.pglist_data* %call2, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  store i1 true, i1* @reset_managed_pages_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @first_online_pgdat() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pglist_data* @next_online_pgdat(%struct.pglist_data* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @memblock_free_all() local_unnamed_addr #9 section ".init.text" {
entry:
  call void @reset_all_zones_managed_pages() #20
  %call = call fastcc i64 @free_low_memory_core_early() #20
  call fastcc void @totalram_pages_add(i64 noundef %call) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @free_low_memory_core_early() unnamed_addr #9 section ".init.text" {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %start, align 8, !annotation !10
  %1 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %end, align 8, !annotation !10
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  %call = call i32 @memblock_clear_hotplug(i64 noundef 0, i64 noundef -1) #16
  call fastcc void @memmap_init_reserved_pages() #20
  store i64 0, i64* %i, align 8
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #16
  %3 = load i64, i64* %i, align 8
  %cmp.not4 = icmp eq i64 %3, -1
  br i1 %cmp.not4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.05 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %4 = load i64, i64* %start, align 8
  %5 = load i64, i64* %end, align 8
  %call1 = call fastcc i64 @__free_memory_core(i64 noundef %4, i64 noundef %5) #20
  %add = add i64 %call1, %count.05
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #16
  %6 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %6, -1
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @totalram_pages_add(i64 noundef %count) unnamed_addr #4 {
entry:
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %count) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_insert_region(%struct.memblock_type* nocapture noundef %type, i32 noundef %idx, i64 noundef %base, i64 noundef %size, i32 noundef %flags) unnamed_addr #4 {
entry:
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %0 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %1 = load i64, i64* %cnt, align 8
  %max = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 1
  %2 = load i64, i64* %max, align 8
  %cmp.not = icmp ult i64 %1, %2
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !7

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 541; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  unreachable

do.end7:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %arrayidx, i64 1
  %3 = bitcast %struct.memblock_region* %add.ptr to i8*
  %4 = bitcast %struct.memblock_region* %arrayidx to i8*
  %sub = sub i64 %1, %idxprom
  %mul = mul i64 %sub, 24
  %call = call i8* @memmove(i8* noundef %3, i8* noundef %4, i64 noundef %mul) #19
  %base10 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx, i64 0, i32 0
  store i64 %base, i64* %base10, align 8
  %size11 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom, i32 1
  store i64 %size, i64* %size11, align 8
  %flags12 = getelementptr %struct.memblock_region, %struct.memblock_region* %0, i64 %idxprom, i32 2
  store i32 %flags, i32* %flags12, align 8
  %5 = load i64, i64* %cnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %cnt, align 8
  %total_size = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 2
  %6 = load i64, i64* %total_size, align 8
  %add = add i64 %6, %size
  store i64 %add, i64* %total_size, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memblock_double_array(%struct.memblock_type* noundef %type, i64 noundef %new_area_start, i64 noundef %new_area_size) unnamed_addr #4 {
entry:
  %addr = alloca i64, align 8
  %new_end = alloca i64, align 8
  %0 = bitcast i64* %addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %1 = bitcast i64* %new_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  %call = call i1 @slab_is_available() #19
  %conv = zext i1 %call to i32
  %.b167 = load i1, i1* @memblock_can_resize, align 4
  br i1 %.b167, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 1
  %2 = load i64, i64* %max, align 8
  %mul = mul i64 %2, 24
  %shl = mul i64 %2, 48
  %add = add i64 %mul, 4095
  %and = and i64 %add, -4096
  %add1 = add i64 %shl, 4095
  %and2 = and i64 %add1, -4096
  %cmp = icmp eq %struct.memblock_type* %type, getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2)
  %memblock_memory_in_slab.memblock_reserved_in_slab = select i1 %cmp, i32* @memblock_memory_in_slab, i32* @memblock_reserved_in_slab
  br i1 %call, label %if.end9.i, label %if.else20

if.end9.i:                                        ; preds = %if.end
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %shl, i32 noundef 3264) #19
  %3 = bitcast i8* %call10.i to %struct.memblock_region*
  %tobool9.not = icmp eq i8* %call10.i, null
  br i1 %tobool9.not, label %cond.end18, label %cond.true

cond.true:                                        ; preds = %if.end9.i
  %4 = ptrtoint i8* %call10.i to i64
  %sub = add i64 %4, 549755813888
  %cmp10 = icmp ult i64 %sub, 274877906944
  %5 = load i64, i64* @memstart_addr, align 8
  %add15 = add i64 %sub, %5
  %6 = load i64, i64* @kimage_voffset, align 8
  %sub16 = sub i64 %4, %6
  %cond = select i1 %cmp10, i64 %add15, i64 %sub16
  br label %cond.end18

cond.end18:                                       ; preds = %if.end9.i, %cond.true
  %cond19 = phi i64 [ %cond, %cond.true ], [ 0, %if.end9.i ]
  store i64 %cond19, i64* %addr, align 8
  br label %if.end46

if.else20:                                        ; preds = %if.end
  %cmp21.not = icmp eq %struct.memblock_type* %type, getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3)
  %spec.select = select i1 %cmp21.not, i64 %new_area_size, i64 0
  %spec.select168 = select i1 %cmp21.not, i64 %new_area_start, i64 0
  %add25 = add i64 %spec.select, %spec.select168
  %7 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  %call26 = call fastcc i64 @memblock_find_in_range(i64 noundef %add25, i64 noundef %7, i64 noundef %and2) #16
  store i64 %call26, i64* %addr, align 8
  %tobool27 = icmp eq i64 %call26, 0
  %tobool28 = icmp ne i64 %spec.select, 0
  %or.cond = and i1 %tobool28, %tobool27
  br i1 %or.cond, label %if.then29, label %if.end38

if.then29:                                        ; preds = %if.else20
  %8 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 1), align 8
  %cmp31 = icmp ult i64 %spec.select168, %8
  %cond36 = select i1 %cmp31, i64 %spec.select168, i64 %8
  %call37 = call fastcc i64 @memblock_find_in_range(i64 noundef 0, i64 noundef %cond36, i64 noundef %and2) #16
  store i64 %call37, i64* %addr, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %if.else20
  %.pr = phi i64 [ %call37, %if.then29 ], [ %call26, %if.else20 ]
  %tobool39.not = icmp eq i64 %.pr, 0
  %9 = load i64, i64* @memstart_addr, align 8
  %sub42 = sub i64 %.pr, %9
  %or = or i64 %sub42, -549755813888
  %phi.cast = inttoptr i64 %or to %struct.memblock_region*
  %cond45 = select i1 %tobool39.not, %struct.memblock_region* null, %struct.memblock_region* %phi.cast
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %cond.end18
  %10 = phi i64 [ %.pr, %if.end38 ], [ %cond19, %cond.end18 ]
  %new_array.0 = phi %struct.memblock_region* [ %cond45, %if.end38 ], [ %3, %cond.end18 ]
  %tobool47.not = icmp eq i64 %10, 0
  br i1 %tobool47.not, label %do.end, label %if.end54

do.end:                                           ; preds = %if.end46
  %name = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 4
  %11 = load i8*, i8** %name, align 8
  %12 = load i64, i64* %max, align 8
  %mul52 = shl i64 %12, 1
  %call53 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* noundef %11, i64 noundef %12, i64 noundef %mul52) #18
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %add55 = add i64 %shl, -1
  %sub56 = add i64 %add55, %10
  store i64 %sub56, i64* %new_end, align 8
  %.b = load i1, i1* @memblock_debug, align 4
  br i1 %.b, label %do.end62, label %do.end70

do.end62:                                         ; preds = %if.end54
  %name64 = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 4
  %13 = load i8*, i8** %name64, align 8
  %14 = load i64, i64* %max, align 8
  %mul66 = shl i64 %14, 1
  %call67 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* noundef %13, i64 noundef %mul66, i64* noundef nonnull %addr, i64* noundef nonnull %new_end) #18
  br label %do.end70

do.end70:                                         ; preds = %do.end62, %if.end54
  %15 = bitcast %struct.memblock_region* %new_array.0 to i8*
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %16 = bitcast %struct.memblock_region** %regions to i8**
  %17 = load i8*, i8** %16, align 8
  %call71 = call i8* @memcpy(i8* noundef %15, i8* noundef %17, i64 noundef %mul) #19
  %18 = load i64, i64* %max, align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %new_array.0, i64 %18
  %19 = bitcast %struct.memblock_region* %add.ptr to i8*
  %call73 = call i8* @memset(i8* noundef %19, i32 noundef 0, i64 noundef %mul) #19
  %20 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  store %struct.memblock_region* %new_array.0, %struct.memblock_region** %regions, align 8
  %21 = load i64, i64* %max, align 8
  %shl77 = shl i64 %21, 1
  store i64 %shl77, i64* %max, align 8
  %22 = load i32, i32* %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  %tobool78.not = icmp eq i32 %22, 0
  br i1 %tobool78.not, label %if.else80, label %if.then79

if.then79:                                        ; preds = %do.end70
  %23 = bitcast %struct.memblock_region* %20 to i8*
  call void @kfree(i8* noundef %23) #19
  br label %if.end88

if.else80:                                        ; preds = %do.end70
  %cmp81 = icmp ne %struct.memblock_region* %20, getelementptr inbounds ([128 x %struct.memblock_region], [128 x %struct.memblock_region]* @memblock_memory_init_regions, i64 0, i64 0)
  %cmp84 = icmp ne %struct.memblock_region* %20, getelementptr inbounds ([128 x %struct.memblock_region], [128 x %struct.memblock_region]* @memblock_reserved_init_regions, i64 0, i64 0)
  %or.cond117 = and i1 %cmp81, %cmp84
  br i1 %or.cond117, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.else80
  %24 = bitcast %struct.memblock_region* %20 to i8*
  call void @memblock_free_ptr(i8* noundef %24, i64 noundef %and) #16
  br label %if.end88

if.end88:                                         ; preds = %if.else80, %if.then86, %if.then79
  br i1 %call, label %if.end107, label %do.body91

do.body91:                                        ; preds = %if.end88
  %25 = load i64, i64* %addr, align 8
  %call92 = call i32 @memblock_reserve(i64 noundef %25, i64 noundef %and2) #16
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end107, label %do.body98, !prof !7

do.body98:                                        ; preds = %do.body91
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 482; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  unreachable

if.end107:                                        ; preds = %do.body91, %if.end88
  store i32 %conv, i32* %memblock_memory_in_slab.memblock_reserved_in_slab, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end107, %do.end
  %retval.0 = phi i32 [ 0, %if.end107 ], [ -1, %do.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_merge_regions(%struct.memblock_type* nocapture noundef %type) unnamed_addr #4 {
entry:
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %0 = load i64, i64* %cnt, align 8
  %cmp66.not = icmp eq i64 %0, 1
  br i1 %cmp66.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %1 = phi i64 [ %0, %while.body.lr.ph ], [ %13, %cleanup ]
  %conv68 = phi i64 [ 0, %while.body.lr.ph ], [ %conv.pre-phi, %cleanup ]
  %i.067 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %cleanup ]
  %2 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %add = add i32 %i.067, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %idxprom3
  %base = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %conv68, i32 0
  %3 = load i64, i64* %base, align 8
  %size = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %conv68, i32 1
  %4 = load i64, i64* %size, align 8
  %add5 = add i64 %4, %3
  %base6 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %arrayidx4, i64 0, i32 0
  %5 = load i64, i64* %base6, align 8
  %cmp7.not = icmp eq i64 %add5, %5
  br i1 %cmp7.not, label %lor.lhs.false, label %do.body

lor.lhs.false:                                    ; preds = %while.body
  %flags = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %conv68, i32 2
  %6 = load i32, i32* %flags, align 8
  %flags13 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %idxprom3, i32 2
  %7 = load i32, i32* %flags13, align 8
  %cmp14.not = icmp eq i32 %6, %7
  br i1 %cmp14.not, label %if.end31, label %do.body

do.body:                                          ; preds = %while.body, %lor.lhs.false
  %cmp20 = icmp ugt i64 %add5, %5
  br i1 %cmp20, label %do.body25, label %cleanup, !prof !11

do.body25:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/memblock.c\22; .popsection; .long 14472b - 14470b; .short 509; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !19
  unreachable

if.end31:                                         ; preds = %lor.lhs.false
  %size32 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %idxprom3, i32 1
  %8 = load i64, i64* %size32, align 8
  %add34 = add i64 %8, %4
  store i64 %add34, i64* %size, align 8
  %9 = bitcast %struct.memblock_region* %arrayidx4 to i8*
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %arrayidx4, i64 1
  %10 = bitcast %struct.memblock_region* %add.ptr to i8*
  %11 = load i64, i64* %cnt, align 8
  %add36 = add i32 %i.067, 2
  %conv37 = sext i32 %add36 to i64
  %sub38 = sub i64 %11, %conv37
  %mul = mul i64 %sub38, 24
  %call39 = call i8* @memmove(i8* noundef %9, i8* noundef %10, i64 noundef %mul) #19
  %12 = load i64, i64* %cnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %cnt, align 8
  %.pre = sext i32 %i.067 to i64
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end31
  %conv.pre-phi = phi i64 [ %idxprom3, %do.body ], [ %.pre, %if.end31 ]
  %13 = phi i64 [ %1, %do.body ], [ %dec, %if.end31 ]
  %i.1 = phi i32 [ %add, %do.body ], [ %i.067, %if.end31 ]
  %sub = add i64 %13, -1
  %cmp = icmp ugt i64 %sub, %conv.pre-phi
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @slab_is_available() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @memblock_find_in_range(i64 noundef %start, i64 noundef %end, i64 noundef %size) unnamed_addr #4 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  %call = call fastcc i32 @choose_memblock_flags() #16
  %call11 = call fastcc i64 @memblock_find_in_range_node(i64 noundef %size, i64 noundef 4096, i64 noundef %start, i64 noundef %end, i32 noundef -1, i32 noundef %call) #16
  %tobool.not2 = icmp ne i64 %call11, 0
  %and3 = and i32 %call, 2
  %tobool2.not4 = icmp eq i32 %and3, 0
  %or.cond5 = or i1 %tobool2.not4, %tobool.not2
  br i1 %or.cond5, label %if.end, label %do.end.lr.ph

do.end.lr.ph:                                     ; preds = %entry
  %0 = and i32 %call, -3
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64* noundef nonnull %size.addr) #18
  %1 = load i64, i64* %size.addr, align 8
  %call1 = call fastcc i64 @memblock_find_in_range_node(i64 noundef %1, i64 noundef 4096, i64 noundef %start, i64 noundef %end, i32 noundef -1, i32 noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %do.end.lr.ph, %entry
  %call1.lcssa = phi i64 [ %call11, %entry ], [ %call1, %do.end.lr.ph ]
  ret i64 %call1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @memblock_is_mirror(%struct.memblock_region* nocapture noundef readonly %m) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %m, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @memblock_bottom_up() unnamed_addr #8 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 0), align 8, !range !20
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__memblock_find_range_bottom_up(i64 noundef %start, i64 noundef %end, i64 noundef %size, i64 noundef %align, i32 noundef %nid, i32 noundef %flags) unnamed_addr #4 {
entry:
  %this_start = alloca i64, align 8
  %this_end = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = bitcast i64* %this_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %this_start, align 8, !annotation !10
  %1 = bitcast i64* %this_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %this_end, align 8, !annotation !10
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %i, align 8
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %this_start, i64* noundef nonnull %this_end, i32* noundef null) #16
  %3 = load i64, i64* %i, align 8
  %cmp.not50 = icmp eq i64 %3, -1
  br i1 %cmp.not50, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub20 = add i64 %align, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = load i64, i64* %this_start, align 8
  %cmp1 = icmp ugt i64 %4, %start
  %cond = select i1 %cmp1, i64 %4, i64 %start
  %cmp3 = icmp ult i64 %cond, %end
  %cond7 = select i1 %cmp3, i64 %cond, i64 %end
  store i64 %cond7, i64* %this_start, align 8
  %5 = load i64, i64* %this_end, align 8
  %cmp9 = icmp ugt i64 %5, %start
  %cond13 = select i1 %cmp9, i64 %5, i64 %start
  %cmp15 = icmp ult i64 %cond13, %end
  %cond19 = select i1 %cmp15, i64 %cond13, i64 %end
  store i64 %cond19, i64* %this_end, align 8
  %sub = add i64 %cond7, -1
  %or = or i64 %sub, %sub20
  %add = add i64 %or, 1
  %cmp21 = icmp ule i64 %cond19, %add
  %sub22 = sub i64 %cond19, %add
  %cmp23.not = icmp ult i64 %sub22, %size
  %or.cond = or i1 %cmp21, %cmp23.not
  br i1 %or.cond, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %this_start, i64* noundef nonnull %this_end, i32* noundef null) #16
  %6 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %6, -1
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %for.inc ], [ %add, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__memblock_find_range_top_down(i64 noundef %start, i64 noundef %end, i64 noundef %size, i64 noundef %align, i32 noundef %nid, i32 noundef %flags) unnamed_addr #4 {
entry:
  %this_start = alloca i64, align 8
  %this_end = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = bitcast i64* %this_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %this_start, align 8, !annotation !10
  %1 = bitcast i64* %this_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %this_end, align 8, !annotation !10
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 -1, i64* %i, align 8
  call void @__next_mem_range_rev(i64* noundef nonnull %i, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %this_start, i64* noundef nonnull %this_end, i32* noundef null) #16
  %3 = load i64, i64* %i, align 8
  %cmp.not51 = icmp eq i64 %3, -1
  br i1 %cmp.not51, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %neg = sub i64 0, %align
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = load i64, i64* %this_start, align 8
  %cmp1 = icmp ugt i64 %4, %start
  %cond = select i1 %cmp1, i64 %4, i64 %start
  %cmp3 = icmp ult i64 %cond, %end
  %cond7 = select i1 %cmp3, i64 %cond, i64 %end
  store i64 %cond7, i64* %this_start, align 8
  %5 = load i64, i64* %this_end, align 8
  %cmp9 = icmp ugt i64 %5, %start
  %cond13 = select i1 %cmp9, i64 %5, i64 %start
  %cmp15 = icmp ult i64 %cond13, %end
  %cond19 = select i1 %cmp15, i64 %cond13, i64 %end
  store i64 %cond19, i64* %this_end, align 8
  %cmp20 = icmp ult i64 %cond19, %size
  br i1 %cmp20, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %sub = sub i64 %cond19, %size
  %and = and i64 %sub, %neg
  %cmp22.not = icmp ult i64 %and, %cond7
  br i1 %cmp22.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end, %for.body
  call void @__next_mem_range_rev(i64* noundef nonnull %i, i32 noundef %nid, i32 noundef %flags, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2), %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), i64* noundef nonnull %this_start, i64* noundef nonnull %this_end, i32* noundef null) #16
  %6 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %6, -1
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %for.inc, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %for.inc ], [ %and, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #4 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 2304) #19
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull i8* @phys_to_virt(i64 noundef %x) unnamed_addr #8 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %x, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i) unnamed_addr #4 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), i64 %i, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0)) #17, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_dump(%struct.memblock_type* nocapture noundef readonly %type) unnamed_addr #4 {
entry:
  %base = alloca i64, align 8
  %end = alloca i64, align 8
  %size = alloca i64, align 8
  %nid_buf = alloca [32 x i8], align 1
  %0 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %base, align 8, !annotation !10
  %1 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %end, align 8, !annotation !10
  %2 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %size, align 8, !annotation !10
  %name = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 4
  %3 = load i8*, i8** %name, align 8
  %cnt = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 0
  %4 = load i64, i64* %cnt, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* noundef %3, i64 noundef %4) #18
  %regions = getelementptr inbounds %struct.memblock_type, %struct.memblock_type* %type, i64 0, i32 3
  %5 = load i64, i64* %cnt, align 8
  %cmp27.not = icmp eq i64 %5, 0
  br i1 %cmp27.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %6 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %nid_buf, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %idx.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %rgn.028 = phi %struct.memblock_region* [ %6, %for.body.lr.ph ], [ %arrayidx13, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %base3 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.028, i64 0, i32 0
  %8 = load i64, i64* %base3, align 8
  store i64 %8, i64* %base, align 8
  %size4 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.028, i64 0, i32 1
  %9 = load i64, i64* %size4, align 8
  store i64 %9, i64* %size, align 8
  %add = add i64 %8, -1
  %sub = add i64 %add, %9
  store i64 %sub, i64* %end, align 8
  %flags5 = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %rgn.028, i64 0, i32 2
  %10 = load i32, i32* %flags5, align 8
  %11 = load i8*, i8** %name, align 8
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* noundef %11, i32 noundef %idx.029, i64* noundef nonnull %base, i64* noundef nonnull %end, i64* noundef nonnull %size, i8* noundef nonnull %7, i32 noundef %10) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #17
  %inc = add i32 %idx.029, 1
  %12 = load %struct.memblock_region*, %struct.memblock_region** %regions, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx13 = getelementptr %struct.memblock_region, %struct.memblock_region* %12, i64 %idxprom
  %13 = load i64, i64* %cnt, align 8
  %cmp = icmp ugt i64 %13, %idxprom
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @memmap_init_reserved_pages() unnamed_addr #9 section ".init.text" {
entry:
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %start, align 8, !annotation !10
  %1 = bitcast i64* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %end, align 8, !annotation !10
  %2 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #17
  store i64 0, i64* %i, align 8
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #16
  %3 = load i64, i64* %i, align 8
  %cmp.not11 = icmp eq i64 %3, -1
  br i1 %cmp.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %4 = load i64, i64* %start, align 8
  %5 = load i64, i64* %end, align 8
  call void @reserve_bootmem_region(i64 noundef %4, i64 noundef %5) #19
  call void @__next_mem_range(i64* noundef nonnull %i, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %start, i64* noundef nonnull %end, i32* noundef null) #16
  %6 = load i64, i64* %i, align 8
  %cmp.not = icmp eq i64 %6, -1
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %7 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr12 = getelementptr %struct.memblock_region, %struct.memblock_region* %7, i64 %8
  %cmp213 = icmp ult %struct.memblock_region* %7, %add.ptr12
  br i1 %cmp213, label %for.body3, label %for.end5

for.body3:                                        ; preds = %for.end, %for.inc4
  %9 = phi i64 [ %13, %for.inc4 ], [ %8, %for.end ]
  %10 = phi %struct.memblock_region* [ %14, %for.inc4 ], [ %7, %for.end ]
  %region.014 = phi %struct.memblock_region* [ %incdec.ptr, %for.inc4 ], [ %7, %for.end ]
  %call = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %region.014) #16
  br i1 %call, label %if.then, label %for.inc4

if.then:                                          ; preds = %for.body3
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %region.014, i64 0, i32 0
  %11 = load i64, i64* %base, align 8
  store i64 %11, i64* %start, align 8
  %size = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %region.014, i64 0, i32 1
  %12 = load i64, i64* %size, align 8
  %add = add i64 %12, %11
  store i64 %add, i64* %end, align 8
  call void @reserve_bootmem_region(i64 noundef %11, i64 noundef %add) #19
  %.pre = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %.pre16 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  br label %for.inc4

for.inc4:                                         ; preds = %for.body3, %if.then
  %13 = phi i64 [ %9, %for.body3 ], [ %.pre16, %if.then ]
  %14 = phi %struct.memblock_region* [ %10, %for.body3 ], [ %.pre, %if.then ]
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %region.014, i64 1
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %14, i64 %13
  %cmp2 = icmp ult %struct.memblock_region* %incdec.ptr, %add.ptr
  br i1 %cmp2, label %for.body3, label %for.end5

for.end5:                                         ; preds = %for.inc4, %for.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i64 @__free_memory_core(i64 noundef %start, i64 noundef %end) unnamed_addr #9 section ".init.text" {
entry:
  %sub = add i64 %start, 4095
  %shr = lshr i64 %sub, 12
  %shr1 = lshr i64 %end, 12
  %0 = load i64, i64* @max_low_pfn, align 8
  %cmp = icmp ult i64 %shr1, %0
  %cond = select i1 %cmp, i64 %shr1, i64 %0
  %cmp2.not = icmp ugt i64 %cond, %shr
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__free_pages_memory(i64 noundef %shr, i64 noundef %cond) #20
  %sub3 = sub nsw i64 %cond, %shr
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %sub3, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reserve_bootmem_region(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @__free_pages_memory(i64 noundef %start, i64 noundef %end) unnamed_addr #9 section ".init.text" {
entry:
  %cmp25 = icmp ult i64 %start, %end
  br i1 %cmp25, label %while.body, label %while.end10

while.body:                                       ; preds = %entry, %while.end
  %start.addr.026 = phi i64 [ %add, %while.end ], [ %start, %entry ]
  %0 = call i64 @llvm.cttz.i64(i64 %start.addr.026, i1 false) #17, !range !22
  %1 = icmp ult i64 %0, 10
  %cond = select i1 %1, i64 %0, i64 10
  %conv = trunc i64 %cond to i32
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2, %while.body
  %order.0 = phi i32 [ %conv, %while.body ], [ %dec, %while.cond2 ]
  %sh_prom = zext i32 %order.0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %shl, %start.addr.026
  %cmp3 = icmp ugt i64 %add, %end
  %dec = add i32 %order.0, -1
  br i1 %cmp3, label %while.cond2, label %while.end

while.end:                                        ; preds = %while.cond2
  %2 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %2, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %add.ptr6 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %start.addr.026
  call void @memblock_free_pages(%struct.page* noundef %add.ptr6, i64 noundef %start.addr.026, i32 noundef %order.0) #19
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %while.body, label %while.end10

while.end10:                                      ; preds = %while.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #15 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2153947844}
!9 = !{i64 2153949584}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153968638}
!13 = !{i64 2153973959}
!14 = !{i64 2153979955}
!15 = !{i64 2153985947}
!16 = !{i64 2153932170}
!17 = !{i64 2153946244}
!18 = !{i64 2153939445}
!19 = !{i64 2153944889}
!20 = !{i8 0, i8 2}
!21 = !{i64 2147821695, i64 2147822209, i64 2147822239, i64 2147822265, i64 2147822297, i64 2147822326}
!22 = !{i64 0, i64 65}
