; ModuleID = 'kernel/kallsyms.c'
source_filename = "kernel/kallsyms.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_kallsyms__473_866_kallsyms_init6:\09\09\09"
module asm ".long\09kallsyms_init - .\09"
module asm ".previous\09\09\09\09\09"

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
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.12 }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
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
%struct.kqid = type { %union.anon.111, i32 }
%union.anon.111 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.86, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.20 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.90, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.90 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.91, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.92, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.91 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.92 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.14, %union.anon.106, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.106 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.118, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.138, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.118 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.sk_buff = type { %union.anon.28, %union.anon.31, %union.anon.32, [48 x i8], %union.anon.33, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.35, i32, i32, i32, i16, i16, %union.anon.37, %union.anon.38, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.30 }
%union.anon.30 = type { %struct.net_device* }
%union.anon.31 = type { %struct.sock* }
%union.anon.32 = type { i64 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, void (%struct.sk_buff*)* }
%union.anon.35 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i16 }
%struct.ifreq = type { %union.anon.119, %union.anon.120 }
%union.anon.119 = type { [16 x i8] }
%union.anon.120 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.121 }
%union.anon.121 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type opaque
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i16, i16 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.122 }
%union.anon.122 = type { i8* }
%struct.neighbour = type opaque
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.124 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.125 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.129] }
%struct.anon.129 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.130 }
%union.anon.130 = type { %struct.anon.132, [4 x i8] }
%struct.anon.132 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.93, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.93 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.in_device = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.69 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.39, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.39 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.40 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.40 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.41, i8, i8, i16, i32 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.48, i32, i64 }
%union.anon.48 = type { i32 }
%struct.poll_table_struct = type opaque
%struct.bpf_local_storage_map = type opaque
%struct.bpf_local_storage = type opaque
%struct.bpf_verifier_env = type opaque
%struct.bpf_func_state = type opaque
%struct.bpf_iter_seq_info = type { %struct.seq_operations*, i32 (i8*, %struct.bpf_iter_aux_info*)*, void (i8*)*, i32 }
%struct.bpf_iter_aux_info = type opaque
%struct.bpf_kfunc_desc_tab = type opaque
%struct.bpf_ksym = type { i64, i64, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.bpf_prog_ops = type { i32 (%struct.bpf_prog*, %union.bpf_attr*, %union.bpf_attr*)* }
%struct.btf_mod_pair = type { %struct.btf*, %struct.module* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%union.anon.69 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.134, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.134 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.135 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i64, i32 }
%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, i1, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, void (%struct.tcf_proto*, i8*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i8*, i1, %struct.netlink_ext_ack*)*, i1 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, %struct.tcf_walker*, i1)*, i32 (%struct.tcf_proto*, i1, i32 (i32, i8*, i8*)*, i8*, %struct.netlink_ext_ack*)*, void (%struct.tcf_proto*, i8*)*, void (%struct.tcf_proto*, i8*)*, void (i8*, i32, i64, i8*, i64)*, i8* (%struct.net*, %struct.tcf_chain*, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (i8*)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.sk_buff*, %struct.net*, i8*)*, %struct.module*, i32 }
%struct.tcf_walker = type opaque
%struct.gnet_dump = type { %struct.spinlock*, %struct.sk_buff*, %struct.nlattr*, i32, i32, i32, i8*, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_size_table = type { %struct.callback_head, %struct.list_head, %struct.tc_sizespec, i32, [0 x i16] }
%struct.tc_sizespec = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.net_rate_estimator = type opaque
%struct.gnet_stats_basic_cpu = type { %struct.gnet_stats_basic_packed, %struct.u64_stats_sync }
%struct.qdisc_skb_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.gnet_stats_basic_packed = type { i64, i64 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.xdp_dev_bulk_queue = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.possible_net_t = type {}
%union.anon.138 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type { %struct.list_head, i8*, i64, %struct.net_device* (%struct.nlattr**, i8*, i8, i32, i32)*, void (%struct.net_device*)*, i8, i32, %struct.nla_policy*, i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.list_head*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i32 ()*, i32 ()*, i32, %struct.nla_policy*, i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i64 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)*, %struct.net* (%struct.net_device*)*, i64 (%struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32)* }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.26, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.26 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.70 }
%union.anon.70 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.sock = type opaque
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.71, %union.anon.72, i32 }
%struct.request_queue = type opaque
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.73 }
%struct.anon.73 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.85, i32, [12 x i8] }
%union.anon.85 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.87, %struct.qspinlock }
%union.anon.87 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.89, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.89 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.7, i8* }
%union.anon.7 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.112, %struct.list_head, %struct.list_head, %union.anon.113 }
%struct.lockref = type { %union.anon.9 }
%union.anon.9 = type { i64 }
%union.anon.112 = type { %struct.list_head }
%union.anon.113 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.114, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.115, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.116, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.117, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.114 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.115 = type { %struct.callback_head }
%union.anon.116 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.117 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, {}*, i32 (%struct.file*, i8*)*, {}*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.109 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.109 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.6 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.6 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%union.anon.12 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.13, %union.anon.107 }
%union.anon.13 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.107 = type { i64 }
%struct.kallsym_iter = type { i64, i64, i64, i64, i64, i64, i32, i8, [128 x i8], [56 x i8], i32, i32 }

@kallsyms_num_syms = extern_weak dso_local local_unnamed_addr constant i32, section ".rodata", align 4
@kptr_restrict = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@__UNIQUE_ID___addressable_kallsyms_init474 = internal global i8* bitcast (i32 ()* @kallsyms_init to i8*), section ".discard.addressable", align 8
@kallsyms_names = extern_weak dso_local constant [0 x i8], align 1
@kallsyms_token_table = extern_weak dso_local local_unnamed_addr constant [0 x i8], align 1
@kallsyms_token_index = extern_weak dso_local local_unnamed_addr constant [0 x i16], align 2
@kallsyms_relative_base = extern_weak dso_local local_unnamed_addr constant i64, section ".rodata", align 8
@kallsyms_offsets = extern_weak dso_local constant [0 x i32], align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@kallsyms_markers = extern_weak dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+%#lx/%#lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" [%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"kallsyms\00", align 1
@kallsyms_proc_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @kallsyms_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @seq_release_private, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@kallsyms_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @s_start, void (%struct.seq_file*, i8*)* @s_stop, i8* (%struct.seq_file*, i8*, i64*)* @s_next, i32 (%struct.seq_file*, i8*)* @s_show }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"__builtin__kprobes\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%px %c %s\09[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%px %c %s\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_kallsyms_init474 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @kallsyms_lookup_name(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %namebuf = alloca [128 x i8], align 1
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %namebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  %1 = load i32, i32* @kallsyms_num_syms, align 4
  %conv = zext i32 %1 to i64
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %off.032 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  %i.031 = phi i64 [ %inc, %if.end ], [ 0, %entry ]
  %call = call fastcc i32 @kallsyms_expand_symbol(i32 noundef %off.032, i8* noundef nonnull %0) #10
  %call3 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %name) #11
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %conv6 = trunc i64 %i.031 to i32
  %call7 = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv6) #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %inc = add nuw nsw i64 %i.031, 1
  %exitcond.not = icmp eq i64 %inc, %conv
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %entry, %if.then
  %retval.0 = phi i64 [ %call7, %if.then ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @kallsyms_expand_symbol(i32 noundef %off, i8* nocapture noundef writeonly %result) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %off to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @kallsyms_names, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %tobool.not15 = icmp eq i8 %0, 0
  br i1 %tobool.not15, label %if.then19, label %while.body

while.cond.loopexit:                              ; preds = %if.end15, %while.body
  %result.addr.1.lcssa = phi i8* [ %result.addr.016, %while.body ], [ %result.addr.2, %if.end15 ]
  %maxlen.addr.1.lcssa = phi i64 [ %maxlen.addr.017, %while.body ], [ %maxlen.addr.2, %if.end15 ]
  %skipped_first.1.lcssa = phi i32 [ %skipped_first.019, %while.body ], [ 1, %if.end15 ]
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %tail, label %while.body

while.body:                                       ; preds = %entry, %while.cond.loopexit
  %data.020.pn = phi i8* [ %data.020, %while.cond.loopexit ], [ %arrayidx, %entry ]
  %skipped_first.019 = phi i32 [ %skipped_first.1.lcssa, %while.cond.loopexit ], [ 0, %entry ]
  %len.018 = phi i32 [ %dec, %while.cond.loopexit ], [ %conv, %entry ]
  %maxlen.addr.017 = phi i64 [ %maxlen.addr.1.lcssa, %while.cond.loopexit ], [ 128, %entry ]
  %result.addr.016 = phi i8* [ %result.addr.1.lcssa, %while.cond.loopexit ], [ %result, %entry ]
  %data.020 = getelementptr i8, i8* %data.020.pn, i64 1
  %1 = load i8, i8* %data.020, align 1
  %idxprom2 = zext i8 %1 to i64
  %arrayidx3 = getelementptr [0 x i16], [0 x i16]* @kallsyms_token_index, i64 0, i64 %idxprom2
  %2 = load i16, i16* %arrayidx3, align 2
  %idxprom4 = zext i16 %2 to i64
  %arrayidx5 = getelementptr [0 x i8], [0 x i8]* @kallsyms_token_table, i64 0, i64 %idxprom4
  %dec = add nsw i32 %len.018, -1
  %3 = load i8, i8* %arrayidx5, align 1
  %tobool8.not7 = icmp eq i8 %3, 0
  br i1 %tobool8.not7, label %while.cond.loopexit, label %while.body9

while.body9:                                      ; preds = %while.body, %if.end15
  %4 = phi i8 [ %5, %if.end15 ], [ %3, %while.body ]
  %tptr.011 = phi i8* [ %incdec.ptr16, %if.end15 ], [ %arrayidx5, %while.body ]
  %skipped_first.110 = phi i32 [ 1, %if.end15 ], [ %skipped_first.019, %while.body ]
  %maxlen.addr.19 = phi i64 [ %maxlen.addr.2, %if.end15 ], [ %maxlen.addr.017, %while.body ]
  %result.addr.18 = phi i8* [ %result.addr.2, %if.end15 ], [ %result.addr.016, %while.body ]
  %tobool10.not = icmp eq i32 %skipped_first.110, 0
  br i1 %tobool10.not, label %if.end15, label %if.then

if.then:                                          ; preds = %while.body9
  %cmp = icmp ult i64 %maxlen.addr.19, 2
  br i1 %cmp, label %tail, label %if.end

if.end:                                           ; preds = %if.then
  store i8 %4, i8* %result.addr.18, align 1
  %incdec.ptr13 = getelementptr i8, i8* %result.addr.18, i64 1
  %dec14 = add i64 %maxlen.addr.19, -1
  br label %if.end15

if.end15:                                         ; preds = %while.body9, %if.end
  %result.addr.2 = phi i8* [ %incdec.ptr13, %if.end ], [ %result.addr.18, %while.body9 ]
  %maxlen.addr.2 = phi i64 [ %dec14, %if.end ], [ %maxlen.addr.19, %while.body9 ]
  %incdec.ptr16 = getelementptr i8, i8* %tptr.011, i64 1
  %5 = load i8, i8* %incdec.ptr16, align 1
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %while.cond.loopexit, label %while.body9

tail:                                             ; preds = %while.cond.loopexit, %if.then
  %result.addr.3 = phi i8* [ %result.addr.18, %if.then ], [ %result.addr.1.lcssa, %while.cond.loopexit ]
  %maxlen.addr.3 = phi i64 [ %maxlen.addr.19, %if.then ], [ %maxlen.addr.1.lcssa, %while.cond.loopexit ]
  %tobool18.not = icmp eq i64 %maxlen.addr.3, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %entry, %tail
  %result.addr.329 = phi i8* [ %result.addr.3, %tail ], [ %result, %entry ]
  store i8 0, i8* %result.addr.329, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %tail
  %add = add i32 %off, 1
  %add1 = add i32 %add, %conv
  ret i32 %add1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @kallsyms_sym_address(i32 noundef %idx) unnamed_addr #5 {
entry:
  %0 = load i64, i64* @kallsyms_relative_base, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr [0 x i32], [0 x i32]* @kallsyms_offsets, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %1 to i64
  %add = add i64 %0, %conv
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kallsyms_lookup_size_offset(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @is_ksym_addr(i64 noundef %addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @get_symbol_pos(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_ksym_addr(i64 noundef %addr) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @is_kernel_text(i64 noundef %addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i32 @is_kernel_inittext(i64 noundef %addr) #10
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_symbol_pos(i64 noundef %addr, i64* noundef writeonly %symbolsize, i64* noundef writeonly %offset) unnamed_addr #0 {
entry:
  br i1 icmp eq (i32* getelementptr inbounds ([0 x i32], [0 x i32]* @kallsyms_offsets, i64 0, i64 0), i32* null), label %do.body1, label %do.end6, !prof !8

do.body1:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/kallsyms.c\22; .popsection; .long 14472b - 14470b; .short 242; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !9
  unreachable

do.end6:                                          ; preds = %entry
  %0 = load i32, i32* @kallsyms_num_syms, align 4
  %conv = zext i32 %0 to i64
  %cmp85 = icmp ugt i32 %0, 1
  br i1 %cmp85, label %while.body, label %while.end24

while.cond14.preheader:                           ; preds = %while.body
  %tobool15.not89 = icmp eq i64 %low.0.add, 0
  br i1 %tobool15.not89, label %while.end24, label %land.rhs

while.body:                                       ; preds = %do.end6, %while.body
  %sub88 = phi i64 [ %sub, %while.body ], [ %conv, %do.end6 ]
  %high.087 = phi i64 [ %add.high.0, %while.body ], [ %conv, %do.end6 ]
  %low.086 = phi i64 [ %low.0.add, %while.body ], [ 0, %do.end6 ]
  %div = lshr i64 %sub88, 1
  %add = add i64 %div, %low.086
  %conv9 = trunc i64 %add to i32
  %call = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv9) #10
  %cmp10.not = icmp ugt i64 %call, %addr
  %low.0.add = select i1 %cmp10.not, i64 %low.086, i64 %add
  %add.high.0 = select i1 %cmp10.not, i64 %add, i64 %high.087
  %sub = sub i64 %add.high.0, %low.0.add
  %cmp = icmp ugt i64 %sub, 1
  br i1 %cmp, label %while.body, label %while.cond14.preheader

land.rhs:                                         ; preds = %while.cond14.preheader, %while.body23
  %low.290 = phi i64 [ %dec, %while.body23 ], [ %low.0.add, %while.cond14.preheader ]
  %1 = trunc i64 %low.290 to i32
  %conv17 = add i32 %1, -1
  %call18 = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv17) #10
  %call20 = call fastcc i64 @kallsyms_sym_address(i32 noundef %1) #10
  %cmp21 = icmp eq i64 %call18, %call20
  br i1 %cmp21, label %while.body23, label %while.end24

while.body23:                                     ; preds = %land.rhs
  %dec = add i64 %low.290, -1
  %tobool15.not = icmp eq i64 %dec, 0
  br i1 %tobool15.not, label %while.end24, label %land.rhs

while.end24:                                      ; preds = %land.rhs, %while.body23, %do.end6, %while.cond14.preheader
  %low.2.lcssa = phi i64 [ 0, %while.cond14.preheader ], [ 0, %do.end6 ], [ 0, %while.body23 ], [ %low.290, %land.rhs ]
  %conv25 = trunc i64 %low.2.lcssa to i32
  %call26 = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv25) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end24
  %i.0.in = phi i64 [ %low.2.lcssa, %while.end24 ], [ %i.0, %for.body ]
  %i.0 = add i64 %i.0.in, 1
  %cmp29 = icmp ult i64 %i.0, %conv
  br i1 %cmp29, label %for.body, label %if.then40

for.body:                                         ; preds = %for.cond
  %conv31 = trunc i64 %i.0 to i32
  %call32 = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv31) #10
  %cmp33 = icmp ugt i64 %call32, %call26
  br i1 %cmp33, label %if.end46, label %for.cond

if.then40:                                        ; preds = %for.cond
  %call41 = call fastcc i32 @is_kernel_inittext(i64 noundef %addr) #10
  %tobool42.not = icmp eq i32 %call41, 0
  %. = select i1 %tobool42.not, i64 ptrtoint ([0 x i8]* @_etext to i64), i64 ptrtoint ([0 x i8]* @_einittext to i64)
  br label %if.end46

if.end46:                                         ; preds = %for.body, %if.then40
  %symbol_end.1 = phi i64 [ %., %if.then40 ], [ %call32, %for.body ]
  %tobool47.not = icmp eq i64* %symbolsize, null
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end46
  %sub49 = sub i64 %symbol_end.1, %call26
  store i64 %sub49, i64* %symbolsize, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46
  %tobool51.not = icmp eq i64* %offset, null
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end50
  %sub53 = sub i64 %addr, %call26
  store i64 %sub53, i64* %offset, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50
  ret i64 %low.2.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kallsyms_lookup(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset, i8** noundef %modname, i8* noundef %namebuf) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kallsyms_lookup_buildid(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset, i8** noundef %modname, i8** noundef null, i8* noundef %namebuf) #10
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kallsyms_lookup_buildid(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset, i8** noundef writeonly %modname, i8** noundef writeonly %modbuildid, i8* noundef writeonly %namebuf) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr i8, i8* %namebuf, i64 127
  store i8 0, i8* %arrayidx, align 1
  store i8 0, i8* %namebuf, align 1
  %call = call fastcc i32 @is_ksym_addr(i64 noundef %addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %found, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @get_symbol_pos(i64 noundef %addr, i64* noundef %symbolsize, i64* noundef %offset) #10
  %call3 = call fastcc i32 @get_symbol_offset(i64 noundef %call2) #10
  %0 = call fastcc i32 @kallsyms_expand_symbol(i32 noundef %call3, i8* noundef %namebuf) #10
  %tobool5.not = icmp eq i8** %modname, null
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  store i8* null, i8** %modname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %tobool7.not = icmp eq i8** %modbuildid, null
  br i1 %tobool7.not, label %found, label %if.then8

if.then8:                                         ; preds = %if.end
  store i8* null, i8** %modbuildid, align 8
  br label %found

found:                                            ; preds = %entry, %if.end, %if.then8
  %ret.1 = phi i8* [ %namebuf, %if.then8 ], [ %namebuf, %if.end ], [ null, %entry ]
  ret i8* %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lookup_symbol_name(i64 noundef %addr, i8* nocapture noundef writeonly %symname) local_unnamed_addr #0 {
entry:
  store i8 0, i8* %symname, align 1
  %arrayidx1 = getelementptr i8, i8* %symname, i64 127
  store i8 0, i8* %arrayidx1, align 1
  %call = call fastcc i32 @is_ksym_addr(i64 noundef %addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @get_symbol_pos(i64 noundef %addr, i64* noundef null, i64* noundef null) #10
  %call3 = call fastcc i32 @get_symbol_offset(i64 noundef %call2) #10
  %0 = call fastcc i32 @kallsyms_expand_symbol(i32 noundef %call3, i8* noundef %symname) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -34, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @get_symbol_offset(i64 noundef %pos) unnamed_addr #6 {
entry:
  %shr = lshr i64 %pos, 8
  %arrayidx = getelementptr [0 x i32], [0 x i32]* @kallsyms_markers, i64 0, i64 %shr
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx1 = getelementptr [0 x i8], [0 x i8]* @kallsyms_names, i64 0, i64 %idxprom
  %and = and i64 %pos, 255
  %cmp12.not = icmp eq i64 %and, 0
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %name.013 = phi i8* [ %add.ptr4, %for.body ], [ %arrayidx1, %entry ]
  %1 = load i8, i8* %name.013, align 1
  %2 = zext i8 %1 to i64
  %add.ptr = getelementptr i8, i8* %name.013, i64 1
  %add.ptr4 = getelementptr i8, i8* %add.ptr, i64 %2
  %inc = add i32 %i.014, 1
  %conv = sext i32 %inc to i64
  %cmp = icmp ugt i64 %and, %conv
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %name.0.lcssa = phi i8* [ %arrayidx1, %entry ], [ %add.ptr4, %for.body ]
  %sub.ptr.lhs.cast = ptrtoint i8* %name.0.lcssa to i64
  %3 = trunc i64 %sub.ptr.lhs.cast to i32
  %conv5 = sub i32 %3, ptrtoint ([0 x i8]* @kallsyms_names to i32)
  ret i32 %conv5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lookup_symbol_attrs(i64 noundef %addr, i64* noundef %size, i64* noundef %offset, i8* nocapture noundef writeonly %modname, i8* nocapture noundef writeonly %name) local_unnamed_addr #0 {
entry:
  store i8 0, i8* %name, align 1
  %arrayidx1 = getelementptr i8, i8* %name, i64 127
  store i8 0, i8* %arrayidx1, align 1
  %call = call fastcc i32 @is_ksym_addr(i64 noundef %addr) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @get_symbol_pos(i64 noundef %addr, i64* noundef %size, i64* noundef %offset) #10
  %call3 = call fastcc i32 @get_symbol_offset(i64 noundef %call2) #10
  %0 = call fastcc i32 @kallsyms_expand_symbol(i32 noundef %call3, i8* noundef %name) #10
  store i8 0, i8* %modname, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -34, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprint_symbol(i8* noundef %buffer, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef 0, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef %symbol_offset, i32 noundef %add_offset) unnamed_addr #0 {
entry:
  %modname = alloca i8*, align 8
  %buildid = alloca i8*, align 8
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  %0 = bitcast i8** %modname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %modname, align 8, !annotation !7
  %1 = bitcast i8** %buildid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %buildid, align 8, !annotation !7
  %2 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i64 0, i64* %offset, align 8, !annotation !7
  %3 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i64 0, i64* %size, align 8, !annotation !7
  %conv = sext i32 %symbol_offset to i64
  %add = add i64 %conv, %address
  %call = call fastcc i8* @kallsyms_lookup_buildid(i64 noundef %add, i64* noundef nonnull %size, i64* noundef nonnull %offset, i8** noundef nonnull %modname, i8** noundef nonnull %buildid, i8* noundef %buffer) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buffer, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %address) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i8* %call, %buffer
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @strcpy(i8* noundef %buffer, i8* noundef nonnull %call) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call7 = call i64 @strlen(i8* noundef %buffer) #11
  %conv8 = trunc i64 %call7 to i32
  %4 = load i64, i64* %offset, align 8
  %sub10 = sub i64 %4, %conv
  store i64 %sub10, i64* %offset, align 8
  %tobool11.not = icmp eq i32 %add_offset, 0
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end6
  %sext = shl i64 %call7, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr i8, i8* %buffer, i64 %idx.ext
  %5 = load i64, i64* %size, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 noundef %sub10, i64 noundef %5) #11
  %add14 = add i32 %call13, %conv8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6
  %len.0 = phi i32 [ %add14, %if.then12 ], [ %conv8, %if.end6 ]
  %6 = load i8*, i8** %modname, align 8
  %tobool16.not = icmp eq i8* %6, null
  br i1 %tobool16.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.end15
  %idx.ext18 = sext i32 %len.0 to i64
  %add.ptr19 = getelementptr i8, i8* %buffer, i64 %idx.ext18
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %6) #11
  %add21 = add i32 %call20, %len.0
  %idx.ext22 = sext i32 %add21 to i64
  %add.ptr23 = getelementptr i8, i8* %buffer, i64 %idx.ext22
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %add25 = add i32 %add21, %call24
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then17, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %add25, %if.then17 ], [ %len.0, %if.end15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprint_symbol_build_id(i8* noundef %buffer, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef 0, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprint_symbol_no_offset(i8* noundef %buffer, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef 0, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprint_backtrace(i8* noundef %buffer, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef -1, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprint_backtrace_build_id(i8* noundef %buffer, i64 noundef %address) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__sprint_symbol(i8* noundef %buffer, i64 noundef %address, i32 noundef -1, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_get_kallsym(i32 noundef %symnum, i64* noundef %value, i8* noundef %type, i8* noundef %name) local_unnamed_addr #0 {
entry:
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kallsyms_show_value(%struct.cred* noundef %cred) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @kptr_restrict, align 4
  %switch = icmp ult i32 %0, 2
  br i1 %switch, label %sw.bb1, label %sw.default

sw.bb1:                                           ; preds = %entry
  %call2 = call fastcc i32 @security_capable(%struct.cred* noundef %cred) #10
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %return, label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb1
  br label %return

return:                                           ; preds = %sw.bb1, %sw.default
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %sw.bb1 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_capable(%struct.cred* noundef %cred) unnamed_addr #0 {
entry:
  %call = call i32 @cap_capable(%struct.cred* noundef %cred, %struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 34, i32 noundef 2) #11
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @kallsyms_init() #7 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i16 noundef 292, %struct.proc_dir_entry* noundef null, %struct.proc_ops* noundef nonnull @kallsyms_proc_ops) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_kernel_text(i64 noundef %addr) unnamed_addr #5 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @_stext to i64)
  %cmp1 = icmp ule i64 %addr, ptrtoint ([0 x i8]* @_etext to i64)
  %or.cond = and i1 %cmp, %cmp1
  %spec.select = zext i1 %or.cond to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_kernel_inittext(i64 noundef %addr) unnamed_addr #5 {
entry:
  %cmp = icmp uge i64 %addr, ptrtoint ([0 x i8]* @_sinittext to i64)
  %cmp1 = icmp ule i64 %addr, ptrtoint ([0 x i8]* @_einittext to i64)
  %or.cond = and i1 %cmp, %cmp1
  %. = zext i1 %or.cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(%struct.cred* noundef, %struct.user_namespace* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kallsyms_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* noundef %file) #0 {
entry:
  %call = call i8* @__seq_open_private(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @kallsyms_op, i32 noundef 248) #11
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.kallsym_iter*
  call fastcc void @reset_iter(%struct.kallsym_iter* noundef nonnull %0, i64 noundef 0) #10
  %f_cred = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 12
  %1 = load %struct.cred*, %struct.cred** %f_cred, align 8
  %call1 = call i1 @kallsyms_show_value(%struct.cred* noundef %1) #10
  %conv = zext i1 %call1 to i32
  %show_value = getelementptr inbounds i8, i8* %call, i64 244
  %2 = bitcast i8* %show_value to i32*
  store i32 %conv, i32* %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(%struct.inode* noundef, %struct.file* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__seq_open_private(%struct.file* noundef, %struct.seq_operations* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @reset_iter(%struct.kallsym_iter* nocapture noundef writeonly %iter, i64 noundef %new_pos) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 8, i64 0
  store i8 0, i8* %arrayidx, align 1
  %call = call fastcc i32 @get_symbol_offset(i64 noundef %new_pos) #10
  %nameoff = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 6
  store i32 %call, i32* %nameoff, align 8
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  store i64 %new_pos, i64* %pos, align 8
  %cmp = icmp eq i64 %new_pos, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pos_arch_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 1
  store i64 0, i64* %pos_arch_end, align 8
  %pos_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 2
  store i64 0, i64* %pos_mod_end, align 8
  %pos_ftrace_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 3
  store i64 0, i64* %pos_ftrace_mod_end, align 8
  %pos_bpf_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 4
  store i64 0, i64* %pos_bpf_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @s_start(%struct.seq_file* nocapture noundef readonly %m, i64* nocapture noundef readonly %pos) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kallsym_iter**
  %1 = load %struct.kallsym_iter*, %struct.kallsym_iter** %0, align 8
  %2 = load i64, i64* %pos, align 8
  %call = call fastcc i32 @update_iter(%struct.kallsym_iter* noundef %1, i64 noundef %2) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %private, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %3, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @s_stop(%struct.seq_file* nocapture noundef %m, i8* nocapture noundef %p) #5 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @s_next(%struct.seq_file* nocapture noundef readonly %m, i8* noundef readnone %p, i64* nocapture noundef %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %1 = bitcast i8** %private to %struct.kallsym_iter**
  %2 = load %struct.kallsym_iter*, %struct.kallsym_iter** %1, align 8
  %call = call fastcc i32 @update_iter(%struct.kallsym_iter* noundef %2, i64 noundef %inc) #10
  %tobool.not = icmp eq i32 %call, 0
  %.p = select i1 %tobool.not, i8* null, i8* %p
  ret i8* %.p
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @s_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %p) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.kallsym_iter**
  %1 = load %struct.kallsym_iter*, %struct.kallsym_iter** %0, align 8
  %arrayidx = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 8, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %show_value = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 11
  %3 = load i32, i32* %show_value, align 4
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %value2 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 5
  %4 = load i64, i64* %value2, align 8
  %5 = inttoptr i64 %4 to i8*
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ null, %if.end ]
  %arrayidx3 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 9, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %cond.end
  %exported = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 10
  %7 = load i32, i32* %exported, align 8
  %tobool6.not = icmp eq i32 %7, 0
  %type10 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 7
  %8 = load i8, i8* %type10, align 4
  br i1 %tobool6.not, label %cond.false9, label %cond.true7

cond.true7:                                       ; preds = %if.then5
  %call = call fastcc i8 @__toupper(i8 noundef %8) #10
  br label %cond.end13

cond.false9:                                      ; preds = %if.then5
  %call11 = call fastcc i8 @__tolower(i8 noundef %8) #10
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false9, %cond.true7
  %cond14.in = phi i8 [ %call, %cond.true7 ], [ %call11, %cond.false9 ]
  %conv16 = zext i8 %cond14.in to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef %cond, i32 noundef %conv16, i8* noundef %arrayidx, i8* noundef %arrayidx3) #11
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %type20 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %1, i64 0, i32 7
  %9 = load i8, i8* %type20, align 4
  %conv21 = zext i8 %9 to i32
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %cond, i32 noundef %conv21, i8* noundef %arrayidx) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end13, %if.else, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_iter(%struct.kallsym_iter* noundef %iter, i64 noundef %pos) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @kallsyms_num_syms, align 4
  %conv = zext i32 %0 to i64
  %cmp.not = icmp sgt i64 %conv, %pos
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @update_iter_mod(%struct.kallsym_iter* noundef %iter, i64 noundef %pos) #10
  br label %return

if.end:                                           ; preds = %entry
  %pos2 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %1 = load i64, i64* %pos2, align 8
  %cmp3.not = icmp eq i64 %1, %pos
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call fastcc void @reset_iter(%struct.kallsym_iter* noundef %iter, i64 noundef %pos) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %call7 = call fastcc i64 @get_ksymbol_core(%struct.kallsym_iter* noundef %iter) #10
  %nameoff = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 6
  %2 = load i32, i32* %nameoff, align 8
  %3 = trunc i64 %call7 to i32
  %conv9 = add i32 %2, %3
  store i32 %conv9, i32* %nameoff, align 8
  %4 = load i64, i64* %pos2, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %pos2, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_iter_mod(%struct.kallsym_iter* noundef %iter, i64 noundef %pos) unnamed_addr #0 {
entry:
  %pos1 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  store i64 %pos, i64* %pos1, align 8
  %pos_arch_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 1
  %0 = load i64, i64* %pos_arch_end, align 8
  %tobool.not = icmp eq i64 %0, 0
  %cmp = icmp sgt i64 %0, %pos
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @get_ksymbol_arch(%struct.kallsym_iter* noundef %iter) #10
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %return

if.end:                                           ; preds = %entry, %land.lhs.true
  %pos_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 2
  %1 = load i64, i64* %pos_mod_end, align 8
  %tobool4.not = icmp eq i64 %1, 0
  %cmp7 = icmp sgt i64 %1, %pos
  %or.cond52 = or i1 %tobool4.not, %cmp7
  br i1 %or.cond52, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %if.end
  call fastcc void @get_ksymbol_mod(%struct.kallsym_iter* noundef %iter) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true8
  %pos_ftrace_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 3
  %2 = load i64, i64* %pos_ftrace_mod_end, align 8
  %tobool13.not = icmp eq i64 %2, 0
  %cmp16 = icmp sgt i64 %2, %pos
  %or.cond53 = or i1 %tobool13.not, %cmp16
  br i1 %or.cond53, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %if.end12
  call fastcc void @get_ksymbol_ftrace_mod(%struct.kallsym_iter* noundef %iter) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end12, %land.lhs.true17
  %pos_bpf_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 4
  %3 = load i64, i64* %pos_bpf_end, align 8
  %tobool22.not = icmp eq i64 %3, 0
  %cmp25 = icmp sgt i64 %3, %pos
  %or.cond54 = or i1 %tobool22.not, %cmp25
  br i1 %or.cond54, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end21
  call fastcc void @get_ksymbol_bpf(%struct.kallsym_iter* noundef %iter) #10
  br label %if.end30

if.end30:                                         ; preds = %if.end21, %land.lhs.true26
  call fastcc void @get_ksymbol_kprobe(%struct.kallsym_iter* noundef %iter) #10
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end30
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i64 @get_ksymbol_core(%struct.kallsym_iter* nocapture noundef %iter) unnamed_addr #3 {
entry:
  %nameoff = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 6
  %0 = load i32, i32* %nameoff, align 8
  %arrayidx = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 9, i64 0
  store i8 0, i8* %arrayidx, align 1
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %1 = load i64, i64* %pos, align 8
  %conv = trunc i64 %1 to i32
  %call = call fastcc i64 @kallsyms_sym_address(i32 noundef %conv) #10
  %value = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 5
  store i64 %call, i64* %value, align 8
  %call1 = call fastcc i8 @kallsyms_get_symbol_type(i32 noundef %0) #10
  %type = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 7
  store i8 %call1, i8* %type, align 4
  %arraydecay = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 8, i64 0
  %call2 = call fastcc i32 @kallsyms_expand_symbol(i32 noundef %0, i8* noundef %arraydecay) #10
  %2 = load i32, i32* %nameoff, align 8
  %sub = sub i32 %call2, %2
  %conv4 = zext i32 %sub to i64
  ret i64 %conv4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_ksymbol_arch(%struct.kallsym_iter* noundef %iter) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %pos, align 8
  %1 = load i32, i32* @kallsyms_num_syms, align 4
  %2 = trunc i64 %0 to i32
  %conv1 = sub i32 %2, %1
  %value = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 5
  %type = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 7
  %arraydecay = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 8, i64 0
  %call = call i32 @arch_get_kallsym(i32 noundef %conv1, i64* noundef %value, i8* noundef %type, i8* noundef %arraydecay) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %pos, align 8
  %pos_arch_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 1
  store i64 %3, i64* %pos_arch_end, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @get_ksymbol_mod(%struct.kallsym_iter* nocapture noundef %iter) unnamed_addr #8 {
entry:
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %pos, align 8
  %pos_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 2
  store i64 %0, i64* %pos_mod_end, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @get_ksymbol_ftrace_mod(%struct.kallsym_iter* nocapture noundef %iter) unnamed_addr #8 {
entry:
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %pos, align 8
  %pos_ftrace_mod_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 3
  store i64 %0, i64* %pos_ftrace_mod_end, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_ksymbol_bpf(%struct.kallsym_iter* noundef %iter) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 9, i64 0
  %call = call i64 @strlcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 56) #11
  %exported = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 10
  store i32 0, i32* %exported, align 8
  %pos = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 0
  %0 = load i64, i64* %pos, align 8
  %pos_bpf_end = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 4
  store i64 %0, i64* %pos_bpf_end, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_ksymbol_kprobe(%struct.kallsym_iter* noundef %iter) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 9, i64 0
  %call = call i64 @strlcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 noundef 56) #11
  %exported = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %iter, i64 0, i32 10
  store i32 0, i32* %exported, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @kallsyms_get_symbol_type(i32 noundef %off) unnamed_addr #5 {
entry:
  %add = add i32 %off, 1
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @kallsyms_names, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %idxprom1 = zext i8 %0 to i64
  %arrayidx2 = getelementptr [0 x i16], [0 x i16]* @kallsyms_token_index, i64 0, i64 %idxprom1
  %1 = load i16, i16* %arrayidx2, align 2
  %idxprom3 = zext i16 %1 to i64
  %arrayidx4 = getelementptr [0 x i8], [0 x i8]* @kallsyms_token_table, i64 0, i64 %idxprom3
  %2 = load i8, i8* %arrayidx4, align 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__toupper(i8 noundef %c) unnamed_addr #5 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 2
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, -32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @__tolower(i8 noundef %c) unnamed_addr #5 {
entry:
  %0 = zext i8 %c to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = and i8 %1, 1
  %cmp.not = icmp eq i8 %2, 0
  %sub = add i8 %c, 32
  %spec.select = select i1 %cmp.not, i8 %c, i8 %sub
  ret i8 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2156287381}
