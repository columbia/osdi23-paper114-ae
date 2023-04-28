; ModuleID = 'kernel/sched/topology.c'
source_filename = "kernel/sched/topology.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [4 x i64] }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i64, %struct.perf_domain* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], %struct.cpudl_item* }
%struct.cpudl_item = type { i64, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.6 = type { i32 }
%struct.cpupri = type { [101 x %struct.cpupri_vec], i32* }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.perf_domain = type { %struct.em_perf_domain*, %struct.perf_domain*, %struct.callback_head }
%struct.em_perf_domain = type { %struct.em_perf_state*, i32, i32, [0 x i64] }
%struct.em_perf_state = type { i64, i64, i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.sched_domain_topology_level = type { %struct.cpumask* (i32)*, i32 ()*, i32, i32, %struct.sd_data }
%struct.sd_data = type { %struct.sched_domain**, %struct.sched_domain_shared**, %struct.sched_group**, %struct.sched_group_capacity** }
%struct.sched_domain = type { %struct.sched_domain*, %struct.sched_domain*, %struct.sched_group*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, %union.anon.96, %struct.sched_domain_shared*, i32, [0 x i64] }
%struct.sched_group = type { %struct.sched_group*, %struct.atomic_t, i32, %struct.sched_group_capacity*, i32, [0 x i64] }
%struct.sched_group_capacity = type { %struct.atomic_t, i64, i64, i64, i64, i32, [0 x i64] }
%union.anon.96 = type { %struct.callback_head }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.sched_domain_attr = type { i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i64, [40 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i64, %struct.mm_struct*, i32, i64, i64, i64, i64, %struct.atomic_t, i32, %struct.root_domain*, %struct.sched_domain*, i64, i64, %struct.callback_head*, i8, i8, i64, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [24 x i8], %struct.sched_avg, %struct.sched_avg, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.cpu_stop_work, [16 x i8] }
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
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.98 = type { %struct.callback_head }
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
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.cpu_stop_work = type { %struct.list_head, i32 (i8*)*, i64, i8*, %struct.cpu_stop_done* }
%struct.cpu_stop_done = type opaque
%struct.asym_cap_data = type { %struct.list_head, i64, [0 x i64] }
%struct.s_data = type { %struct.sched_domain**, %struct.root_domain* }

@sched_domains_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_domains_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @sched_domains_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@def_root_domain = dso_local global %struct.root_domain zeroinitializer, align 8
@sched_asym_cpucapacity = dso_local global %struct.static_key_false zeroinitializer, align 4
@__setup_str_setup_relax_domain_level = internal constant [20 x i8] c"relax_domain_level=\00", section ".init.rodata", align 1
@__setup_setup_relax_domain_level = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_setup_relax_domain_level, i32 0, i32 0), i32 (i8*)* @setup_relax_domain_level, i32 0 }, section ".init.setup", align 8
@sched_smp_initialized = external dso_local local_unnamed_addr global i8, align 1
@sched_domain_topology = internal unnamed_addr global %struct.sched_domain_topology_level* getelementptr inbounds ([2 x %struct.sched_domain_topology_level], [2 x %struct.sched_domain_topology_level]* @default_topology, i64 0, i64 0), align 8
@sched_domains_tmpmask = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@sched_domains_tmpmask2 = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@fallback_doms = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@ndoms_cur = internal unnamed_addr global i32 0, align 4
@doms_cur = internal unnamed_addr global [1 x %struct.cpumask]* null, align 8
@dattr_cur = internal unnamed_addr global %struct.sched_domain_attr* null, align 8
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@sd_llc = dso_local global %struct.sched_domain* null, section ".data..percpu", align 8
@sd_llc_size = dso_local global i32 0, section ".data..percpu", align 4
@sd_llc_id = dso_local global i32 0, section ".data..percpu", align 4
@sd_llc_shared = dso_local global %struct.sched_domain_shared* null, section ".data..percpu", align 8
@sd_numa = dso_local global %struct.sched_domain* null, section ".data..percpu", align 8
@sd_asym_packing = dso_local global %struct.sched_domain* null, section ".data..percpu", align 8
@sd_asym_cpucapacity = dso_local global %struct.sched_domain* null, section ".data..percpu", align 8
@sched_domain_level_max = dso_local local_unnamed_addr global i32 0, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@default_relax_domain_level = internal global i32 -1, align 4
@.str = private unnamed_addr constant [36 x i8] c"\014Unable to set relax_domain_level\0A\00", align 1
@default_topology = internal global [2 x %struct.sched_domain_topology_level] [%struct.sched_domain_topology_level { %struct.cpumask* (i32)* @cpu_cpu_mask, i32 ()* null, i32 0, i32 0, %struct.sd_data zeroinitializer }, %struct.sched_domain_topology_level zeroinitializer], align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@asym_cap_list = internal global %struct.list_head { %struct.list_head* @asym_cap_list, %struct.list_head* @asym_cap_list }, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@asym_cpu_capacity_update_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for asymmetry data\0A\00", align 1
@cpu_scale = external dso_local global i64, section ".data..percpu", align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"\013BUG: arch topology borken\0A\00", align 1
@sd_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"wrong sd_flags in topology description\0A\00", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@sd_init.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"CPU capacity asymmetry not supported on SMT\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_setup_relax_domain_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rq_attach_root(%struct.rq* noundef %rq, %struct.root_domain* noundef %rd) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) #14
  %rd1 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 21
  %0 = load %struct.root_domain*, %struct.root_domain** %rd1, align 32
  %tobool.not = icmp eq %struct.root_domain* %0, null
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %cpu = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %1 = load i32, i32* %cpu, align 16
  %arraydecay = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 4, i64 0
  %call3 = call fastcc i32 @cpumask_test_cpu(i32 noundef %1, %struct.cpumask* noundef %arraydecay) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @set_rq_offline(%struct.rq* noundef %rq) #15
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %2 = load i32, i32* %cpu, align 16
  %arraydecay7 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 3, i64 0
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay7) #14
  %refcount = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcount) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %spec.select = select i1 %cmp.i.i, %struct.root_domain* %0, %struct.root_domain* null
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %old_rd.0 = phi %struct.root_domain* [ null, %entry ], [ %spec.select, %if.end ]
  %refcount12 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %refcount12) #15
  store %struct.root_domain* %rd, %struct.root_domain** %rd1, align 32
  %cpu14 = getelementptr inbounds %struct.rq, %struct.rq* %rq, i64 0, i32 32
  %3 = load i32, i32* %cpu14, align 16
  %arraydecay16 = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 3, i64 0
  call fastcc void @cpumask_set_cpu(i32 noundef %3, %struct.cpumask* noundef %arraydecay16) #14
  %4 = load i32, i32* %cpu14, align 16
  %call18 = call fastcc i32 @cpumask_test_cpu(i32 noundef %4, %struct.cpumask* noundef nonnull @__cpu_active_mask) #14
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end11
  call void @set_rq_online(%struct.rq* noundef %rq) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end11
  call fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %call) #14
  %tobool22.not = icmp eq %struct.root_domain* %old_rd.0, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end21
  %rcu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %old_rd.0, i64 0, i32 2
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @free_rootdomain) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_raw_spin_rq_lock_irqsave(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #14
  call fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) #14
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #2 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_offline(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_rq_online(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_unlock_irqrestore(%struct.rq* noundef %rq, i64 noundef %flags) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_unlock(%struct.rq* noundef %rq) #15
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_rootdomain(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -1, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to i8*
  %cpupri = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 37
  %1 = bitcast void (%struct.callback_head*)** %cpupri to %struct.cpupri*
  call void @cpupri_cleanup(%struct.cpupri* noundef %1) #15
  %cpudl = getelementptr inbounds void (%struct.callback_head*)*, void (%struct.callback_head*)** %add.ptr, i64 20
  %2 = bitcast void (%struct.callback_head*)** %cpudl to %struct.cpudl*
  call void @cpudl_cleanup(%struct.cpudl* noundef %2) #15
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_get_rd(%struct.root_domain* noundef %rd) local_unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %refcount) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_put_rd(%struct.root_domain* noundef %rd) local_unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %refcount) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %return

if.end:                                           ; preds = %entry
  %rcu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 2
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @free_rootdomain) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_defrootdomain() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @init_rootdomain(%struct.root_domain* noundef nonnull @def_root_domain) #14
  store volatile i32 1, i32* getelementptr inbounds (%struct.root_domain, %struct.root_domain* @def_root_domain, i64 0, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @init_rootdomain(%struct.root_domain* noundef %rd) unnamed_addr #0 {
entry:
  %span = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 3
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %span) #14
  %online = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 4
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %online) #14
  %dlo_mask = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 7
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %dlo_mask) #14
  %rto_mask = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 18
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %rto_mask) #14
  %rto_cpu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 15
  store i32 -1, i32* %rto_cpu, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 13, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %rto_push_work = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 12
  call fastcc void @init_irq_work(%struct.irq_work* noundef %rto_push_work) #14
  %visit_gen = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 11
  store i64 0, i64* %visit_gen, align 8
  %dl_bw = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 9
  call void @init_dl_bw(%struct.dl_bw* noundef %dl_bw) #15
  %cpudl = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 10
  %call10 = call i32 @cpudl_init(%struct.cpudl* noundef %cpudl) #15
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %return

if.end12:                                         ; preds = %entry
  %cpupri = getelementptr inbounds %struct.root_domain, %struct.root_domain* %rd, i64 0, i32 19
  %call13 = call i32 @cpupri_init(%struct.cpupri* noundef %cpupri) #15
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %return, label %free_cpudl

free_cpudl:                                       ; preds = %if.end12
  call void @cpudl_cleanup(%struct.cpudl* noundef %cpudl) #15
  br label %return

return:                                           ; preds = %free_cpudl, %entry, %if.end12
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %entry ], [ -12, %free_cpudl ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @group_balance_cpu(%struct.sched_group* nocapture noundef readonly %sg) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* noundef %sg) #14
  %call1 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %call) #14
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i64 @find_first_bit(i64* noundef %arraydecay) #14
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* nocapture noundef readonly %sg) unnamed_addr #4 {
entry:
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 3
  %0 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %arraydecay = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %0, i64 0, i32 6, i64 0
  %1 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_relax_domain_level(i8* noundef %str) #5 section ".init.text" {
entry:
  %call = call i32 @kstrtoint(i8* noundef %str, i32 noundef 0, i32* noundef nonnull @default_relax_domain_level) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_sched_topology(%struct.sched_domain_topology_level* noundef %tl) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* @sched_smp_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1645; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %return

if.end17:                                         ; preds = %entry
  store %struct.sched_domain_topology_level* %tl, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  br label %return

return:                                           ; preds = %if.then, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @topology_update_cpu_topology() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local [1 x %struct.cpumask]* @alloc_sched_domains(i32 noundef %ndoms) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %ndoms to i64
  %call = call fastcc i8* @kmalloc_array(i64 noundef %conv) #14
  %0 = bitcast i8* %call to [1 x %struct.cpumask]*
  ret [1 x %struct.cpumask]* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 32)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !10

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_sched_domains([1 x %struct.cpumask]* noundef %doms, i32 noundef %ndoms) local_unnamed_addr #0 {
entry:
  %0 = bitcast [1 x %struct.cpumask]* %doms to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_init_domains(%struct.cpumask* noundef %cpu_map) local_unnamed_addr #0 {
entry:
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @sched_domains_tmpmask) #14
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @sched_domains_tmpmask2) #14
  call fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef nonnull @fallback_doms) #14
  %call3 = call i32 @topology_update_cpu_topology() #14
  call fastcc void @asym_cpu_capacity_scan() #14
  store i32 1, i32* @ndoms_cur, align 4
  %call4 = call [1 x %struct.cpumask]* @alloc_sched_domains(i32 noundef 1) #14
  %tobool.not = icmp eq [1 x %struct.cpumask]* %call4, null
  %spec.store.select = select i1 %tobool.not, [1 x %struct.cpumask]* @fallback_doms, [1 x %struct.cpumask]* %call4
  store [1 x %struct.cpumask]* %spec.store.select, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %spec.store.select, i64 0, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef %cpu_map, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %0 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %0, i64 0, i64 0
  %call9 = call fastcc i32 @build_sched_domains(%struct.cpumask* noundef %arraydecay8, %struct.sched_domain_attr* noundef null) #14
  ret i32 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var([1 x %struct.cpumask]* noundef %mask) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %mask, i64 0, i64 0
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @asym_cpu_capacity_scan() unnamed_addr #0 {
entry:
  %entry1.079 = load %struct.asym_cap_data*, %struct.asym_cap_data** bitcast (%struct.list_head* @asym_cap_list to %struct.asym_cap_data**), align 8
  %link80 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.079, i64 0, i32 0
  %cmp.not81 = icmp eq %struct.list_head* %link80, @asym_cap_list
  br i1 %cmp.not81, label %for.cond10.preheader, label %for.body

for.cond10.preheader:                             ; preds = %for.body, %entry
  %call1183 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1284 = icmp ult i32 %call1183, %0
  br i1 %cmp1284, label %for.body13, label %for.end14

for.body:                                         ; preds = %entry, %for.body
  %entry1.082 = phi %struct.asym_cap_data* [ %entry1.0, %for.body ], [ %entry1.079, %entry ]
  %arraydecay = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.082, i64 0, i32 2, i64 0
  %1 = bitcast i64* %arraydecay to %struct.cpumask*
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %1) #14
  %2 = bitcast %struct.asym_cap_data* %entry1.082 to %struct.asym_cap_data**
  %entry1.0 = load %struct.asym_cap_data*, %struct.asym_cap_data** %2, align 8
  %link = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @asym_cap_list
  br i1 %cmp.not, label %for.cond10.preheader, label %for.body

for.body13:                                       ; preds = %for.cond10.preheader, %for.body13
  %call1185 = phi i32 [ %call11, %for.body13 ], [ %call1183, %for.cond10.preheader ]
  call fastcc void @asym_cpu_capacity_update_data(i32 noundef %call1185) #14
  %call11 = call i32 @cpumask_next_and(i32 noundef %call1185, %struct.cpumask* noundef nonnull @__cpu_possible_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #18
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp12 = icmp ult i32 %call11, %3
  br i1 %cmp12, label %for.body13, label %for.end14

for.end14:                                        ; preds = %for.body13, %for.cond10.preheader
  %4 = load %struct.asym_cap_data*, %struct.asym_cap_data** bitcast (%struct.list_head* @asym_cap_list to %struct.asym_cap_data**), align 8
  %link3088 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %4, i64 0, i32 0
  %cmp31.not89 = icmp eq %struct.list_head* %link3088, @asym_cap_list
  br i1 %cmp31.not89, label %for.end47, label %for.body33

for.body33:                                       ; preds = %for.end14, %for.inc38
  %link3092 = phi %struct.list_head* [ %link30, %for.inc38 ], [ %link3088, %for.end14 ]
  %entry1.190 = phi %struct.asym_cap_data* [ %next.091, %for.inc38 ], [ %4, %for.end14 ]
  %next.091.in = bitcast %struct.asym_cap_data* %entry1.190 to %struct.asym_cap_data**
  %next.091 = load %struct.asym_cap_data*, %struct.asym_cap_data** %next.091.in, align 8
  %arraydecay35 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.190, i64 0, i32 2, i64 0
  %5 = bitcast i64* %arraydecay35 to %struct.cpumask*
  %call36 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %5) #14
  br i1 %call36, label %if.then, label %for.inc38

if.then:                                          ; preds = %for.body33
  call fastcc void @list_del(%struct.list_head* noundef %link3092) #14
  %6 = bitcast %struct.asym_cap_data* %entry1.190 to i8*
  call void @kfree(i8* noundef %6) #15
  br label %for.inc38

for.inc38:                                        ; preds = %for.body33, %if.then
  %link30 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %next.091, i64 0, i32 0
  %cmp31.not = icmp eq %struct.list_head* %link30, @asym_cap_list
  br i1 %cmp31.not, label %for.end47, label %for.body33

for.end47:                                        ; preds = %for.inc38, %for.end14
  %call48 = call fastcc i32 @list_is_singular() #14
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.end57, label %if.then49

if.then49:                                        ; preds = %for.end47
  %7 = load i8*, i8** bitcast (%struct.list_head* @asym_cap_list to i8**), align 8
  %link56 = bitcast i8* %7 to %struct.list_head*
  call fastcc void @list_del(%struct.list_head* noundef %link56) #14
  call void @kfree(i8* noundef %7) #15
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %for.end47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_and(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_and(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @build_sched_domains(%struct.cpumask* noundef %cpu_map, %struct.sched_domain_attr* noundef %attr) unnamed_addr #0 {
entry:
  %d = alloca %struct.s_data, align 8
  %0 = bitcast %struct.s_data* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !11
  %call = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef %cpu_map) #14
  br i1 %call, label %if.then, label %if.end16, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 2186; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %error

if.end16:                                         ; preds = %entry
  %call17 = call fastcc i32 @__visit_domain_allocation_hell(%struct.s_data* noundef nonnull %d, %struct.cpumask* noundef %cpu_map) #14
  %cmp.not = icmp eq i32 %call17, 0
  br i1 %cmp.not, label %for.cond.preheader, label %error

for.cond.preheader:                               ; preds = %if.end16
  %call21303 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp22304 = icmp ult i32 %call21303, %1
  br i1 %cmp22304, label %for.body.lr.ph, label %for.cond79.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sd64 = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 0
  br label %for.body

for.cond79.preheader:                             ; preds = %cleanup, %for.cond.preheader
  %2 = phi i32 [ %1, %for.cond.preheader ], [ %15, %cleanup ]
  %has_asym.0.off0.lcssa = phi i1 [ false, %for.cond.preheader ], [ %has_asym.3.off0, %cleanup ]
  %call80311 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %cmp81312 = icmp ult i32 %call80311, %2
  br i1 %cmp81312, label %do.body84.lr.ph, label %for.cond116.preheader

do.body84.lr.ph:                                  ; preds = %for.cond79.preheader
  %sd90 = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 0
  br label %do.body84

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %3 = phi i32 [ %1, %for.body.lr.ph ], [ %15, %cleanup ]
  %call21306 = phi i32 [ %call21303, %for.body.lr.ph ], [ %call21, %cleanup ]
  %has_asym.0.off0305 = phi i1 [ false, %for.body.lr.ph ], [ %has_asym.3.off0, %cleanup ]
  %4 = load %struct.sched_domain_topology_level*, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  %mask297 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %4, i64 0, i32 0
  %5 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask297, align 8
  %tobool25.not298 = icmp eq %struct.cpumask* (i32)* %5, null
  br i1 %tobool25.not298, label %cleanup, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %for.body
  %idxprom = sext i32 %call21306 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  br label %for.body26

for.cond24:                                       ; preds = %if.end73
  %mask = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %incdec.ptr, i64 0, i32 0
  %6 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %tobool25.not = icmp eq %struct.cpumask* (i32)* %6, null
  br i1 %tobool25.not, label %cleanup.loopexit, label %for.body26

for.body26:                                       ; preds = %for.body26.lr.ph, %for.cond24
  %sd.0301 = phi %struct.sched_domain* [ null, %for.body26.lr.ph ], [ %call56, %for.cond24 ]
  %has_asym.1.off0300 = phi i1 [ %has_asym.0.off0305, %for.body26.lr.ph ], [ %tobool59, %for.cond24 ]
  %tl.0299 = phi %struct.sched_domain_topology_level* [ %4, %for.body26.lr.ph ], [ %incdec.ptr, %for.cond24 ]
  %call28 = call fastcc i1 @topology_span_sane(%struct.sched_domain_topology_level* noundef %tl.0299, %struct.cpumask* noundef %cpu_map, i32 noundef %call21306) #14
  br i1 %call28, label %if.end55, label %cleanup.thread, !prof !8

cleanup.thread:                                   ; preds = %for.body26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 2200; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  br label %error

if.end55:                                         ; preds = %for.body26
  %call56 = call fastcc %struct.sched_domain* @build_sched_domain(%struct.sched_domain_topology_level* noundef %tl.0299, %struct.cpumask* noundef %cpu_map, %struct.sched_domain_attr* noundef %attr, %struct.sched_domain* noundef %sd.0301, i32 noundef %call21306) #14
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %call56, i64 0, i32 9
  %7 = load i32, i32* %flags, align 8
  %and = and i32 %7, 32
  %conv58 = zext i1 %has_asym.1.off0300 to i32
  %or = or i32 %and, %conv58
  %tobool59 = icmp ne i32 %or, 0
  %8 = load %struct.sched_domain_topology_level*, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  %cmp60 = icmp eq %struct.sched_domain_topology_level* %tl.0299, %8
  br i1 %cmp60, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.end55
  %9 = load %struct.sched_domain**, %struct.sched_domain*** %sd64, align 8
  %10 = ptrtoint %struct.sched_domain** %9 to i64
  %11 = load i64, i64* %arrayidx, align 8
  %add = add i64 %11, %10
  %12 = inttoptr i64 %add to %struct.sched_domain**
  store %struct.sched_domain* %call56, %struct.sched_domain** %12, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end55
  %flags67 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0299, i64 0, i32 2
  %13 = load i32, i32* %flags67, align 8
  %and68 = and i32 %13, 1
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end73, label %if.then70

if.then70:                                        ; preds = %if.end66
  %14 = load i32, i32* %flags, align 8
  %or72 = or i32 %14, 4096
  store i32 %or72, i32* %flags, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end66
  %call74 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %call56) #14
  %call75 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %cpu_map, %struct.cpumask* noundef %call74) #14
  %incdec.ptr = getelementptr %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0299, i64 1
  br i1 %call75, label %cleanup.loopexit, label %for.cond24

cleanup.loopexit:                                 ; preds = %for.cond24, %if.end73
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body
  %15 = phi i32 [ %3, %for.body ], [ %.pre, %cleanup.loopexit ]
  %has_asym.3.off0 = phi i1 [ %has_asym.0.off0305, %for.body ], [ %tobool59, %cleanup.loopexit ]
  %call21 = call i32 @cpumask_next(i32 noundef %call21306, %struct.cpumask* noundef %cpu_map) #18
  %cmp22 = icmp ult i32 %call21, %15
  br i1 %cmp22, label %for.body, label %for.cond79.preheader

for.cond79.loopexit.loopexit:                     ; preds = %for.inc113
  %.pre324 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond79.loopexit

for.cond79.loopexit:                              ; preds = %for.cond79.loopexit.loopexit, %do.body84
  %16 = phi i32 [ %.pre324, %for.cond79.loopexit.loopexit ], [ %17, %do.body84 ]
  %call80 = call i32 @cpumask_next(i32 noundef %call80313, %struct.cpumask* noundef %cpu_map) #18
  %cmp81 = icmp ult i32 %call80, %16
  br i1 %cmp81, label %do.body84, label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.cond79.loopexit, %for.cond79.preheader
  %sd130 = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 0
  br label %for.body119

do.body84:                                        ; preds = %do.body84.lr.ph, %for.cond79.loopexit
  %17 = phi i32 [ %2, %do.body84.lr.ph ], [ %16, %for.cond79.loopexit ]
  %call80313 = phi i32 [ %call80311, %do.body84.lr.ph ], [ %call80, %for.cond79.loopexit ]
  %18 = load %struct.sched_domain**, %struct.sched_domain*** %sd90, align 8
  %19 = ptrtoint %struct.sched_domain** %18 to i64
  %idxprom92 = sext i32 %call80313 to i64
  %arrayidx93 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom92
  %20 = load i64, i64* %arrayidx93, align 8
  %add94 = add i64 %20, %19
  %21 = inttoptr i64 %add94 to %struct.sched_domain**
  %sd.1308 = load %struct.sched_domain*, %struct.sched_domain** %21, align 8
  %tobool96.not309 = icmp eq %struct.sched_domain* %sd.1308, null
  br i1 %tobool96.not309, label %for.cond79.loopexit, label %for.body97

for.body97:                                       ; preds = %do.body84, %for.inc113
  %sd.1310 = phi %struct.sched_domain* [ %sd.1, %for.inc113 ], [ %sd.1308, %do.body84 ]
  %call98 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %sd.1310) #14
  %call99 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call98) #14
  %span_weight = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.1310, i64 0, i32 19
  store i32 %call99, i32* %span_weight, align 8
  %flags100 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.1310, i64 0, i32 9
  %22 = load i32, i32* %flags100, align 8
  %and101 = and i32 %22, 4096
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %for.body97
  %call104 = call fastcc i32 @build_overlap_sched_groups(%struct.sched_domain* noundef nonnull %sd.1310, i32 noundef %call80313) #14
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %for.inc113, label %error

if.else:                                          ; preds = %for.body97
  call fastcc void @build_sched_groups(%struct.sched_domain* noundef nonnull %sd.1310, i32 noundef %call80313) #14
  br label %for.inc113

for.inc113:                                       ; preds = %if.else, %if.then103
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.1310, i64 0, i32 0
  %sd.1 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool96.not = icmp eq %struct.sched_domain* %sd.1, null
  br i1 %tobool96.not, label %for.cond79.loopexit.loopexit, label %for.body97

for.body119:                                      ; preds = %for.cond116.preheader, %for.inc141
  %indvars.iv = phi i64 [ 255, %for.cond116.preheader ], [ %indvars.iv.next, %for.inc141 ]
  %23 = trunc i64 %indvars.iv to i32
  %call120 = call fastcc i32 @cpumask_test_cpu(i32 noundef %23, %struct.cpumask* noundef %cpu_map) #14
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %for.inc141, label %do.body124

do.body124:                                       ; preds = %for.body119
  %24 = load %struct.sched_domain**, %struct.sched_domain*** %sd130, align 8
  %25 = ptrtoint %struct.sched_domain** %24 to i64
  %arrayidx133 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %indvars.iv
  %26 = load i64, i64* %arrayidx133, align 8
  %add134 = add i64 %26, %25
  %27 = inttoptr i64 %add134 to %struct.sched_domain**
  %sd.2314 = load %struct.sched_domain*, %struct.sched_domain** %27, align 8
  %tobool136.not315 = icmp eq %struct.sched_domain* %sd.2314, null
  br i1 %tobool136.not315, label %for.inc141, label %for.body137

for.body137:                                      ; preds = %do.body124, %for.body137
  %sd.2316 = phi %struct.sched_domain* [ %sd.2, %for.body137 ], [ %sd.2314, %do.body124 ]
  call fastcc void @claim_allocations(i32 noundef %23, %struct.sched_domain* noundef nonnull %sd.2316) #14
  call fastcc void @init_sched_groups_capacity(i32 noundef %23, %struct.sched_domain* noundef nonnull %sd.2316) #14
  %parent139 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.2316, i64 0, i32 0
  %sd.2 = load %struct.sched_domain*, %struct.sched_domain** %parent139, align 8
  %tobool136.not = icmp eq %struct.sched_domain* %sd.2, null
  br i1 %tobool136.not, label %for.inc141, label %for.body137

for.inc141:                                       ; preds = %for.body137, %do.body124, %for.body119
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp117 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp117, label %for.body119, label %for.end142

for.end142:                                       ; preds = %for.inc141
  call fastcc void @__rcu_read_lock() #15
  %call144320 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %28 = load i32, i32* @nr_cpu_ids, align 4
  %cmp145321 = icmp ult i32 %call144320, %28
  br i1 %cmp145321, label %do.body148.lr.ph, label %for.end190

do.body148.lr.ph:                                 ; preds = %for.end142
  %rd = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 1
  br label %do.body148

do.body148:                                       ; preds = %do.body148.lr.ph, %if.end188
  %call144322 = phi i32 [ %call144320, %do.body148.lr.ph ], [ %call144, %if.end188 ]
  %idxprom155 = sext i32 %call144322 to i64
  %arrayidx156 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom155
  %29 = load i64, i64* %arrayidx156, align 8
  %add157 = add i64 %29, ptrtoint (%struct.rq* @runqueues to i64)
  %30 = inttoptr i64 %add157 to %struct.rq*
  %31 = load %struct.sched_domain**, %struct.sched_domain*** %sd130, align 8
  %32 = ptrtoint %struct.sched_domain** %31 to i64
  %add168 = add i64 %29, %32
  %33 = inttoptr i64 %add168 to %struct.sched_domain**
  %34 = load %struct.sched_domain*, %struct.sched_domain** %33, align 8
  %cpu_capacity_orig = getelementptr inbounds %struct.rq, %struct.rq* %30, i64 0, i32 24
  %35 = load i64, i64* %cpu_capacity_orig, align 8
  %36 = load %struct.root_domain*, %struct.root_domain** %rd, align 8
  %max_cpu_capacity = getelementptr inbounds %struct.root_domain, %struct.root_domain* %36, i64 0, i32 20
  %37 = load volatile i64, i64* %max_cpu_capacity, align 8
  %cmp173 = icmp ugt i64 %35, %37
  br i1 %cmp173, label %do.body180, label %if.end188

do.body180:                                       ; preds = %do.body148
  store volatile i64 %35, i64* %max_cpu_capacity, align 8
  br label %if.end188

if.end188:                                        ; preds = %do.body180, %do.body148
  call fastcc void @cpu_attach_domain(%struct.sched_domain* noundef %34, %struct.root_domain* noundef %36, i32 noundef %call144322) #14
  %call144 = call i32 @cpumask_next(i32 noundef %call144322, %struct.cpumask* noundef %cpu_map) #18
  %38 = load i32, i32* @nr_cpu_ids, align 4
  %cmp145 = icmp ult i32 %call144, %38
  br i1 %cmp145, label %do.body148, label %for.end190

for.end190:                                       ; preds = %if.end188, %for.end142
  call fastcc void @rcu_read_unlock() #14
  br i1 %has_asym.0.off0.lcssa, label %if.then192, label %error

if.then192:                                       ; preds = %for.end190
  call fastcc void @static_key_slow_inc() #14
  br label %error

error:                                            ; preds = %if.then103, %cleanup.thread, %if.then, %for.end190, %if.then192, %if.end16
  %ret.0 = phi i32 [ -12, %if.then ], [ -12, %if.end16 ], [ 0, %if.then192 ], [ 0, %for.end190 ], [ -12, %cleanup.thread ], [ -12, %if.then103 ]
  %alloc_state.0 = phi i32 [ 3, %if.then ], [ %call17, %if.end16 ], [ 0, %if.then192 ], [ 0, %for.end190 ], [ 0, %cleanup.thread ], [ 0, %if.then103 ]
  call fastcc void @__free_domain_allocs(%struct.s_data* noundef nonnull %d, i32 noundef %alloc_state.0, %struct.cpumask* noundef %cpu_map) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @partition_sched_domains_locked(i32 noundef %ndoms_new, [1 x %struct.cpumask]* noundef %doms_new, %struct.sched_domain_attr* noundef %dattr_new) local_unnamed_addr #0 {
entry:
  %call = call i32 @topology_update_cpu_topology() #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @asym_cpu_capacity_scan() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq [1 x %struct.cpumask]* %doms_new, null
  br i1 %tobool1.not, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq %struct.sched_domain_attr* %dattr_new, null
  br i1 %tobool3.not, label %if.end12, label %if.then11, !prof !8

if.then11:                                        ; preds = %if.then2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 2422; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then2
  %call20 = call [1 x %struct.cpumask]* @alloc_sched_domains(i32 noundef 1) #14
  %tobool21.not = icmp eq [1 x %struct.cpumask]* %call20, null
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end12
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], [1 x %struct.cpumask]* %call20, i64 0, i64 0
  call fastcc void @cpumask_and(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_active_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.end12, %if.then22
  %n.0 = phi i32 [ 1, %if.then22 ], [ 0, %if.end12 ], [ %ndoms_new, %if.end ]
  %doms_new.addr.0 = phi [1 x %struct.cpumask]* [ %call20, %if.then22 ], [ null, %if.end12 ], [ %doms_new, %if.end ]
  %0 = load i32, i32* @ndoms_cur, align 4
  %cmp161 = icmp sgt i32 %0, 0
  br i1 %cmp161, label %for.cond28.preheader.lr.ph, label %for.end63

for.cond28.preheader.lr.ph:                       ; preds = %if.end26
  %cmp29158 = icmp sgt i32 %n.0, 0
  %1 = select i1 %cmp29158, i1 %tobool.not, i1 false
  %2 = sext i32 %n.0 to i64
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.lr.ph, %for.inc61
  %indvars.iv174 = phi i64 [ 0, %for.cond28.preheader.lr.ph ], [ %indvars.iv.next175, %for.inc61 ]
  br i1 %1, label %for.body34.lr.ph, label %for.end

for.body34.lr.ph:                                 ; preds = %for.cond28.preheader
  %3 = trunc i64 %indvars.iv174 to i32
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay36 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %4, i64 %indvars.iv174, i64 0
  %arraydecay39 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %doms_new.addr.0, i64 %indvars.iv, i64 0
  %call40 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %arraydecay36, %struct.cpumask* noundef %arraydecay39) #14
  br i1 %call40, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body34
  %5 = load %struct.sched_domain_attr*, %struct.sched_domain_attr** @dattr_cur, align 8
  %6 = trunc i64 %indvars.iv to i32
  %call42 = call fastcc i32 @dattrs_equal(%struct.sched_domain_attr* noundef %5, i32 noundef %3, %struct.sched_domain_attr* noundef %dattr_new, i32 noundef %6) #14
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.inc, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  %7 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay52 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %7, i64 %indvars.iv174, i64 0
  %call53 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %arraydecay52) #14
  %idxprom54 = zext i32 %call53 to i64
  %arrayidx55 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom54
  %8 = load i64, i64* %arrayidx55, align 8
  %add = add i64 %8, ptrtoint (%struct.rq* @runqueues to i64)
  %9 = inttoptr i64 %add to %struct.rq*
  %rd56 = getelementptr inbounds %struct.rq, %struct.rq* %9, i64 0, i32 21
  %10 = load %struct.root_domain*, %struct.root_domain** %rd56, align 32
  call void @dl_clear_root_domain(%struct.root_domain* noundef %10) #15
  br label %for.inc61

for.inc:                                          ; preds = %for.body34, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp29 = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp29, label %for.body34, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond28.preheader
  %11 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay60 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %11, i64 %indvars.iv174, i64 0
  call fastcc void @detach_destroy_domains(%struct.cpumask* noundef %arraydecay60) #14
  br label %for.inc61

for.inc61:                                        ; preds = %for.end, %if.then44
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %12 = load i32, i32* @ndoms_cur, align 4
  %13 = sext i32 %12 to i64
  %cmp = icmp slt i64 %indvars.iv.next175, %13
  br i1 %cmp, label %for.cond28.preheader, label %for.end63

for.end63:                                        ; preds = %for.inc61, %if.end26
  %.lcssa = phi i32 [ %0, %if.end26 ], [ %12, %for.inc61 ]
  %tobool64.not = icmp eq [1 x %struct.cpumask]* %doms_new.addr.0, null
  br i1 %tobool64.not, label %if.then65, label %if.end70

if.then65:                                        ; preds = %for.end63
  call fastcc void @cpumask_and(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @fallback_doms, i64 0, i64 0), %struct.cpumask* noundef nonnull @__cpu_active_mask, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %for.end63
  %n.1 = phi i32 [ %.lcssa, %for.end63 ], [ 0, %if.then65 ]
  %doms_new.addr.1 = phi [1 x %struct.cpumask]* [ %doms_new.addr.0, %for.end63 ], [ @fallback_doms, %if.then65 ]
  %cmp72168 = icmp sgt i32 %ndoms_new, 0
  br i1 %cmp72168, label %for.cond75.preheader.lr.ph, label %for.end107

for.cond75.preheader.lr.ph:                       ; preds = %if.end70
  %cmp76165 = icmp sgt i32 %n.1, 0
  %14 = select i1 %cmp76165, i1 %tobool.not, i1 false
  %tobool103.not = icmp eq %struct.sched_domain_attr* %dattr_new, null
  %15 = sext i32 %n.1 to i64
  %wide.trip.count = zext i32 %ndoms_new to i64
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.cond75.preheader.lr.ph, %for.inc105
  %indvars.iv180 = phi i64 [ 0, %for.cond75.preheader.lr.ph ], [ %indvars.iv.next181, %for.inc105 ]
  br i1 %14, label %for.body83.lr.ph, label %for.end99

for.body83.lr.ph:                                 ; preds = %for.cond75.preheader
  %arraydecay86 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %doms_new.addr.1, i64 %indvars.iv180, i64 0
  %16 = trunc i64 %indvars.iv180 to i32
  br label %for.body83

for.body83:                                       ; preds = %for.body83.lr.ph, %for.inc97
  %indvars.iv177 = phi i64 [ 0, %for.body83.lr.ph ], [ %indvars.iv.next178, %for.inc97 ]
  %17 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %arraydecay89 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %17, i64 %indvars.iv177, i64 0
  %call90 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %arraydecay86, %struct.cpumask* noundef %arraydecay89) #14
  br i1 %call90, label %land.lhs.true92, label %for.inc97

land.lhs.true92:                                  ; preds = %for.body83
  %18 = load %struct.sched_domain_attr*, %struct.sched_domain_attr** @dattr_cur, align 8
  %19 = trunc i64 %indvars.iv177 to i32
  %call93 = call fastcc i32 @dattrs_equal(%struct.sched_domain_attr* noundef %dattr_new, i32 noundef %16, %struct.sched_domain_attr* noundef %18, i32 noundef %19) #14
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.inc97, label %for.inc105

for.inc97:                                        ; preds = %for.body83, %land.lhs.true92
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %cmp76 = icmp slt i64 %indvars.iv.next178, %15
  br i1 %cmp76, label %for.body83, label %for.end99

for.end99:                                        ; preds = %for.inc97, %for.cond75.preheader
  %arraydecay102 = getelementptr [1 x %struct.cpumask], [1 x %struct.cpumask]* %doms_new.addr.1, i64 %indvars.iv180, i64 0
  %add.ptr = getelementptr %struct.sched_domain_attr, %struct.sched_domain_attr* %dattr_new, i64 %indvars.iv180
  %cond = select i1 %tobool103.not, %struct.sched_domain_attr* null, %struct.sched_domain_attr* %add.ptr
  %call104 = call fastcc i32 @build_sched_domains(%struct.cpumask* noundef %arraydecay102, %struct.sched_domain_attr* noundef %cond) #14
  br label %for.inc105

for.inc105:                                       ; preds = %land.lhs.true92, %for.end99
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count
  br i1 %exitcond.not, label %for.end107, label %for.cond75.preheader

for.end107:                                       ; preds = %for.inc105, %if.end70
  %20 = load [1 x %struct.cpumask]*, [1 x %struct.cpumask]** @doms_cur, align 8
  %cmp108.not = icmp eq [1 x %struct.cpumask]* %20, @fallback_doms
  br i1 %cmp108.not, label %if.end111, label %if.then110

if.then110:                                       ; preds = %for.end107
  %21 = load i32, i32* @ndoms_cur, align 4
  call void @free_sched_domains([1 x %struct.cpumask]* noundef %20, i32 noundef %21) #14
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %for.end107
  %22 = load i8*, i8** bitcast (%struct.sched_domain_attr** @dattr_cur to i8**), align 8
  call void @kfree(i8* noundef %22) #15
  store [1 x %struct.cpumask]* %doms_new.addr.1, [1 x %struct.cpumask]** @doms_cur, align 8
  store %struct.sched_domain_attr* %dattr_new, %struct.sched_domain_attr** @dattr_cur, align 8
  store i32 %ndoms_new, i32* @ndoms_cur, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_equal(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_equal(i64* noundef %arraydecay, i64* noundef %arraydecay2) #14
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dattrs_equal(%struct.sched_domain_attr* noundef %cur, i32 noundef %idx_cur, %struct.sched_domain_attr* noundef %new, i32 noundef %idx_new) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.sched_domain_attr, align 4
  %0 = bitcast %struct.sched_domain_attr* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  %tobool = icmp ne %struct.sched_domain_attr* %new, null
  %tobool1 = icmp ne %struct.sched_domain_attr* %cur, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.sched_domain_attr, %struct.sched_domain_attr* %tmp, i64 0, i32 0, !annotation !11
  store i32 -1, i32* %1, align 4
  %idx.ext = sext i32 %idx_cur to i64
  %add.ptr = getelementptr %struct.sched_domain_attr, %struct.sched_domain_attr* %cur, i64 %idx.ext
  %cond = select i1 %tobool1, %struct.sched_domain_attr* %add.ptr, %struct.sched_domain_attr* %tmp
  %2 = bitcast %struct.sched_domain_attr* %cond to i8*
  %idx.ext5 = sext i32 %idx_new to i64
  %add.ptr6 = getelementptr %struct.sched_domain_attr, %struct.sched_domain_attr* %new, i64 %idx.ext5
  %cond9 = select i1 %tobool, %struct.sched_domain_attr* %add.ptr6, %struct.sched_domain_attr* %tmp
  %3 = bitcast %struct.sched_domain_attr* %cond9 to i8*
  %call = call i32 @memcmp(i8* noundef %2, i8* noundef %3, i64 noundef 4) #15
  %tobool10.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool10.not to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dl_clear_root_domain(%struct.root_domain* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_destroy_domains(%struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %cpu_map) #14
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.sched_domain** @sd_asym_cpucapacity to i64)
  %1 = inttoptr i64 %add to %struct.sched_domain**
  %2 = load volatile %struct.sched_domain*, %struct.sched_domain** %1, align 8
  %tobool.not = icmp eq %struct.sched_domain* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @static_key_slow_dec() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__rcu_read_lock() #15
  %call716 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp17 = icmp ult i32 %call716, %3
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %call718 = phi i32 [ %call7, %for.body ], [ %call716, %if.end ]
  call fastcc void @cpu_attach_domain(%struct.sched_domain* noundef null, %struct.root_domain* noundef nonnull @def_root_domain, i32 noundef %call718) #14
  %call7 = call i32 @cpumask_next(i32 noundef %call718, %struct.cpumask* noundef %cpu_map) #18
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @partition_sched_domains(i32 noundef %ndoms_new, [1 x %struct.cpumask]* noundef %doms_new, %struct.sched_domain_attr* noundef %dattr_new) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @sched_domains_mutex) #15
  call void @partition_sched_domains_locked(i32 noundef %ndoms_new, [1 x %struct.cpumask]* noundef %doms_new, %struct.sched_domain_attr* noundef %dattr_new) #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @sched_domains_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #14
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_spin_rq_lock(%struct.rq* noundef %rq) unnamed_addr #0 {
entry:
  call void @raw_spin_rq_lock_nested(%struct.rq* noundef %rq, i32 noundef 0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !15
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(%struct.rq* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !19
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !20
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(%struct.rq* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_cleanup(%struct.cpupri* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_cleanup(%struct.cpudl* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_irq_work(%struct.irq_work* nocapture noundef writeonly %work) unnamed_addr #6 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %.compoundliteral.sroa.2.0..sroa_idx2, align 8
  %.compoundliteral.sroa.3.0..sroa_idx3 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 2
  store i16 0, i16* %.compoundliteral.sroa.3.0..sroa_idx3, align 4
  %.compoundliteral.sroa.4.0..sroa_idx4 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 0, i32 3
  store i16 0, i16* %.compoundliteral.sroa.4.0..sroa_idx4, align 2
  %.compoundliteral.sroa.5.0..sroa_idx5 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %work, i64 0, i32 1
  store void (%struct.irq_work*)* @rto_push_irq_work_func, void (%struct.irq_work*)** %.compoundliteral.sroa.5.0..sroa_idx5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rto_push_irq_work_func(%struct.irq_work* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_bw(%struct.dl_bw* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_init(%struct.cpudl* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_init(%struct.cpupri* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef 256) #15
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal nonnull %struct.cpumask* @cpu_cpu_mask(i32 noundef %cpu) #9 {
entry:
  ret %struct.cpumask* @__cpu_online_mask
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @asym_cpu_capacity_update_data(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) #14
  %entry1.084 = load %struct.asym_cap_data*, %struct.asym_cap_data** bitcast (%struct.list_head* @asym_cap_list to %struct.asym_cap_data**), align 8
  %link85 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.084, i64 0, i32 0
  %cmp.not86 = icmp eq %struct.list_head* %link85, @asym_cap_list
  br i1 %cmp.not86, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %entry1.087 = phi %struct.asym_cap_data* [ %entry1.0, %for.inc ], [ %entry1.084, %entry ]
  %capacity2 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.087, i64 0, i32 1
  %0 = load i64, i64* %capacity2, align 8
  %cmp3 = icmp eq i64 %call, %0
  br i1 %cmp3, label %done, label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = bitcast %struct.asym_cap_data* %entry1.087 to %struct.asym_cap_data**
  %entry1.0 = load %struct.asym_cap_data*, %struct.asym_cap_data** %1, align 8
  %link = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @asym_cap_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call12 = call fastcc i8* @kzalloc(i64 noundef 56) #14
  %2 = bitcast i8* %call12 to %struct.asym_cap_data*
  %tobool.not = icmp eq i8* %call12, null
  %.b82 = load i1, i1* @asym_cpu_capacity_update_data.__already_done, align 1
  %lnot19 = xor i1 %.b82, true
  %3 = select i1 %tobool.not, i1 %lnot19, i1 false
  br i1 %3, label %if.then24, label %if.end52, !prof !10

if.then24:                                        ; preds = %for.end
  store i1 true, i1* @asym_cpu_capacity_update_data.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1337; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !23
  br label %if.end52

if.end52:                                         ; preds = %if.then24, %for.end
  br i1 %tobool.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %if.end52
  %capacity64 = getelementptr inbounds i8, i8* %call12, i64 16
  %4 = bitcast i8* %capacity64 to i64*
  store i64 %call, i64* %4, align 8
  %link65 = bitcast i8* %call12 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %link65) #14
  br label %done

done:                                             ; preds = %for.body, %if.end63
  %entry1.1 = phi %struct.asym_cap_data* [ %2, %if.end63 ], [ %entry1.087, %for.body ]
  %arraydecay = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.1, i64 0, i32 2, i64 0
  %5 = bitcast i64* %arraydecay to %struct.cpumask*
  call fastcc void @__cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %done
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_empty(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call = call fastcc i1 @bitmap_empty(i64* noundef %arraydecay) #14
  ret i1 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #12 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_is_singular() unnamed_addr #2 {
entry:
  %call = call fastcc i32 @list_empty() #14
  %tobool.not = icmp eq i32 %call, 0
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @asym_cap_list, i64 0, i32 0), align 8
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @asym_cap_list, i64 0, i32 1), align 8
  %cmp = icmp eq %struct.list_head* %0, %1
  %narrow = select i1 %tobool.not, i1 %cmp, i1 false
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @topology_get_cpu_scale(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i64* @cpu_scale to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #15
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #12 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @asym_cap_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* nocapture noundef %dstp) unnamed_addr #13 {
entry:
  %rem.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %cpu, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #12 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @asym_cap_list, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @asym_cap_list, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty(i64* noundef %src) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit(i64* noundef %src) #14
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #12 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #2 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @asym_cap_list, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, @asym_cap_list
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_and(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__visit_domain_allocation_hell(%struct.s_data* noundef %d, %struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.s_data* %d to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 16) #15
  %call1 = call fastcc i32 @__sdt_alloc(%struct.cpumask* noundef %cpu_map) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #15
  %1 = bitcast %struct.s_data* %d to i8**
  store i8* %call2, i8** %1, align 8
  %tobool4.not = icmp eq i8* %call2, null
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc %struct.root_domain* @alloc_rootdomain() #14
  %rd = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 1
  store %struct.root_domain* %call7, %struct.root_domain** %rd, align 8
  %tobool9.not = icmp eq %struct.root_domain* %call7, null
  %. = zext i1 %tobool9.not to i32
  br label %return

return:                                           ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 2, %if.end ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @topology_span_sane(%struct.sched_domain_topology_level* nocapture noundef readonly %tl, %struct.cpumask* noundef %cpu_map, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call26 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp27 = icmp ult i32 %call26, %1
  br i1 %cmp27, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mask = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %call28 = phi i32 [ %call26, %for.body.lr.ph ], [ %call, %for.cond.backedge ]
  %cmp1 = icmp eq i32 %call28, %cpu
  br i1 %cmp1, label %for.cond.backedge, label %if.end3

if.end3:                                          ; preds = %for.body
  %2 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call4 = call %struct.cpumask* %2(i32 noundef %cpu) #15
  %3 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call6 = call %struct.cpumask* %3(i32 noundef %call28) #15
  %call7 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %call4, %struct.cpumask* noundef %call6) #14
  br i1 %call7, label %for.cond.backedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %4 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call9 = call %struct.cpumask* %4(i32 noundef %cpu) #15
  %5 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call11 = call %struct.cpumask* %5(i32 noundef %call28) #15
  %call12 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %call9, %struct.cpumask* noundef %call11) #14
  br i1 %call12, label %cleanup, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end3, %land.lhs.true, %for.body
  %call = call i32 @cpumask_next(i32 noundef %call28, %struct.cpumask* noundef %cpu_map) #18
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.cond.backedge, %for.cond.preheader, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %for.cond.preheader ], [ false, %land.lhs.true ], [ true, %for.cond.backedge ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_domain* @build_sched_domain(%struct.sched_domain_topology_level* noundef %tl, %struct.cpumask* noundef %cpu_map, %struct.sched_domain_attr* noundef %attr, %struct.sched_domain* noundef %child, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.sched_domain* @sd_init(%struct.sched_domain_topology_level* noundef %tl, %struct.cpumask* noundef %cpu_map, %struct.sched_domain* noundef %child, i32 noundef %cpu) #14
  %tobool.not = icmp eq %struct.sched_domain* %child, null
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %level = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %child, i64 0, i32 10
  %0 = load i32, i32* %level, align 4
  %add = add i32 %0, 1
  %level1 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %call, i64 0, i32 10
  store i32 %add, i32* %level1, align 4
  %1 = load i32, i32* @sched_domain_level_max, align 4
  %cmp = icmp sgt i32 %1, %add
  %cond = select i1 %cmp, i32 %1, i32 %add
  store i32 %cond, i32* @sched_domain_level_max, align 4
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %child, i64 0, i32 0
  store %struct.sched_domain* %call, %struct.sched_domain** %parent, align 8
  %call3 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %child) #14
  %call4 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %call) #14
  %call5 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %call3, %struct.cpumask* noundef %call4) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.then
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #16
  call fastcc void @cpumask_or(%struct.cpumask* noundef %call4, %struct.cpumask* noundef %call4, %struct.cpumask* noundef %call3) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then, %do.end, %entry
  call fastcc void @set_domain_attribute(%struct.sched_domain* noundef %call, %struct.sched_domain_attr* noundef %attr) #14
  ret %struct.sched_domain* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef readnone %sd) unnamed_addr #9 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 20, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight(%struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  %call4.i = call i32 @__bitmap_weight(i64* noundef %arraydecay, i32 noundef 256) #15
  ret i32 %call4.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @build_overlap_sched_groups(%struct.sched_domain* noundef %sd, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  %0 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17
  %1 = bitcast %union.anon.96* %0 to %struct.sd_data**
  %2 = load %struct.sd_data*, %struct.sd_data** %1, align 8
  call fastcc void @cpumask_clear(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0)) #14
  %sub = add i32 %cpu, -1
  %call1 = call i32 @cpumask_next_wrap(i32 noundef %sub, %struct.cpumask* noundef %call, i32 noundef %cpu, i1 noundef false) #15
  %cmp87 = icmp ult i32 %call1, 256
  br i1 %cmp87, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sd3 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %first.091 = phi %struct.sched_group* [ null, %for.body.lr.ph ], [ %first.2.ph, %for.inc ]
  %last.090 = phi %struct.sched_group* [ null, %for.body.lr.ph ], [ %last.1.ph, %for.inc ]
  %i.088 = phi i32 [ %call1, %for.body.lr.ph ], [ %call30, %for.inc ]
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %i.088, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0)) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body
  %3 = load %struct.sched_domain**, %struct.sched_domain*** %sd3, align 8
  %4 = ptrtoint %struct.sched_domain** %3 to i64
  %idxprom85 = zext i32 %i.088 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom85
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.sched_domain**
  %7 = load %struct.sched_domain*, %struct.sched_domain** %6, align 8
  %call5 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %7) #14
  %call6 = call fastcc i32 @cpumask_test_cpu(i32 noundef %i.088, %struct.cpumask* noundef %call5) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.end9

if.end9:                                          ; preds = %do.body
  %child = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %7, i64 0, i32 1
  %8 = load %struct.sched_domain*, %struct.sched_domain** %child, align 8
  %tobool10.not = icmp eq %struct.sched_domain* %8, null
  br i1 %tobool10.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call12 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %8) #14
  %call13 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %call12, %struct.cpumask* noundef %call) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  %call16 = call fastcc %struct.sched_domain* @find_descended_sibling(%struct.sched_domain* noundef %sd, %struct.sched_domain* noundef %7) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.end9
  %sibling.0 = phi %struct.sched_domain* [ %7, %land.lhs.true ], [ %call16, %if.then15 ], [ %7, %if.end9 ]
  %call18 = call fastcc %struct.sched_group* @build_group_from_child_sched_domain(%struct.sched_domain* noundef %sibling.0) #14
  %tobool19.not = icmp eq %struct.sched_group* %call18, null
  br i1 %tobool19.not, label %fail, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef nonnull %call18) #14
  call fastcc void @cpumask_or(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0), %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0), %struct.cpumask* noundef %call22) #14
  call fastcc void @init_overlap_sched_group(%struct.sched_domain* noundef %sibling.0, %struct.sched_group* noundef nonnull %call18) #14
  %tobool23.not = icmp eq %struct.sched_group* %first.091, null
  %spec.select = select i1 %tobool23.not, %struct.sched_group* %call18, %struct.sched_group* %first.091
  %tobool26.not = icmp eq %struct.sched_group* %last.090, null
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end21
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %last.090, i64 0, i32 0
  store %struct.sched_group* %call18, %struct.sched_group** %next, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  %next29 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %call18, i64 0, i32 0
  store %struct.sched_group* %spec.select, %struct.sched_group** %next29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body, %do.body
  %last.1.ph = phi %struct.sched_group* [ %last.090, %do.body ], [ %last.090, %for.body ], [ %call18, %if.end28 ]
  %first.2.ph = phi %struct.sched_group* [ %first.091, %do.body ], [ %first.091, %for.body ], [ %spec.select, %if.end28 ]
  %call30 = call i32 @cpumask_next_wrap(i32 noundef %i.088, %struct.cpumask* noundef %call, i32 noundef %cpu, i1 noundef true) #15
  %cmp = icmp ult i32 %call30, 256
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %first.0.lcssa = phi %struct.sched_group* [ null, %entry ], [ %first.2.ph, %for.inc ]
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  store %struct.sched_group* %first.0.lcssa, %struct.sched_group** %groups, align 8
  br label %cleanup31

fail:                                             ; preds = %if.end17
  call fastcc void @free_sched_groups(%struct.sched_group* noundef %first.091, i32 noundef 0) #14
  br label %cleanup31

cleanup31:                                        ; preds = %fail, %for.end
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @build_sched_groups(%struct.sched_domain* noundef %sd, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17
  %1 = bitcast %union.anon.96* %0 to %struct.sd_data**
  %2 = load %struct.sd_data*, %struct.sd_data** %1, align 8
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  call fastcc void @cpumask_clear(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0)) #14
  %sub = add i32 %cpu, -1
  %call1 = call i32 @cpumask_next_wrap(i32 noundef %sub, %struct.cpumask* noundef %call, i32 noundef %cpu, i1 noundef false) #15
  %cmp1 = icmp ult i32 %call1, 256
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %i.04 = phi i32 [ %call11, %cleanup ], [ %call1, %entry ]
  %last.03 = phi %struct.sched_group* [ %last.1, %cleanup ], [ null, %entry ]
  %first.02 = phi %struct.sched_group* [ %first.2, %cleanup ], [ null, %entry ]
  %call2 = call fastcc i32 @cpumask_test_cpu(i32 noundef %i.04, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0)) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %call3 = call fastcc %struct.sched_group* @get_group(i32 noundef %i.04, %struct.sd_data* noundef %2) #14
  %call4 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %call3) #14
  call fastcc void @cpumask_or(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0), %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask, i64 0, i64 0), %struct.cpumask* noundef %call4) #14
  %tobool5.not = icmp eq %struct.sched_group* %first.02, null
  %spec.select = select i1 %tobool5.not, %struct.sched_group* %call3, %struct.sched_group* %first.02
  %tobool8.not = icmp eq %struct.sched_group* %last.03, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %last.03, i64 0, i32 0
  store %struct.sched_group* %call3, %struct.sched_group** %next, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %for.body
  %first.2 = phi %struct.sched_group* [ %first.02, %for.body ], [ %spec.select, %if.then9 ], [ %spec.select, %if.end ]
  %last.1 = phi %struct.sched_group* [ %last.03, %for.body ], [ %call3, %if.then9 ], [ %call3, %if.end ]
  %call11 = call i32 @cpumask_next_wrap(i32 noundef %i.04, %struct.cpumask* noundef %call, i32 noundef %cpu, i1 noundef true) #15
  %cmp = icmp ult i32 %call11, 256
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  %first.0.lcssa = phi %struct.sched_group* [ null, %entry ], [ %first.2, %cleanup ]
  %last.0.lcssa = phi %struct.sched_group* [ null, %entry ], [ %last.1, %cleanup ]
  %next12 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %last.0.lcssa, i64 0, i32 0
  store %struct.sched_group* %first.0.lcssa, %struct.sched_group** %next12, align 8
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  store %struct.sched_group* %first.0.lcssa, %struct.sched_group** %groups, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @claim_allocations(i32 noundef %cpu, %struct.sched_domain* noundef readonly %sd) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17
  %1 = bitcast %union.anon.96* %0 to %struct.sd_data**
  %2 = load %struct.sd_data*, %struct.sd_data** %1, align 8
  %sd1 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 0
  %3 = load %struct.sched_domain**, %struct.sched_domain*** %sd1, align 8
  %4 = ptrtoint %struct.sched_domain** %3 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.sched_domain**
  %7 = load %struct.sched_domain*, %struct.sched_domain** %6, align 8
  %cmp.not = icmp eq %struct.sched_domain* %7, %sd
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1462; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !24
  %.pre = load %struct.sched_domain**, %struct.sched_domain*** %sd1, align 8
  %.pre140 = load i64, i64* %arrayidx, align 8
  %.pre143 = ptrtoint %struct.sched_domain** %.pre to i64
  %.pre144 = add i64 %.pre140, %.pre143
  %.pre145 = inttoptr i64 %.pre144 to %struct.sched_domain**
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.pre-phi146 = phi %struct.sched_domain** [ %.pre145, %if.then ], [ %6, %entry ]
  store %struct.sched_domain* null, %struct.sched_domain** %.pre-phi146, align 8
  %sds = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 1
  %8 = load %struct.sched_domain_shared**, %struct.sched_domain_shared*** %sds, align 8
  %9 = ptrtoint %struct.sched_domain_shared** %8 to i64
  %10 = load i64, i64* %arrayidx, align 8
  %add37 = add i64 %10, %9
  %11 = inttoptr i64 %add37 to %struct.sched_domain_shared**
  %12 = load %struct.sched_domain_shared*, %struct.sched_domain_shared** %11, align 8
  %counter.i = getelementptr inbounds %struct.sched_domain_shared, %struct.sched_domain_shared* %12, i64 0, i32 0, i32 0
  %13 = load volatile i32, i32* %counter.i, align 4
  %tobool38.not = icmp eq i32 %13, 0
  br i1 %tobool38.not, label %do.body52, label %do.body40

do.body40:                                        ; preds = %if.end
  store %struct.sched_domain_shared* null, %struct.sched_domain_shared** %11, align 8
  %.pre141 = load i64, i64* %arrayidx, align 8
  br label %do.body52

do.body52:                                        ; preds = %if.end, %do.body40
  %14 = phi i64 [ %10, %if.end ], [ %.pre141, %do.body40 ]
  %sg = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 2
  %15 = load %struct.sched_group**, %struct.sched_group*** %sg, align 8
  %16 = ptrtoint %struct.sched_group** %15 to i64
  %add61 = add i64 %14, %16
  %17 = inttoptr i64 %add61 to %struct.sched_group**
  %18 = load %struct.sched_group*, %struct.sched_group** %17, align 8
  %counter.i138 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %18, i64 0, i32 1, i32 0
  %19 = load volatile i32, i32* %counter.i138, align 4
  %tobool64.not = icmp eq i32 %19, 0
  br i1 %tobool64.not, label %do.body78, label %do.body66

do.body66:                                        ; preds = %do.body52
  store %struct.sched_group* null, %struct.sched_group** %17, align 8
  %.pre142 = load i64, i64* %arrayidx, align 8
  br label %do.body78

do.body78:                                        ; preds = %do.body52, %do.body66
  %20 = phi i64 [ %14, %do.body52 ], [ %.pre142, %do.body66 ]
  %sgc = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 3
  %21 = load %struct.sched_group_capacity**, %struct.sched_group_capacity*** %sgc, align 8
  %22 = ptrtoint %struct.sched_group_capacity** %21 to i64
  %add87 = add i64 %20, %22
  %23 = inttoptr i64 %add87 to %struct.sched_group_capacity**
  %24 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %23, align 8
  %counter.i139 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %24, i64 0, i32 0, i32 0
  %25 = load volatile i32, i32* %counter.i139, align 4
  %tobool90.not = icmp eq i32 %25, 0
  br i1 %tobool90.not, label %if.end103, label %do.body92

do.body92:                                        ; preds = %do.body78
  store %struct.sched_group_capacity* null, %struct.sched_group_capacity** %23, align 8
  br label %if.end103

if.end103:                                        ; preds = %do.body92, %do.body78
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_sched_groups_capacity(i32 noundef %cpu, %struct.sched_domain* noundef %sd) unnamed_addr #0 {
entry:
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %0 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %tobool.not = icmp eq %struct.sched_group* %0, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1241; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  br label %do.body

do.body:                                          ; preds = %next, %if.end
  %sg.0 = phi %struct.sched_group* [ %0, %if.end ], [ %5, %next ]
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %sg.0) #14
  %call17 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call) #14
  %group_weight = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.0, i64 0, i32 2
  store i32 %call17, i32* %group_weight, align 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1024
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %next, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body
  %call2262 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %call) #18
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp63 = icmp ult i32 %call2262, %2
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end30
  %3 = phi i32 [ %4, %if.end30 ], [ %2, %for.cond.preheader ]
  %call2265 = phi i32 [ %call22, %if.end30 ], [ %call2262, %for.cond.preheader ]
  %max_cpu.064 = phi i32 [ %max_cpu.1, %if.end30 ], [ -1, %for.cond.preheader ]
  %cmp24 = icmp slt i32 %max_cpu.064, 0
  br i1 %cmp24, label %if.end30, label %if.else

if.else:                                          ; preds = %for.body
  %call27 = call fastcc i1 @sched_asym_prefer(i32 noundef %call2265, i32 noundef %max_cpu.064) #14
  %spec.select = select i1 %call27, i32 %call2265, i32 %max_cpu.064
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.body
  %4 = phi i32 [ %3, %for.body ], [ %.pre, %if.else ]
  %max_cpu.1 = phi i32 [ %call2265, %for.body ], [ %spec.select, %if.else ]
  %call22 = call i32 @cpumask_next(i32 noundef %call2265, %struct.cpumask* noundef %call) #18
  %cmp = icmp ult i32 %call22, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end30, %for.cond.preheader
  %max_cpu.0.lcssa = phi i32 [ -1, %for.cond.preheader ], [ %max_cpu.1, %if.end30 ]
  %asym_prefer_cpu = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.0, i64 0, i32 4
  store i32 %max_cpu.0.lcssa, i32* %asym_prefer_cpu, align 8
  br label %next

next:                                             ; preds = %do.body, %for.end
  %next31 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.0, i64 0, i32 0
  %5 = load %struct.sched_group*, %struct.sched_group** %next31, align 8
  %6 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %cmp33.not = icmp eq %struct.sched_group* %5, %6
  br i1 %cmp33.not, label %do.end, label %do.body

do.end:                                           ; preds = %next
  %call35 = call i32 @group_balance_cpu(%struct.sched_group* noundef %5) #14
  %cmp36.not = icmp eq i32 %call35, %cpu
  br i1 %cmp36.not, label %if.end39, label %cleanup

if.end39:                                         ; preds = %do.end
  call void @update_group_capacity(%struct.sched_domain* noundef %sd, i32 noundef %cpu) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_attach_domain(%struct.sched_domain* noundef %sd, %struct.root_domain* noundef %rd, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %cond = icmp eq %struct.sched_domain* %sd, null
  br i1 %cond, label %do.end42, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %tmp2.0114 = phi %struct.sched_domain* [ %tmp2.2, %cleanup ], [ %sd, %entry ]
  %parent3 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp2.0114, i64 0, i32 0
  %2 = load %struct.sched_domain*, %struct.sched_domain** %parent3, align 8
  %tobool4.not = icmp eq %struct.sched_domain* %2, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end

if.end:                                           ; preds = %for.body
  %call = call fastcc i32 @sd_parent_degenerate(%struct.sched_domain* noundef nonnull %tmp2.0114, %struct.sched_domain* noundef nonnull %2) #14
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %parent7 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %2, i64 0, i32 0
  %3 = load %struct.sched_domain*, %struct.sched_domain** %parent7, align 8
  store %struct.sched_domain* %3, %struct.sched_domain** %parent3, align 8
  %4 = load %struct.sched_domain*, %struct.sched_domain** %parent7, align 8
  %tobool10.not = icmp eq %struct.sched_domain* %4, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then6
  %child = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 1
  store %struct.sched_domain* %tmp2.0114, %struct.sched_domain** %child, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then6
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %2, i64 0, i32 9
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 2048
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end13
  %flags16 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp2.0114, i64 0, i32 9
  %6 = load i32, i32* %flags16, align 8
  %or = or i32 %6, 2048
  store i32 %or, i32* %flags16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  call fastcc void @destroy_sched_domain(%struct.sched_domain* noundef nonnull %2) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %7 = load %struct.sched_domain*, %struct.sched_domain** %parent3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else
  %tmp2.2 = phi %struct.sched_domain* [ %tmp2.0114, %if.end17 ], [ %7, %if.else ]
  %tobool.not = icmp eq %struct.sched_domain* %tmp2.2, null
  br i1 %tobool.not, label %land.lhs.true, label %for.body

land.lhs.true:                                    ; preds = %for.body, %cleanup
  %call21 = call fastcc i32 @sd_degenerate(%struct.sched_domain* noundef nonnull %sd) #14
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.body32.preheader, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  %parent24 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 0
  %8 = load %struct.sched_domain*, %struct.sched_domain** %parent24, align 8
  call fastcc void @destroy_sched_domain(%struct.sched_domain* noundef nonnull %sd) #14
  %tobool25.not = icmp eq %struct.sched_domain* %8, null
  br i1 %tobool25.not, label %do.end42, label %if.end29.thread120

if.end29.thread120:                               ; preds = %if.then23
  %child27 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %8, i64 0, i32 1
  store %struct.sched_domain* null, %struct.sched_domain** %child27, align 8
  br label %for.body32.preheader

for.body32.preheader:                             ; preds = %land.lhs.true, %if.end29.thread120
  %sd.addr.0123 = phi %struct.sched_domain* [ %8, %if.end29.thread120 ], [ %sd, %land.lhs.true ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader, %for.body32
  %tmp2.3116 = phi %struct.sched_domain* [ %9, %for.body32 ], [ %sd.addr.0123, %for.body32.preheader ]
  %parent38 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %tmp2.3116, i64 0, i32 0
  %9 = load %struct.sched_domain*, %struct.sched_domain** %parent38, align 8
  %tobool31.not = icmp eq %struct.sched_domain* %9, null
  br i1 %tobool31.not, label %do.end42, label %for.body32

do.end42:                                         ; preds = %for.body32, %entry, %if.then23
  %sd.addr.0119 = phi %struct.sched_domain* [ null, %if.then23 ], [ null, %entry ], [ %sd.addr.0123, %for.body32 ]
  call void @rq_attach_root(%struct.rq* noundef %1, %struct.root_domain* noundef %rd) #14
  %sd43 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 22
  %10 = load %struct.sched_domain*, %struct.sched_domain** %sd43, align 8
  %11 = ptrtoint %struct.sched_domain* %sd.addr.0119 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain** elementtype(%struct.sched_domain*) %sd43, i64 %11) #17, !srcloc !26
  call fastcc void @destroy_sched_domains(%struct.sched_domain* noundef %10) #14
  call fastcc void @update_top_cache_domain(i32 noundef %cpu) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_slow_inc() unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !10

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.static_key_slow_inc, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 290; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0, i32 0)) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_domain_allocs(%struct.s_data* nocapture noundef readonly %d, i32 noundef %what, %struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  switch i32 %what, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %rd = getelementptr inbounds %struct.s_data, %struct.s_data* %d, i64 0, i32 1
  %0 = load %struct.root_domain*, %struct.root_domain** %rd, align 8
  %counter.i = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %sw.bb2

if.then:                                          ; preds = %sw.bb
  %rcu = getelementptr inbounds %struct.root_domain, %struct.root_domain* %0, i64 0, i32 2
  call void @free_rootdomain(%struct.callback_head* noundef %rcu) #14
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.then, %entry
  %2 = bitcast %struct.s_data* %d to i8**
  %3 = load i8*, i8** %2, align 8
  call void @free_percpu(i8* noundef %3) #15
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb2
  call fastcc void @__sdt_free(%struct.cpumask* noundef %cpu_map) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sdt_alloc(%struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  %0 = load %struct.sched_domain_topology_level*, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  %mask152 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %0, i64 0, i32 0
  %1 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask152, align 8
  %tobool.not153 = icmp eq %struct.cpumask* (i32)* %1, null
  br i1 %tobool.not153, label %cleanup91, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %tl.0154 = phi %struct.sched_domain_topology_level* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %data = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0154, i64 0, i32 4
  %call = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #15
  %sd = getelementptr inbounds %struct.sd_data, %struct.sd_data* %data, i64 0, i32 0
  %2 = bitcast %struct.sd_data* %data to i8**
  store i8* %call, i8** %2, align 8
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup91, label %if.end

if.end:                                           ; preds = %for.body
  %call3 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #15
  %sds = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0154, i64 0, i32 4, i32 1
  %3 = bitcast %struct.sched_domain_shared*** %sds to i8**
  store i8* %call3, i8** %3, align 8
  %tobool5.not = icmp eq i8* %call3, null
  br i1 %tobool5.not, label %cleanup91, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #15
  %sg = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0154, i64 0, i32 4, i32 2
  %4 = bitcast %struct.sched_group*** %sg to i8**
  store i8* %call8, i8** %4, align 8
  %tobool10.not = icmp eq i8* %call8, null
  br i1 %tobool10.not, label %cleanup91, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 8) #15
  %sgc = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0154, i64 0, i32 4, i32 3
  %5 = bitcast %struct.sched_group_capacity*** %sgc to i8**
  store i8* %call13, i8** %5, align 8
  %tobool15.not = icmp eq i8* %call13, null
  br i1 %tobool15.not, label %cleanup91, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %if.end12
  %call19149 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp150 = icmp ult i32 %call19149, %6
  br i1 %cmp150, label %for.body20, label %for.inc

for.body20:                                       ; preds = %for.cond18.preheader, %if.end72
  %call19151 = phi i32 [ %call19, %if.end72 ], [ %call19149, %for.cond18.preheader ]
  %call26 = call fastcc i8* @kzalloc_node(i64 noundef 168) #14
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %cleanup91, label %if.end29

if.end29:                                         ; preds = %for.body20
  %7 = load %struct.sched_domain**, %struct.sched_domain*** %sd, align 8
  %8 = ptrtoint %struct.sched_domain** %7 to i64
  %idxprom = sext i32 %call19151 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %add32 = add i64 %9, %8
  %10 = inttoptr i64 %add32 to i8**
  store i8* %call26, i8** %10, align 8
  %call33 = call fastcc i8* @kzalloc_node(i64 noundef 12) #14
  %tobool34.not = icmp eq i8* %call33, null
  br i1 %tobool34.not, label %cleanup91, label %if.end36

if.end36:                                         ; preds = %if.end29
  %11 = load %struct.sched_domain_shared**, %struct.sched_domain_shared*** %sds, align 8
  %12 = ptrtoint %struct.sched_domain_shared** %11 to i64
  %13 = load i64, i64* %arrayidx, align 8
  %add47 = add i64 %13, %12
  %14 = inttoptr i64 %add47 to i8**
  store i8* %call33, i8** %14, align 8
  %call51 = call fastcc i8* @kzalloc_node(i64 noundef 64) #14
  %tobool52.not = icmp eq i8* %call51, null
  br i1 %tobool52.not, label %cleanup91, label %if.end54

if.end54:                                         ; preds = %if.end36
  %15 = bitcast i8* %call51 to i8**
  store i8* %call51, i8** %15, align 8
  %16 = load %struct.sched_group**, %struct.sched_group*** %sg, align 8
  %17 = ptrtoint %struct.sched_group** %16 to i64
  %18 = load i64, i64* %arrayidx, align 8
  %add65 = add i64 %18, %17
  %19 = inttoptr i64 %add65 to i8**
  store i8* %call51, i8** %19, align 8
  %call69 = call fastcc i8* @kzalloc_node(i64 noundef 80) #14
  %tobool70.not = icmp eq i8* %call69, null
  br i1 %tobool70.not, label %cleanup91, label %if.end72

if.end72:                                         ; preds = %if.end54
  %20 = load %struct.sched_group_capacity**, %struct.sched_group_capacity*** %sgc, align 8
  %21 = ptrtoint %struct.sched_group_capacity** %20 to i64
  %22 = load i64, i64* %arrayidx, align 8
  %add83 = add i64 %22, %21
  %23 = inttoptr i64 %add83 to i8**
  store i8* %call69, i8** %23, align 8
  %call19 = call i32 @cpumask_next(i32 noundef %call19151, %struct.cpumask* noundef %cpu_map) #18
  %24 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call19, %24
  br i1 %cmp, label %for.body20, label %for.inc

for.inc:                                          ; preds = %if.end72, %for.cond18.preheader
  %incdec.ptr = getelementptr %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0154, i64 1
  %mask = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %incdec.ptr, i64 0, i32 0
  %25 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %tobool.not = icmp eq %struct.cpumask* (i32)* %25, null
  br i1 %tobool.not, label %cleanup91, label %for.body

cleanup91:                                        ; preds = %for.inc, %for.body, %if.end, %if.end7, %if.end12, %for.body20, %if.end29, %if.end36, %if.end54, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ -12, %if.end54 ], [ -12, %if.end36 ], [ -12, %if.end29 ], [ -12, %for.body20 ], [ 0, %for.inc ], [ -12, %for.body ], [ -12, %if.end ], [ -12, %if.end7 ], [ -12, %if.end12 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.root_domain* @alloc_rootdomain() unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 4360) #14
  %0 = bitcast i8* %call to %struct.root_domain*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @init_rootdomain(%struct.root_domain* noundef nonnull %0) #14
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.root_domain* [ null, %if.then2 ], [ null, %entry ], [ %0, %if.end ]
  ret %struct.root_domain* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #0 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #15
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_intersects(i64* noundef %arraydecay, i64* noundef %arraydecay2) #14
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_intersects(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_intersects(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_domain* @sd_init(%struct.sched_domain_topology_level* noundef %tl, %struct.cpumask* noundef %cpu_map, %struct.sched_domain* noundef %child, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 4
  %sd1 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %data, i64 0, i32 0
  %0 = load %struct.sched_domain**, %struct.sched_domain*** %sd1, align 8
  %1 = ptrtoint %struct.sched_domain** %0 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.sched_domain**
  %4 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %mask = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 0
  %5 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call = call %struct.cpumask* %5(i32 noundef %cpu) #15
  %call3 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call) #14
  %sd_flags4 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 1
  %6 = load i32 ()*, i32 ()** %sd_flags4, align 8
  %tobool.not = icmp eq i32 ()* %6, null
  br i1 %tobool.not, label %if.end43, label %if.end

if.end:                                           ; preds = %entry
  %call6 = call i32 %6() #15
  %and = and i32 %call6, -9601
  %tobool7 = icmp ne i32 %and, 0
  %.b242 = load i1, i1* @sd_init.__already_done, align 1
  %lnot11 = xor i1 %.b242, true
  %7 = select i1 %tobool7, i1 %lnot11, i1 false
  br i1 %7, label %if.then15, label %if.end43, !prof !10

if.then15:                                        ; preds = %if.end
  store i1 true, i1* @sd_init.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1533; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !28
  br label %if.end43

if.end43:                                         ; preds = %entry, %if.then15, %if.end
  %sd_flags.0249 = phi i32 [ %call6, %if.then15 ], [ %call6, %if.end ], [ 0, %entry ]
  %and54 = and i32 %sd_flags.0249, 9600
  %conv57 = sext i32 %call3 to i64
  %mul = shl i32 %call3, 1
  %conv58 = sext i32 %mul to i64
  %or = or i32 %and54, 2071
  %8 = load volatile i64, i64* @jiffies, align 64
  %9 = load volatile i64, i64* @jiffies, align 64
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 0
  store %struct.sched_domain* null, %struct.sched_domain** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx176 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 1
  store %struct.sched_domain* %child, %struct.sched_domain** %.compoundliteral.sroa.2.0..sroa_idx176, align 8
  %.compoundliteral.sroa.3.0..sroa_idx177 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 2
  store %struct.sched_group* null, %struct.sched_group** %.compoundliteral.sroa.3.0..sroa_idx177, align 8
  %.compoundliteral.sroa.4.0..sroa_idx178 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 3
  store i64 %conv57, i64* %.compoundliteral.sroa.4.0..sroa_idx178, align 8
  %.compoundliteral.sroa.5.0..sroa_idx179 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 4
  store i64 %conv58, i64* %.compoundliteral.sroa.5.0..sroa_idx179, align 8
  %.compoundliteral.sroa.6.0..sroa_idx180 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 5
  store i32 16, i32* %.compoundliteral.sroa.6.0..sroa_idx180, align 8
  %.compoundliteral.sroa.7.0..sroa_idx181 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 6
  store i32 117, i32* %.compoundliteral.sroa.7.0..sroa_idx181, align 4
  %.compoundliteral.sroa.8.0..sroa_idx182 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 7
  store i32 0, i32* %.compoundliteral.sroa.8.0..sroa_idx182, align 8
  %.compoundliteral.sroa.9.0..sroa_idx183 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 8
  store i32 0, i32* %.compoundliteral.sroa.9.0..sroa_idx183, align 4
  %.compoundliteral.sroa.10.0..sroa_idx184 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 9
  store i32 %or, i32* %.compoundliteral.sroa.10.0..sroa_idx184, align 8
  %.compoundliteral.sroa.11.0..sroa_idx185 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 10
  store i32 0, i32* %.compoundliteral.sroa.11.0..sroa_idx185, align 4
  %.compoundliteral.sroa.12.0..sroa_idx186 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 11
  store i64 %8, i64* %.compoundliteral.sroa.12.0..sroa_idx186, align 8
  %.compoundliteral.sroa.13.0..sroa_idx187 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 12
  store i32 %call3, i32* %.compoundliteral.sroa.13.0..sroa_idx187, align 8
  %.compoundliteral.sroa.14.0..sroa_idx188 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 13
  store i32 0, i32* %.compoundliteral.sroa.14.0..sroa_idx188, align 4
  %.compoundliteral.sroa.15.0..sroa_idx189 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 14
  store i64 0, i64* %.compoundliteral.sroa.15.0..sroa_idx189, align 8
  %.compoundliteral.sroa.16.0..sroa_idx190 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 15
  store i64 %9, i64* %.compoundliteral.sroa.16.0..sroa_idx190, align 8
  %.compoundliteral.sroa.17.0..sroa_idx191 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 16
  store i64 0, i64* %.compoundliteral.sroa.17.0..sroa_idx191, align 8
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 17
  %.compoundliteral.sroa.19.0..sroa_idx192 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 18
  %call59 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %4) #14
  %10 = bitcast %union.anon.96* %.compoundliteral.sroa.18.0..sroa_idx to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  %11 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %call61 = call %struct.cpumask* %11(i32 noundef %cpu) #15
  call fastcc void @cpumask_and(%struct.cpumask* noundef %call59, %struct.cpumask* noundef %cpu_map, %struct.cpumask* noundef %call61) #14
  %call63 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %call59) #14
  %call64 = call fastcc i32 @asym_cpu_capacity_classify(%struct.cpumask* noundef %call59, %struct.cpumask* noundef %cpu_map) #14
  %12 = load i32, i32* %.compoundliteral.sroa.10.0..sroa_idx184, align 8
  %or66 = or i32 %12, %call64
  store i32 %or66, i32* %.compoundliteral.sroa.10.0..sroa_idx184, align 8
  %and69 = and i32 %or66, 160
  %cmp = icmp eq i32 %and69, 160
  %.b241243 = load i1, i1* @sd_init.__already_done.5, align 1
  %lnot80 = xor i1 %.b241243, true
  %13 = select i1 %cmp, i1 %lnot80, i1 false
  br i1 %13, label %if.then90, label %if.end119, !prof !10

if.then90:                                        ; preds = %if.end43
  store i1 true, i1* @sd_init.__already_done.5, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1575; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !29
  %.pre = load i32, i32* %.compoundliteral.sroa.10.0..sroa_idx184, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then90, %if.end43
  %14 = phi i32 [ %.pre, %if.then90 ], [ %or66, %if.end43 ]
  %and129 = and i32 %14, 32
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end137, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end119
  %15 = load %struct.sched_domain*, %struct.sched_domain** %.compoundliteral.sroa.2.0..sroa_idx176, align 8
  %tobool132.not = icmp eq %struct.sched_domain* %15, null
  br i1 %tobool132.not, label %if.end137, label %if.then133

if.then133:                                       ; preds = %land.lhs.true
  %flags135 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %15, i64 0, i32 9
  %16 = load i32, i32* %flags135, align 8
  %and136 = and i32 %16, -2049
  store i32 %and136, i32* %flags135, align 8
  %.pre250 = load i32, i32* %.compoundliteral.sroa.10.0..sroa_idx184, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %land.lhs.true, %if.end119
  %17 = phi i32 [ %.pre250, %if.then133 ], [ %14, %land.lhs.true ], [ %14, %if.end119 ]
  %and139 = and i32 %17, 128
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.else, label %if.end152

if.else:                                          ; preds = %if.end137
  %and144 = and i32 %17, 256
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end152.thread, label %if.end152.thread253

if.end152.thread253:                              ; preds = %if.else
  store i32 117, i32* %.compoundliteral.sroa.7.0..sroa_idx181, align 4
  store i32 1, i32* %.compoundliteral.sroa.8.0..sroa_idx182, align 8
  br label %do.body157

if.end152.thread:                                 ; preds = %if.else
  store i32 1, i32* %.compoundliteral.sroa.8.0..sroa_idx182, align 8
  br label %if.end170

if.end152:                                        ; preds = %if.end137
  store i32 110, i32* %.compoundliteral.sroa.7.0..sroa_idx181, align 4
  %.pre251 = and i32 %17, 256
  %phi.cmp = icmp eq i32 %.pre251, 0
  br i1 %phi.cmp, label %if.end170, label %do.body157

do.body157:                                       ; preds = %if.end152.thread253, %if.end152
  %sds = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl, i64 0, i32 4, i32 1
  %18 = load %struct.sched_domain_shared**, %struct.sched_domain_shared*** %sds, align 8
  %19 = ptrtoint %struct.sched_domain_shared** %18 to i64
  %idxprom164 = sext i32 %call63 to i64
  %arrayidx165 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom164
  %20 = load i64, i64* %arrayidx165, align 8
  %add166 = add i64 %20, %19
  %21 = inttoptr i64 %add166 to %struct.sched_domain_shared**
  %22 = load %struct.sched_domain_shared*, %struct.sched_domain_shared** %21, align 8
  store %struct.sched_domain_shared* %22, %struct.sched_domain_shared** %.compoundliteral.sroa.19.0..sroa_idx192, align 8
  %ref = getelementptr inbounds %struct.sched_domain_shared, %struct.sched_domain_shared* %22, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %ref) #15
  %23 = load %struct.sched_domain_shared*, %struct.sched_domain_shared** %.compoundliteral.sroa.19.0..sroa_idx192, align 8
  %counter.i = getelementptr inbounds %struct.sched_domain_shared, %struct.sched_domain_shared* %23, i64 0, i32 1, i32 0
  store volatile i32 %call3, i32* %counter.i, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end152.thread, %do.body157, %if.end152
  %24 = bitcast %union.anon.96* %.compoundliteral.sroa.18.0..sroa_idx to %struct.sd_data**
  store %struct.sd_data* %data, %struct.sd_data** %24, align 8
  ret %struct.sched_domain* %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_subset(%struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  %call = call fastcc i32 @bitmap_subset(i64* noundef %arraydecay, i64* noundef %arraydecay2) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_or(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %src1p, %struct.cpumask* noundef %src2p) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src1p, i64 0, i32 0, i64 0
  %arraydecay4 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %src2p, i64 0, i32 0, i64 0
  call fastcc void @bitmap_or(i64* noundef %arraydecay, i64* noundef %arraydecay2, i64* noundef %arraydecay4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_domain_attribute(%struct.sched_domain* nocapture noundef %sd, %struct.sched_domain_attr* noundef readonly %attr) unnamed_addr #13 {
entry:
  %tobool.not = icmp eq %struct.sched_domain_attr* %attr, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %relax_domain_level = getelementptr inbounds %struct.sched_domain_attr, %struct.sched_domain_attr* %attr, i64 0, i32 0
  %0 = load i32, i32* %relax_domain_level, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load i32, i32* @default_relax_domain_level, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %request.0 = phi i32 [ %1, %if.then ], [ %0, %lor.lhs.false ]
  %level = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 10
  %2 = load i32, i32* %level, align 4
  %cmp5 = icmp sgt i32 %2, %request.0
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, -10
  store i32 %and, i32* %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @asym_cpu_capacity_classify(%struct.cpumask* noundef %sd_span, %struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  %entry1.058 = load %struct.asym_cap_data*, %struct.asym_cap_data** bitcast (%struct.list_head* @asym_cap_list to %struct.asym_cap_data**), align 8
  %link59 = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.058, i64 0, i32 0
  %cmp.not60 = icmp eq %struct.list_head* %link59, @asym_cap_list
  br i1 %cmp.not60, label %land.rhs, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %entry1.063 = phi %struct.asym_cap_data* [ %entry1.0, %for.inc ], [ %entry1.058, %entry ]
  %count.062 = phi i32 [ %count.1, %for.inc ], [ 0, %entry ]
  %miss.061 = phi i32 [ %miss.1, %for.inc ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.063, i64 0, i32 2, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  %call = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %sd_span, %struct.cpumask* noundef %0) #14
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %inc = add i32 %count.062, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call4 = call fastcc i1 @cpumask_intersects(%struct.cpumask* noundef %cpu_map, %struct.cpumask* noundef %0) #14
  %inc6 = zext i1 %call4 to i32
  %spec.select = add i32 %miss.061, %inc6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %miss.1 = phi i32 [ %miss.061, %if.then ], [ %spec.select, %if.else ]
  %count.1 = phi i32 [ %inc, %if.then ], [ %count.062, %if.else ]
  %1 = bitcast %struct.asym_cap_data* %entry1.063 to %struct.asym_cap_data**
  %entry1.0 = load %struct.asym_cap_data*, %struct.asym_cap_data** %1, align 8
  %link = getelementptr inbounds %struct.asym_cap_data, %struct.asym_cap_data* %entry1.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @asym_cap_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq i32 %count.1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end27

land.rhs:                                         ; preds = %entry, %for.end
  %miss.0.lcssa69 = phi i32 [ %miss.1, %for.end ], [ 0, %entry ]
  %call15 = call fastcc i32 @list_empty() #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %if.end27, !prof !10

if.then26:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1312; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !30
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then26, %land.rhs
  %count.0.lcssa70 = phi i32 [ %count.1, %for.end ], [ 0, %if.then26 ], [ 0, %land.rhs ]
  %miss.0.lcssa68 = phi i32 [ %miss.1, %for.end ], [ %miss.0.lcssa69, %if.then26 ], [ %miss.0.lcssa69, %land.rhs ]
  %cmp36 = icmp slt i32 %count.0.lcssa70, 2
  %tobool40.not = icmp eq i32 %miss.0.lcssa68, 0
  %. = select i1 %tobool40.not, i32 96, i32 32
  %retval.0 = select i1 %cmp36, i32 0, i32 %.
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_subset(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %call = call i32 @__bitmap_subset(i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  call void @__bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef 256) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, %struct.cpumask* noundef, i32 noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_domain* @find_descended_sibling(%struct.sched_domain* noundef %sd, %struct.sched_domain* noundef %sibling) unnamed_addr #0 {
entry:
  %child26 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sibling, i64 0, i32 1
  %0 = load %struct.sched_domain*, %struct.sched_domain** %child26, align 8
  %tobool.not27 = icmp eq %struct.sched_domain* %0, null
  br i1 %tobool.not27, label %while.end17, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %call2 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  %call44 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %0) #14
  %call345 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %call44, %struct.cpumask* noundef %call2) #14
  %tobool4.not46 = icmp eq i32 %call345, 0
  br i1 %tobool4.not46, label %while.body, label %while.end

land.rhs:                                         ; preds = %while.body
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %2) #14
  %call3 = call fastcc i32 @cpumask_subset(%struct.cpumask* noundef %call, %struct.cpumask* noundef %call2) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs.lr.ph, %land.rhs
  %child2947 = phi %struct.sched_domain** [ %child, %land.rhs ], [ %child26, %land.rhs.lr.ph ]
  %1 = load %struct.sched_domain*, %struct.sched_domain** %child2947, align 8
  %child = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %1, i64 0, i32 1
  %2 = load %struct.sched_domain*, %struct.sched_domain** %child, align 8
  %tobool.not = icmp eq %struct.sched_domain* %2, null
  br i1 %tobool.not, label %while.end17, label %land.rhs

while.end:                                        ; preds = %land.rhs, %land.rhs.lr.ph
  %sibling.addr.028.lcssa = phi %struct.sched_domain* [ %sibling, %land.rhs.lr.ph ], [ %1, %land.rhs ]
  %child731.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sibling.addr.028.lcssa, i64 0, i32 1
  %.pre.pre = load %struct.sched_domain*, %struct.sched_domain** %child731.phi.trans.insert.phi.trans.insert, align 8
  %tobool8.not32 = icmp eq %struct.sched_domain* %.pre.pre, null
  br i1 %tobool8.not32, label %while.end17, label %land.rhs9.preheader

land.rhs9.preheader:                              ; preds = %while.end
  %child731 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sibling.addr.028.lcssa, i64 0, i32 1
  br label %land.rhs9

land.rhs9:                                        ; preds = %land.rhs9.preheader, %while.body15
  %3 = phi %struct.sched_domain* [ %5, %while.body15 ], [ %.pre.pre, %land.rhs9.preheader ]
  %child734 = phi %struct.sched_domain** [ %child7, %while.body15 ], [ %child731, %land.rhs9.preheader ]
  %sibling.addr.133 = phi %struct.sched_domain* [ %4, %while.body15 ], [ %sibling.addr.028.lcssa, %land.rhs9.preheader ]
  %call11 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %3) #14
  %call12 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sibling.addr.133) #14
  %call13 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %call11, %struct.cpumask* noundef %call12) #14
  br i1 %call13, label %while.body15, label %while.end17

while.body15:                                     ; preds = %land.rhs9
  %4 = load %struct.sched_domain*, %struct.sched_domain** %child734, align 8
  %child7 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 1
  %5 = load %struct.sched_domain*, %struct.sched_domain** %child7, align 8
  %tobool8.not = icmp eq %struct.sched_domain* %5, null
  br i1 %tobool8.not, label %while.end17, label %land.rhs9

while.end17:                                      ; preds = %while.body, %land.rhs9, %while.body15, %entry, %while.end
  %sibling.addr.1.lcssa = phi %struct.sched_domain* [ %sibling.addr.028.lcssa, %while.end ], [ %sibling, %entry ], [ %4, %while.body15 ], [ %sibling.addr.133, %land.rhs9 ], [ %1, %while.body ]
  ret %struct.sched_domain* %sibling.addr.1.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_group* @build_group_from_child_sched_domain(%struct.sched_domain* noundef %sd) unnamed_addr #0 {
entry:
  %call1 = call fastcc i8* @kzalloc_node(i64 noundef 64) #14
  %0 = bitcast i8* %call1 to %struct.sched_group*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef nonnull %0) #14
  %child = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 1
  %1 = load %struct.sched_domain*, %struct.sched_domain** %child, align 8
  %tobool3.not = icmp eq %struct.sched_domain* %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %1) #14
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call7 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %call7.sink = phi %struct.cpumask* [ %call7, %if.else ], [ %call6, %if.then4 ]
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %call2, %struct.cpumask* noundef %call7.sink) #14
  %ref = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %ref to %struct.atomic_t*
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi %struct.sched_group* [ %0, %if.end8 ], [ null, %entry ]
  ret %struct.sched_group* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef readnone %sg) unnamed_addr #9 {
entry:
  %arraydecay = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 5, i64 0
  %0 = bitcast i64* %arraydecay to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_overlap_sched_group(%struct.sched_domain* nocapture noundef readonly %sd, %struct.sched_group* noundef %sg) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17
  %1 = bitcast %union.anon.96* %0 to %struct.sd_data**
  %2 = load %struct.sd_data*, %struct.sd_data** %1, align 8
  call fastcc void @build_balance_mask(%struct.sched_domain* noundef %sd, %struct.sched_group* noundef %sg) #14
  %call = call fastcc i32 @cpumask_first(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  %sgc = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 3
  %3 = load %struct.sched_group_capacity**, %struct.sched_group_capacity*** %sgc, align 8
  %4 = ptrtoint %struct.sched_group_capacity** %3 to i64
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.sched_group_capacity**
  %7 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %6, align 8
  %sgc2 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg, i64 0, i32 3
  store %struct.sched_group_capacity* %7, %struct.sched_group_capacity** %sgc2, align 8
  %ref = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %7, i64 0, i32 0
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %ref) #15
  %cmp = icmp eq i32 %call.i.i.i, 1
  %call5 = call fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* noundef %sg) #14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %call5, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  br label %if.end24

if.else:                                          ; preds = %entry
  %call7 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %call5, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  br i1 %call7, label %if.end24, label %if.then15, !prof !8

if.then15:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 943; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !31
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then15, %if.then
  %call25 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %sg) #14
  %call26 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call25) #14
  %conv27 = zext i32 %call26 to i64
  %mul = shl nuw nsw i64 %conv27, 10
  %8 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc2, align 8
  %capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %8, i64 0, i32 1
  store i64 %mul, i64* %capacity, align 8
  %9 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc2, align 8
  %min_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %9, i64 0, i32 2
  store i64 1024, i64* %min_capacity, align 8
  %10 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc2, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %10, i64 0, i32 3
  store i64 1024, i64* %max_capacity, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_sched_groups(%struct.sched_group* noundef %sg, i32 noundef %free_sgc) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.sched_group* %sg, null
  br i1 %tobool.not, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %tobool1.not = icmp eq i32 %free_sgc, 0
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %if.end8
  %sg.addr.0 = phi %struct.sched_group* [ %0, %if.end8 ], [ %sg, %do.body.preheader ]
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.addr.0, i64 0, i32 0
  %0 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  br i1 %tobool1.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %sgc = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.addr.0, i64 0, i32 3
  %1 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc, align 8
  %ref = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %1, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %ref) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  %2 = bitcast %struct.sched_group_capacity** %sgc to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true, %do.body
  %ref5 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %sg.addr.0, i64 0, i32 1
  %call.i.i.i.i19 = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %ref5) #15
  %cmp.i.i20 = icmp eq i32 %call.i.i.i.i19, 0
  br i1 %cmp.i.i20, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %4 = bitcast %struct.sched_group* %sg.addr.0 to i8*
  call void @kfree(i8* noundef %4) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %cmp.not = icmp eq %struct.sched_group* %0, %sg
  br i1 %cmp.not, label %cleanup, label %do.body

cleanup:                                          ; preds = %if.end8, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @build_balance_mask(%struct.sched_domain* nocapture noundef readonly %sd, %struct.sched_group* noundef %sg) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %sg) #14
  %0 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17
  %1 = bitcast %union.anon.96* %0 to %struct.sd_data**
  %2 = load %struct.sd_data*, %struct.sd_data** %1, align 8
  call fastcc void @cpumask_clear(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  %call11 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %call) #18
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call11, %3
  br i1 %cmp2, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %sd2 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %2, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %for.cond.backedge
  %call13 = phi i32 [ %call11, %do.body.lr.ph ], [ %call1, %for.cond.backedge ]
  %4 = load %struct.sched_domain**, %struct.sched_domain*** %sd2, align 8
  %5 = ptrtoint %struct.sched_domain** %4 to i64
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %add = add i64 %6, %5
  %7 = inttoptr i64 %add to %struct.sched_domain**
  %8 = load %struct.sched_domain*, %struct.sched_domain** %7, align 8
  %child = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %8, i64 0, i32 1
  %9 = load %struct.sched_domain*, %struct.sched_domain** %child, align 8
  %tobool.not = icmp eq %struct.sched_domain* %9, null
  br i1 %tobool.not, label %for.cond.backedge, label %if.end

if.end:                                           ; preds = %do.body
  %call5 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %9) #14
  %call6 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %call, %struct.cpumask* noundef %call5) #14
  br i1 %call6, label %if.end8, label %for.cond.backedge

if.end8:                                          ; preds = %if.end
  call fastcc void @cpumask_set_cpu(i32 noundef %call13, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end8, %do.body, %if.end
  %call1 = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef %call) #18
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %10
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %entry
  %call9 = call fastcc i1 @cpumask_empty(%struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @sched_domains_tmpmask2, i64 0, i64 0)) #14
  br i1 %call9, label %if.then17, label %if.end18, !prof !10

if.then17:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 898; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !32
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !33
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sched_group* @get_group(i32 noundef %cpu, %struct.sd_data* nocapture noundef readonly %sdd) unnamed_addr #0 {
entry:
  %sd1 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %sdd, i64 0, i32 0
  %0 = load %struct.sched_domain**, %struct.sched_domain*** %sd1, align 8
  %1 = ptrtoint %struct.sched_domain** %0 to i64
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.sched_domain**
  %4 = load %struct.sched_domain*, %struct.sched_domain** %3, align 8
  %child3 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %4, i64 0, i32 1
  %5 = load %struct.sched_domain*, %struct.sched_domain** %child3, align 8
  %tobool.not = icmp eq %struct.sched_domain* %5, null
  br i1 %tobool.not, label %do.body5, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %5) #14
  %call4 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %call) #14
  %.pre = sext i32 %call4 to i64
  %arrayidx14.phi.trans.insert = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %.pre
  %.pre110 = load i64, i64* %arrayidx14.phi.trans.insert, align 8
  br label %do.body5

do.body5:                                         ; preds = %entry, %if.then
  %6 = phi i64 [ %2, %entry ], [ %.pre110, %if.then ]
  %cpu.addr.0 = phi i32 [ %cpu, %entry ], [ %call4, %if.then ]
  %sg11 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %sdd, i64 0, i32 2
  %7 = load %struct.sched_group**, %struct.sched_group*** %sg11, align 8
  %8 = ptrtoint %struct.sched_group** %7 to i64
  %add15 = add i64 %6, %8
  %9 = inttoptr i64 %add15 to %struct.sched_group**
  %10 = load %struct.sched_group*, %struct.sched_group** %9, align 8
  %sgc = getelementptr inbounds %struct.sd_data, %struct.sd_data* %sdd, i64 0, i32 3
  %11 = load %struct.sched_group_capacity**, %struct.sched_group_capacity*** %sgc, align 8
  %12 = ptrtoint %struct.sched_group_capacity** %11 to i64
  %add25 = add i64 %6, %12
  %13 = inttoptr i64 %add25 to %struct.sched_group_capacity**
  %14 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %13, align 8
  %sgc26 = getelementptr inbounds %struct.sched_group, %struct.sched_group* %10, i64 0, i32 3
  store %struct.sched_group_capacity* %14, %struct.sched_group_capacity** %sgc26, align 8
  %ref = getelementptr inbounds %struct.sched_group, %struct.sched_group* %10, i64 0, i32 1
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %ref) #15
  %cmp = icmp sgt i32 %call.i.i.i, 1
  %15 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc26, align 8
  %ref30 = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %15, i64 0, i32 0
  %call.i.i.i109 = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %ref30) #15
  %cmp32 = icmp slt i32 %call.i.i.i109, 2
  %cmp34.not = xor i1 %cmp, %cmp32
  br i1 %cmp34.not, label %if.end45, label %if.then44, !prof !8

if.then44:                                        ; preds = %do.body5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sched/topology.c\22; .popsection; .long 14472b - 14470b; .short 1163; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !34
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %do.body5
  br i1 %cmp, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end45
  %call63 = call fastcc %struct.cpumask* @sched_group_span(%struct.sched_group* noundef %10) #14
  br i1 %tobool.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end56
  %call60 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %5) #14
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %call63, %struct.cpumask* noundef %call60) #14
  %call61 = call fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* noundef %10) #14
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %call61, %struct.cpumask* noundef %call63) #14
  br label %if.end65

if.else:                                          ; preds = %if.end56
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu.addr.0, %struct.cpumask* noundef %call63) #14
  %call64 = call fastcc %struct.cpumask* @group_balance_mask(%struct.sched_group* noundef %10) #14
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu.addr.0, %struct.cpumask* noundef %call64) #14
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then58
  %call67 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call63) #14
  %conv68 = zext i32 %call67 to i64
  %mul = shl nuw nsw i64 %conv68, 10
  %16 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc26, align 8
  %capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %16, i64 0, i32 1
  store i64 %mul, i64* %capacity, align 8
  %17 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc26, align 8
  %min_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %17, i64 0, i32 2
  store i64 1024, i64* %min_capacity, align 8
  %18 = load %struct.sched_group_capacity*, %struct.sched_group_capacity** %sgc26, align 8
  %max_capacity = getelementptr inbounds %struct.sched_group_capacity, %struct.sched_group_capacity* %18, i64 0, i32 3
  store i64 1024, i64* %max_capacity, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end65
  ret %struct.sched_group* %10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sched_asym_prefer(i32 noundef %a, i32 noundef %b) unnamed_addr #0 {
entry:
  %call = call i32 @arch_asym_cpu_priority(i32 noundef %a) #15
  %call1 = call i32 @arch_asym_cpu_priority(i32 noundef %b) #15
  %cmp = icmp sgt i32 %call, %call1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_group_capacity(%struct.sched_domain* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_asym_cpu_priority(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sd_parent_degenerate(%struct.sched_domain* noundef %sd, %struct.sched_domain* noundef %parent) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %0 = load i32, i32* %flags, align 8
  %flags1 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %parent, i64 0, i32 9
  %1 = load i32, i32* %flags1, align 8
  %conv2 = sext i32 %1 to i64
  %call = call fastcc i32 @sd_degenerate(%struct.sched_domain* noundef %parent) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  %call4 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %parent) #14
  %call5 = call fastcc i1 @cpumask_equal(%struct.cpumask* noundef %call3, %struct.cpumask* noundef %call4) #14
  br i1 %call5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %parent, i64 0, i32 2
  %2 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %2, i64 0, i32 0
  %3 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  %cmp = icmp eq %struct.sched_group* %2, %3
  %and = and i64 %conv2, 4294950928
  %spec.select = select i1 %cmp, i64 %and, i64 %conv2
  %4 = xor i32 %0, -1
  %neg = sext i32 %4 to i64
  %and12 = and i64 %spec.select, %neg
  %tobool13.not = icmp eq i64 %and12, 0
  %spec.select25 = zext i1 %tobool13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end ], [ %spec.select25, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_sched_domain(%struct.sched_domain* noundef %sd) unnamed_addr #0 {
entry:
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %0 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  call fastcc void @free_sched_groups(%struct.sched_group* noundef %0, i32 noundef 1) #14
  %shared = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 18
  %1 = load %struct.sched_domain_shared*, %struct.sched_domain_shared** %shared, align 8
  %tobool.not = icmp eq %struct.sched_domain_shared* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ref = getelementptr inbounds %struct.sched_domain_shared, %struct.sched_domain_shared* %1, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %ref) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.sched_domain_shared** %shared to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = bitcast %struct.sched_domain* %sd to i8*
  call void @kfree(i8* noundef %4) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sd_degenerate(%struct.sched_domain* noundef %sd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef %sd) #14
  %call1 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call) #14
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 9
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 16367
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 2
  %1 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  %next = getelementptr inbounds %struct.sched_group, %struct.sched_group* %1, i64 0, i32 0
  %2 = load %struct.sched_group*, %struct.sched_group** %next, align 8
  %cmp3.not = icmp eq %struct.sched_group* %1, %2
  br i1 %cmp3.not, label %if.end5, label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %and7 = lshr i32 %0, 4
  %and7.lobit = and i32 %and7, 1
  %3 = xor i32 %and7.lobit, 1
  br label %return

return:                                           ; preds = %if.end5, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true ], [ %3, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @destroy_sched_domains(%struct.sched_domain* noundef %sd) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.sched_domain* %sd, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rcu = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd, i64 0, i32 17, i32 0
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @destroy_sched_domains_rcu) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_top_cache_domain(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.sched_domain* @highest_flag_domain(i32 noundef %cpu, i32 noundef 256) #14
  %tobool.not = icmp eq %struct.sched_domain* %call, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.cpumask* @sched_domain_span(%struct.sched_domain* noundef nonnull %call) #14
  %call2 = call fastcc i32 @cpumask_first(%struct.cpumask* noundef %call1) #14
  %call4 = call fastcc i32 @cpumask_weight(%struct.cpumask* noundef %call1) #14
  %shared = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %call, i64 0, i32 18
  %0 = load %struct.sched_domain_shared*, %struct.sched_domain_shared** %shared, align 8
  %phi.cast = ptrtoint %struct.sched_domain_shared* %0 to i64
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %size.0 = phi i32 [ %call4, %if.then ], [ 1, %entry ]
  %id.0 = phi i32 [ %call2, %if.then ], [ %cpu, %entry ]
  %sds.0 = phi i64 [ %phi.cast, %if.then ], [ 0, %entry ]
  %1 = ptrtoint %struct.sched_domain* %call to i64
  %idxprom25 = sext i32 %cpu to i64
  %arrayidx26 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom25
  %2 = load i64, i64* %arrayidx26, align 8
  %add27 = add i64 %2, ptrtoint (%struct.sched_domain** @sd_llc to i64)
  %3 = inttoptr i64 %add27 to %struct.sched_domain**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain** elementtype(%struct.sched_domain*) %3, i64 %1) #17, !srcloc !36
  %4 = load i64, i64* %arrayidx26, align 8
  %add46 = add i64 %4, ptrtoint (i32* @sd_llc_size to i64)
  %5 = inttoptr i64 %add46 to i32*
  store i32 %size.0, i32* %5, align 4
  %6 = load i64, i64* %arrayidx26, align 8
  %add56 = add i64 %6, ptrtoint (i32* @sd_llc_id to i64)
  %7 = inttoptr i64 %add56 to i32*
  store i32 %id.0, i32* %7, align 4
  %8 = load i64, i64* %arrayidx26, align 8
  %add93 = add i64 %8, ptrtoint (%struct.sched_domain_shared** @sd_llc_shared to i64)
  %9 = inttoptr i64 %add93 to %struct.sched_domain_shared**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain_shared** elementtype(%struct.sched_domain_shared*) %9, i64 %sds.0) #17, !srcloc !37
  %call107 = call fastcc %struct.sched_domain* @lowest_flag_domain(i32 noundef %cpu, i32 noundef 8192) #14
  %10 = ptrtoint %struct.sched_domain* %call107 to i64
  %11 = load i64, i64* %arrayidx26, align 8
  %add144 = add i64 %11, ptrtoint (%struct.sched_domain** @sd_numa to i64)
  %12 = inttoptr i64 %add144 to %struct.sched_domain**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain** elementtype(%struct.sched_domain*) %12, i64 %10) #17, !srcloc !38
  %call158 = call fastcc %struct.sched_domain* @highest_flag_domain(i32 noundef %cpu, i32 noundef 1024) #14
  %13 = ptrtoint %struct.sched_domain* %call158 to i64
  %14 = load i64, i64* %arrayidx26, align 8
  %add195 = add i64 %14, ptrtoint (%struct.sched_domain** @sd_asym_packing to i64)
  %15 = inttoptr i64 %add195 to %struct.sched_domain**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain** elementtype(%struct.sched_domain*) %15, i64 %13) #17, !srcloc !39
  %call209 = call fastcc %struct.sched_domain* @lowest_flag_domain(i32 noundef %cpu, i32 noundef 64) #14
  %16 = ptrtoint %struct.sched_domain* %call209 to i64
  %17 = load i64, i64* %arrayidx26, align 8
  %add246 = add i64 %17, ptrtoint (%struct.sched_domain** @sd_asym_cpucapacity to i64)
  %18 = inttoptr i64 %add246 to %struct.sched_domain**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.sched_domain** elementtype(%struct.sched_domain*) %18, i64 %16) #17, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @destroy_sched_domains_rcu(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -7, i32 1
  %tobool.not7 = icmp eq void (%struct.callback_head*)** %add.ptr, null
  br i1 %tobool.not7, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to %struct.sched_domain*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %sd.08 = phi %struct.sched_domain* [ %1, %while.body ], [ %0, %while.body.preheader ]
  %parent1 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.08, i64 0, i32 0
  %1 = load %struct.sched_domain*, %struct.sched_domain** %parent1, align 8
  call fastcc void @destroy_sched_domain(%struct.sched_domain* noundef nonnull %sd.08) #14
  %tobool.not = icmp eq %struct.sched_domain* %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.sched_domain* @highest_flag_domain(i32 noundef %cpu, i32 noundef %flag) unnamed_addr #12 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %sd6 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 22
  %2 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd6, align 8
  %tobool.not20 = icmp eq %struct.sched_domain* %2, null
  br i1 %tobool.not20, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %flags24 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %2, i64 0, i32 9
  %3 = load i32, i32* %flags24, align 8
  %and25 = and i32 %3, %flag
  %tobool11.not26 = icmp eq i32 %and25, 0
  br i1 %tobool11.not26, label %for.end, label %if.end

for.body:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %5, i64 0, i32 9
  %4 = load i32, i32* %flags, align 8
  %and = and i32 %4, %flag
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body.preheader, %for.body
  %sd.02227 = phi %struct.sched_domain* [ %5, %for.body ], [ %2, %for.body.preheader ]
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.02227, i64 0, i32 0
  %5 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool.not = icmp eq %struct.sched_domain* %5, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end, %for.body.preheader, %entry
  %hsd.0.lcssa = phi %struct.sched_domain* [ null, %entry ], [ null, %for.body.preheader ], [ %sd.02227, %if.end ], [ %sd.02227, %for.body ]
  ret %struct.sched_domain* %hsd.0.lcssa
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.sched_domain* @lowest_flag_domain(i32 noundef %cpu, i32 noundef %flag) unnamed_addr #12 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rq* @runqueues to i64)
  %1 = inttoptr i64 %add to %struct.rq*
  %sd6 = getelementptr inbounds %struct.rq, %struct.rq* %1, i64 0, i32 22
  %2 = load volatile %struct.sched_domain*, %struct.sched_domain** %sd6, align 8
  %tobool.not19 = icmp eq %struct.sched_domain* %2, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %sd.020 = phi %struct.sched_domain* [ %4, %for.inc ], [ %2, %entry ]
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.020, i64 0, i32 9
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, %flag
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %sd.020, i64 0, i32 0
  %4 = load %struct.sched_domain*, %struct.sched_domain** %parent, align 8
  %tobool.not = icmp eq %struct.sched_domain* %4, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  %sd.0.lcssa = phi %struct.sched_domain* [ null, %entry ], [ %sd.020, %for.body ], [ null, %for.inc ]
  ret %struct.sched_domain* %sd.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sdt_free(%struct.cpumask* noundef %cpu_map) unnamed_addr #0 {
entry:
  %0 = load %struct.sched_domain_topology_level*, %struct.sched_domain_topology_level** @sched_domain_topology, align 8
  %mask120 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %0, i64 0, i32 0
  %1 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask120, align 8
  %tobool.not121 = icmp eq %struct.cpumask* (i32)* %1, null
  br i1 %tobool.not121, label %for.end72, label %for.body

for.body:                                         ; preds = %entry, %for.end
  %tl.0122 = phi %struct.sched_domain_topology_level* [ %incdec.ptr, %for.end ], [ %0, %entry ]
  %data = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4
  %call117 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef %cpu_map) #18
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp118 = icmp ult i32 %call117, %2
  br i1 %cmp118, label %for.body2.lr.ph, label %for.end

for.body2.lr.ph:                                  ; preds = %for.body
  %sd3 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %data, i64 0, i32 0
  %sds = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 1
  %sg = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 2
  %sgc = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 3
  br label %for.body2

for.body2:                                        ; preds = %for.body2.lr.ph, %if.end63
  %call119 = phi i32 [ %call117, %for.body2.lr.ph ], [ %call, %if.end63 ]
  %3 = load %struct.sched_domain**, %struct.sched_domain*** %sd3, align 8
  %tobool4.not = icmp eq %struct.sched_domain** %3, null
  br i1 %tobool4.not, label %if.end21, label %do.body

do.body:                                          ; preds = %for.body2
  %4 = ptrtoint %struct.sched_domain** %3 to i64
  %idxprom = sext i32 %call119 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to %struct.sched_domain**
  %7 = load %struct.sched_domain*, %struct.sched_domain** %6, align 8
  %tobool7.not = icmp eq %struct.sched_domain* %7, null
  br i1 %tobool7.not, label %do.body10, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %flags = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %7, i64 0, i32 9
  %8 = load i32, i32* %flags, align 8
  %and = and i32 %8, 4096
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %groups = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %7, i64 0, i32 2
  %9 = load %struct.sched_group*, %struct.sched_group** %groups, align 8
  call fastcc void @free_sched_groups(%struct.sched_group* noundef %9, i32 noundef 0) #14
  %.pre = load %struct.sched_domain**, %struct.sched_domain*** %sd3, align 8
  %.pre124 = load i64, i64* %arrayidx, align 8
  %.pre125 = ptrtoint %struct.sched_domain** %.pre to i64
  %.pre126 = add i64 %.pre124, %.pre125
  br label %do.body10

do.body10:                                        ; preds = %do.body, %land.lhs.true, %if.then9
  %add20.pre-phi = phi i64 [ %add, %do.body ], [ %add, %land.lhs.true ], [ %.pre126, %if.then9 ]
  %10 = inttoptr i64 %add20.pre-phi to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #15
  br label %if.end21

if.end21:                                         ; preds = %do.body10, %for.body2
  %12 = load %struct.sched_domain_shared**, %struct.sched_domain_shared*** %sds, align 8
  %tobool22.not = icmp eq %struct.sched_domain_shared** %12, null
  br i1 %tobool22.not, label %if.end35, label %do.body24

do.body24:                                        ; preds = %if.end21
  %13 = ptrtoint %struct.sched_domain_shared** %12 to i64
  %idxprom32 = sext i32 %call119 to i64
  %arrayidx33 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom32
  %14 = load i64, i64* %arrayidx33, align 8
  %add34 = add i64 %14, %13
  %15 = inttoptr i64 %add34 to i8**
  %16 = load i8*, i8** %15, align 8
  call void @kfree(i8* noundef %16) #15
  br label %if.end35

if.end35:                                         ; preds = %do.body24, %if.end21
  %17 = load %struct.sched_group**, %struct.sched_group*** %sg, align 8
  %tobool36.not = icmp eq %struct.sched_group** %17, null
  br i1 %tobool36.not, label %if.end49, label %do.body38

do.body38:                                        ; preds = %if.end35
  %18 = ptrtoint %struct.sched_group** %17 to i64
  %idxprom46 = sext i32 %call119 to i64
  %arrayidx47 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom46
  %19 = load i64, i64* %arrayidx47, align 8
  %add48 = add i64 %19, %18
  %20 = inttoptr i64 %add48 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @kfree(i8* noundef %21) #15
  br label %if.end49

if.end49:                                         ; preds = %do.body38, %if.end35
  %22 = load %struct.sched_group_capacity**, %struct.sched_group_capacity*** %sgc, align 8
  %tobool50.not = icmp eq %struct.sched_group_capacity** %22, null
  br i1 %tobool50.not, label %if.end63, label %do.body52

do.body52:                                        ; preds = %if.end49
  %23 = ptrtoint %struct.sched_group_capacity** %22 to i64
  %idxprom60 = sext i32 %call119 to i64
  %arrayidx61 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom60
  %24 = load i64, i64* %arrayidx61, align 8
  %add62 = add i64 %24, %23
  %25 = inttoptr i64 %add62 to i8**
  %26 = load i8*, i8** %25, align 8
  call void @kfree(i8* noundef %26) #15
  br label %if.end63

if.end63:                                         ; preds = %do.body52, %if.end49
  %call = call i32 @cpumask_next(i32 noundef %call119, %struct.cpumask* noundef %cpu_map) #18
  %27 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %27
  br i1 %cmp, label %for.body2, label %for.end

for.end:                                          ; preds = %if.end63, %for.body
  %sd64 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %data, i64 0, i32 0
  %28 = bitcast %struct.sd_data* %data to i8**
  %29 = load i8*, i8** %28, align 8
  call void @free_percpu(i8* noundef %29) #15
  store %struct.sched_domain** null, %struct.sched_domain*** %sd64, align 8
  %sds66 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 1
  %30 = bitcast %struct.sched_domain_shared*** %sds66 to i8**
  %31 = load i8*, i8** %30, align 8
  call void @free_percpu(i8* noundef %31) #15
  store %struct.sched_domain_shared** null, %struct.sched_domain_shared*** %sds66, align 8
  %sg68 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 2
  %32 = bitcast %struct.sched_group*** %sg68 to i8**
  %33 = load i8*, i8** %32, align 8
  call void @free_percpu(i8* noundef %33) #15
  store %struct.sched_group** null, %struct.sched_group*** %sg68, align 8
  %sgc70 = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 0, i32 4, i32 3
  %34 = bitcast %struct.sched_group_capacity*** %sgc70 to i8**
  %35 = load i8*, i8** %34, align 8
  call void @free_percpu(i8* noundef %35) #15
  store %struct.sched_group_capacity** null, %struct.sched_group_capacity*** %sgc70, align 8
  %incdec.ptr = getelementptr %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %tl.0122, i64 1
  %mask = getelementptr inbounds %struct.sched_domain_topology_level, %struct.sched_domain_topology_level* %incdec.ptr, i64 0, i32 0
  %36 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %mask, align 8
  %tobool.not = icmp eq %struct.cpumask* (i32)* %36, null
  br i1 %tobool.not, label %for.end72, label %for.body

for.end72:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bitmap_equal(i64* noundef %src1, i64* noundef %src2) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %src1 to i8*
  %1 = bitcast i64* %src2 to i8*
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 32) #15
  %tobool9.not = icmp eq i32 %call, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  ret i32 %lnot.ext11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_slow_dec() unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !10

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.static_key_slow_dec, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 296; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call fastcc void @__ll_sc_atomic_sub() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0, i32 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @sched_asym_cpucapacity, i64 0, i32 0, i32 0, i32 0)) #17, !srcloc !43
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2157453511}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2157465159}
!13 = !{i64 2157466972}
!14 = !{i64 2157499594}
!15 = !{i64 2149063121, i64 2149063168, i64 2149063174, i64 2149063211, i64 2149063229, i64 2149064540, i64 2149064588, i64 2149064636, i64 2149064699, i64 2149064748, i64 2149063307, i64 2149063332, i64 2149063358, i64 2149063364, i64 2149064206, i64 2149064246, i64 2149064264, i64 2149064296, i64 2149064324, i64 2149064378, i64 2149064398, i64 2149064495, i64 2149063387, i64 2149063401, i64 2149063407, i64 2149063457, i64 2149063503, i64 2149063536}
!16 = !{i64 2149065300, i64 2149065347, i64 2149065353, i64 2149065390, i64 2149065408, i64 2149066351, i64 2149066399, i64 2149066447, i64 2149066510, i64 2149066559, i64 2149065486, i64 2149065511, i64 2149065537, i64 2149065543, i64 2149065580, i64 2149065586, i64 2149065636, i64 2149065682, i64 2149065715}
!17 = !{i64 2149057418, i64 2149057465, i64 2149057471, i64 2149057508, i64 2149057526, i64 2149058867, i64 2149058915, i64 2149058963, i64 2149059026, i64 2149059075, i64 2149057604, i64 2149057629, i64 2149057655, i64 2149057661, i64 2149058533, i64 2149058573, i64 2149058591, i64 2149058623, i64 2149058651, i64 2149058705, i64 2149058725, i64 2149058822, i64 2149057684, i64 2149057698, i64 2149057704, i64 2149057754, i64 2149057800, i64 2149057833}
!18 = !{i64 2148087065, i64 2148087586, i64 2148087616, i64 2148087642, i64 2148087674, i64 2148087703}
!19 = !{i64 2148017988, i64 2148018636, i64 2148018666, i64 2148018698, i64 2148018732, i64 2148018768, i64 2148018793}
!20 = !{i64 2148007415, i64 2148007931, i64 2148007961, i64 2148007988, i64 2148008022, i64 2148008052}
!21 = !{i64 2148076495, i64 2148077006, i64 2148077036, i64 2148077062, i64 2148077094, i64 2148077123}
!22 = !{i64 2149069134, i64 2149069181, i64 2149069187, i64 2149069224, i64 2149069242, i64 2149070553, i64 2149070601, i64 2149070649, i64 2149070712, i64 2149070761, i64 2149069320, i64 2149069345, i64 2149069371, i64 2149069377, i64 2149070219, i64 2149070259, i64 2149070277, i64 2149070309, i64 2149070337, i64 2149070391, i64 2149070411, i64 2149070508, i64 2149069400, i64 2149069414, i64 2149069420, i64 2149069470, i64 2149069516, i64 2149069549}
!23 = !{i64 2157415676}
!24 = !{i64 2157435843}
!25 = !{i64 2157400276}
!26 = !{i64 2157385348}
!27 = !{i64 2148976141}
!28 = !{i64 2157448177}
!29 = !{i64 2157451037}
!30 = !{i64 2157407752}
!31 = !{i64 2157393365}
!32 = !{i64 2157390737}
!33 = !{i64 2148008267, i64 2148008915, i64 2148008945, i64 2148008977, i64 2148009011, i64 2148009047, i64 2148009072}
!34 = !{i64 2157398186}
!35 = !{i64 2149579085}
!36 = !{i64 2157209296}
!37 = !{i64 2157248224}
!38 = !{i64 2157285444}
!39 = !{i64 2157323324}
!40 = !{i64 2157363184}
!41 = !{i64 2149579302}
!42 = !{i64 2148978542}
!43 = !{i64 2148017136, i64 2148017652, i64 2148017682, i64 2148017709, i64 2148017743, i64 2148017773}
